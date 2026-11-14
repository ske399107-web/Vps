package org.bouncycastle.pqc.jcajce.provider;

import o.AbstractC0304o5;
import o.Ve;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.util.AsymmetricAlgorithmProvider;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class LMS {
    private static final String PREFIX = "org.bouncycastle.pqc.jcajce.provider.lms.";

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class Mappings extends AsymmetricAlgorithmProvider {
        @Override // org.bouncycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            StringBuilder s = Ve.s(configurableProvider, "KeyFactory.LMS", "org.bouncycastle.pqc.jcajce.provider.lms.LMSKeyFactorySpi", "Alg.Alias.KeyFactory.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier = PKCSObjectIdentifiers.id_alg_hss_lms_hashsig;
            Ve.u(s, aSN1ObjectIdentifier, configurableProvider, "LMS");
            configurableProvider.addAlgorithm(AbstractC0304o5.n(configurableProvider, "KeyPairGenerator.LMS", "org.bouncycastle.pqc.jcajce.provider.lms.LMSKeyPairGeneratorSpi", "Alg.Alias.KeyPairGenerator.", aSN1ObjectIdentifier), "LMS");
            configurableProvider.addAlgorithm("Signature.LMS", "org.bouncycastle.pqc.jcajce.provider.lms.LMSSignatureSpi$generic");
            configurableProvider.addAlgorithm("Alg.Alias.Signature." + aSN1ObjectIdentifier, "LMS");
        }
    }
}
