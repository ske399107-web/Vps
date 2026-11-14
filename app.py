#!/usr/bin/env python3
"""FreeLLMAPI launcher for Wispbyte's Python 3.11 container.

Upload app.py and freellmapi-main.zip into /home/container.
Set PY_FILE=app.py and leave PY_PACKAGES empty. Startup command: python app.py
"""
import glob
import http.server
import json
import os
import platform
import shutil
import socket
import subprocess
import sys
import tarfile
import threading
import urllib.request
import zipfile
from pathlib import Path

BASE = Path(__file__).resolve().parent
RUNTIME = BASE / '.freellmapi-runtime'
SOURCE = BASE / 'freellmapi-main'
NODE_VERSION = 'v22.23.5'


def log(message):
    print(f'[FreeLLMAPI] {message}', flush=True)


def port_value():
    # Wispbyte/Pterodactyl panels commonly expose SERVER_PORT; PORT is also supported.
    raw = os.environ.get('PORT') or os.environ.get('SERVER_PORT') or '11494'
    try:
        port = int(raw)
    except ValueError:
        raise RuntimeError(f'Invalid PORT/SERVER_PORT value: {raw!r}')
    if not 1 <= port <= 65535:
        raise RuntimeError(f'Port out of range: {port}')
    return port


class BootHandler(http.server.BaseHTTPRequestHandler):
    def do_GET(self):
        body = b'{"status":"starting","message":"FreeLLMAPI is installing/building. Retry shortly."}'
        self.send_response(503)
        self.send_header('Content-Type', 'application/json')
        self.send_header('Content-Length', str(len(body)))
        self.send_header('Retry-After', '15')
        self.end_headers()
        self.wfile.write(body)

    def do_HEAD(self):
        self.send_response(503)
        self.send_header('Retry-After', '15')
        self.end_headers()

    def log_message(self, fmt, *args):
        pass


def start_boot_listener(port):
    try:
        server = http.server.ThreadingHTTPServer(('0.0.0.0', port), BootHandler)
        server.daemon_threads = True
        thread = threading.Thread(target=server.serve_forever, daemon=True)
        thread.start()
        log(f'Temporary startup listener active on 0.0.0.0:{port}; keeping panel port open during setup.')
        return server
    except OSError as exc:
        raise RuntimeError(
            f'Could not bind port {port}: {exc}. Check Wispbyte Network/Allocations and PORT variable.'
        ) from exc


def run_stream(command, cwd, env):
    log('$ ' + ' '.join(map(str, command)))
    proc = subprocess.Popen(
        command, cwd=str(cwd), env=env,
        stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
        text=True, bufsize=1
    )
    try:
        assert proc.stdout is not None
        for line in proc.stdout:
            print(line.rstrip(), flush=True)
        code = proc.wait()
    except KeyboardInterrupt:
        proc.terminate()
        try:
            proc.wait(timeout=10)
        except subprocess.TimeoutExpired:
            proc.kill()
            proc.wait()
        raise
    if code:
        raise subprocess.CalledProcessError(code, command)


def extract_source():
    if (SOURCE / 'package.json').is_file():
        return
    archives = sorted(glob.glob(str(BASE / 'freellmapi*.zip')))
    if not archives:
        raise RuntimeError('Upload freellmapi-main.zip beside app.py.')
    archive_path = Path(archives[0])
    log(f'Extracting {archive_path.name} ...')
    with zipfile.ZipFile(archive_path) as archive:
        root = BASE.resolve()
        for item in archive.infolist():
            target = (BASE / item.filename).resolve()
            if root not in target.parents and target != root:
                raise RuntimeError('Unsafe path found in source ZIP.')
        archive.extractall(BASE)
    if not (SOURCE / 'package.json').is_file():
        raise RuntimeError('ZIP did not contain freellmapi-main/package.json.')


def find_node():
    system_node = shutil.which('node')
    if system_node:
        try:
            version = subprocess.check_output([system_node, '--version'], text=True).strip()
            major = int(version.lstrip('v').split('.')[0])
            if 20 <= major < 25:
                npm = shutil.which('npm')
                if npm:
                    log(f'Using system Node.js {version}.')
                    return system_node, [npm]
        except Exception:
            pass

    machine = platform.machine().lower()
    arch = {'x86_64': 'x64', 'amd64': 'x64', 'aarch64': 'arm64', 'arm64': 'arm64'}.get(machine)
    if platform.system().lower() != 'linux' or not arch:
        raise RuntimeError(f'Unsupported platform for local Node.js: {platform.system()} {machine}')

    RUNTIME.mkdir(parents=True, exist_ok=True)
    folder = RUNTIME / f'node-{NODE_VERSION}-linux-{arch}'
    node = folder / 'bin' / 'node'
    npm_cli = folder / 'lib/node_modules/npm/bin/npm-cli.js'
    if not node.exists() or not npm_cli.exists():
        archive_name = f'node-{NODE_VERSION}-linux-{arch}.tar.xz'
        archive_path = RUNTIME / archive_name
        url = f'https://nodejs.org/dist/{NODE_VERSION}/{archive_name}'
        log(f'Downloading Node.js {NODE_VERSION} ({arch}) ...')
        urllib.request.urlretrieve(url, archive_path)
        with tarfile.open(archive_path, 'r:xz') as archive:
            root = RUNTIME.resolve()
            for member in archive.getmembers():
                target = (RUNTIME / member.name).resolve()
                if root not in target.parents and target != root:
                    raise RuntimeError('Unsafe path in Node.js archive.')
            archive.extractall(RUNTIME)
        archive_path.unlink(missing_ok=True)
    return str(node), [str(node), str(npm_cli)]


def patch_sqlite():
    db_file = SOURCE / 'server/src/db/index.ts'
    content = db_file.read_text(encoding='utf-8')
    old = "return platform === 'android' ? nodeSqliteFactory : betterSqliteFactory;"
    new = "return (platform === 'android' || process.env.FREELLMAPI_USE_NODE_SQLITE === '1') ? nodeSqliteFactory : betterSqliteFactory;"
    if old in content:
        db_file.write_text(content.replace(old, new), encoding='utf-8')
        log('Enabled Node.js built-in SQLite driver (avoids native better-sqlite3 build).')
    elif new not in content:
        raise RuntimeError('SQLite compatibility patch did not match this source version.')


def main():
    port = port_value()
    os.environ['PORT'] = str(port)
    os.environ['HOST'] = '0.0.0.0'
    os.environ['NODE_ENV'] = 'production'
    os.environ['FREELLMAPI_USE_NODE_SQLITE'] = '1'
    os.environ.setdefault('FREEAPI_DB_PATH', str(BASE / 'freellmapi-data/freeapi.db'))
    os.environ.setdefault('REQUEST_BODY_LIMIT_MB', '10')

    # Keep a stable encryption key across restarts. Do not regenerate it on each boot.
    key_file = BASE / '.freellmapi-encryption-key'
    if not os.environ.get('ENCRYPTION_KEY'):
        if key_file.exists():
            os.environ['ENCRYPTION_KEY'] = key_file.read_text(encoding='ascii').strip()
        else:
            key = os.urandom(32).hex()
            key_file.write_text(key, encoding='ascii')
            try:
                key_file.chmod(0o600)
            except OSError:
                pass
            os.environ['ENCRYPTION_KEY'] = key

    # Port is opened before slow setup so the hosting panel sees a live listener.
    boot_server = start_boot_listener(port)
    try:
        extract_source()
        node, npm_command = find_node()
        env = os.environ.copy()
        # Keep memory bounded on a 512 MB container; npm install is restart-friendly,
        # unlike npm ci which deletes partially installed node_modules each attempt.
        env['NODE_OPTIONS'] = '--max-old-space-size=320'
        env['npm_config_jobs'] = '1'
        patch_sqlite()

        built = (
            (SOURCE / 'server/dist/index.js').is_file()
            and (SOURCE / 'client/dist/index.html').is_file()
        )
        if not built:
            log('Installing dependencies. This may take several minutes on the free plan.')
            run_stream(
                npm_command + ['install', '--no-audit', '--no-fund', '--omit=optional', '--prefer-offline'],
                SOURCE, env
            )
            if not (SOURCE / 'server/dist/index.js').is_file():
                log('Building backend ...')
                run_stream(npm_command + ['run', 'build', '-w', 'server'], SOURCE, env)
            if not (SOURCE / 'client/dist/index.html').is_file():
                log('Building dashboard ...')
                run_stream(npm_command + ['run', 'build', '-w', 'client'], SOURCE, env)
            log('Build completed.')
        else:
            log('Existing backend and dashboard builds found; skipping installation/build.')
    finally:
        boot_server.shutdown()
        boot_server.server_close()
        log('Temporary startup listener closed; handing port to FreeLLMAPI.')

    node_command = [node, 'server/dist/index.js']
    log(f'Starting FreeLLMAPI on 0.0.0.0:{port}')
    os.execve(node, node_command, os.environ.copy())


if __name__ == '__main__':
    try:
        main()
    except subprocess.CalledProcessError as exc:
        log(f'Build/install command failed with exit code {exc.returncode}.')
        sys.exit(exc.returncode or 1)
    except Exception as exc:
        log(f'Startup failed: {exc}')
        sys.exit(1)
