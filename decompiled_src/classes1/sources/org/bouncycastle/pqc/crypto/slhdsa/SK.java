package org.bouncycastle.pqc.crypto.slhdsa;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
class SK {
    final byte[] prf;
    final byte[] seed;

    public SK(byte[] bArr, byte[] bArr2) {
        this.seed = bArr;
        this.prf = bArr2;
    }
}
