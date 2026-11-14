package org.bouncycastle.pqc.crypto.snova;

import java.security.SecureRandom;
import org.bouncycastle.crypto.KeyGenerationParameters;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class SnovaKeyGenerationParameters extends KeyGenerationParameters {
    private final SnovaParameters params;

    public SnovaKeyGenerationParameters(SecureRandom secureRandom, SnovaParameters snovaParameters) {
        super(secureRandom, -1);
        this.params = snovaParameters;
    }

    public SnovaParameters getParameters() {
        return this.params;
    }
}
