package org.bouncycastle.jce.spec;

import java.security.spec.KeySpec;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class ECKeySpec implements KeySpec {
    private ECParameterSpec spec;

    public ECKeySpec(ECParameterSpec eCParameterSpec) {
        this.spec = eCParameterSpec;
    }

    public ECParameterSpec getParams() {
        return this.spec;
    }
}
