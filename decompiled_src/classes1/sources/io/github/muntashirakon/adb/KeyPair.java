package io.github.muntashirakon.adb;

import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.cert.Certificate;
import javax.security.auth.DestroyFailedException;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
final class KeyPair {
    private final Certificate mCertificate;
    private final PrivateKey mPrivateKey;

    public KeyPair(PrivateKey privateKey, Certificate certificate) {
        this.mPrivateKey = privateKey;
        this.mCertificate = certificate;
    }

    public void destroy() throws DestroyFailedException {
        try {
            this.mPrivateKey.destroy();
        } catch (NoSuchMethodError unused) {
        }
    }

    public Certificate getCertificate() {
        return this.mCertificate;
    }

    public PrivateKey getPrivateKey() {
        return this.mPrivateKey;
    }

    public PublicKey getPublicKey() {
        return this.mCertificate.getPublicKey();
    }
}
