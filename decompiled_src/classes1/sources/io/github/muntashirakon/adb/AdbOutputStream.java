package io.github.muntashirakon.adb;

import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.pqc.crypto.rainbow.GF2Field;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class AdbOutputStream extends OutputStream {
    private final AdbStream mAdbStream;

    public AdbOutputStream(AdbStream adbStream) {
        this.mAdbStream = adbStream;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        flush();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.mAdbStream.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) (i & GF2Field.MASK)});
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.mAdbStream.write(bArr, i, i2);
    }
}
