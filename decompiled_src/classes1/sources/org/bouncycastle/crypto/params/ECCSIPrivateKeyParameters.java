package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class ECCSIPrivateKeyParameters extends AsymmetricKeyParameter {
    private final ECCSIPublicKeyParameters pub;
    private final BigInteger ssk;

    public ECCSIPrivateKeyParameters(BigInteger bigInteger, ECCSIPublicKeyParameters eCCSIPublicKeyParameters) {
        super(true);
        this.ssk = bigInteger;
        this.pub = eCCSIPublicKeyParameters;
    }

    public ECCSIPublicKeyParameters getPublicKeyParameters() {
        return this.pub;
    }

    public BigInteger getSSK() {
        return this.ssk;
    }
}
