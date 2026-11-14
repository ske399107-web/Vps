package org.bouncycastle.jcajce.provider.digest;

import o.AbstractC0214jf;
import o.AbstractC0304o5;
import o.Ve;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.digests.ParallelHash;
import org.bouncycastle.crypto.digests.SHA3Digest;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.crypto.digests.TupleHash;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.macs.KMAC;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseMac;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseSecretKeyFactory;
import org.bouncycastle.pqc.crypto.mlkem.MLKEMEngine;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class SHA3 {

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class Digest224 extends DigestSHA3 {
        public Digest224() {
            super(BERTags.FLAGS);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class Digest256 extends DigestSHA3 {
        public Digest256() {
            super(256);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class Digest384 extends DigestSHA3 {
        public Digest384() {
            super(MLKEMEngine.KyberPolyBytes);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class Digest512 extends DigestSHA3 {
        public Digest512() {
            super(512);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class DigestParallelHash extends BCMessageDigest implements Cloneable {
        public DigestParallelHash(int i, int i2) {
            super(new ParallelHash(i, null, 128, i2));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            BCMessageDigest bCMessageDigest = (BCMessageDigest) super.clone();
            bCMessageDigest.digest = new ParallelHash((ParallelHash) this.digest);
            return bCMessageDigest;
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class DigestParallelHash128_256 extends DigestParallelHash {
        public DigestParallelHash128_256() {
            super(128, 256);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class DigestParallelHash256_512 extends DigestParallelHash {
        public DigestParallelHash256_512() {
            super(256, 512);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class DigestSHA3 extends BCMessageDigest implements Cloneable {
        public DigestSHA3(int i) {
            super(new SHA3Digest(i));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            BCMessageDigest bCMessageDigest = (BCMessageDigest) super.clone();
            bCMessageDigest.digest = new SHA3Digest((SHA3Digest) this.digest);
            return bCMessageDigest;
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class DigestSHAKE extends BCMessageDigest implements Cloneable {
        public DigestSHAKE(int i, int i2) {
            super(new SHAKEDigest(i));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            BCMessageDigest bCMessageDigest = (BCMessageDigest) super.clone();
            bCMessageDigest.digest = new SHAKEDigest((SHAKEDigest) this.digest);
            return bCMessageDigest;
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class DigestShake128_256 extends DigestSHAKE {
        public DigestShake128_256() {
            super(128, 256);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class DigestShake256_512 extends DigestSHAKE {
        public DigestShake256_512() {
            super(256, 512);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class DigestTupleHash extends BCMessageDigest implements Cloneable {
        public DigestTupleHash(int i, int i2) {
            super(new TupleHash(i, null, i2));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            BCMessageDigest bCMessageDigest = (BCMessageDigest) super.clone();
            bCMessageDigest.digest = new TupleHash((TupleHash) this.digest);
            return bCMessageDigest;
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class DigestTupleHash128_256 extends DigestTupleHash {
        public DigestTupleHash128_256() {
            super(128, 256);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class DigestTupleHash256_512 extends DigestTupleHash {
        public DigestTupleHash256_512() {
            super(256, 512);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class HashMac224 extends HashMacSHA3 {
        public HashMac224() {
            super(BERTags.FLAGS);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class HashMac256 extends HashMacSHA3 {
        public HashMac256() {
            super(256);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class HashMac384 extends HashMacSHA3 {
        public HashMac384() {
            super(MLKEMEngine.KyberPolyBytes);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class HashMac512 extends HashMacSHA3 {
        public HashMac512() {
            super(512);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class HashMacSHA3 extends BaseMac {
        public HashMacSHA3(int i) {
            super(new HMac(new SHA3Digest(i)));
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class KMac128 extends BaseMac {
        public KMac128() {
            super(new KMAC(128, new byte[0]));
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class KMac256 extends BaseMac {
        public KMac256() {
            super(new KMAC(256, new byte[0]));
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class KeyFactory224 extends KeyFactorySHA3 {
        public KeyFactory224() {
            super(BERTags.FLAGS, NISTObjectIdentifiers.id_hmacWithSHA3_224);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class KeyFactory256 extends KeyFactorySHA3 {
        public KeyFactory256() {
            super(256, NISTObjectIdentifiers.id_hmacWithSHA3_256);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class KeyFactory384 extends KeyFactorySHA3 {
        public KeyFactory384() {
            super(MLKEMEngine.KyberPolyBytes, NISTObjectIdentifiers.id_hmacWithSHA3_384);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class KeyFactory512 extends KeyFactorySHA3 {
        public KeyFactory512() {
            super(512, NISTObjectIdentifiers.id_hmacWithSHA3_512);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class KeyFactoryKMAC extends BaseSecretKeyFactory {
        public KeyFactoryKMAC(int i, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
            super(AbstractC0214jf.a(i, "KMAC"), aSN1ObjectIdentifier);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class KeyFactoryKMAC128 extends KeyFactoryKMAC {
        public KeyFactoryKMAC128() {
            super(128, NISTObjectIdentifiers.id_KmacWithSHAKE128);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class KeyFactoryKMAC256 extends KeyFactoryKMAC {
        public KeyFactoryKMAC256() {
            super(256, NISTObjectIdentifiers.id_KmacWithSHAKE256);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class KeyFactorySHA3 extends BaseSecretKeyFactory {
        public KeyFactorySHA3(int i, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
            super(AbstractC0214jf.a(i, "HmacSHA3-"), aSN1ObjectIdentifier);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class KeyGenerator224 extends KeyGeneratorSHA3 {
        public KeyGenerator224() {
            super(BERTags.FLAGS);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class KeyGenerator256 extends KeyGeneratorSHA3 {
        public KeyGenerator256() {
            super(256);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class KeyGenerator384 extends KeyGeneratorSHA3 {
        public KeyGenerator384() {
            super(MLKEMEngine.KyberPolyBytes);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class KeyGenerator512 extends KeyGeneratorSHA3 {
        public KeyGenerator512() {
            super(512);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class KeyGeneratorSHA3 extends BaseKeyGenerator {
        public KeyGeneratorSHA3(int i) {
            super(AbstractC0214jf.a(i, "HMACSHA3-"), i, new CipherKeyGenerator());
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class Mappings extends DigestAlgorithmProvider {
        private static final String PREFIX = SHA3.class.getName();

        @Override // org.bouncycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = PREFIX;
            AbstractC0304o5.y(AbstractC0304o5.q(AbstractC0304o5.q(AbstractC0304o5.q(sb, str, "$Digest224", configurableProvider, "MessageDigest.SHA3-224"), str, "$Digest256", configurableProvider, "MessageDigest.SHA3-256"), str, "$Digest384", configurableProvider, "MessageDigest.SHA3-384"), str, "$Digest512", configurableProvider, "MessageDigest.SHA3-512");
            AbstractC0304o5.B(configurableProvider, str, "$Digest224", "MessageDigest", NISTObjectIdentifiers.id_sha3_224);
            AbstractC0304o5.B(configurableProvider, str, "$Digest256", "MessageDigest", NISTObjectIdentifiers.id_sha3_256);
            AbstractC0304o5.B(configurableProvider, str, "$Digest384", "MessageDigest", NISTObjectIdentifiers.id_sha3_384);
            configurableProvider.addAlgorithm("MessageDigest", NISTObjectIdentifiers.id_sha3_512, str + "$Digest512");
            AbstractC0304o5.y(AbstractC0304o5.q(new StringBuilder(), str, "$DigestShake256_512", configurableProvider, "MessageDigest.SHAKE256-512"), str, "$DigestShake128_256", configurableProvider, "MessageDigest.SHAKE128-256");
            AbstractC0304o5.B(configurableProvider, str, "$DigestShake256_512", "MessageDigest", NISTObjectIdentifiers.id_shake256);
            AbstractC0304o5.B(configurableProvider, str, "$DigestShake128_256", "MessageDigest", NISTObjectIdentifiers.id_shake128);
            addHMACAlgorithm(configurableProvider, "SHA3-224", Ve.k(AbstractC0304o5.s(configurableProvider, "Alg.Alias.MessageDigest.SHAKE256", "SHAKE256-512", "Alg.Alias.MessageDigest.SHAKE128", "SHAKE128-256"), str, "$HashMac224"), Ve.h(str, "$KeyGenerator224"));
            ASN1ObjectIdentifier aSN1ObjectIdentifier = NISTObjectIdentifiers.id_hmacWithSHA3_224;
            addHMACAlias(configurableProvider, "SHA3-224", aSN1ObjectIdentifier);
            StringBuilder r = Ve.r(AbstractC0304o5.p(str, "$KeyFactory224", configurableProvider, "SecretKeyFactory.HMACSHA3-224", "Alg.Alias.SecretKeyFactory."), aSN1ObjectIdentifier, configurableProvider, "HMACSHA3-224", str);
            r.append("$HashMac256");
            addHMACAlgorithm(configurableProvider, "SHA3-256", r.toString(), Ve.h(str, "$KeyGenerator256"));
            ASN1ObjectIdentifier aSN1ObjectIdentifier2 = NISTObjectIdentifiers.id_hmacWithSHA3_256;
            addHMACAlias(configurableProvider, "SHA3-256", aSN1ObjectIdentifier2);
            StringBuilder r2 = Ve.r(AbstractC0304o5.p(str, "$KeyFactory256", configurableProvider, "SecretKeyFactory.HMACSHA3-256", "Alg.Alias.SecretKeyFactory."), aSN1ObjectIdentifier2, configurableProvider, "HMACSHA3-256", str);
            r2.append("$HashMac384");
            addHMACAlgorithm(configurableProvider, "SHA3-384", r2.toString(), Ve.h(str, "$KeyGenerator384"));
            ASN1ObjectIdentifier aSN1ObjectIdentifier3 = NISTObjectIdentifiers.id_hmacWithSHA3_384;
            addHMACAlias(configurableProvider, "SHA3-384", aSN1ObjectIdentifier3);
            StringBuilder r3 = Ve.r(AbstractC0304o5.p(str, "$KeyFactory384", configurableProvider, "SecretKeyFactory.HMACSHA3-384", "Alg.Alias.SecretKeyFactory."), aSN1ObjectIdentifier3, configurableProvider, "HMACSHA3-384", str);
            r3.append("$HashMac512");
            addHMACAlgorithm(configurableProvider, "SHA3-512", r3.toString(), Ve.h(str, "$KeyGenerator512"));
            ASN1ObjectIdentifier aSN1ObjectIdentifier4 = NISTObjectIdentifiers.id_hmacWithSHA3_512;
            addHMACAlias(configurableProvider, "SHA3-512", aSN1ObjectIdentifier4);
            StringBuilder r4 = Ve.r(AbstractC0304o5.p(str, "$KeyFactory512", configurableProvider, "SecretKeyFactory.HMACSHA3-512", "Alg.Alias.SecretKeyFactory."), aSN1ObjectIdentifier4, configurableProvider, "HMACSHA3-512", str);
            r4.append("$KMac128");
            addKMACAlgorithm(configurableProvider, "128", r4.toString(), Ve.h(str, "$KeyGenerator256"));
            StringBuilder r5 = Ve.r(AbstractC0304o5.p(str, "$KeyFactoryKMAC128", configurableProvider, "SecretKeyFactory.KMAC128", "Alg.Alias.SecretKeyFactory."), NISTObjectIdentifiers.id_Kmac128, configurableProvider, "KMAC128", str);
            r5.append("$KMac256");
            addKMACAlgorithm(configurableProvider, "256", r5.toString(), Ve.h(str, "$KeyGenerator512"));
            AbstractC0304o5.A(AbstractC0304o5.r(Ve.r(AbstractC0304o5.p(str, "$KeyFactoryKMAC256", configurableProvider, "SecretKeyFactory.KMAC256", "Alg.Alias.SecretKeyFactory."), NISTObjectIdentifiers.id_Kmac256, configurableProvider, "KMAC256", str), "$DigestTupleHash256_512", configurableProvider, "MessageDigest.TUPLEHASH256-512", str), "$DigestTupleHash128_256", configurableProvider, "MessageDigest.TUPLEHASH128-256");
            AbstractC0304o5.y(AbstractC0304o5.q(AbstractC0304o5.s(configurableProvider, "Alg.Alias.MessageDigest.TUPLEHASH256", "TUPLEHASH256-512", "Alg.Alias.MessageDigest.TUPLEHASH128", "TUPLEHASH128-256"), str, "$DigestParallelHash256_512", configurableProvider, "MessageDigest.PARALLELHASH256-512"), str, "$DigestParallelHash128_256", configurableProvider, "MessageDigest.PARALLELHASH128-256");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.PARALLELHASH256", "PARALLELHASH256-512");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.PARALLELHASH128", "PARALLELHASH128-256");
        }
    }

    private SHA3() {
    }
}
