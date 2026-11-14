package org.bouncycastle.jcajce.provider.symmetric;

import o.AbstractC0304o5;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.util.AlgorithmProvider;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
abstract class SymmetricAlgorithmProvider extends AlgorithmProvider {
    public void addCMacAlgorithm(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        configurableProvider.addAlgorithm("Mac." + str + "-CMAC", str2);
        StringBuilder p = AbstractC0304o5.p(str, "-CMAC", configurableProvider, AbstractC0304o5.h("Alg.Alias.Mac.", str, "CMAC"), "KeyGenerator.");
        p.append(str);
        p.append("-CMAC");
        configurableProvider.addAlgorithm(p.toString(), str3);
        configurableProvider.addAlgorithm(AbstractC0304o5.h("Alg.Alias.KeyGenerator.", str, "CMAC"), str + "-CMAC");
    }

    public void addGMacAlgorithm(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        configurableProvider.addAlgorithm("Mac." + str + "-GMAC", str2);
        StringBuilder p = AbstractC0304o5.p(str, "-GMAC", configurableProvider, AbstractC0304o5.h("Alg.Alias.Mac.", str, "GMAC"), "KeyGenerator.");
        p.append(str);
        p.append("-GMAC");
        configurableProvider.addAlgorithm(p.toString(), str3);
        configurableProvider.addAlgorithm(AbstractC0304o5.h("Alg.Alias.KeyGenerator.", str, "GMAC"), str + "-GMAC");
    }

    public void addPoly1305Algorithm(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        configurableProvider.addAlgorithm("Mac.POLY1305-" + str, str2);
        configurableProvider.addAlgorithm("Alg.Alias.Mac.POLY1305" + str, "POLY1305-" + str);
        configurableProvider.addAlgorithm("KeyGenerator.POLY1305-" + str, str3);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.POLY1305" + str, "POLY1305-" + str);
    }
}
