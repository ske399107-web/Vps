package org.bouncycastle.crypto.params;

import org.bouncycastle.math.ec.ECPoint;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class ECCSIPublicKeyParameters extends AsymmetricKeyParameter {
    private final ECPoint pvt;

    public ECCSIPublicKeyParameters(ECPoint eCPoint) {
        super(false);
        this.pvt = eCPoint;
    }

    public final ECPoint getPVT() {
        return this.pvt;
    }
}
