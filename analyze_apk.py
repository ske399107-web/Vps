#!/usr/bin/env python3
"""
Comprehensive APK Analysis Script for proxy.apk
Extracts and analyzes Android package structure, manifest, and dex files
"""

import zipfile
import os
import re
import struct
from pathlib import Path
from xml.etree import ElementTree as ET
import xml.dom.minidom as minidom

APK_PATH = '/workspaces/Vps/proxy.apk'
OUTPUT_DIR = '/workspaces/Vps/reversed_android_project'

def extract_apk():
    """Extract all APK contents"""
    print("[*] Extracting APK...")
    os.makedirs(OUTPUT_DIR, exist_ok=True)

    with zipfile.ZipFile(APK_PATH, 'r') as z:
        # Get all entries
        names = z.namelist()
        print(f"[*] Total files in APK: {len(names)}")

        # Extract everything
        for name in names:
            # Sanitize path
            safe_name = name.replace('..', '').lstrip('/')
            if not safe_name:
                continue

            target_path = os.path.join(OUTPUT_DIR, safe_name)
            target_dir = os.path.dirname(target_path)
            os.makedirs(target_dir, exist_ok=True)

            # Extract file
            with z.open(name) as src, open(target_path, 'wb') as dst:
                dst.write(src.read())

        print(f"[+] Extraction complete to: {OUTPUT_DIR}")
        return names

def analyze_manifest(manifest_path):
    """Parse and analyze AndroidManifest.xml"""
    print("\n[=] Analyzing AndroidManifest.xml...")

    try:
        # Try to read as text first (unpacked XML)
        with open(manifest_path, 'r', encoding='utf-8') as f:
            content = f.read()
    except:
        # If binary (packed), we need to handle differently
        print("  [*] Manifest appears to be binary (packed). Attempting basic parsing...")
        with open(manifest_path, 'rb') as f:
            raw = f.read()

        # Try to find string references
        # AndroidManifest strings are usually in resources.arsc
        # We'll look for common patterns
        text_parts = []
        i = 0
        while i < len(raw):
            # Look for printable ASCII sequences (minimum 4 chars)
            start = i
            while i < len(raw) and 32 <= raw[i] < 127:
                i += 1
            if i - start >= 4:
                text_parts.append(raw[start:i].decode('ascii'))
            i += 1

        content = ' '.join(text_parts[:200])  # First 200 strings

    print(f"[*] Content length: {len(content)} chars")

    # Parse XML if possible
    try:
        root = ET.fromstring(content)
        print("[+] Successfully parsed XML")

        # Find package name
        package = root.get('package', 'Unknown')
        print(f"\n[*] Package Name: {package}")

        # Find version info
        version_code = root.get('android:versionCode', 'Unknown')
        version_name = root.get('android:versionName', 'Unknown')
        print(f"[*] Version Code: {version_code}")
        print(f"[*] Version Name: {version_name}")

        # Define namespace
        ns = {'android': 'http://schemas.android.com/apk/res/android'}

        # Extract permissions
        permissions = []
        for perm in root.findall('.//uses-permission'):
            p = perm.get('android:name', 'Unknown')
            permissions.append(p)
            print(f"  - Permission: {p}")

        # Extract activities
        activities = []
        for activity in root.findall('.//activity'):
            name = activity.get('android:name', 'Unknown')
            exported = activity.get('android:exported', 'False')
            activities.append({'name': name, 'exported': exported})
            print(f"  - Activity: {name} (exported: {exported})")

        # Extract services
        services = []
        for service in root.findall('.//service'):
            name = service.get('android:name', 'Unknown')
            exported = service.get('android:exported', 'False')
            services.append({'name': name, 'exported': exported})
            print(f"  - Service: {name} (exported: {exported})")

        # Extract receivers
        receivers = []
        for receiver in root.findall('.//receiver'):
            name = receiver.get('android:name', 'Unknown')
            exported = receiver.get('android:exported', 'False')
            receivers.append({'name': name, 'exported': exported})
            print(f"  - Receiver: {name} (exported: {exported})")

        # Extract providers
        providers = []
        for provider in root.findall('.//provider'):
            name = provider.get('android:name', 'Unknown')
            exported = provider.get('android:exported', 'False')
            authorities = provider.get('android:authorities', 'Unknown')
            providers.append({
                'name': name,
                'exported': exported,
                'authorities': authorities
            })
            print(f"  - Provider: {name} (authorities: {authorities})")

        # Save structured data
        analysis = {
            'package': package,
            'version_code': version_code,
            'version_name': version_name,
            'permissions': permissions,
            'activities': activities,
            'services': services,
            'receivers': receivers,
            'providers': providers
        }

        # Write JSON output
        import json
        with open(os.path.join(OUTPUT_DIR, 'manifest_analysis.json'), 'w') as f:
            json.dump(analysis, f, indent=2)

        print(f"[+] Saved analysis to: {os.path.join(OUTPUT_DIR, 'manifest_analysis.json')}")
        return analysis

    except Exception as e:
        print(f"[!] XML parsing failed: {e}")
        print(f"[*] Raw content preview:")
        print(content[:1000])
        return None

def analyze_dex(dex_path, output_prefix):
    """Basic DEX file analysis - extract strings and classes"""
    print(f"\n[=] Analyzing DEX file: {dex_path}")

    try:
        with open(dex_path, 'rb') as f:
            data = f.read()

        print(f"[*] DEX file size: {len(data)} bytes")

        # Check magic header
        if data[:4] == b'dex\n' or data[:3] == b'dex':
            print("[+] Valid DEX file detected")
        else:
            print("[!] Invalid DEX header")
            return None

        # Extract string identifiers
        strings = []

        # Method 1: Look for UTF-16 strings (common in DEX)
        # Android DEX uses UTF-16LE for strings
        i = 0
        while i < len(data) - 1:
            # Check if this looks like UTF-16LE string start
            if 0x0020 <= data[i] < 0x007F and data[i+1] == 0x00:
                # Potential UTF-16LE character
                start = i
                valid = True
                while i + 1 < len(data) and valid:
                    # Check for null terminator or valid UTF-16 range
                    if data[i] == 0x00 and data[i+1] == 0x00:
                        break
                    if not (0x0020 <= data[i] < 0x007E or data[i] in [0x09, 0x0A, 0x0D]):
                        valid = False
                        break
                    i += 2
                if valid and i - start >= 4:
                    try:
                        s = data[start:i].decode('utf-16-le')
                        if len(s) >= 3:
                            strings.append(s)
                    except:
                        pass
            else:
                i += 1

        # Method 2: Also extract ASCII strings (for shorter literals)
        ascii_strings = []
        current = []
        for byte in data:
            if 32 <= byte < 127:
                current.append(chr(byte))
            else:
                if len(current) >= 4:
                    ascii_strings.append(''.join(current))
                current = []
        if len(current) >= 4:
            ascii_strings.append(''.join(current))

        # Combine and deduplicate
        all_strings = list(set(strings + ascii_strings))
        all_strings.sort(key=len, reverse=True)

        print(f"[*] Found {len(all_strings)} unique strings")

        # Categorize strings
        categories = {
            'packages': [],
            'classes': [],
            'methods': [],
            'fields': [],
            'urls': [],
            'paths': [],
            'identifiers': []
        }

        for s in all_strings:
            s_lower = s.lower()
            if '.' in s and '/' not in s and len(s.split('.')) > 2:
                if any(x in s_lower for x in ['com.', 'org.', 'net.', 'io.']):
                    categories['packages'].append(s)
            elif s.startswith('L') and s.endswith(';'):
                categories['classes'].append(s)
            elif '(' in s and ')' in s and ('->' in s or '.' in s):
                categories['methods'].append(s)
            elif '/' in s and '.' in s:
                categories['paths'].append(s)
            elif 'http' in s_lower or 'www.' in s_lower:
                categories['urls'].append(s)
            elif len(s) > 10 and any(c.isupper() for c in s):
                categories['identifiers'].append(s)

        # Print analysis
        print(f"\n[*] Categorized Strings:")
        for cat, items in categories.items():
            if items:
                print(f"  {cat}: {len(items)} items")
                for item in items[:5]:  # Show first 5
                    print(f"    - {item}")
                if len(items) > 5:
                    print(f"    ... and {len(items) - 5} more")

        # Save results
        import json
        result = {
            'dex_file': dex_path,
            'total_strings': len(all_strings),
            'categories': {k: v[:20] for k, v in categories.items()}
        }

        output_path = os.path.join(OUTPUT_DIR, f'{output_prefix}_strings.json')
        with open(output_path, 'w') as f:
            json.dump(result, f, indent=2)

        print(f"[+] Saved string analysis to: {output_path}")

        # Also save raw strings for reference
        with open(os.path.join(OUTPUT_DIR, f'{output_prefix}_all_strings.txt'), 'w') as f:
            for s in all_strings[:500]:  # Save first 500
                f.write(s + '\n')

        return result

    except Exception as e:
        print(f"[!] DEX analysis failed: {e}")
        import traceback
        traceback.print_exc()
        return None

def analyze_resources(res_dir):
    """Analyze resource directory"""
    print(f"\n[=] Analyzing resources in: {res_dir}")

    if not os.path.exists(res_dir):
        print("[!] Resource directory not found")
        return {}

    resources = {}

    # Walk through resource directories
    for root, dirs, files in os.walk(res_dir):
        for f in files:
            ext = os.path.splitext(f)[1].lower()
            rel_path = os.path.relpath(os.path.join(root, f), res_dir)

            if ext in ['.xml', '.png', '.jpg', '.jpeg', '.gif', '.mp3', '.wav']:
                if ext not in resources:
                    resources[ext] = []
                resources[ext].append(rel_path)

    # Print summary
    print("[*] Resource Summary:")
    for ext, items in sorted(resources.items()):
        print(f"  {ext}: {len(items)} files")
        for item in items[:5]:
            print(f"    - {item}")
        if len(items) > 5:
            print(f"    ... and {len(items) - 5} more")

    # Save analysis
    import json
    with open(os.path.join(OUTPUT_DIR, 'resources_analysis.json'), 'w') as f:
        json.dump(resources, f, indent=2)

    return resources

def analyze_native_libraries(lib_dir):
    """Analyze native libraries (.so files)"""
    print(f"\n[=] Analyzing native libraries in: {lib_dir}")

    if not os.path.exists(lib_dir):
        print("[!] Library directory not found")
        return {}

    libs = {}

    for root, dirs, files in os.walk(lib_dir):
        for f in files:
            if f.endswith('.so'):
                lib_path = os.path.join(root, f)
                lib_size = os.path.getsize(lib_path)
                arch = os.path.basename(root)

                if arch not in libs:
                    libs[arch] = []
                libs[arch].append({
                    'file': f,
                    'size': lib_size,
                    'path': os.path.relpath(lib_path, lib_dir)
                })

    # Print summary
    print("[*] Native Libraries:")
    for arch, items in sorted(libs.items()):
        print(f"  {arch}: {len(items)} libraries")
        for item in items[:3]:
            print(f"    - {item['file']} ({item['size']} bytes)")
        if len(items) > 3:
            print(f"    ... and {len(items) - 3} more")

    # Save analysis
    import json
    with open(os.path.join(OUTPUT_DIR, 'native_libraries.json'), 'w') as f:
        json.dump(libs, f, indent=2)

    return libs

def main():
    print("=" * 60)
    print("PROXY.APK COMPREHENSIVE ANALYSIS")
    print("=" * 60)

    # Step 1: Extract APK
    all_files = extract_apk()

    # Step 2: Analyze AndroidManifest.xml
    manifest_paths = [f for f in all_files if 'AndroidManifest.xml' in f]
    if manifest_paths:
        manifest_path = os.path.join(OUTPUT_DIR, manifest_paths[0].replace('/', os.sep))
        manifest_data = analyze_manifest(manifest_path)
    else:
        print("[!] AndroidManifest.xml not found!")
        manifest_data = None

    # Step 3: Analyze DEX files
    dex_files = [f for f in all_files if f.endswith('.dex')]
    for i, dex in enumerate(dex_files):
        dex_path = os.path.join(OUTPUT_DIR, dex.replace('/', os.sep))
        analyze_dex(dex_path, f'classes_{i}')

    # Step 4: Analyze resources
    res_dirs = [d for d in os.listdir(OUTPUT_DIR) if d.startswith('res')]
    for res_dir in res_dirs:
        analyze_resources(os.path.join(OUTPUT_DIR, res_dir))

    # Step 5: Analyze native libraries
    lib_dirs = [d for d in os.listdir(OUTPUT_DIR) if d.startswith('lib')]
    for lib_dir in lib_dirs:
        analyze_native_libraries(os.path.join(OUTPUT_DIR, lib_dir))

    # Step 6: Generate summary report
    print("\n[=] Generating Summary Report...")

    summary = {
        'apk_path': APK_PATH,
        'extracted_to': OUTPUT_DIR,
        'total_files': len(all_files),
        'dex_count': len([f for f in all_files if f.endswith('.dex')]),
        'manifest_analyzed': manifest_data is not None,
        'resources_analyzed': len(res_dirs) > 0,
        'native_libs_analyzed': len(lib_dirs) > 0
    }

    import json
    with open(os.path.join(OUTPUT_DIR, 'analysis_summary.json'), 'w') as f:
        json.dump(summary, f, indent=2)

    print("[+] Analysis complete!")
    print(f"[+] Project saved to: {OUTPUT_DIR}")
    print("\n" + "=" * 60)
    print("NEXT STEPS:")
    print("1. Install JADX: https://github.com/skylot/jadx/releases")
    print("2. Run jadx -d decompiled/ proxy.apk")
    print("3. Review decompiled Java source code")
    print("=" * 60)

if __name__ == '__main__':
    main()
