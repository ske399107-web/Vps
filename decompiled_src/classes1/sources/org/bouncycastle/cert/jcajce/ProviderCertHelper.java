package org.bouncycastle.cert.jcajce;

import java.security.Provider;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
class ProviderCertHelper extends CertHelper {
    private final Provider provider;

    public ProviderCertHelper(Provider provider) {
        this.provider = provider;
    }

    @Override // org.bouncycastle.cert.jcajce.CertHelper
    public CertificateFactory createCertificateFactory(String str) throws CertificateException {
        return CertificateFactory.getInstance(str, this.provider);
    }
}
