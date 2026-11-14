package org.bouncycastle.jcajce.interfaces;

import java.security.PrivateKey;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public interface MLDSAPrivateKey extends PrivateKey, MLDSAKey {
    byte[] getPrivateData();

    MLDSAPrivateKey getPrivateKey(boolean z);

    MLDSAPublicKey getPublicKey();

    byte[] getSeed();
}
