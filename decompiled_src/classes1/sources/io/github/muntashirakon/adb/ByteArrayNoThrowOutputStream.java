package io.github.muntashirakon.adb;

import java.io.ByteArrayOutputStream;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
class ByteArrayNoThrowOutputStream extends ByteArrayOutputStream {
    public ByteArrayNoThrowOutputStream() {
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    public ByteArrayNoThrowOutputStream(int i) {
        super(i);
    }
}
