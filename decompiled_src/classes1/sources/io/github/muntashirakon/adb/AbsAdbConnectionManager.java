package io.github.muntashirakon.adb;

import android.content.Context;
import io.github.muntashirakon.adb.AdbConnection;
import io.github.muntashirakon.adb.android.AdbMdns;
import java.io.Closeable;
import java.io.IOException;
import java.net.InetAddress;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.security.auth.DestroyFailedException;
import o.C0059c;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbsAdbConnectionManager implements Closeable {
    private AdbConnection mAdbConnection;
    private final Object mLock = new Object();
    private String mHostAddress = "127.0.0.1";
    private int mApi = 1;
    private long mTimeout = Long.MAX_VALUE;
    private TimeUnit mTimeoutUnit = TimeUnit.MILLISECONDS;
    private boolean mThrowOnUnauthorised = false;

    private KeyPair getAdbKeyPair() {
        PrivateKey privateKey = getPrivateKey();
        Objects.requireNonNull(privateKey);
        Certificate certificate = getCertificate();
        Objects.requireNonNull(certificate);
        return new KeyPair(privateKey, certificate);
    }

    public static /* synthetic */ void lambda$autoConnect$0(AtomicReference atomicReference, AtomicInteger atomicInteger, CountDownLatch countDownLatch, InetAddress inetAddress, int i) {
        if (inetAddress != null) {
            atomicReference.set(inetAddress.getHostAddress());
            atomicInteger.set(i);
        }
        countDownLatch.countDown();
    }

    public static /* synthetic */ void lambda$autoConnect$1(AtomicReference atomicReference, AtomicInteger atomicInteger, CountDownLatch countDownLatch, InetAddress inetAddress, int i) {
        if (inetAddress != null) {
            atomicReference.set(inetAddress.getHostAddress());
            atomicInteger.set(i);
        }
        countDownLatch.countDown();
    }

    public static /* synthetic */ void lambda$autoConnect$2(AtomicReference atomicReference, AtomicInteger atomicInteger, CountDownLatch countDownLatch, InetAddress inetAddress, int i) {
        if (inetAddress != null) {
            atomicReference.set(inetAddress.getHostAddress());
            atomicInteger.set(i);
        }
        countDownLatch.countDown();
    }

    public boolean autoConnect(Context context, long j) throws IOException, InterruptedException, AdbPairingRequiredException {
        boolean connect;
        synchronized (this.mLock) {
            try {
                AtomicInteger atomicInteger = new AtomicInteger(-1);
                AtomicReference atomicReference = new AtomicReference(null);
                CountDownLatch countDownLatch = new CountDownLatch(1);
                AdbMdns adbMdns = new AdbMdns(context, AdbMdns.SERVICE_TYPE_ADB, new C0059c(atomicReference, atomicInteger, countDownLatch, 0));
                adbMdns.start();
                AdbMdns adbMdns2 = new AdbMdns(context, AdbMdns.SERVICE_TYPE_TLS_CONNECT, new C0059c(atomicReference, atomicInteger, countDownLatch, 1));
                adbMdns2.start();
                try {
                    if (countDownLatch.await(j, TimeUnit.MILLISECONDS)) {
                        adbMdns.stop();
                        adbMdns2.stop();
                        String str = (String) atomicReference.get();
                        int i = atomicInteger.get();
                        if (str != null && i != -1) {
                            this.mHostAddress = str;
                            AdbConnection.Builder keyPair = new AdbConnection.Builder(str, i).setApi(this.mApi).setKeyPair(getAdbKeyPair());
                            String deviceName = getDeviceName();
                            Objects.requireNonNull(deviceName);
                            AdbConnection build = keyPair.setDeviceName(deviceName).build();
                            this.mAdbConnection = build;
                            connect = build.connect(this.mTimeout, this.mTimeoutUnit, this.mThrowOnUnauthorised);
                        } else {
                            throw new IOException("Could not find any valid host address or port");
                        }
                    } else {
                        throw new InterruptedException("Timed out while trying to find a valid host address and port");
                    }
                } catch (Throwable th) {
                    adbMdns.stop();
                    adbMdns2.stop();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return connect;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            getPrivateKey().destroy();
        } catch (NoSuchMethodError | DestroyFailedException e) {
            e.printStackTrace();
        }
        AdbConnection adbConnection = this.mAdbConnection;
        if (adbConnection != null) {
            adbConnection.close();
            this.mAdbConnection = null;
        }
    }

    public boolean connect(int i) throws IOException, InterruptedException, AdbPairingRequiredException {
        synchronized (this.mLock) {
            try {
                if (isConnected()) {
                    return false;
                }
                AdbConnection.Builder keyPair = new AdbConnection.Builder(this.mHostAddress, i).setApi(this.mApi).setKeyPair(getAdbKeyPair());
                String deviceName = getDeviceName();
                Objects.requireNonNull(deviceName);
                AdbConnection build = keyPair.setDeviceName(deviceName).build();
                this.mAdbConnection = build;
                return build.connect(this.mTimeout, this.mTimeoutUnit, this.mThrowOnUnauthorised);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean connectTcp(Context context, long j) throws IOException, InterruptedException, AdbPairingRequiredException {
        return autoConnect(context, AdbMdns.SERVICE_TYPE_ADB, j);
    }

    public boolean connectTls(Context context, long j) throws IOException, InterruptedException, AdbPairingRequiredException {
        return autoConnect(context, AdbMdns.SERVICE_TYPE_TLS_CONNECT, j);
    }

    public void disconnect() throws IOException {
        synchronized (this.mLock) {
            try {
                AdbConnection adbConnection = this.mAdbConnection;
                if (adbConnection != null) {
                    adbConnection.close();
                    this.mAdbConnection = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public AdbConnection getAdbConnection() {
        AdbConnection adbConnection;
        synchronized (this.mLock) {
            adbConnection = this.mAdbConnection;
        }
        return adbConnection;
    }

    public int getApi() {
        return this.mApi;
    }

    public abstract Certificate getCertificate();

    public abstract String getDeviceName();

    public String getHostAddress() {
        return this.mHostAddress;
    }

    public abstract PrivateKey getPrivateKey();

    public long getTimeout() {
        return this.mTimeoutUnit.toMillis(this.mTimeout);
    }

    public TimeUnit getTimeoutUnit() {
        return this.mTimeoutUnit;
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this.mLock) {
            try {
                AdbConnection adbConnection = this.mAdbConnection;
                if (adbConnection != null && adbConnection.isConnected() && this.mAdbConnection.isConnectionEstablished()) {
                    z = true;
                } else {
                    z = false;
                }
            } finally {
            }
        }
        return z;
    }

    public boolean isThrowOnUnauthorised() {
        return this.mThrowOnUnauthorised;
    }

    public AdbStream openStream(String str) throws IOException, InterruptedException {
        AdbStream open;
        synchronized (this.mLock) {
            try {
                AdbConnection adbConnection = this.mAdbConnection;
                if (adbConnection != null && adbConnection.isConnected()) {
                    try {
                        open = this.mAdbConnection.open(str);
                    } catch (AdbPairingRequiredException e) {
                        throw new IllegalStateException(e);
                    }
                } else {
                    throw new IOException("Not connected to ADB.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return open;
    }

    public boolean pair(int i, String str) throws Exception {
        return pair(this.mHostAddress, i, str);
    }

    public void setApi(int i) {
        this.mApi = i;
    }

    public void setHostAddress(String str) {
        Objects.requireNonNull(str);
        this.mHostAddress = str;
    }

    public void setThrowOnUnauthorised(boolean z) {
        this.mThrowOnUnauthorised = z;
    }

    public void setTimeout(long j, TimeUnit timeUnit) {
        this.mTimeout = j;
        this.mTimeoutUnit = timeUnit;
    }

    public boolean pair(String str, int i, String str2) throws Exception {
        synchronized (this.mLock) {
            KeyPair adbKeyPair = getAdbKeyPair();
            Objects.requireNonNull(str);
            Objects.requireNonNull(str2);
            PairingConnectionCtx pairingConnectionCtx = new PairingConnectionCtx(str, i, StringCompat.getBytes(str2, "UTF-8"), adbKeyPair, getDeviceName());
            try {
                pairingConnectionCtx.start();
                pairingConnectionCtx.close();
            } finally {
            }
        }
        return true;
    }

    public AdbStream openStream(int i, String... strArr) throws IOException, InterruptedException {
        AdbStream open;
        synchronized (this.mLock) {
            try {
                AdbConnection adbConnection = this.mAdbConnection;
                if (adbConnection != null && adbConnection.isConnected()) {
                    try {
                        open = this.mAdbConnection.open(i, strArr);
                    } catch (AdbPairingRequiredException e) {
                        throw new IllegalStateException(e);
                    }
                } else {
                    throw new IOException("Not connected to ADB.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return open;
    }

    public boolean connect(String str, int i) throws IOException, InterruptedException, AdbPairingRequiredException {
        synchronized (this.mLock) {
            try {
                if (isConnected()) {
                    return false;
                }
                this.mHostAddress = str;
                AdbConnection.Builder keyPair = new AdbConnection.Builder(str, i).setApi(this.mApi).setKeyPair(getAdbKeyPair());
                String deviceName = getDeviceName();
                Objects.requireNonNull(deviceName);
                AdbConnection build = keyPair.setDeviceName(deviceName).build();
                this.mAdbConnection = build;
                return build.connect(this.mTimeout, this.mTimeoutUnit, this.mThrowOnUnauthorised);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean autoConnect(Context context, String str, long j) throws IOException, InterruptedException, AdbPairingRequiredException {
        boolean connect;
        synchronized (this.mLock) {
            try {
                AtomicInteger atomicInteger = new AtomicInteger(-1);
                AtomicReference atomicReference = new AtomicReference(null);
                CountDownLatch countDownLatch = new CountDownLatch(1);
                AdbMdns adbMdns = new AdbMdns(context, str, new C0059c(atomicReference, atomicInteger, countDownLatch, 2));
                adbMdns.start();
                try {
                    if (countDownLatch.await(j, TimeUnit.MILLISECONDS)) {
                        adbMdns.stop();
                        String str2 = (String) atomicReference.get();
                        int i = atomicInteger.get();
                        if (str2 != null && i != -1) {
                            this.mHostAddress = str2;
                            AdbConnection.Builder keyPair = new AdbConnection.Builder(str2, i).setApi(this.mApi).setKeyPair(getAdbKeyPair());
                            String deviceName = getDeviceName();
                            Objects.requireNonNull(deviceName);
                            AdbConnection build = keyPair.setDeviceName(deviceName).build();
                            this.mAdbConnection = build;
                            connect = build.connect(this.mTimeout, this.mTimeoutUnit, this.mThrowOnUnauthorised);
                        } else {
                            throw new IOException("Could not find any valid host address or port");
                        }
                    } else {
                        throw new InterruptedException("Timed out while trying to find a valid host address and port");
                    }
                } catch (Throwable th) {
                    adbMdns.stop();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return connect;
    }
}
