package io.github.muntashirakon.adb;

import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class AdbStream implements Closeable {
    private final AdbConnection mAdbConnection;
    private final int mLocalId;
    private volatile boolean mPendingClose;
    private final ByteBuffer mReadBuffer;
    private volatile int mRemoteId;
    private final Queue<byte[]> mReadQueue = new ConcurrentLinkedQueue();
    private final AtomicBoolean mWriteReady = new AtomicBoolean(false);
    private volatile boolean mIsClosed = false;

    public AdbStream(AdbConnection adbConnection, int i) throws IOException, InterruptedException, AdbPairingRequiredException {
        this.mAdbConnection = adbConnection;
        this.mLocalId = i;
        this.mReadBuffer = (ByteBuffer) ByteBuffer.allocate(adbConnection.getMaxData()).flip();
    }

    private int readBuffer(byte[] bArr, int i, int i2) {
        int i3 = 0;
        for (int i4 = i; i4 < i + i2; i4++) {
            if (this.mReadBuffer.hasRemaining()) {
                bArr[i4] = this.mReadBuffer.get();
                i3++;
            }
        }
        return i3;
    }

    public void addPayload(byte[] bArr) {
        synchronized (this.mReadQueue) {
            this.mReadQueue.add(bArr);
            this.mReadQueue.notifyAll();
        }
    }

    public int available() throws IOException {
        int length;
        synchronized (this) {
            try {
                if (!this.mIsClosed) {
                    if (this.mReadBuffer.hasRemaining()) {
                        return this.mReadBuffer.remaining();
                    }
                    byte[] peek = this.mReadQueue.peek();
                    if (peek == null) {
                        length = 0;
                    } else {
                        length = peek.length;
                    }
                    return length;
                }
                throw new IOException("Stream closed.");
            } finally {
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            try {
                if (this.mIsClosed) {
                    return;
                }
                notifyClose(false);
                this.mAdbConnection.sendPacket(AdbProtocol.generateClose(this.mLocalId, this.mRemoteId));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void flush() throws IOException {
        if (!this.mIsClosed) {
            this.mAdbConnection.flushPacket();
            return;
        }
        throw new IOException("Stream closed");
    }

    public boolean isClosed() {
        return this.mIsClosed;
    }

    public void notifyClose(boolean z) {
        if (z && !this.mReadQueue.isEmpty()) {
            this.mPendingClose = true;
        } else {
            this.mIsClosed = true;
        }
        synchronized (this) {
            notifyAll();
        }
        synchronized (this.mReadQueue) {
            this.mReadQueue.notifyAll();
        }
    }

    public AdbInputStream openInputStream() {
        return new AdbInputStream(this);
    }

    public AdbOutputStream openOutputStream() {
        return new AdbOutputStream(this);
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        byte[] poll;
        if (this.mReadBuffer.hasRemaining()) {
            return readBuffer(bArr, i, i2);
        }
        synchronized (this.mReadQueue) {
            while (true) {
                poll = this.mReadQueue.poll();
                if (poll != null || this.mIsClosed) {
                    break;
                }
                try {
                    this.mReadQueue.wait();
                } catch (InterruptedException e) {
                    throw ((IOException) new IOException().initCause(e));
                }
            }
            if (poll != null) {
                this.mReadBuffer.clear();
                this.mReadBuffer.put(poll);
                this.mReadBuffer.flip();
                if (this.mReadBuffer.hasRemaining()) {
                    return readBuffer(bArr, i, i2);
                }
            }
            if (!this.mIsClosed) {
                if (this.mPendingClose && this.mReadQueue.isEmpty()) {
                    this.mIsClosed = true;
                }
                return -1;
            }
            throw new IOException("Stream closed.");
        }
    }

    public void readyForWrite() {
        this.mWriteReady.set(true);
    }

    public void sendReady() throws IOException {
        this.mAdbConnection.sendPacket(AdbProtocol.generateReady(this.mLocalId, this.mRemoteId));
    }

    public void updateRemoteId(int i) {
        this.mRemoteId = i;
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        synchronized (this) {
            while (!this.mIsClosed && !this.mWriteReady.compareAndSet(true, false)) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    throw ((IOException) new IOException().initCause(e));
                }
            }
            if (this.mIsClosed) {
                throw new IOException("Stream closed");
            }
        }
        try {
            int maxData = this.mAdbConnection.getMaxData();
            while (i2 != 0) {
                if (i2 <= maxData) {
                    this.mAdbConnection.sendPacket(AdbProtocol.generateWrite(this.mLocalId, this.mRemoteId, bArr, i, i2));
                    i += i2;
                    i2 = 0;
                } else {
                    this.mAdbConnection.sendPacket(AdbProtocol.generateWrite(this.mLocalId, this.mRemoteId, bArr, i, maxData));
                    i += maxData;
                    i2 -= maxData;
                }
            }
        } catch (AdbPairingRequiredException | InterruptedException e2) {
            throw ((IOException) new IOException().initCause(e2));
        }
    }
}
