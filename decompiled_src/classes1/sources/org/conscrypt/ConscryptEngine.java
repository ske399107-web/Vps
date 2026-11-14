package org.conscrypt;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.nio.ByteBuffer;
import java.nio.ReadOnlyBufferException;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.security.interfaces.ECKey;
import java.security.spec.ECParameterSpec;
import java.util.Arrays;
import javax.crypto.SecretKey;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSession;
import javax.net.ssl.X509ExtendedKeyManager;
import javax.net.ssl.X509KeyManager;
import javax.net.ssl.X509TrustManager;
import javax.security.auth.x500.X500Principal;
import o.AbstractC0304o5;
import org.conscrypt.ExternalSession;
import org.conscrypt.NativeCrypto;
import org.conscrypt.NativeRef;
import org.conscrypt.NativeSsl;
import org.conscrypt.SSLParametersImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class ConscryptEngine extends AbstractConscryptEngine implements NativeCrypto.SSLHandshakeCallbacks, SSLParametersImpl.AliasChooser, SSLParametersImpl.PSKCallbacks {
    private static final SSLEngineResult CLOSED_NOT_HANDSHAKING;
    private static final SSLEngineResult NEED_UNWRAP_CLOSED;
    private static final SSLEngineResult NEED_UNWRAP_OK;
    private static final SSLEngineResult NEED_WRAP_CLOSED;
    private static final SSLEngineResult NEED_WRAP_OK;
    private static BufferAllocator defaultBufferAllocator;
    private ActiveSession activeSession;
    private BufferAllocator bufferAllocator;
    private OpenSSLKey channelIdPrivateKey;
    private SessionSnapshot closedSession;
    private final SSLSession externalSession;
    private boolean handshakeFinished;
    private HandshakeListener handshakeListener;
    private ByteBuffer lazyDirectBuffer;
    private int maxSealOverhead;
    private final NativeSsl.BioWrapper networkBio;
    private String peerHostname;
    private final PeerInfoProvider peerInfoProvider;
    private final ByteBuffer[] singleDstBuffer;
    private final ByteBuffer[] singleSrcBuffer;
    private final NativeSsl ssl;
    private final SSLParametersImpl sslParameters;
    private int state;

    static {
        SSLEngineResult.Status status = SSLEngineResult.Status.OK;
        SSLEngineResult.HandshakeStatus handshakeStatus = SSLEngineResult.HandshakeStatus.NEED_UNWRAP;
        NEED_UNWRAP_OK = new SSLEngineResult(status, handshakeStatus, 0, 0);
        SSLEngineResult.Status status2 = SSLEngineResult.Status.CLOSED;
        NEED_UNWRAP_CLOSED = new SSLEngineResult(status2, handshakeStatus, 0, 0);
        SSLEngineResult.HandshakeStatus handshakeStatus2 = SSLEngineResult.HandshakeStatus.NEED_WRAP;
        NEED_WRAP_OK = new SSLEngineResult(status, handshakeStatus2, 0, 0);
        NEED_WRAP_CLOSED = new SSLEngineResult(status2, handshakeStatus2, 0, 0);
        CLOSED_NOT_HANDSHAKING = new SSLEngineResult(status2, SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING, 0, 0);
        defaultBufferAllocator = null;
    }

    public ConscryptEngine(SSLParametersImpl sSLParametersImpl) {
        this.bufferAllocator = defaultBufferAllocator;
        this.state = 0;
        this.externalSession = Platform.wrapSSLSession(new ExternalSession(new ExternalSession.Provider() { // from class: org.conscrypt.ConscryptEngine.1
            @Override // org.conscrypt.ExternalSession.Provider
            public ConscryptSession provideSession() {
                return ConscryptEngine.this.provideSession();
            }
        }));
        this.singleSrcBuffer = new ByteBuffer[1];
        this.singleDstBuffer = new ByteBuffer[1];
        this.sslParameters = sSLParametersImpl;
        this.peerInfoProvider = PeerInfoProvider.nullProvider();
        NativeSsl newSsl = newSsl(sSLParametersImpl, this, this);
        this.ssl = newSsl;
        this.networkBio = newSsl.newBio();
    }

    private void beginHandshakeInternal() throws SSLException {
        NativeSslSession cachedSession;
        int i = this.state;
        if (i != 0) {
            if (i != 1) {
                if (i != 6 && i != 7 && i != 8) {
                    return;
                } else {
                    throw new SSLHandshakeException("Engine has already been closed");
                }
            }
            transitionTo(2);
            try {
                try {
                    this.ssl.initialize(getHostname(), this.channelIdPrivateKey);
                    if (getUseClientMode() && (cachedSession = clientSessionContext().getCachedSession(getHostname(), getPeerPort(), this.sslParameters)) != null) {
                        cachedSession.offerToResume(this.ssl);
                    }
                    this.maxSealOverhead = this.ssl.getMaxSealOverhead();
                    handshake();
                    return;
                } catch (IOException e) {
                    if (e.getMessage().contains("unexpected CCS")) {
                        Platform.logEvent("ssl_unexpected_ccs: host=" + getPeerHost());
                    }
                    closeAll();
                    throw SSLUtils.toSSLHandshakeException(e);
                }
            } catch (Throwable th) {
                closeAndFreeResources();
                throw th;
            }
        }
        throw new IllegalStateException("Client/server mode must be set before handshake");
    }

    private static int calcDstsLength(ByteBuffer[] byteBufferArr, int i, int i2) {
        boolean z;
        int i3 = 0;
        for (int i4 = 0; i4 < byteBufferArr.length; i4++) {
            ByteBuffer byteBuffer = byteBufferArr[i4];
            if (byteBuffer != null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, "dsts[%d] is null", Integer.valueOf(i4));
            if (!byteBuffer.isReadOnly()) {
                if (i4 >= i && i4 < i + i2) {
                    i3 += byteBuffer.remaining();
                }
            } else {
                throw new ReadOnlyBufferException();
            }
        }
        return i3;
    }

    private static long calcSrcsLength(ByteBuffer[] byteBufferArr, int i, int i2) {
        long j = 0;
        while (i < i2) {
            if (byteBufferArr[i] != null) {
                j += r2.remaining();
                i++;
            } else {
                throw new IllegalArgumentException(AbstractC0304o5.e("srcs[", i, "] is null"));
            }
        }
        return j;
    }

    private ClientSessionContext clientSessionContext() {
        return this.sslParameters.getClientSessionContext();
    }

    private void closeAll() {
        closeOutbound();
        closeInbound();
    }

    private void closeAndFreeResources() {
        transitionTo(8);
        NativeSsl nativeSsl = this.ssl;
        if (nativeSsl != null) {
            nativeSsl.close();
        }
        NativeSsl.BioWrapper bioWrapper = this.networkBio;
        if (bioWrapper != null) {
            bioWrapper.close();
        }
    }

    private SSLException convertException(Throwable th) {
        if (!(th instanceof SSLHandshakeException) && this.handshakeFinished) {
            return SSLUtils.toSSLException(th);
        }
        return SSLUtils.toSSLHandshakeException(th);
    }

    private long directByteBufferAddress(ByteBuffer byteBuffer, int i) {
        return NativeCrypto.getDirectBufferAddress(byteBuffer) + i;
    }

    private void finishHandshake() throws SSLException {
        this.handshakeFinished = true;
        HandshakeListener handshakeListener = this.handshakeListener;
        if (handshakeListener != null) {
            handshakeListener.onHandshakeFinished();
        }
    }

    private void freeIfDone() {
        if (isInboundDone() && isOutboundDone()) {
            closeAndFreeResources();
        }
    }

    public static BufferAllocator getDefaultBufferAllocator() {
        return defaultBufferAllocator;
    }

    private SSLEngineResult.Status getEngineStatus() {
        int i = this.state;
        if (i != 6 && i != 7 && i != 8) {
            return SSLEngineResult.Status.OK;
        }
        return SSLEngineResult.Status.CLOSED;
    }

    private SSLEngineResult.HandshakeStatus getHandshakeStatusInternal() {
        if (this.handshakeFinished) {
            return SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING;
        }
        switch (this.state) {
            case 0:
            case 1:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING;
            case 2:
                return pendingStatus(pendingOutboundEncryptedBytes());
            case 3:
                return SSLEngineResult.HandshakeStatus.NEED_WRAP;
            default:
                throw new IllegalStateException("Unexpected engine state: " + this.state);
        }
    }

    private ByteBuffer getOrCreateLazyDirectBuffer() {
        if (this.lazyDirectBuffer == null) {
            this.lazyDirectBuffer = ByteBuffer.allocateDirect(Math.max(16384, 16709));
        }
        this.lazyDirectBuffer.clear();
        return this.lazyDirectBuffer;
    }

    private SSLEngineResult.HandshakeStatus handshake() throws SSLException {
        try {
            try {
                int doHandshake = this.ssl.doHandshake();
                if (doHandshake != 2) {
                    if (doHandshake != 3) {
                        this.activeSession.onPeerCertificateAvailable(getPeerHost(), getPeerPort());
                        finishHandshake();
                        return SSLEngineResult.HandshakeStatus.FINISHED;
                    }
                    return SSLEngineResult.HandshakeStatus.NEED_WRAP;
                }
                return pendingStatus(pendingOutboundEncryptedBytes());
            } catch (IOException e) {
                closeAll();
                throw e;
            }
        } catch (Exception e2) {
            throw SSLUtils.toSSLHandshakeException(e2);
        }
    }

    private boolean isHandshakeStarted() {
        int i = this.state;
        if (i != 0 && i != 1) {
            return true;
        }
        return false;
    }

    private SSLEngineResult.HandshakeStatus mayFinishHandshake(SSLEngineResult.HandshakeStatus handshakeStatus) throws SSLException {
        if (!this.handshakeFinished && handshakeStatus == SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING) {
            return handshake();
        }
        return handshakeStatus;
    }

    private SSLEngineResult newResult(int i, int i2, SSLEngineResult.HandshakeStatus handshakeStatus) throws SSLException {
        SSLEngineResult.Status engineStatus = getEngineStatus();
        if (handshakeStatus != SSLEngineResult.HandshakeStatus.FINISHED) {
            handshakeStatus = getHandshakeStatusInternal();
        }
        return new SSLEngineResult(engineStatus, mayFinishHandshake(handshakeStatus), i, i2);
    }

    private static NativeSsl newSsl(SSLParametersImpl sSLParametersImpl, ConscryptEngine conscryptEngine, SSLParametersImpl.AliasChooser aliasChooser) {
        try {
            return NativeSsl.newInstance(sSLParametersImpl, conscryptEngine, aliasChooser, conscryptEngine);
        } catch (SSLException e) {
            throw new RuntimeException(e);
        }
    }

    private SSLException newSslExceptionWithMessage(String str) {
        if (!this.handshakeFinished) {
            return new SSLException(str);
        }
        return new SSLHandshakeException(str);
    }

    private int pendingInboundCleartextBytes() {
        return this.ssl.getPendingReadableBytes();
    }

    private static SSLEngineResult.HandshakeStatus pendingStatus(int i) {
        if (i > 0) {
            return SSLEngineResult.HandshakeStatus.NEED_WRAP;
        }
        return SSLEngineResult.HandshakeStatus.NEED_UNWRAP;
    }

    private ConscryptSession provideAfterHandshakeSession() {
        if (this.state < 2) {
            return SSLNullSession.getNullSession();
        }
        return provideSession();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ConscryptSession provideHandshakeSession() {
        ConscryptSession nullSession;
        synchronized (this.ssl) {
            try {
                if (this.state == 2) {
                    nullSession = this.activeSession;
                } else {
                    nullSession = SSLNullSession.getNullSession();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return nullSession;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ConscryptSession provideSession() {
        synchronized (this.ssl) {
            try {
                int i = this.state;
                if (i == 8) {
                    ConscryptSession conscryptSession = this.closedSession;
                    if (conscryptSession == null) {
                        conscryptSession = SSLNullSession.getNullSession();
                    }
                    return conscryptSession;
                }
                if (i < 3) {
                    return SSLNullSession.getNullSession();
                }
                return this.activeSession;
            } finally {
            }
        }
    }

    private int readEncryptedData(ByteBuffer byteBuffer, int i) throws SSLException {
        try {
            int position = byteBuffer.position();
            if (byteBuffer.remaining() >= i) {
                int min = Math.min(i, byteBuffer.limit() - position);
                if (byteBuffer.isDirect()) {
                    int readEncryptedDataDirect = readEncryptedDataDirect(byteBuffer, position, min);
                    if (readEncryptedDataDirect > 0) {
                        byteBuffer.position(position + readEncryptedDataDirect);
                        return readEncryptedDataDirect;
                    }
                    return readEncryptedDataDirect;
                }
                return readEncryptedDataHeap(byteBuffer, min);
            }
            return 0;
        } catch (Exception e) {
            throw convertException(e);
        }
    }

    private int readEncryptedDataDirect(ByteBuffer byteBuffer, int i, int i2) throws IOException {
        return this.networkBio.readDirectByteBuffer(directByteBufferAddress(byteBuffer, i), i2);
    }

    private int readEncryptedDataHeap(ByteBuffer byteBuffer, int i) throws IOException {
        ByteBuffer orCreateLazyDirectBuffer;
        AllocatedBuffer allocatedBuffer = null;
        try {
            BufferAllocator bufferAllocator = this.bufferAllocator;
            if (bufferAllocator != null) {
                allocatedBuffer = bufferAllocator.allocateDirectBuffer(i);
                orCreateLazyDirectBuffer = allocatedBuffer.nioBuffer();
            } else {
                orCreateLazyDirectBuffer = getOrCreateLazyDirectBuffer();
            }
            int readEncryptedDataDirect = readEncryptedDataDirect(orCreateLazyDirectBuffer, 0, Math.min(i, orCreateLazyDirectBuffer.remaining()));
            if (readEncryptedDataDirect > 0) {
                orCreateLazyDirectBuffer.position(readEncryptedDataDirect);
                orCreateLazyDirectBuffer.flip();
                byteBuffer.put(orCreateLazyDirectBuffer);
            }
            if (allocatedBuffer != null) {
                allocatedBuffer.release();
            }
            return readEncryptedDataDirect;
        } catch (Throwable th) {
            if (allocatedBuffer != null) {
                allocatedBuffer.release();
            }
            throw th;
        }
    }

    private SSLEngineResult readPendingBytesFromBIO(ByteBuffer byteBuffer, int i, int i2, SSLEngineResult.HandshakeStatus handshakeStatus) throws SSLException {
        try {
            int pendingOutboundEncryptedBytes = pendingOutboundEncryptedBytes();
            if (pendingOutboundEncryptedBytes > 0) {
                if (byteBuffer.remaining() < pendingOutboundEncryptedBytes) {
                    SSLEngineResult.Status status = SSLEngineResult.Status.BUFFER_OVERFLOW;
                    if (handshakeStatus != SSLEngineResult.HandshakeStatus.FINISHED) {
                        handshakeStatus = getHandshakeStatus(pendingOutboundEncryptedBytes);
                    }
                    return new SSLEngineResult(status, mayFinishHandshake(handshakeStatus), i, i2);
                }
                int readEncryptedData = readEncryptedData(byteBuffer, pendingOutboundEncryptedBytes);
                if (readEncryptedData <= 0) {
                    NativeCrypto.SSL_clear_error();
                } else {
                    i2 += readEncryptedData;
                    pendingOutboundEncryptedBytes -= readEncryptedData;
                }
                SSLEngineResult.Status engineStatus = getEngineStatus();
                if (handshakeStatus != SSLEngineResult.HandshakeStatus.FINISHED) {
                    handshakeStatus = getHandshakeStatus(pendingOutboundEncryptedBytes);
                }
                return new SSLEngineResult(engineStatus, mayFinishHandshake(handshakeStatus), i, i2);
            }
            return null;
        } catch (Exception e) {
            throw convertException(e);
        }
    }

    private int readPlaintextData(ByteBuffer byteBuffer) throws IOException {
        try {
            int position = byteBuffer.position();
            int min = Math.min(16709, byteBuffer.limit() - position);
            if (byteBuffer.isDirect()) {
                int readPlaintextDataDirect = readPlaintextDataDirect(byteBuffer, position, min);
                if (readPlaintextDataDirect > 0) {
                    byteBuffer.position(position + readPlaintextDataDirect);
                }
                return readPlaintextDataDirect;
            }
            return readPlaintextDataHeap(byteBuffer, min);
        } catch (CertificateException e) {
            throw convertException(e);
        }
    }

    private int readPlaintextDataDirect(ByteBuffer byteBuffer, int i, int i2) throws IOException, CertificateException {
        return this.ssl.readDirectByteBuffer(directByteBufferAddress(byteBuffer, i), i2);
    }

    private int readPlaintextDataHeap(ByteBuffer byteBuffer, int i) throws IOException, CertificateException {
        ByteBuffer orCreateLazyDirectBuffer;
        AllocatedBuffer allocatedBuffer = null;
        try {
            BufferAllocator bufferAllocator = this.bufferAllocator;
            if (bufferAllocator != null) {
                allocatedBuffer = bufferAllocator.allocateDirectBuffer(i);
                orCreateLazyDirectBuffer = allocatedBuffer.nioBuffer();
            } else {
                orCreateLazyDirectBuffer = getOrCreateLazyDirectBuffer();
            }
            int readPlaintextDataDirect = readPlaintextDataDirect(orCreateLazyDirectBuffer, 0, Math.min(i, orCreateLazyDirectBuffer.remaining()));
            if (readPlaintextDataDirect > 0) {
                orCreateLazyDirectBuffer.position(readPlaintextDataDirect);
                orCreateLazyDirectBuffer.flip();
                byteBuffer.put(orCreateLazyDirectBuffer);
            }
            if (allocatedBuffer != null) {
                allocatedBuffer.release();
            }
            return readPlaintextDataDirect;
        } catch (Throwable th) {
            if (allocatedBuffer != null) {
                allocatedBuffer.release();
            }
            throw th;
        }
    }

    private void resetSingleDstBuffer() {
        this.singleDstBuffer[0] = null;
    }

    private void resetSingleSrcBuffer() {
        this.singleSrcBuffer[0] = null;
    }

    private void sendSSLShutdown() {
        try {
            this.ssl.shutdown();
        } catch (IOException unused) {
        }
    }

    private AbstractSessionContext sessionContext() {
        return this.sslParameters.getSessionContext();
    }

    public static void setDefaultBufferAllocator(BufferAllocator bufferAllocator) {
        defaultBufferAllocator = bufferAllocator;
    }

    private ByteBuffer[] singleDstBuffer(ByteBuffer byteBuffer) {
        ByteBuffer[] byteBufferArr = this.singleDstBuffer;
        byteBufferArr[0] = byteBuffer;
        return byteBufferArr;
    }

    private ByteBuffer[] singleSrcBuffer(ByteBuffer byteBuffer) {
        ByteBuffer[] byteBufferArr = this.singleSrcBuffer;
        byteBufferArr[0] = byteBuffer;
        return byteBufferArr;
    }

    private void transitionTo(int i) {
        int i2;
        if (i != 2) {
            if (i == 8 && !this.ssl.isClosed() && (i2 = this.state) >= 2 && i2 < 8) {
                this.closedSession = new SessionSnapshot(this.activeSession);
            }
        } else {
            this.handshakeFinished = false;
            this.activeSession = new ActiveSession(this.ssl, this.sslParameters.getSessionContext());
        }
        this.state = i;
    }

    private int writeEncryptedData(ByteBuffer byteBuffer, int i) throws SSLException {
        int writeEncryptedDataHeap;
        try {
            int position = byteBuffer.position();
            if (byteBuffer.isDirect()) {
                writeEncryptedDataHeap = writeEncryptedDataDirect(byteBuffer, position, i);
            } else {
                writeEncryptedDataHeap = writeEncryptedDataHeap(byteBuffer, position, i);
            }
            if (writeEncryptedDataHeap > 0) {
                byteBuffer.position(position + writeEncryptedDataHeap);
            }
            return writeEncryptedDataHeap;
        } catch (IOException e) {
            closeAll();
            throw new SSLException(e);
        }
    }

    private int writeEncryptedDataDirect(ByteBuffer byteBuffer, int i, int i2) throws IOException {
        return this.networkBio.writeDirectByteBuffer(directByteBufferAddress(byteBuffer, i), i2);
    }

    private int writeEncryptedDataHeap(ByteBuffer byteBuffer, int i, int i2) throws IOException {
        ByteBuffer orCreateLazyDirectBuffer;
        AllocatedBuffer allocatedBuffer = null;
        try {
            BufferAllocator bufferAllocator = this.bufferAllocator;
            if (bufferAllocator != null) {
                allocatedBuffer = bufferAllocator.allocateDirectBuffer(i2);
                orCreateLazyDirectBuffer = allocatedBuffer.nioBuffer();
            } else {
                orCreateLazyDirectBuffer = getOrCreateLazyDirectBuffer();
            }
            int limit = byteBuffer.limit();
            int min = Math.min(Math.min(limit - i, i2), orCreateLazyDirectBuffer.remaining());
            byteBuffer.limit(i + min);
            orCreateLazyDirectBuffer.put(byteBuffer);
            byteBuffer.limit(limit);
            byteBuffer.position(i);
            int writeEncryptedDataDirect = writeEncryptedDataDirect(orCreateLazyDirectBuffer, 0, min);
            byteBuffer.position(i);
            if (allocatedBuffer != null) {
                allocatedBuffer.release();
            }
            return writeEncryptedDataDirect;
        } catch (Throwable th) {
            if (allocatedBuffer != null) {
                allocatedBuffer.release();
            }
            throw th;
        }
    }

    private int writePlaintextData(ByteBuffer byteBuffer, int i) throws SSLException {
        int writePlaintextDataHeap;
        try {
            int position = byteBuffer.position();
            if (byteBuffer.isDirect()) {
                writePlaintextDataHeap = writePlaintextDataDirect(byteBuffer, position, i);
            } else {
                writePlaintextDataHeap = writePlaintextDataHeap(byteBuffer, position, i);
            }
            if (writePlaintextDataHeap > 0) {
                byteBuffer.position(position + writePlaintextDataHeap);
            }
            return writePlaintextDataHeap;
        } catch (Exception e) {
            throw convertException(e);
        }
    }

    private int writePlaintextDataDirect(ByteBuffer byteBuffer, int i, int i2) throws IOException {
        return this.ssl.writeDirectByteBuffer(directByteBufferAddress(byteBuffer, i), i2);
    }

    private int writePlaintextDataHeap(ByteBuffer byteBuffer, int i, int i2) throws IOException {
        ByteBuffer orCreateLazyDirectBuffer;
        AllocatedBuffer allocatedBuffer = null;
        try {
            BufferAllocator bufferAllocator = this.bufferAllocator;
            if (bufferAllocator != null) {
                allocatedBuffer = bufferAllocator.allocateDirectBuffer(i2);
                orCreateLazyDirectBuffer = allocatedBuffer.nioBuffer();
            } else {
                orCreateLazyDirectBuffer = getOrCreateLazyDirectBuffer();
            }
            int limit = byteBuffer.limit();
            int min = Math.min(i2, orCreateLazyDirectBuffer.remaining());
            byteBuffer.limit(i + min);
            orCreateLazyDirectBuffer.put(byteBuffer);
            orCreateLazyDirectBuffer.flip();
            byteBuffer.limit(limit);
            byteBuffer.position(i);
            int writePlaintextDataDirect = writePlaintextDataDirect(orCreateLazyDirectBuffer, 0, min);
            if (allocatedBuffer != null) {
                allocatedBuffer.release();
            }
            return writePlaintextDataDirect;
        } catch (Throwable th) {
            if (allocatedBuffer != null) {
                allocatedBuffer.release();
            }
            throw th;
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public void beginHandshake() throws SSLException {
        synchronized (this.ssl) {
            beginHandshakeInternal();
        }
    }

    @Override // org.conscrypt.SSLParametersImpl.AliasChooser
    public String chooseClientAlias(X509KeyManager x509KeyManager, X500Principal[] x500PrincipalArr, String[] strArr) {
        if (x509KeyManager instanceof X509ExtendedKeyManager) {
            return ((X509ExtendedKeyManager) x509KeyManager).chooseEngineClientAlias(strArr, x500PrincipalArr, this);
        }
        return x509KeyManager.chooseClientAlias(strArr, x500PrincipalArr, null);
    }

    @Override // org.conscrypt.SSLParametersImpl.PSKCallbacks
    public String chooseClientPSKIdentity(PSKKeyManager pSKKeyManager, String str) {
        return pSKKeyManager.chooseClientKeyIdentity(str, this);
    }

    @Override // org.conscrypt.SSLParametersImpl.AliasChooser
    public String chooseServerAlias(X509KeyManager x509KeyManager, String str) {
        if (x509KeyManager instanceof X509ExtendedKeyManager) {
            return ((X509ExtendedKeyManager) x509KeyManager).chooseEngineServerAlias(str, null, this);
        }
        return x509KeyManager.chooseServerAlias(str, null, null);
    }

    @Override // org.conscrypt.SSLParametersImpl.PSKCallbacks
    public String chooseServerPSKIdentityHint(PSKKeyManager pSKKeyManager) {
        return pSKKeyManager.chooseServerKeyIdentityHint(this);
    }

    @Override // org.conscrypt.NativeCrypto.SSLHandshakeCallbacks
    public void clientCertificateRequested(byte[] bArr, int[] iArr, byte[][] bArr2) throws CertificateEncodingException, SSLException {
        this.ssl.chooseClientCertificate(bArr, iArr, bArr2);
    }

    @Override // org.conscrypt.NativeCrypto.SSLHandshakeCallbacks
    public int clientPSKKeyRequested(String str, byte[] bArr, byte[] bArr2) {
        return this.ssl.clientPSKKeyRequested(str, bArr, bArr2);
    }

    @Override // javax.net.ssl.SSLEngine
    public void closeInbound() {
        synchronized (this.ssl) {
            try {
                int i = this.state;
                if (i != 8 && i != 6) {
                    if (isHandshakeStarted()) {
                        if (this.state == 7) {
                            transitionTo(8);
                        } else {
                            transitionTo(6);
                        }
                        freeIfDone();
                    } else {
                        closeAndFreeResources();
                    }
                }
            } finally {
            }
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public void closeOutbound() {
        synchronized (this.ssl) {
            try {
                int i = this.state;
                if (i != 8 && i != 7) {
                    if (isHandshakeStarted()) {
                        if (this.state == 6) {
                            transitionTo(8);
                        } else {
                            transitionTo(7);
                        }
                        sendSSLShutdown();
                        freeIfDone();
                    } else {
                        closeAndFreeResources();
                    }
                }
            } finally {
            }
        }
    }

    @Override // org.conscrypt.AbstractConscryptEngine
    public byte[] exportKeyingMaterial(String str, byte[] bArr, int i) throws SSLException {
        synchronized (this.ssl) {
            int i2 = this.state;
            if (i2 >= 3 && i2 != 8) {
                return this.ssl.exportKeyingMaterial(str, bArr, i);
            }
            return null;
        }
    }

    public void finalize() throws Throwable {
        try {
            closeAndFreeResources();
        } finally {
            super.finalize();
        }
    }

    @Override // org.conscrypt.AbstractConscryptEngine, javax.net.ssl.SSLEngine
    public String getApplicationProtocol() {
        return provideAfterHandshakeSession().getApplicationProtocol();
    }

    @Override // org.conscrypt.AbstractConscryptEngine
    public String[] getApplicationProtocols() {
        return this.sslParameters.getApplicationProtocols();
    }

    @Override // org.conscrypt.AbstractConscryptEngine
    public byte[] getChannelId() throws SSLException {
        byte[] tlsChannelId;
        synchronized (this.ssl) {
            try {
                if (!getUseClientMode()) {
                    if (!isHandshakeStarted()) {
                        tlsChannelId = this.ssl.getTlsChannelId();
                    } else {
                        throw new IllegalStateException("Channel ID is only available after handshake completes");
                    }
                } else {
                    throw new IllegalStateException("Not allowed in client mode");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return tlsChannelId;
    }

    @Override // javax.net.ssl.SSLEngine
    public Runnable getDelegatedTask() {
        return null;
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean getEnableSessionCreation() {
        return this.sslParameters.getEnableSessionCreation();
    }

    @Override // javax.net.ssl.SSLEngine
    public String[] getEnabledCipherSuites() {
        return this.sslParameters.getEnabledCipherSuites();
    }

    @Override // javax.net.ssl.SSLEngine
    public String[] getEnabledProtocols() {
        return this.sslParameters.getEnabledProtocols();
    }

    @Override // org.conscrypt.AbstractConscryptEngine, javax.net.ssl.SSLEngine
    public String getHandshakeApplicationProtocol() {
        String str;
        synchronized (this.ssl) {
            try {
                if (this.state >= 2) {
                    str = getApplicationProtocol();
                } else {
                    str = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLEngineResult.HandshakeStatus getHandshakeStatus() {
        SSLEngineResult.HandshakeStatus handshakeStatusInternal;
        synchronized (this.ssl) {
            handshakeStatusInternal = getHandshakeStatusInternal();
        }
        return handshakeStatusInternal;
    }

    @Override // org.conscrypt.AbstractConscryptEngine
    public String getHostname() {
        String str = this.peerHostname;
        if (str == null) {
            return this.peerInfoProvider.getHostname();
        }
        return str;
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean getNeedClientAuth() {
        return this.sslParameters.getNeedClientAuth();
    }

    @Override // org.conscrypt.SSLParametersImpl.PSKCallbacks
    public SecretKey getPSKKey(PSKKeyManager pSKKeyManager, String str, String str2) {
        return pSKKeyManager.getKey(str, str2, this);
    }

    @Override // org.conscrypt.AbstractConscryptEngine, javax.net.ssl.SSLEngine
    public String getPeerHost() {
        String str = this.peerHostname;
        if (str == null) {
            return this.peerInfoProvider.getHostnameOrIP();
        }
        return str;
    }

    @Override // org.conscrypt.AbstractConscryptEngine, javax.net.ssl.SSLEngine
    public int getPeerPort() {
        return this.peerInfoProvider.getPort();
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLParameters getSSLParameters() {
        SSLParameters sSLParameters = super.getSSLParameters();
        Platform.getSSLParameters(sSLParameters, this.sslParameters, this);
        return sSLParameters;
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLSession getSession() {
        return this.externalSession;
    }

    @Override // javax.net.ssl.SSLEngine
    public String[] getSupportedCipherSuites() {
        return NativeCrypto.getSupportedCipherSuites();
    }

    @Override // javax.net.ssl.SSLEngine
    public String[] getSupportedProtocols() {
        return NativeCrypto.getSupportedProtocols();
    }

    @Override // org.conscrypt.AbstractConscryptEngine
    public byte[] getTlsUnique() {
        return this.ssl.getTlsUnique();
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean getUseClientMode() {
        return this.sslParameters.getUseClientMode();
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean getWantClientAuth() {
        return this.sslParameters.getWantClientAuth();
    }

    @Override // org.conscrypt.AbstractConscryptEngine
    public SSLSession handshakeSession() {
        synchronized (this.ssl) {
            try {
                if (this.state == 2) {
                    return Platform.wrapSSLSession(new ExternalSession(new ExternalSession.Provider() { // from class: org.conscrypt.ConscryptEngine.2
                        @Override // org.conscrypt.ExternalSession.Provider
                        public ConscryptSession provideSession() {
                            return ConscryptEngine.this.provideHandshakeSession();
                        }
                    }));
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean isInboundDone() {
        boolean z;
        synchronized (this.ssl) {
            try {
                int i = this.state;
                if (i != 8) {
                    if (i != 6) {
                        if (this.ssl.wasShutdownReceived()) {
                        }
                        z = false;
                    }
                }
                if (pendingInboundCleartextBytes() == 0) {
                    z = true;
                }
                z = false;
            } finally {
            }
        }
        return z;
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean isOutboundDone() {
        boolean z;
        synchronized (this.ssl) {
            try {
                int i = this.state;
                if (i != 8) {
                    if (i != 7) {
                        if (this.ssl.wasShutdownSent()) {
                        }
                        z = false;
                    }
                }
                if (pendingOutboundEncryptedBytes() == 0) {
                    z = true;
                }
                z = false;
            } finally {
            }
        }
        return z;
    }

    @Override // org.conscrypt.AbstractConscryptEngine
    public int maxSealOverhead() {
        return this.maxSealOverhead;
    }

    @Override // org.conscrypt.NativeCrypto.SSLHandshakeCallbacks
    public void onNewSessionEstablished(long j) {
        try {
            NativeCrypto.SSL_SESSION_up_ref(j);
            sessionContext().cacheSession(NativeSslSession.newInstance(new NativeRef.SSL_SESSION(j), this.activeSession));
        } catch (Exception unused) {
        }
    }

    @Override // org.conscrypt.NativeCrypto.SSLHandshakeCallbacks
    public void onSSLStateChange(int i, int i2) {
        synchronized (this.ssl) {
            try {
                if (i != 16) {
                    if (i == 32) {
                        int i3 = this.state;
                        if (i3 != 2 && i3 != 4) {
                            throw new IllegalStateException("Completed handshake while in mode " + this.state);
                        }
                        transitionTo(3);
                    }
                } else {
                    transitionTo(2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int pendingOutboundEncryptedBytes() {
        return this.networkBio.getPendingWrittenBytes();
    }

    @Override // org.conscrypt.NativeCrypto.SSLHandshakeCallbacks
    public int selectApplicationProtocol(byte[] bArr) {
        ApplicationProtocolSelectorAdapter applicationProtocolSelector = this.sslParameters.getApplicationProtocolSelector();
        if (applicationProtocolSelector == null) {
            return 3;
        }
        return applicationProtocolSelector.selectApplicationProtocol(bArr);
    }

    @Override // org.conscrypt.NativeCrypto.SSLHandshakeCallbacks
    public void serverCertificateRequested() throws IOException {
        synchronized (this.ssl) {
            this.ssl.configureServerCertificate();
        }
    }

    @Override // org.conscrypt.NativeCrypto.SSLHandshakeCallbacks
    public int serverPSKKeyRequested(String str, String str2, byte[] bArr) {
        return this.ssl.serverPSKKeyRequested(str, str2, bArr);
    }

    @Override // org.conscrypt.NativeCrypto.SSLHandshakeCallbacks
    public long serverSessionRequested(byte[] bArr) {
        return 0L;
    }

    @Override // org.conscrypt.AbstractConscryptEngine
    public void setApplicationProtocolSelector(ApplicationProtocolSelector applicationProtocolSelector) {
        setApplicationProtocolSelector(applicationProtocolSelector == null ? null : new ApplicationProtocolSelectorAdapter(this, applicationProtocolSelector));
    }

    @Override // org.conscrypt.AbstractConscryptEngine
    public void setApplicationProtocols(String[] strArr) {
        this.sslParameters.setApplicationProtocols(strArr);
    }

    @Override // org.conscrypt.AbstractConscryptEngine
    public void setBufferAllocator(BufferAllocator bufferAllocator) {
        synchronized (this.ssl) {
            try {
                if (!isHandshakeStarted()) {
                    this.bufferAllocator = bufferAllocator;
                } else {
                    throw new IllegalStateException("Could not set buffer allocator after the initial handshake has begun.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // org.conscrypt.AbstractConscryptEngine
    public void setChannelIdEnabled(boolean z) {
        synchronized (this.ssl) {
            try {
                if (!getUseClientMode()) {
                    if (!isHandshakeStarted()) {
                        this.sslParameters.channelIdEnabled = z;
                    } else {
                        throw new IllegalStateException("Could not enable/disable Channel ID after the initial handshake has begun.");
                    }
                } else {
                    throw new IllegalStateException("Not allowed in client mode");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // org.conscrypt.AbstractConscryptEngine
    public void setChannelIdPrivateKey(PrivateKey privateKey) {
        if (getUseClientMode()) {
            synchronized (this.ssl) {
                try {
                    if (!isHandshakeStarted()) {
                        ECParameterSpec eCParameterSpec = null;
                        if (privateKey == null) {
                            this.sslParameters.channelIdEnabled = false;
                            this.channelIdPrivateKey = null;
                            return;
                        }
                        this.sslParameters.channelIdEnabled = true;
                        try {
                            if (privateKey instanceof ECKey) {
                                eCParameterSpec = ((ECKey) privateKey).getParams();
                            }
                            if (eCParameterSpec == null) {
                                eCParameterSpec = OpenSSLECGroupContext.getCurveByName("prime256v1").getECParameterSpec();
                            }
                            this.channelIdPrivateKey = OpenSSLKey.fromECPrivateKeyForTLSStackOnly(privateKey, eCParameterSpec);
                        } catch (InvalidKeyException unused) {
                        }
                        return;
                    }
                    throw new IllegalStateException("Could not change Channel ID private key after the initial handshake has begun.");
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        throw new IllegalStateException("Not allowed in server mode");
    }

    @Override // javax.net.ssl.SSLEngine
    public void setEnableSessionCreation(boolean z) {
        this.sslParameters.setEnableSessionCreation(z);
    }

    @Override // javax.net.ssl.SSLEngine
    public void setEnabledCipherSuites(String[] strArr) {
        this.sslParameters.setEnabledCipherSuites(strArr);
    }

    @Override // javax.net.ssl.SSLEngine
    public void setEnabledProtocols(String[] strArr) {
        this.sslParameters.setEnabledProtocols(strArr);
    }

    @Override // org.conscrypt.AbstractConscryptEngine
    public void setHandshakeListener(HandshakeListener handshakeListener) {
        synchronized (this.ssl) {
            try {
                if (!isHandshakeStarted()) {
                    this.handshakeListener = handshakeListener;
                } else {
                    throw new IllegalStateException("Handshake listener must be set before starting the handshake.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // org.conscrypt.AbstractConscryptEngine
    public void setHostname(String str) {
        boolean z;
        SSLParametersImpl sSLParametersImpl = this.sslParameters;
        if (str != null) {
            z = true;
        } else {
            z = false;
        }
        sSLParametersImpl.setUseSni(z);
        this.peerHostname = str;
    }

    @Override // javax.net.ssl.SSLEngine
    public void setNeedClientAuth(boolean z) {
        this.sslParameters.setNeedClientAuth(z);
    }

    @Override // javax.net.ssl.SSLEngine
    public void setSSLParameters(SSLParameters sSLParameters) {
        super.setSSLParameters(sSLParameters);
        Platform.setSSLParameters(sSLParameters, this.sslParameters, this);
    }

    @Override // javax.net.ssl.SSLEngine
    public void setUseClientMode(boolean z) {
        synchronized (this.ssl) {
            try {
                if (!isHandshakeStarted()) {
                    transitionTo(1);
                    this.sslParameters.setUseClientMode(z);
                } else {
                    throw new IllegalArgumentException("Can not change mode after handshake: state == " + this.state);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // org.conscrypt.AbstractConscryptEngine
    public void setUseSessionTickets(boolean z) {
        this.sslParameters.setUseSessionTickets(z);
    }

    @Override // javax.net.ssl.SSLEngine
    public void setWantClientAuth(boolean z) {
        this.sslParameters.setWantClientAuth(z);
    }

    @Override // org.conscrypt.AbstractConscryptEngine, javax.net.ssl.SSLEngine
    public SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws SSLException {
        SSLEngineResult unwrap;
        synchronized (this.ssl) {
            try {
                try {
                    unwrap = unwrap(singleSrcBuffer(byteBuffer), singleDstBuffer(byteBuffer2));
                } finally {
                    resetSingleSrcBuffer();
                    resetSingleDstBuffer();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return unwrap;
    }

    @Override // org.conscrypt.NativeCrypto.SSLHandshakeCallbacks
    public void verifyCertificateChain(byte[][] bArr, String str) throws CertificateException {
        if (bArr != null) {
            try {
                if (bArr.length != 0) {
                    X509Certificate[] decodeX509CertificateChain = SSLUtils.decodeX509CertificateChain(bArr);
                    X509TrustManager x509TrustManager = this.sslParameters.getX509TrustManager();
                    if (x509TrustManager != null) {
                        this.activeSession.onPeerCertificatesReceived(getPeerHost(), getPeerPort(), decodeX509CertificateChain);
                        if (getUseClientMode()) {
                            Platform.checkServerTrusted(x509TrustManager, decodeX509CertificateChain, str, this);
                            return;
                        } else {
                            Platform.checkClientTrusted(x509TrustManager, decodeX509CertificateChain, decodeX509CertificateChain[0].getPublicKey().getAlgorithm(), this);
                            return;
                        }
                    }
                    throw new CertificateException("No X.509 TrustManager");
                }
            } catch (CertificateException e) {
                throw e;
            } catch (Exception e2) {
                throw new CertificateException(e2);
            }
        }
        throw new CertificateException("Peer sent no certificate");
    }

    @Override // org.conscrypt.AbstractConscryptEngine, javax.net.ssl.SSLEngine
    public SSLEngineResult wrap(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws SSLException {
        SSLEngineResult wrap;
        synchronized (this.ssl) {
            try {
                try {
                    wrap = wrap(singleSrcBuffer(byteBuffer), byteBuffer2);
                } finally {
                    resetSingleSrcBuffer();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return wrap;
    }

    public void setApplicationProtocolSelector(ApplicationProtocolSelectorAdapter applicationProtocolSelectorAdapter) {
        this.sslParameters.setApplicationProtocolSelector(applicationProtocolSelectorAdapter);
    }

    private SSLEngineResult.HandshakeStatus getHandshakeStatus(int i) {
        return !this.handshakeFinished ? pendingStatus(i) : SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING;
    }

    @Override // org.conscrypt.AbstractConscryptEngine, javax.net.ssl.SSLEngine
    public SSLEngineResult wrap(ByteBuffer[] byteBufferArr, int i, int i2, ByteBuffer byteBuffer) throws SSLException {
        int i3;
        int i4;
        SSLEngineResult readPendingBytesFromBIO;
        boolean z = true;
        Preconditions.checkArgument(byteBufferArr != null, "srcs is null");
        Preconditions.checkArgument(byteBuffer != null, "dst is null");
        int i5 = i + i2;
        Preconditions.checkPositionIndexes(i, i5, byteBufferArr.length);
        if (!byteBuffer.isReadOnly()) {
            if (i != 0 || i2 != byteBufferArr.length) {
                byteBufferArr = (ByteBuffer[]) Arrays.copyOfRange(byteBufferArr, i, i5);
            }
            BufferUtils.checkNotNull(byteBufferArr);
            synchronized (this.ssl) {
                try {
                    int i6 = this.state;
                    if (i6 != 0) {
                        if (i6 == 1) {
                            beginHandshakeInternal();
                        } else if (i6 == 7 || i6 == 8) {
                            SSLEngineResult readPendingBytesFromBIO2 = readPendingBytesFromBIO(byteBuffer, 0, 0, SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING);
                            if (readPendingBytesFromBIO2 != null) {
                                freeIfDone();
                                return readPendingBytesFromBIO2;
                            }
                            return new SSLEngineResult(SSLEngineResult.Status.CLOSED, getHandshakeStatusInternal(), 0, 0);
                        }
                        SSLEngineResult.HandshakeStatus handshakeStatus = SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING;
                        if (!this.handshakeFinished) {
                            handshakeStatus = handshake();
                            if (handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_UNWRAP) {
                                return NEED_UNWRAP_OK;
                            }
                            if (this.state == 8) {
                                return NEED_UNWRAP_CLOSED;
                            }
                        }
                        int min = (int) Math.min(BufferUtils.remaining(byteBufferArr), 16384L);
                        if (byteBuffer.remaining() < SSLUtils.calculateOutNetBufSize(min)) {
                            return new SSLEngineResult(SSLEngineResult.Status.BUFFER_OVERFLOW, getHandshakeStatusInternal(), 0, 0);
                        }
                        if (min > 0) {
                            ByteBuffer bufferLargerThan = BufferUtils.getBufferLargerThan(byteBufferArr, 16384);
                            if (bufferLargerThan == null) {
                                bufferLargerThan = BufferUtils.copyNoConsume(byteBufferArr, getOrCreateLazyDirectBuffer(), 16384);
                            } else {
                                z = false;
                            }
                            i4 = writePlaintextData(bufferLargerThan, Math.min(16384, bufferLargerThan.remaining()));
                            if (i4 > 0) {
                                if (z) {
                                    BufferUtils.consume(byteBufferArr, i4);
                                }
                                SSLEngineResult readPendingBytesFromBIO3 = readPendingBytesFromBIO(byteBuffer, i4, 0, handshakeStatus);
                                if (readPendingBytesFromBIO3 == null) {
                                    i3 = 0;
                                } else {
                                    if (readPendingBytesFromBIO3.getStatus() != SSLEngineResult.Status.OK) {
                                        return readPendingBytesFromBIO3;
                                    }
                                    i3 = readPendingBytesFromBIO3.bytesProduced();
                                }
                            } else {
                                int error = this.ssl.getError(i4);
                                if (error == 2) {
                                    SSLEngineResult readPendingBytesFromBIO4 = readPendingBytesFromBIO(byteBuffer, 0, 0, handshakeStatus);
                                    if (readPendingBytesFromBIO4 == null) {
                                        readPendingBytesFromBIO4 = new SSLEngineResult(getEngineStatus(), SSLEngineResult.HandshakeStatus.NEED_UNWRAP, 0, 0);
                                    }
                                    return readPendingBytesFromBIO4;
                                }
                                if (error == 3) {
                                    SSLEngineResult readPendingBytesFromBIO5 = readPendingBytesFromBIO(byteBuffer, 0, 0, handshakeStatus);
                                    if (readPendingBytesFromBIO5 == null) {
                                        readPendingBytesFromBIO5 = NEED_WRAP_CLOSED;
                                    }
                                    return readPendingBytesFromBIO5;
                                }
                                if (error == 6) {
                                    closeAll();
                                    SSLEngineResult readPendingBytesFromBIO6 = readPendingBytesFromBIO(byteBuffer, 0, 0, handshakeStatus);
                                    if (readPendingBytesFromBIO6 == null) {
                                        readPendingBytesFromBIO6 = CLOSED_NOT_HANDSHAKING;
                                    }
                                    return readPendingBytesFromBIO6;
                                }
                                closeAll();
                                throw newSslExceptionWithMessage("SSL_write: error " + error);
                            }
                        } else {
                            i3 = 0;
                            i4 = 0;
                        }
                        return (i4 != 0 || (readPendingBytesFromBIO = readPendingBytesFromBIO(byteBuffer, 0, i3, handshakeStatus)) == null) ? newResult(i4, i3, handshakeStatus) : readPendingBytesFromBIO;
                    }
                    throw new IllegalStateException("Client/server mode must be set before calling wrap");
                } finally {
                }
            }
        }
        throw new ReadOnlyBufferException();
    }

    @Override // org.conscrypt.AbstractConscryptEngine, javax.net.ssl.SSLEngine
    public SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer[] byteBufferArr) throws SSLException {
        SSLEngineResult unwrap;
        synchronized (this.ssl) {
            try {
                try {
                    unwrap = unwrap(singleSrcBuffer(byteBuffer), byteBufferArr);
                } finally {
                    resetSingleSrcBuffer();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return unwrap;
    }

    public ConscryptEngine(String str, int i, SSLParametersImpl sSLParametersImpl) {
        this.bufferAllocator = defaultBufferAllocator;
        this.state = 0;
        this.externalSession = Platform.wrapSSLSession(new ExternalSession(new ExternalSession.Provider() { // from class: org.conscrypt.ConscryptEngine.1
            @Override // org.conscrypt.ExternalSession.Provider
            public ConscryptSession provideSession() {
                return ConscryptEngine.this.provideSession();
            }
        }));
        this.singleSrcBuffer = new ByteBuffer[1];
        this.singleDstBuffer = new ByteBuffer[1];
        this.sslParameters = sSLParametersImpl;
        this.peerInfoProvider = PeerInfoProvider.forHostAndPort(str, i);
        NativeSsl newSsl = newSsl(sSLParametersImpl, this, this);
        this.ssl = newSsl;
        this.networkBio = newSsl.newBio();
    }

    @Override // org.conscrypt.AbstractConscryptEngine, javax.net.ssl.SSLEngine
    public SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer[] byteBufferArr, int i, int i2) throws SSLException {
        SSLEngineResult unwrap;
        synchronized (this.ssl) {
            try {
                try {
                    unwrap = unwrap(singleSrcBuffer(byteBuffer), 0, 1, byteBufferArr, i, i2);
                } finally {
                    resetSingleSrcBuffer();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return unwrap;
    }

    @Override // org.conscrypt.AbstractConscryptEngine
    public SSLEngineResult unwrap(ByteBuffer[] byteBufferArr, ByteBuffer[] byteBufferArr2) throws SSLException {
        Preconditions.checkArgument(byteBufferArr != null, "srcs is null");
        Preconditions.checkArgument(byteBufferArr2 != null, "dsts is null");
        return unwrap(byteBufferArr, 0, byteBufferArr.length, byteBufferArr2, 0, byteBufferArr2.length);
    }

    @Override // org.conscrypt.AbstractConscryptEngine
    public SSLEngineResult unwrap(ByteBuffer[] byteBufferArr, int i, int i2, ByteBuffer[] byteBufferArr2, int i3, int i4) throws SSLException {
        int i5;
        int i6;
        int i7;
        boolean z = true;
        Preconditions.checkArgument(byteBufferArr != null, "srcs is null");
        Preconditions.checkArgument(byteBufferArr2 != null, "dsts is null");
        int i8 = i2 + i;
        Preconditions.checkPositionIndexes(i, i8, byteBufferArr.length);
        int i9 = i3 + i4;
        Preconditions.checkPositionIndexes(i3, i9, byteBufferArr2.length);
        int calcDstsLength = calcDstsLength(byteBufferArr2, i3, i4);
        long calcSrcsLength = calcSrcsLength(byteBufferArr, i, i8);
        synchronized (this.ssl) {
            try {
                int i10 = this.state;
                if (i10 != 0) {
                    if (i10 == 1) {
                        beginHandshakeInternal();
                    } else if (i10 == 6 || i10 == 8) {
                        freeIfDone();
                        return new SSLEngineResult(SSLEngineResult.Status.CLOSED, getHandshakeStatusInternal(), 0, 0);
                    }
                    SSLEngineResult.HandshakeStatus handshakeStatus = SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING;
                    if (!this.handshakeFinished) {
                        handshakeStatus = handshake();
                        if (handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_WRAP) {
                            return NEED_WRAP_OK;
                        }
                        if (this.state == 8) {
                            return NEED_WRAP_CLOSED;
                        }
                    }
                    if (pendingInboundCleartextBytes() > 0) {
                        z = false;
                    }
                    if (calcSrcsLength <= 0 || !z) {
                        if (z) {
                            return new SSLEngineResult(SSLEngineResult.Status.BUFFER_UNDERFLOW, getHandshakeStatus(), 0, 0);
                        }
                        i5 = 0;
                    } else {
                        if (calcSrcsLength < 5) {
                            return new SSLEngineResult(SSLEngineResult.Status.BUFFER_UNDERFLOW, getHandshakeStatus(), 0, 0);
                        }
                        i5 = SSLUtils.getEncryptedPacketLength(byteBufferArr, i);
                        if (i5 < 0) {
                            throw new SSLException("Unable to parse TLS packet header");
                        }
                        if (calcSrcsLength < i5) {
                            return new SSLEngineResult(SSLEngineResult.Status.BUFFER_UNDERFLOW, getHandshakeStatus(), 0, 0);
                        }
                    }
                    if (i5 <= 0 || i >= i8) {
                        i6 = 0;
                    } else {
                        i6 = 0;
                        while (true) {
                            ByteBuffer byteBuffer = byteBufferArr[i];
                            int remaining = byteBuffer.remaining();
                            if (remaining != 0) {
                                int writeEncryptedData = writeEncryptedData(byteBuffer, Math.min(i5, remaining));
                                if (writeEncryptedData <= 0) {
                                    NativeCrypto.SSL_clear_error();
                                    break;
                                }
                                i6 += writeEncryptedData;
                                i5 -= writeEncryptedData;
                                if (i5 != 0 && writeEncryptedData == remaining) {
                                }
                            }
                            i++;
                            if (i >= i8) {
                                break;
                            }
                        }
                    }
                    if (calcDstsLength > 0) {
                        i7 = 0;
                        while (i3 < i9) {
                            try {
                                ByteBuffer byteBuffer2 = byteBufferArr2[i3];
                                if (byteBuffer2.hasRemaining()) {
                                    int readPlaintextData = readPlaintextData(byteBuffer2);
                                    if (readPlaintextData <= 0) {
                                        if (readPlaintextData != -6) {
                                            if (readPlaintextData != -3 && readPlaintextData != -2) {
                                                closeAll();
                                                throw newSslExceptionWithMessage("SSL_read");
                                            }
                                            return newResult(i6, i7, handshakeStatus);
                                        }
                                        closeAll();
                                        return new SSLEngineResult(SSLEngineResult.Status.CLOSED, pendingOutboundEncryptedBytes() > 0 ? SSLEngineResult.HandshakeStatus.NEED_WRAP : SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING, i6, i7);
                                    }
                                    i7 += readPlaintextData;
                                    if (byteBuffer2.hasRemaining()) {
                                        break;
                                    }
                                }
                                i3++;
                            } catch (InterruptedIOException unused) {
                                r1 = i7;
                                return newResult(i6, r1, handshakeStatus);
                            }
                        }
                    } else {
                        try {
                            this.ssl.forceRead();
                            i7 = 0;
                        } catch (InterruptedIOException unused2) {
                            return newResult(i6, r1, handshakeStatus);
                        }
                    }
                    if ((this.handshakeFinished ? pendingInboundCleartextBytes() : 0) > 0) {
                        SSLEngineResult.Status status = SSLEngineResult.Status.BUFFER_OVERFLOW;
                        if (handshakeStatus != SSLEngineResult.HandshakeStatus.FINISHED) {
                            handshakeStatus = getHandshakeStatusInternal();
                        }
                        return new SSLEngineResult(status, mayFinishHandshake(handshakeStatus), i6, i7);
                    }
                    return newResult(i6, i7, handshakeStatus);
                }
                throw new IllegalStateException("Client/server mode must be set before calling unwrap");
            } catch (IOException e) {
                closeAll();
                throw convertException(e);
            } finally {
            }
        }
    }

    public ConscryptEngine(SSLParametersImpl sSLParametersImpl, PeerInfoProvider peerInfoProvider, SSLParametersImpl.AliasChooser aliasChooser) {
        this.bufferAllocator = defaultBufferAllocator;
        this.state = 0;
        this.externalSession = Platform.wrapSSLSession(new ExternalSession(new ExternalSession.Provider() { // from class: org.conscrypt.ConscryptEngine.1
            @Override // org.conscrypt.ExternalSession.Provider
            public ConscryptSession provideSession() {
                return ConscryptEngine.this.provideSession();
            }
        }));
        this.singleSrcBuffer = new ByteBuffer[1];
        this.singleDstBuffer = new ByteBuffer[1];
        this.sslParameters = sSLParametersImpl;
        this.peerInfoProvider = (PeerInfoProvider) Preconditions.checkNotNull(peerInfoProvider, "peerInfoProvider");
        NativeSsl newSsl = newSsl(sSLParametersImpl, this, aliasChooser);
        this.ssl = newSsl;
        this.networkBio = newSsl.newBio();
    }
}
