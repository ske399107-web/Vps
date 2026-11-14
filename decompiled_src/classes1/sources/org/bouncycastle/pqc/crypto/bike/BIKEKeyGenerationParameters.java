package org.bouncycastle.pqc.crypto.bike;

import java.security.SecureRandom;
import org.bouncycastle.crypto.KeyGenerationParameters;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class BIKEKeyGenerationParameters extends KeyGenerationParameters {
    private BIKEParameters params;

    public BIKEKeyGenerationParameters(SecureRandom secureRandom, BIKEParameters bIKEParameters) {
        super(secureRandom, 256);
        this.params = bIKEParameters;
    }

    public BIKEParameters getParameters() {
        return this.params;
    }
}
