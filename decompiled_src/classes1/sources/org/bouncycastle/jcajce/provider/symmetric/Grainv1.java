package org.bouncycastle.jcajce.provider.symmetric;

import o.AbstractC0304o5;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.engines.Grainv1Engine;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseStreamCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters;
import org.bouncycastle.jcajce.provider.util.AlgorithmProvider;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Grainv1 {

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class AlgParams extends IvAlgorithmParameters {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Grainv1 IV";
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class Base extends BaseStreamCipher {
        public Base() {
            super(new Grainv1Engine(), 8);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            super("Grainv1", 80, new CipherKeyGenerator());
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class Mappings extends AlgorithmProvider {
        private static final String PREFIX = Grainv1.class.getName();

        @Override // org.bouncycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = PREFIX;
            AbstractC0304o5.y(AbstractC0304o5.q(AbstractC0304o5.q(sb, str, "$Base", configurableProvider, "Cipher.Grainv1"), str, "$KeyGen", configurableProvider, "KeyGenerator.Grainv1"), str, "$AlgParams", configurableProvider, "AlgorithmParameters.Grainv1");
        }
    }

    private Grainv1() {
    }
}
