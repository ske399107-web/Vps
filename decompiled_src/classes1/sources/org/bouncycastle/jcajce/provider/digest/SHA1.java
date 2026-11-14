package org.bouncycastle.jcajce.provider.digest;

import o.AbstractC0304o5;
import o.Ve;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.internal.asn1.iana.IANAObjectIdentifiers;
import org.bouncycastle.internal.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseMac;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseSecretKeyFactory;
import org.bouncycastle.jcajce.provider.symmetric.util.PBESecretKeyFactory;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class SHA1 {

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class Digest extends BCMessageDigest implements Cloneable {
        public Digest() {
            super(new SHA1Digest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Digest digest = (Digest) super.clone();
            digest.digest = new SHA1Digest((SHA1Digest) this.digest);
            return digest;
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class HashMac extends BaseMac {
        public HashMac() {
            super(new HMac(new SHA1Digest()));
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class KeyFactory extends BaseSecretKeyFactory {
        public KeyFactory() {
            super("HmacSHA1", null);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class KeyGenerator extends BaseKeyGenerator {
        public KeyGenerator() {
            super("HMACSHA1", 160, new CipherKeyGenerator());
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class Mappings extends DigestAlgorithmProvider {
        private static final String PREFIX = SHA1.class.getName();

        @Override // org.bouncycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = PREFIX;
            AbstractC0304o5.y(sb, str, "$Digest", configurableProvider, "MessageDigest.SHA-1");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA1", McElieceCCA2KeyGenParameterSpec.SHA1);
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA", McElieceCCA2KeyGenParameterSpec.SHA1);
            StringBuilder sb2 = new StringBuilder("Alg.Alias.MessageDigest.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier = OIWObjectIdentifiers.idSHA1;
            StringBuilder r = Ve.r(sb2, aSN1ObjectIdentifier, configurableProvider, McElieceCCA2KeyGenParameterSpec.SHA1, str);
            r.append("$HashMac");
            addHMACAlgorithm(configurableProvider, "SHA1", r.toString(), Ve.h(str, "$KeyGenerator"));
            ASN1ObjectIdentifier aSN1ObjectIdentifier2 = PKCSObjectIdentifiers.id_hmacWithSHA1;
            addHMACAlias(configurableProvider, "SHA1", aSN1ObjectIdentifier2);
            addHMACAlias(configurableProvider, "SHA1", IANAObjectIdentifiers.hmacSHA1);
            configurableProvider.addAlgorithm("Mac.PBEWITHHMACSHA", str + "$SHA1Mac");
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str);
            AbstractC0304o5.A(sb3, "$SHA1Mac", configurableProvider, "Mac.PBEWITHHMACSHA1");
            configurableProvider.addAlgorithm(AbstractC0304o5.n(configurableProvider, "SecretKeyFactory.HMACSHA1", AbstractC0304o5.i("SecretKeyFactory.PBEWITHHMACSHA1", AbstractC0304o5.i(AbstractC0304o5.n(configurableProvider, AbstractC0304o5.n(configurableProvider, "Alg.Alias.SecretKeyFactory.PBEWITHHMACSHA", "PBEWITHHMACSHA1", "Alg.Alias.SecretKeyFactory.", aSN1ObjectIdentifier), "PBEWITHHMACSHA1", "Alg.Alias.Mac.", aSN1ObjectIdentifier), "PBEWITHHMACSHA", configurableProvider, str, "$PBEWithMacKeyFactory"), configurableProvider, str, "$KeyFactory"), "Alg.Alias.SecretKeyFactory.", aSN1ObjectIdentifier2), "HMACSHA1");
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class PBEWithMacKeyFactory extends PBESecretKeyFactory {
        public PBEWithMacKeyFactory() {
            super("PBEwithHmacSHA1", null, false, 2, 1, 160, 0);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class SHA1Mac extends BaseMac {
        public SHA1Mac() {
            super(new HMac(new SHA1Digest()));
        }
    }

    private SHA1() {
    }
}
