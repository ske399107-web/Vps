package org.bouncycastle.pqc.crypto.frodo;

import org.bouncycastle.util.Arrays;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class FrodoPublicKeyParameters extends FrodoKeyParameters {
    public byte[] publicKey;

    public FrodoPublicKeyParameters(FrodoParameters frodoParameters, byte[] bArr) {
        super(false, frodoParameters);
        this.publicKey = Arrays.clone(bArr);
    }

    public byte[] getEncoded() {
        return getPublicKey();
    }

    public byte[] getPublicKey() {
        return Arrays.clone(this.publicKey);
    }
}
