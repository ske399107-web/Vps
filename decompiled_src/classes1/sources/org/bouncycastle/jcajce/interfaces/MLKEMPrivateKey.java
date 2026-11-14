package org.bouncycastle.jcajce.interfaces;

import java.security.PrivateKey;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public interface MLKEMPrivateKey extends PrivateKey, MLKEMKey {
    byte[] getPrivateData();

    MLKEMPrivateKey getPrivateKey(boolean z);

    MLKEMPublicKey getPublicKey();

    byte[] getSeed();
}
