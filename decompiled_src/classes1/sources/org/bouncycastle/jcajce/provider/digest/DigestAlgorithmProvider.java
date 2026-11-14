package org.bouncycastle.jcajce.provider.digest;

import o.Ve;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.util.AlgorithmProvider;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
abstract class DigestAlgorithmProvider extends AlgorithmProvider {
    public void addHMACAlgorithm(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        String y = Ve.y("HMAC", str);
        configurableProvider.addAlgorithm("Mac." + y, str2);
        configurableProvider.addAlgorithm("Alg.Alias.Mac.HMAC-" + str, y);
        configurableProvider.addAlgorithm("Alg.Alias.Mac.HMAC/" + str, y);
        configurableProvider.addAlgorithm("KeyGenerator." + y, str3);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.HMAC-" + str, y);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.HMAC/" + str, y);
    }

    public void addHMACAlias(ConfigurableProvider configurableProvider, String str, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        String y = Ve.y("HMAC", str);
        configurableProvider.addAlgorithm("Alg.Alias.Mac." + aSN1ObjectIdentifier, y);
        Ve.u(new StringBuilder("Alg.Alias.KeyGenerator."), aSN1ObjectIdentifier, configurableProvider, y);
    }

    public void addKMACAlgorithm(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        String y = Ve.y("KMAC", str);
        configurableProvider.addAlgorithm("Mac." + y, str2);
        configurableProvider.addAlgorithm("KeyGenerator." + y, str3);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.KMAC" + str, y);
    }
}
