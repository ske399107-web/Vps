package io.github.muntashirakon.adb;

import android.util.Log;
import io.github.muntashirakon.adb.AdbProtocol;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.Socket;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.interfaces.RSAPublicKey;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;
import javax.security.auth.DestroyFailedException;
import o.AbstractC0214jf;
import o.RunnableC0180i0;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class AdbConnection implements Closeable {
    public static final String TAG = "AdbConnection";
    private volatile boolean mAbortOnUnauthorised;
    private final int mApi;
    private volatile boolean mAuthorisationFailed;
    private volatile boolean mConnectAttempted;
    private volatile boolean mConnectionEstablished;
    private volatile Exception mConnectionException;
    private final Thread mConnectionThread;
    private final String mHost;
    private final KeyPair mKeyPair;
    private int mLastLocalId;
    private volatile int mMaxData;
    private final ConcurrentHashMap<Integer, AdbStream> mOpenedStreams;
    private final InputStream mPlainInputStream;
    private final OutputStream mPlainOutputStream;
    private final int mPort;
    private volatile int mProtocolVersion;
    private volatile boolean mSentSignature;
    private final Socket mSocket;
    private volatile InputStream mTlsInputStream;
    private volatile OutputStream mTlsOutputStream;
    private volatile String mDeviceName = "Unknown Device";
    private volatile boolean mIsTls = false;
    private final Object mLock = new Object();

    private AdbConnection(String str, int i, KeyPair keyPair, int i2) throws IOException {
        Objects.requireNonNull(str);
        this.mHost = str;
        this.mPort = i;
        this.mApi = i2;
        this.mProtocolVersion = AdbProtocol.getProtocolVersion(i2);
        this.mMaxData = AdbProtocol.getMaxData(i2);
        Objects.requireNonNull(keyPair);
        this.mKeyPair = keyPair;
        try {
            Socket socket = new Socket(str, i);
            this.mSocket = socket;
            this.mPlainInputStream = socket.getInputStream();
            this.mPlainOutputStream = socket.getOutputStream();
            socket.setTcpNoDelay(true);
            this.mOpenedStreams = new ConcurrentHashMap<>();
            this.mLastLocalId = 0;
            this.mConnectionThread = createConnectionThread();
        } catch (Throwable th) {
            throw ((IOException) new IOException().initCause(th));
        }
    }

    private void cleanupStreams() {
        Iterator<AdbStream> it = this.mOpenedStreams.values().iterator();
        while (it.hasNext()) {
            try {
                it.next().close();
            } catch (IOException unused) {
            }
        }
        this.mOpenedStreams.clear();
    }

    public static AdbConnection create(String str, int i, PrivateKey privateKey, Certificate certificate) throws IOException {
        return create(str, i, privateKey, certificate, 1);
    }

    private Thread createConnectionThread() {
        return new Thread(new RunnableC0180i0(1, this));
    }

    private InputStream getInputStream() {
        if (this.mIsTls) {
            InputStream inputStream = this.mTlsInputStream;
            Objects.requireNonNull(inputStream);
            return inputStream;
        }
        return this.mPlainInputStream;
    }

    private OutputStream getOutputStream() {
        if (this.mIsTls) {
            OutputStream outputStream = this.mTlsOutputStream;
            Objects.requireNonNull(outputStream);
            return outputStream;
        }
        return this.mPlainOutputStream;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0017. Please report as an issue. */
    public /* synthetic */ void lambda$createConnectionThread$0() {
        AdbStream adbStream;
        byte[] generateAuth;
        while (true) {
            if (!this.mConnectionThread.isInterrupted()) {
                try {
                    AdbProtocol.Message parse = AdbProtocol.Message.parse(getInputStream(), this.mProtocolVersion, this.mMaxData);
                    int i = parse.command;
                    switch (i) {
                        case AdbProtocol.A_CLSE /* 1163086915 */:
                        case AdbProtocol.A_WRTE /* 1163154007 */:
                        case AdbProtocol.A_OKAY /* 1497451343 */:
                            if (this.mConnectionEstablished && (adbStream = this.mOpenedStreams.get(Integer.valueOf(parse.arg1))) != null) {
                                synchronized (adbStream) {
                                    try {
                                        int i2 = parse.command;
                                        if (i2 == 1497451343) {
                                            adbStream.updateRemoteId(parse.arg0);
                                            adbStream.readyForWrite();
                                            adbStream.notify();
                                        } else if (i2 == 1163154007) {
                                            adbStream.addPayload(parse.payload);
                                            adbStream.sendReady();
                                        } else {
                                            this.mOpenedStreams.remove(Integer.valueOf(parse.arg1));
                                            adbStream.notifyClose(true);
                                        }
                                    } finally {
                                    }
                                }
                            }
                            break;
                        case AdbProtocol.A_AUTH /* 1213486401 */:
                            if (!this.mIsTls && parse.arg0 == 1) {
                                if (this.mSentSignature) {
                                    if (this.mAbortOnUnauthorised) {
                                        this.mAuthorisationFailed = true;
                                        break;
                                    } else {
                                        generateAuth = AdbProtocol.generateAuth(3, AndroidPubkey.encodeWithName((RSAPublicKey) this.mKeyPair.getPublicKey(), this.mDeviceName));
                                    }
                                } else {
                                    generateAuth = AdbProtocol.generateAuth(2, AndroidPubkey.adbAuthSign(this.mKeyPair.getPrivateKey(), parse.payload));
                                    this.mSentSignature = true;
                                }
                                sendPacket(generateAuth);
                            }
                            break;
                        case AdbProtocol.A_CNXN /* 1314410051 */:
                            synchronized (this) {
                                this.mProtocolVersion = parse.arg0;
                                this.mMaxData = parse.arg1;
                                this.mConnectionEstablished = true;
                                notifyAll();
                            }
                        case AdbProtocol.A_STLS /* 1397511251 */:
                            sendPacket(AdbProtocol.generateStls());
                            SSLSocket sSLSocket = (SSLSocket) SslUtils.getSslContext(this.mKeyPair).getSocketFactory().createSocket(this.mSocket, this.mHost, this.mPort, true);
                            sSLSocket.startHandshake();
                            Log.d(TAG, "Handshake succeeded.");
                            synchronized (this) {
                                this.mTlsInputStream = sSLSocket.getInputStream();
                                this.mTlsOutputStream = sSLSocket.getOutputStream();
                                this.mIsTls = true;
                            }
                        default:
                            Log.e(TAG, String.format("Unrecognized command = 0x%x", Integer.valueOf(i)));
                    }
                } catch (Exception e) {
                    this.mConnectionException = e;
                    e.printStackTrace();
                }
            }
        }
        synchronized (this) {
            cleanupStreams();
            notifyAll();
            this.mConnectionEstablished = false;
            this.mConnectAttempted = false;
        }
    }

    private boolean waitForConnection(long j, TimeUnit timeUnit) throws InterruptedException, IOException, AdbPairingRequiredException {
        String message;
        synchronized (this) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                Objects.requireNonNull(timeUnit);
                long millis = currentTimeMillis + timeUnit.toMillis(j);
                while (!this.mConnectionEstablished && this.mConnectAttempted && millis - System.currentTimeMillis() > 0) {
                    wait(millis - System.currentTimeMillis());
                }
                if (!this.mConnectionEstablished) {
                    if (this.mConnectAttempted) {
                        return false;
                    }
                    if (!this.mAuthorisationFailed) {
                        Exception exc = this.mConnectionException;
                        if (exc != null && (exc instanceof SSLProtocolException) && (message = exc.getMessage()) != null && message.contains("protocol error")) {
                            throw ((AdbPairingRequiredException) new AdbPairingRequiredException("ADB pairing is required.").initCause(exc));
                        }
                        throw new IOException("Connection failed");
                    }
                    throw new AdbAuthenticationFailedException();
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.mSocket.close();
        this.mConnectionThread.interrupt();
        try {
            this.mConnectionThread.join();
        } catch (InterruptedException unused) {
        }
        try {
            this.mKeyPair.destroy();
        } catch (DestroyFailedException unused2) {
        }
    }

    public boolean connect() throws IOException, InterruptedException, AdbPairingRequiredException {
        return connect(Long.MAX_VALUE, TimeUnit.MILLISECONDS, false);
    }

    public void flushPacket() throws IOException {
        synchronized (this.mLock) {
            getOutputStream().flush();
        }
    }

    public int getMaxData() throws InterruptedException, IOException, AdbPairingRequiredException {
        if (this.mConnectAttempted) {
            waitForConnection(Long.MAX_VALUE, TimeUnit.MILLISECONDS);
            return this.mMaxData;
        }
        throw new IllegalStateException("connect() must be called first");
    }

    public int getProtocolVersion() {
        return this.mProtocolVersion;
    }

    public boolean isConnected() {
        if (!this.mSocket.isClosed() && this.mSocket.isConnected()) {
            return true;
        }
        return false;
    }

    public boolean isConnectionEstablished() {
        return this.mConnectionEstablished;
    }

    public AdbStream open(int i, String... strArr) throws IOException, InterruptedException, AdbPairingRequiredException {
        if (i >= 1 && i <= 15) {
            return open(LocalServices.getDestination(i, strArr));
        }
        throw new IllegalArgumentException(AbstractC0214jf.a(i, "Invalid service: "));
    }

    public void sendPacket(byte[] bArr) throws IOException {
        synchronized (this.mLock) {
            OutputStream outputStream = getOutputStream();
            outputStream.write(bArr);
            outputStream.flush();
        }
    }

    public void setDeviceName(String str) {
        Objects.requireNonNull(str);
        this.mDeviceName = str;
    }

    public static AdbConnection create(String str, int i, PrivateKey privateKey, Certificate certificate, int i2) throws IOException {
        Objects.requireNonNull(privateKey);
        Objects.requireNonNull(certificate);
        return create(str, i, new KeyPair(privateKey, certificate), i2);
    }

    public boolean connect(long j, TimeUnit timeUnit, boolean z) throws IOException, InterruptedException, AdbAuthenticationFailedException, AdbPairingRequiredException {
        if (!this.mConnectionEstablished) {
            sendPacket(AdbProtocol.generateConnect(this.mApi));
            this.mConnectAttempted = true;
            this.mAbortOnUnauthorised = z;
            this.mAuthorisationFailed = false;
            this.mConnectionThread.start();
            Objects.requireNonNull(timeUnit);
            return waitForConnection(j, timeUnit);
        }
        throw new IllegalStateException("Already connected");
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class Builder {
        private int mApi;
        private Certificate mCertificate;
        private String mDeviceName;
        private String mHost;
        private KeyPair mKeyPair;
        private int mPort;
        private PrivateKey mPrivateKey;

        public Builder() {
            this.mHost = "127.0.0.1";
            this.mPort = 5555;
            this.mApi = 1;
        }

        public AdbConnection build() throws IOException {
            Certificate certificate;
            if (this.mKeyPair == null) {
                PrivateKey privateKey = this.mPrivateKey;
                if (privateKey != null && (certificate = this.mCertificate) != null) {
                    this.mKeyPair = new KeyPair(privateKey, certificate);
                } else {
                    throw new UnsupportedOperationException("Private key and certificate must be set.");
                }
            }
            AdbConnection create = AdbConnection.create(this.mHost, this.mPort, this.mKeyPair, this.mApi);
            String str = this.mDeviceName;
            if (str != null) {
                create.setDeviceName(str);
            }
            return create;
        }

        public AdbConnection connect() throws IOException, InterruptedException, AdbPairingRequiredException {
            AdbConnection build = build();
            if (build.connect()) {
                throw new IOException("Unable to establish a new connection.");
            }
            return build;
        }

        public Builder setApi(int i) {
            this.mApi = i;
            return this;
        }

        public Builder setCertificate(Certificate certificate) {
            this.mCertificate = certificate;
            return this;
        }

        public Builder setDeviceName(String str) {
            this.mDeviceName = str;
            return this;
        }

        public Builder setHost(String str) {
            this.mHost = str;
            return this;
        }

        public Builder setKeyPair(KeyPair keyPair) {
            this.mKeyPair = keyPair;
            return this;
        }

        public Builder setPort(int i) {
            this.mPort = i;
            return this;
        }

        public Builder setPrivateKey(PrivateKey privateKey) {
            this.mPrivateKey = privateKey;
            return this;
        }

        public AdbConnection connect(long j, TimeUnit timeUnit, boolean z) throws IOException, InterruptedException, AdbPairingRequiredException {
            AdbConnection build = build();
            if (build.connect(j, timeUnit, z)) {
                throw new IOException("Unable to establish a new connection.");
            }
            return build;
        }

        public Builder(String str, int i) {
            this.mApi = 1;
            this.mHost = str;
            this.mPort = i;
        }
    }

    public static AdbConnection create(String str, int i, KeyPair keyPair, int i2) throws IOException {
        return new AdbConnection(str, i, keyPair, i2);
    }

    public AdbStream open(String str) throws IOException, InterruptedException, AdbPairingRequiredException {
        int i = this.mLastLocalId + 1;
        this.mLastLocalId = i;
        if (this.mConnectAttempted) {
            waitForConnection(Long.MAX_VALUE, TimeUnit.MILLISECONDS);
            AdbStream adbStream = new AdbStream(this, i);
            this.mOpenedStreams.put(Integer.valueOf(i), adbStream);
            Objects.requireNonNull(str);
            sendPacket(AdbProtocol.generateOpen(i, str));
            synchronized (adbStream) {
                adbStream.wait();
            }
            if (!adbStream.isClosed()) {
                return adbStream;
            }
            this.mOpenedStreams.remove(Integer.valueOf(i));
            throw new ConnectException("Stream open actively rejected by remote peer.");
        }
        throw new IllegalStateException("connect() must be called first");
    }
}
