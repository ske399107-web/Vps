package org.bouncycastle.pqc.crypto.mayo;

import java.security.SecureRandom;
import org.bouncycastle.crypto.KeyGenerationParameters;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class MayoKeyGenerationParameters extends KeyGenerationParameters {
    private final MayoParameters params;

    public MayoKeyGenerationParameters(SecureRandom secureRandom, MayoParameters mayoParameters) {
        super(secureRandom, 256);
        this.params = mayoParameters;
    }

    public MayoParameters getParameters() {
        return this.params;
    }
}
