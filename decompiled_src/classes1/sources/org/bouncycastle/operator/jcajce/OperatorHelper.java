package org.bouncycastle.operator.jcajce;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PSSParameterSpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import o.Ve;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.kisa.KISAObjectIdentifiers;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.ntt.NTTObjectIdentifiers;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.RSASSAPSSparams;
import org.bouncycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.cert.X509CertificateHolder;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.jcajce.util.AlgorithmParametersUtils;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jcajce.util.MessageDigestUtils;
import org.bouncycastle.operator.DefaultSignatureNameFinder;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.util.Integers;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class OperatorHelper {
    private static final Map asymmetricWrapperAlgNames;
    private static final Map oids;
    private static DefaultSignatureNameFinder sigFinder;
    private static final Map symmetricKeyAlgNames;
    private static final Map symmetricWrapperAlgNames;
    private static final Map symmetricWrapperKeySizes;
    private JcaJceHelper helper;

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class OpCertificateException extends CertificateException {
        private Throwable cause;

        public OpCertificateException(String str, Throwable th) {
            super(str);
            this.cause = th;
        }

        @Override // java.lang.Throwable
        public Throwable getCause() {
            return this.cause;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        oids = hashMap;
        HashMap hashMap2 = new HashMap();
        asymmetricWrapperAlgNames = hashMap2;
        HashMap hashMap3 = new HashMap();
        symmetricWrapperAlgNames = hashMap3;
        HashMap hashMap4 = new HashMap();
        symmetricKeyAlgNames = hashMap4;
        HashMap hashMap5 = new HashMap();
        symmetricWrapperKeySizes = hashMap5;
        sigFinder = new DefaultSignatureNameFinder();
        hashMap.put(OIWObjectIdentifiers.idSHA1, "SHA1");
        hashMap.put(NISTObjectIdentifiers.id_sha224, "SHA224");
        hashMap.put(NISTObjectIdentifiers.id_sha256, "SHA256");
        hashMap.put(NISTObjectIdentifiers.id_sha384, "SHA384");
        hashMap.put(NISTObjectIdentifiers.id_sha512, "SHA512");
        hashMap.put(TeleTrusTObjectIdentifiers.ripemd128, "RIPEMD128");
        hashMap.put(TeleTrusTObjectIdentifiers.ripemd160, "RIPEMD160");
        hashMap.put(TeleTrusTObjectIdentifiers.ripemd256, "RIPEMD256");
        hashMap2.put(PKCSObjectIdentifiers.rsaEncryption, "RSA/ECB/PKCS1Padding");
        hashMap2.put(OIWObjectIdentifiers.elGamalAlgorithm, "Elgamal/ECB/PKCS1Padding");
        hashMap2.put(PKCSObjectIdentifiers.id_RSAES_OAEP, "RSA/ECB/OAEPPadding");
        hashMap2.put(CryptoProObjectIdentifiers.gostR3410_2001, "ECGOST3410");
        ASN1ObjectIdentifier aSN1ObjectIdentifier = PKCSObjectIdentifiers.id_alg_CMS3DESwrap;
        hashMap3.put(aSN1ObjectIdentifier, "DESEDEWrap");
        hashMap3.put(PKCSObjectIdentifiers.id_alg_CMSRC2wrap, "RC2Wrap");
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = NISTObjectIdentifiers.id_aes128_wrap;
        hashMap3.put(aSN1ObjectIdentifier2, "AESWrap");
        ASN1ObjectIdentifier aSN1ObjectIdentifier3 = NISTObjectIdentifiers.id_aes192_wrap;
        hashMap3.put(aSN1ObjectIdentifier3, "AESWrap");
        ASN1ObjectIdentifier aSN1ObjectIdentifier4 = NISTObjectIdentifiers.id_aes256_wrap;
        hashMap3.put(aSN1ObjectIdentifier4, "AESWrap");
        ASN1ObjectIdentifier aSN1ObjectIdentifier5 = NTTObjectIdentifiers.id_camellia128_wrap;
        hashMap3.put(aSN1ObjectIdentifier5, "CamelliaWrap");
        ASN1ObjectIdentifier aSN1ObjectIdentifier6 = NTTObjectIdentifiers.id_camellia192_wrap;
        hashMap3.put(aSN1ObjectIdentifier6, "CamelliaWrap");
        ASN1ObjectIdentifier aSN1ObjectIdentifier7 = NTTObjectIdentifiers.id_camellia256_wrap;
        hashMap3.put(aSN1ObjectIdentifier7, "CamelliaWrap");
        ASN1ObjectIdentifier aSN1ObjectIdentifier8 = KISAObjectIdentifiers.id_npki_app_cmsSeed_wrap;
        hashMap3.put(aSN1ObjectIdentifier8, "SEEDWrap");
        ASN1ObjectIdentifier aSN1ObjectIdentifier9 = PKCSObjectIdentifiers.des_EDE3_CBC;
        hashMap3.put(aSN1ObjectIdentifier9, "DESede");
        hashMap5.put(aSN1ObjectIdentifier, Integers.valueOf(192));
        hashMap5.put(aSN1ObjectIdentifier2, Integers.valueOf(128));
        hashMap5.put(aSN1ObjectIdentifier3, Integers.valueOf(192));
        hashMap5.put(aSN1ObjectIdentifier4, Integers.valueOf(256));
        hashMap5.put(aSN1ObjectIdentifier5, Integers.valueOf(128));
        hashMap5.put(aSN1ObjectIdentifier6, Integers.valueOf(192));
        hashMap5.put(aSN1ObjectIdentifier7, Integers.valueOf(256));
        hashMap5.put(aSN1ObjectIdentifier8, Integers.valueOf(128));
        hashMap5.put(aSN1ObjectIdentifier9, Integers.valueOf(192));
        hashMap4.put(NISTObjectIdentifiers.aes, "AES");
        hashMap4.put(NISTObjectIdentifiers.id_aes128_CBC, "AES");
        hashMap4.put(NISTObjectIdentifiers.id_aes192_CBC, "AES");
        hashMap4.put(NISTObjectIdentifiers.id_aes256_CBC, "AES");
        hashMap4.put(aSN1ObjectIdentifier9, "DESede");
        hashMap4.put(PKCSObjectIdentifiers.RC2_CBC, "RC2");
    }

    public OperatorHelper(JcaJceHelper jcaJceHelper) {
        this.helper = jcaJceHelper;
    }

    public static String getDigestName(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        String digestName = MessageDigestUtils.getDigestName(aSN1ObjectIdentifier);
        int indexOf = digestName.indexOf(45);
        if (indexOf <= 0 || digestName.startsWith("SHA3")) {
            return digestName;
        }
        return digestName.substring(0, indexOf) + digestName.substring(indexOf + 1);
    }

    private static String getSignatureName(AlgorithmIdentifier algorithmIdentifier) {
        return sigFinder.getAlgorithmName(algorithmIdentifier);
    }

    private boolean notDefaultPSSParams(ASN1Sequence aSN1Sequence) throws GeneralSecurityException {
        if (aSN1Sequence == null || aSN1Sequence.size() == 0) {
            return false;
        }
        RSASSAPSSparams rSASSAPSSparams = RSASSAPSSparams.getInstance(aSN1Sequence);
        if (rSASSAPSSparams.getMaskGenAlgorithm().getAlgorithm().equals((ASN1Primitive) PKCSObjectIdentifiers.id_mgf1) && rSASSAPSSparams.getHashAlgorithm().equals(AlgorithmIdentifier.getInstance(rSASSAPSSparams.getMaskGenAlgorithm().getParameters()))) {
            return rSASSAPSSparams.getSaltLength().intValue() != createDigest(rSASSAPSSparams.getHashAlgorithm()).getDigestLength();
        }
        return true;
    }

    public X509Certificate convertCertificate(X509CertificateHolder x509CertificateHolder) throws CertificateException {
        try {
            return (X509Certificate) this.helper.createCertificateFactory("X.509").generateCertificate(new ByteArrayInputStream(x509CertificateHolder.getEncoded()));
        } catch (IOException e) {
            throw new OpCertificateException(Ve.d(e, new StringBuilder("cannot get encoded form of certificate: ")), e);
        } catch (NoSuchProviderException e2) {
            throw new OpCertificateException("cannot find factory provider: " + e2.getMessage(), e2);
        }
    }

    public PublicKey convertPublicKey(SubjectPublicKeyInfo subjectPublicKeyInfo) throws OperatorCreationException {
        try {
            return this.helper.createKeyFactory(subjectPublicKeyInfo.getAlgorithm().getAlgorithm().getId()).generatePublic(new X509EncodedKeySpec(subjectPublicKeyInfo.getEncoded()));
        } catch (IOException e) {
            throw new OperatorCreationException(Ve.d(e, new StringBuilder("cannot get encoded form of key: ")), e);
        } catch (NoSuchAlgorithmException e2) {
            throw new OperatorCreationException("cannot create key factory: " + e2.getMessage(), e2);
        } catch (NoSuchProviderException e3) {
            throw new OperatorCreationException("cannot find factory provider: " + e3.getMessage(), e3);
        } catch (InvalidKeySpecException e4) {
            throw new OperatorCreationException("cannot create key factory: " + e4.getMessage(), e4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.security.AlgorithmParameters createAlgorithmParameters(org.bouncycastle.asn1.x509.AlgorithmIdentifier r5) throws org.bouncycastle.operator.OperatorCreationException {
        /*
            r4 = this;
            org.bouncycastle.asn1.ASN1ObjectIdentifier r0 = r5.getAlgorithm()
            org.bouncycastle.asn1.ASN1ObjectIdentifier r1 = org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers.rsaEncryption
            boolean r0 = r0.equals(r1)
            r1 = 0
            if (r0 == 0) goto Le
            return r1
        Le:
            org.bouncycastle.asn1.ASN1ObjectIdentifier r0 = r5.getAlgorithm()
            org.bouncycastle.asn1.ASN1ObjectIdentifier r2 = org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers.id_RSAES_OAEP
            boolean r0 = r0.equals(r2)
            java.lang.String r2 = "cannot create algorithm parameters: "
            if (r0 == 0) goto L3c
            org.bouncycastle.jcajce.util.JcaJceHelper r0 = r4.helper     // Catch: java.security.NoSuchProviderException -> L25 java.security.NoSuchAlgorithmException -> L3c
            java.lang.String r3 = "OAEP"
            java.security.AlgorithmParameters r0 = r0.createAlgorithmParameters(r3)     // Catch: java.security.NoSuchProviderException -> L25 java.security.NoSuchAlgorithmException -> L3c
            goto L3d
        L25:
            r5 = move-exception
            org.bouncycastle.operator.OperatorCreationException r0 = new org.bouncycastle.operator.OperatorCreationException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r2)
            java.lang.String r2 = r5.getMessage()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1, r5)
            throw r0
        L3c:
            r0 = r1
        L3d:
            if (r0 != 0) goto L66
            org.bouncycastle.jcajce.util.JcaJceHelper r0 = r4.helper     // Catch: java.security.NoSuchProviderException -> L4e java.security.NoSuchAlgorithmException -> L65
            org.bouncycastle.asn1.ASN1ObjectIdentifier r3 = r5.getAlgorithm()     // Catch: java.security.NoSuchProviderException -> L4e java.security.NoSuchAlgorithmException -> L65
            java.lang.String r3 = r3.getId()     // Catch: java.security.NoSuchProviderException -> L4e java.security.NoSuchAlgorithmException -> L65
            java.security.AlgorithmParameters r0 = r0.createAlgorithmParameters(r3)     // Catch: java.security.NoSuchProviderException -> L4e java.security.NoSuchAlgorithmException -> L65
            goto L66
        L4e:
            r5 = move-exception
            org.bouncycastle.operator.OperatorCreationException r0 = new org.bouncycastle.operator.OperatorCreationException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r2)
            java.lang.String r2 = r5.getMessage()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1, r5)
            throw r0
        L65:
            return r1
        L66:
            org.bouncycastle.asn1.ASN1Encodable r5 = r5.getParameters()     // Catch: java.io.IOException -> L76
            org.bouncycastle.asn1.ASN1Primitive r5 = r5.toASN1Primitive()     // Catch: java.io.IOException -> L76
            byte[] r5 = r5.getEncoded()     // Catch: java.io.IOException -> L76
            r0.init(r5)     // Catch: java.io.IOException -> L76
            return r0
        L76:
            r5 = move-exception
            org.bouncycastle.operator.OperatorCreationException r0 = new org.bouncycastle.operator.OperatorCreationException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "cannot initialise algorithm parameters: "
            r1.<init>(r2)
            java.lang.String r1 = o.Ve.d(r5, r1)
            r0.<init>(r1, r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.operator.jcajce.OperatorHelper.createAlgorithmParameters(org.bouncycastle.asn1.x509.AlgorithmIdentifier):java.security.AlgorithmParameters");
    }

    public Cipher createAsymmetricWrapper(ASN1ObjectIdentifier aSN1ObjectIdentifier, Map map) throws OperatorCreationException {
        String str;
        try {
            if (!map.isEmpty()) {
                str = (String) map.get(aSN1ObjectIdentifier);
            } else {
                str = null;
            }
            if (str == null) {
                str = (String) asymmetricWrapperAlgNames.get(aSN1ObjectIdentifier);
            }
            if (str != null) {
                try {
                    return this.helper.createCipher(str);
                } catch (NoSuchAlgorithmException unused) {
                    if (str.equals("RSA/ECB/PKCS1Padding")) {
                        try {
                            return this.helper.createCipher("RSA/NONE/PKCS1Padding");
                        } catch (NoSuchAlgorithmException unused2) {
                        }
                    }
                }
            }
            return this.helper.createCipher(aSN1ObjectIdentifier.getId());
        } catch (GeneralSecurityException e) {
            throw new OperatorCreationException(Ve.l(e, new StringBuilder("cannot create cipher: ")), e);
        }
    }

    public Cipher createCipher(ASN1ObjectIdentifier aSN1ObjectIdentifier) throws OperatorCreationException {
        try {
            return this.helper.createCipher(aSN1ObjectIdentifier.getId());
        } catch (GeneralSecurityException e) {
            throw new OperatorCreationException(Ve.l(e, new StringBuilder("cannot create cipher: ")), e);
        }
    }

    public MessageDigest createDigest(AlgorithmIdentifier algorithmIdentifier) throws GeneralSecurityException {
        JcaJceHelper jcaJceHelper;
        String digestName;
        try {
            if (algorithmIdentifier.getAlgorithm().equals((ASN1Primitive) NISTObjectIdentifiers.id_shake256_len)) {
                jcaJceHelper = this.helper;
                digestName = "SHAKE256-" + ASN1Integer.getInstance(algorithmIdentifier.getParameters()).getValue();
            } else {
                if (algorithmIdentifier.getAlgorithm().equals((ASN1Primitive) NISTObjectIdentifiers.id_shake128_len)) {
                    return this.helper.createMessageDigest("SHAKE128-" + ASN1Integer.getInstance(algorithmIdentifier.getParameters()).getValue());
                }
                jcaJceHelper = this.helper;
                digestName = MessageDigestUtils.getDigestName(algorithmIdentifier.getAlgorithm());
            }
            return jcaJceHelper.createMessageDigest(digestName);
        } catch (NoSuchAlgorithmException e) {
            Map map = oids;
            if (map.get(algorithmIdentifier.getAlgorithm()) == null) {
                throw e;
            }
            return this.helper.createMessageDigest((String) map.get(algorithmIdentifier.getAlgorithm()));
        }
    }

    public KeyAgreement createKeyAgreement(ASN1ObjectIdentifier aSN1ObjectIdentifier) throws OperatorCreationException {
        try {
            return this.helper.createKeyAgreement(aSN1ObjectIdentifier.getId());
        } catch (GeneralSecurityException e) {
            throw new OperatorCreationException(Ve.l(e, new StringBuilder("cannot create key agreement: ")), e);
        }
    }

    public KeyPairGenerator createKeyPairGenerator(ASN1ObjectIdentifier aSN1ObjectIdentifier) throws CMSException {
        try {
            return this.helper.createKeyPairGenerator(aSN1ObjectIdentifier.getId());
        } catch (GeneralSecurityException e) {
            throw new CMSException(Ve.l(e, new StringBuilder("cannot create key agreement: ")), e);
        }
    }

    public Signature createRawSignature(AlgorithmIdentifier algorithmIdentifier) {
        try {
            String signatureName = getSignatureName(algorithmIdentifier);
            String str = "NONE" + signatureName.substring(signatureName.indexOf("WITH"));
            Signature createSignature = this.helper.createSignature(str);
            if (algorithmIdentifier.getAlgorithm().equals((ASN1Primitive) PKCSObjectIdentifiers.id_RSASSA_PSS)) {
                AlgorithmParameters createAlgorithmParameters = this.helper.createAlgorithmParameters(str);
                AlgorithmParametersUtils.loadParameters(createAlgorithmParameters, algorithmIdentifier.getParameters());
                createSignature.setParameter((PSSParameterSpec) createAlgorithmParameters.getParameterSpec(PSSParameterSpec.class));
            }
            return createSignature;
        } catch (Exception unused) {
            return null;
        }
    }

    public Signature createSignature(AlgorithmIdentifier algorithmIdentifier) throws GeneralSecurityException {
        Signature createSignature;
        String signatureName = getSignatureName(algorithmIdentifier);
        try {
            createSignature = this.helper.createSignature(signatureName);
        } catch (NoSuchAlgorithmException e) {
            if (signatureName.endsWith("WITHRSAANDMGF1")) {
                createSignature = this.helper.createSignature(signatureName.substring(0, signatureName.indexOf(87)) + "WITHRSASSA-PSS");
            } else {
                throw e;
            }
        }
        if (algorithmIdentifier.getAlgorithm().equals((ASN1Primitive) PKCSObjectIdentifiers.id_RSASSA_PSS)) {
            ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(algorithmIdentifier.getParameters());
            if (notDefaultPSSParams(aSN1Sequence)) {
                try {
                    AlgorithmParameters createAlgorithmParameters = this.helper.createAlgorithmParameters("PSS");
                    createAlgorithmParameters.init(aSN1Sequence.getEncoded());
                    createSignature.setParameter(createAlgorithmParameters.getParameterSpec(PSSParameterSpec.class));
                } catch (IOException e2) {
                    throw new GeneralSecurityException(Ve.d(e2, new StringBuilder("unable to process PSS parameters: ")));
                }
            }
        }
        return createSignature;
    }

    public Cipher createSymmetricWrapper(ASN1ObjectIdentifier aSN1ObjectIdentifier) throws OperatorCreationException {
        try {
            String str = (String) symmetricWrapperAlgNames.get(aSN1ObjectIdentifier);
            if (str != null) {
                try {
                    return this.helper.createCipher(str);
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return this.helper.createCipher(aSN1ObjectIdentifier.getId());
        } catch (GeneralSecurityException e) {
            throw new OperatorCreationException(Ve.l(e, new StringBuilder("cannot create cipher: ")), e);
        }
    }

    public String getKeyAlgorithmName(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        String str = (String) symmetricKeyAlgNames.get(aSN1ObjectIdentifier);
        return str != null ? str : aSN1ObjectIdentifier.getId();
    }

    public int getKeySizeInBits(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return ((Integer) symmetricWrapperKeySizes.get(aSN1ObjectIdentifier)).intValue();
    }

    public String getWrappingAlgorithmName(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return (String) symmetricWrapperAlgNames.get(aSN1ObjectIdentifier);
    }
}
