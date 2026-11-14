package org.bouncycastle.pqc.crypto.ntru;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
class OWCPADecryptResult {
    final int fail;
    final byte[] rm;

    public OWCPADecryptResult(byte[] bArr, int i) {
        this.rm = bArr;
        this.fail = i;
    }
}
