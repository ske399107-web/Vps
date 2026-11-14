package org.bouncycastle.pqc.crypto.rainbow;

import org.bouncycastle.crypto.params.AsymmetricKeyParameter;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class RainbowKeyParameters extends AsymmetricKeyParameter {
    private final int docLength;
    private final RainbowParameters params;

    public RainbowKeyParameters(boolean z, RainbowParameters rainbowParameters) {
        super(z);
        this.params = rainbowParameters;
        this.docLength = rainbowParameters.getM();
    }

    public int getDocLength() {
        return this.docLength;
    }

    public RainbowParameters getParameters() {
        return this.params;
    }
}
