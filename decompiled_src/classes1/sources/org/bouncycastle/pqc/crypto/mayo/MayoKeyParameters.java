package org.bouncycastle.pqc.crypto.mayo;

import org.bouncycastle.crypto.params.AsymmetricKeyParameter;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class MayoKeyParameters extends AsymmetricKeyParameter {
    private final MayoParameters params;

    public MayoKeyParameters(boolean z, MayoParameters mayoParameters) {
        super(z);
        this.params = mayoParameters;
    }

    public MayoParameters getParameters() {
        return this.params;
    }
}
