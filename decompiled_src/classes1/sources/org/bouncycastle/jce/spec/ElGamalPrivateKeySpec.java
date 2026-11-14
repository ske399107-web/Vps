package org.bouncycastle.jce.spec;

import java.math.BigInteger;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class ElGamalPrivateKeySpec extends ElGamalKeySpec {
    private BigInteger x;

    public ElGamalPrivateKeySpec(BigInteger bigInteger, ElGamalParameterSpec elGamalParameterSpec) {
        super(elGamalParameterSpec);
        this.x = bigInteger;
    }

    public BigInteger getX() {
        return this.x;
    }
}
