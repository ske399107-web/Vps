package org.bouncycastle.pqc.crypto.slhdsa;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
class SIG_FORS {
    final byte[][] authPath;
    final byte[] sk;

    public SIG_FORS(byte[] bArr, byte[][] bArr2) {
        this.authPath = bArr2;
        this.sk = bArr;
    }

    public byte[][] getAuthPath() {
        return this.authPath;
    }

    public byte[] getSK() {
        return this.sk;
    }
}
