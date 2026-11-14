package io.github.muntashirakon.adb;

import android.annotation.SuppressLint;
import android.os.Build;
import android.util.Log;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.InvalidKeyException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.interfaces.RSAPublicKey;
import java.util.Arrays;
import java.util.Objects;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLServerSocket;
import javax.net.ssl.SSLSocket;
import org.conscrypt.Conscrypt;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class PairingConnectionCtx implements Closeable {
    public static final String EXPORTED_KEY_LABEL = "adb-label\u0000";
    public static final int EXPORT_KEY_SIZE = 64;
    public static final String TAG = "PairingConnectionCtx";
    private final String mHost;
    private DataInputStream mInputStream;
    private DataOutputStream mOutputStream;
    private PairingAuthCtx mPairingAuthCtx;
    private final PeerInfo mPeerInfo;
    private final int mPort;
    private final byte[] mPswd;
    private final Role mRole;
    private final SSLContext mSslContext;
    private State mState;

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class PairingPacketHeader {
        public static final byte CURRENT_KEY_HEADER_VERSION = 1;
        public static final int MAX_PAYLOAD_SIZE = 16384;
        public static final byte MAX_SUPPORTED_KEY_HEADER_VERSION = 1;
        public static final byte MIN_SUPPORTED_KEY_HEADER_VERSION = 1;
        public static final byte PAIRING_PACKET_HEADER_SIZE = 6;
        public static final byte PEER_INFO = 1;
        public static final byte SPAKE2_MSG = 0;
        private final int payloadSize;
        private final byte type;
        private final byte version;

        public PairingPacketHeader(byte b, byte b2, int i) {
            this.version = b;
            this.type = b2;
            this.payloadSize = i;
        }

        public static PairingPacketHeader readFrom(ByteBuffer byteBuffer) {
            byte b = byteBuffer.get();
            byte b2 = byteBuffer.get();
            int i = byteBuffer.getInt();
            if (b >= 1 && b <= 1) {
                if (b2 != 0 && b2 != 1) {
                    Log.e(PairingConnectionCtx.TAG, "Unknown PairingPacket type " + ((int) b2));
                    return null;
                }
                if (i > 0 && i <= 16384) {
                    return new PairingPacketHeader(b, b2, i);
                }
                Log.e(PairingConnectionCtx.TAG, "Header payload not within a safe payload size (size=" + i + ")");
                return null;
            }
            Log.e(PairingConnectionCtx.TAG, "PairingPacketHeader version mismatch (us=1 them=" + ((int) b) + ")");
            return null;
        }

        public String toString() {
            return "PairingPacketHeader{version=" + ((int) this.version) + ", type=" + ((int) this.type) + ", payloadSize=" + this.payloadSize + '}';
        }

        public void writeTo(ByteBuffer byteBuffer) {
            byteBuffer.put(this.version).put(this.type).putInt(this.payloadSize);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class PeerInfo {
        public static final byte ADB_DEVICE_GUID = 0;
        public static final byte ADB_RSA_PUB_KEY = 0;
        public static final int MAX_PEER_INFO_SIZE = 8192;
        private final byte[] data;
        private final byte type;

        public PeerInfo(byte b, byte[] bArr) {
            byte[] bArr2 = new byte[8191];
            this.data = bArr2;
            this.type = b;
            System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, 8191));
        }

        public static PeerInfo readFrom(ByteBuffer byteBuffer) {
            byte b = byteBuffer.get();
            byte[] bArr = new byte[8191];
            byteBuffer.get(bArr);
            return new PeerInfo(b, bArr);
        }

        public String toString() {
            return "PeerInfo{type=" + ((int) this.type) + ", data=" + Arrays.toString(this.data) + '}';
        }

        public void writeTo(ByteBuffer byteBuffer) {
            byteBuffer.put(this.type).put(this.data);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public enum Role {
        Client,
        Server
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public enum State {
        Ready,
        ExchangingMsgs,
        ExchangingPeerInfo,
        Stopped
    }

    public PairingConnectionCtx(String str, int i, byte[] bArr, KeyPair keyPair, String str2) throws NoSuchAlgorithmException, KeyManagementException, InvalidKeyException {
        this.mRole = Role.Client;
        this.mState = State.Ready;
        Objects.requireNonNull(str);
        this.mHost = str;
        this.mPort = i;
        Objects.requireNonNull(bArr);
        this.mPswd = bArr;
        RSAPublicKey rSAPublicKey = (RSAPublicKey) keyPair.getPublicKey();
        Objects.requireNonNull(str2);
        this.mPeerInfo = new PeerInfo((byte) 0, AndroidPubkey.encodeWithName(rSAPublicKey, str2));
        this.mSslContext = SslUtils.getSslContext(keyPair);
    }

    private boolean checkHeaderType(byte b, byte b2) {
        if (b != b2) {
            Log.e(TAG, "Unexpected header type (expected=" + ((int) b) + " actual=" + ((int) b2) + ")");
            return false;
        }
        return true;
    }

    private PairingPacketHeader createHeader(byte b, int i) {
        return new PairingPacketHeader((byte) 1, b, i);
    }

    private boolean doExchangeMsgs() throws IOException {
        byte[] msg = this.mPairingAuthCtx.getMsg();
        writeHeader(createHeader((byte) 0, msg.length), msg);
        PairingPacketHeader readHeader = readHeader();
        if (readHeader == null || !checkHeaderType((byte) 0, readHeader.type)) {
            return false;
        }
        byte[] bArr = new byte[readHeader.payloadSize];
        this.mInputStream.readFully(bArr);
        try {
            return this.mPairingAuthCtx.initCipher(bArr);
        } catch (Exception e) {
            Log.e(TAG, "Unable to initialize pairing cipher");
            throw ((IOException) new IOException().initCause(e));
        }
    }

    private boolean doExchangePeerInfo() throws IOException {
        ByteBuffer order = ByteBuffer.allocate(8192).order(ByteOrder.BIG_ENDIAN);
        this.mPeerInfo.writeTo(order);
        byte[] encrypt = this.mPairingAuthCtx.encrypt(order.array());
        if (encrypt == null) {
            Log.e(TAG, "Failed to encrypt peer info");
            return false;
        }
        writeHeader(createHeader((byte) 1, encrypt.length), encrypt);
        PairingPacketHeader readHeader = readHeader();
        if (readHeader == null || !checkHeaderType((byte) 1, readHeader.type)) {
            return false;
        }
        byte[] bArr = new byte[readHeader.payloadSize];
        this.mInputStream.readFully(bArr);
        byte[] decrypt = this.mPairingAuthCtx.decrypt(bArr);
        if (decrypt == null) {
            Log.e(TAG, "Unsupported payload while decrypting peer info.");
            return false;
        }
        if (decrypt.length != 8192) {
            Log.e(TAG, "Got size=" + decrypt.length + " PeerInfo.size=8192");
            return false;
        }
        Log.d(TAG, PeerInfo.readFrom(ByteBuffer.wrap(decrypt)).toString());
        return true;
    }

    @SuppressLint({"PrivateApi"})
    private byte[] exportKeyingMaterial(SSLSocket sSLSocket, int i) throws SSLException {
        Class cls;
        try {
            if (SslUtils.isCustomConscrypt()) {
                cls = Conscrypt.class;
                int i2 = Conscrypt.a;
            } else if (Build.VERSION.SDK_INT >= 29) {
                cls = Class.forName("com.android.org.conscrypt.Conscrypt");
            } else {
                throw new SSLException("TLSv1.3 isn't supported on your platform. Use custom Conscrypt library instead.");
            }
            return (byte[]) cls.getMethod("exportKeyingMaterial", SSLSocket.class, String.class, byte[].class, Integer.TYPE).invoke(null, sSLSocket, EXPORTED_KEY_LABEL, null, Integer.valueOf(i));
        } catch (SSLException e) {
            throw e;
        } catch (Throwable th) {
            throw new SSLException(th);
        }
    }

    private void notifyResult() {
        this.mState = State.Stopped;
    }

    private PairingPacketHeader readHeader() throws IOException {
        byte[] bArr = new byte[6];
        this.mInputStream.readFully(bArr);
        return PairingPacketHeader.readFrom(ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN));
    }

    private void setupTlsConnection() throws IOException {
        Socket socket;
        if (this.mRole == Role.Server) {
            socket = ((SSLServerSocket) this.mSslContext.getServerSocketFactory().createServerSocket(this.mPort)).accept();
        } else {
            socket = new Socket(this.mHost, this.mPort);
        }
        socket.setTcpNoDelay(true);
        SSLSocket sSLSocket = (SSLSocket) this.mSslContext.getSocketFactory().createSocket(socket, this.mHost, this.mPort, true);
        sSLSocket.startHandshake();
        Log.d(TAG, "Handshake succeeded.");
        this.mInputStream = new DataInputStream(sSLSocket.getInputStream());
        this.mOutputStream = new DataOutputStream(sSLSocket.getOutputStream());
        byte[] exportKeyingMaterial = exportKeyingMaterial(sSLSocket, 64);
        byte[] bArr = this.mPswd;
        byte[] bArr2 = new byte[bArr.length + exportKeyingMaterial.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        System.arraycopy(exportKeyingMaterial, 0, bArr2, this.mPswd.length, exportKeyingMaterial.length);
        PairingAuthCtx createAlice = PairingAuthCtx.createAlice(bArr2);
        if (createAlice != null) {
            this.mPairingAuthCtx = createAlice;
            return;
        }
        throw new IOException("Unable to create PairingAuthCtx.");
    }

    private void writeHeader(PairingPacketHeader pairingPacketHeader, byte[] bArr) throws IOException {
        ByteBuffer order = ByteBuffer.allocate(6).order(ByteOrder.BIG_ENDIAN);
        pairingPacketHeader.writeTo(order);
        this.mOutputStream.write(order.array());
        this.mOutputStream.write(bArr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Arrays.fill(this.mPswd, (byte) 0);
        try {
            this.mInputStream.close();
        } catch (IOException unused) {
        }
        try {
            this.mOutputStream.close();
        } catch (IOException unused2) {
        }
        if (this.mState != State.Ready) {
            this.mPairingAuthCtx.destroy();
        }
    }

    public void start() throws IOException {
        if (this.mState == State.Ready) {
            this.mState = State.ExchangingMsgs;
            setupTlsConnection();
            while (true) {
                int ordinal = this.mState.ordinal();
                if (ordinal == 0) {
                    break;
                }
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        if (ordinal == 3) {
                            break;
                        }
                    } else if (doExchangePeerInfo()) {
                        notifyResult();
                        return;
                    } else {
                        notifyResult();
                        throw new IOException("Could not exchange peer info.");
                    }
                } else if (doExchangeMsgs()) {
                    this.mState = State.ExchangingPeerInfo;
                } else {
                    notifyResult();
                    throw new IOException("Exchanging message wasn't successful.");
                }
            }
            throw new IOException("Connection closed with errors.");
        }
        throw new IOException("Connection is not ready yet.");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PairingConnectionCtx(String str, int i, byte[] bArr, PrivateKey privateKey, Certificate certificate, String str2) throws NoSuchAlgorithmException, KeyManagementException, InvalidKeyException {
        this(str, i, bArr, new KeyPair(privateKey, certificate), str2);
        Objects.requireNonNull(privateKey);
        Objects.requireNonNull(certificate);
    }
}
