package org.bouncycastle.pqc.crypto.xwing;

import java.security.SecureRandom;
import org.bouncycastle.crypto.KeyGenerationParameters;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class XWingKeyGenerationParameters extends KeyGenerationParameters {
    public XWingKeyGenerationParameters(SecureRandom secureRandom) {
        super(secureRandom, 128);
    }
}
