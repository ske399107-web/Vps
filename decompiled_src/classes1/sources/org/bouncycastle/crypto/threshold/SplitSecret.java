package org.bouncycastle.crypto.threshold;

import java.io.IOException;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public interface SplitSecret {
    byte[] getSecret() throws IOException;

    SecretShare[] getSecretShares();
}
