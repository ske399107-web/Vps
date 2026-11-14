package org.bouncycastle.operator.jcajce;

import java.security.PrivateKey;
import java.security.Provider;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.jcajce.util.DefaultJcaJceHelper;
import org.bouncycastle.jcajce.util.NamedJcaJceHelper;
import org.bouncycastle.jcajce.util.ProviderJcaJceHelper;
import org.bouncycastle.operator.AsymmetricKeyUnwrapper;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class JceAsymmetricKeyUnwrapper extends AsymmetricKeyUnwrapper {
    private Map extraMappings;
    private OperatorHelper helper;
    private PrivateKey privKey;
    private boolean unwrappedKeyMustBeEncodable;

    public JceAsymmetricKeyUnwrapper(AlgorithmIdentifier algorithmIdentifier, PrivateKey privateKey) {
        super(algorithmIdentifier);
        this.helper = new OperatorHelper(new DefaultJcaJceHelper());
        this.extraMappings = new HashMap();
        this.privKey = privateKey;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:1|2|3|(3:29|30|(9:32|6|7|8|(5:10|(1:12)|(3:15|(1:17)(1:19)|18)|20|21)|24|(0)|20|21))|5|6|7|8|(0)|24|(0)|20|21) */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0053, code lost:
    
        if (r4.length == 0) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0059  */
    @Override // org.bouncycastle.operator.KeyUnwrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.bouncycastle.operator.GenericKey generateUnwrappedKey(org.bouncycastle.asn1.x509.AlgorithmIdentifier r7, byte[] r8) throws org.bouncycastle.operator.OperatorException {
        /*
            r6 = this;
            org.bouncycastle.operator.jcajce.OperatorHelper r0 = r6.helper     // Catch: java.security.InvalidAlgorithmParameterException -> L62 javax.crypto.BadPaddingException -> L64 javax.crypto.IllegalBlockSizeException -> L66 java.security.InvalidKeyException -> L68
            org.bouncycastle.asn1.x509.AlgorithmIdentifier r1 = r6.getAlgorithmIdentifier()     // Catch: java.security.InvalidAlgorithmParameterException -> L62 javax.crypto.BadPaddingException -> L64 javax.crypto.IllegalBlockSizeException -> L66 java.security.InvalidKeyException -> L68
            org.bouncycastle.asn1.ASN1ObjectIdentifier r1 = r1.getAlgorithm()     // Catch: java.security.InvalidAlgorithmParameterException -> L62 javax.crypto.BadPaddingException -> L64 javax.crypto.IllegalBlockSizeException -> L66 java.security.InvalidKeyException -> L68
            java.util.Map r2 = r6.extraMappings     // Catch: java.security.InvalidAlgorithmParameterException -> L62 javax.crypto.BadPaddingException -> L64 javax.crypto.IllegalBlockSizeException -> L66 java.security.InvalidKeyException -> L68
            javax.crypto.Cipher r0 = r0.createAsymmetricWrapper(r1, r2)     // Catch: java.security.InvalidAlgorithmParameterException -> L62 javax.crypto.BadPaddingException -> L64 javax.crypto.IllegalBlockSizeException -> L66 java.security.InvalidKeyException -> L68
            org.bouncycastle.operator.jcajce.OperatorHelper r1 = r6.helper     // Catch: java.security.InvalidAlgorithmParameterException -> L62 javax.crypto.BadPaddingException -> L64 javax.crypto.IllegalBlockSizeException -> L66 java.security.InvalidKeyException -> L68
            org.bouncycastle.asn1.x509.AlgorithmIdentifier r2 = r6.getAlgorithmIdentifier()     // Catch: java.security.InvalidAlgorithmParameterException -> L62 javax.crypto.BadPaddingException -> L64 javax.crypto.IllegalBlockSizeException -> L66 java.security.InvalidKeyException -> L68
            java.security.AlgorithmParameters r1 = r1.createAlgorithmParameters(r2)     // Catch: java.security.InvalidAlgorithmParameterException -> L62 javax.crypto.BadPaddingException -> L64 javax.crypto.IllegalBlockSizeException -> L66 java.security.InvalidKeyException -> L68
            r2 = 4
            r3 = 0
            if (r1 == 0) goto L34
            org.bouncycastle.asn1.x509.AlgorithmIdentifier r4 = r6.getAlgorithmIdentifier()     // Catch: java.lang.Throwable -> L57
            org.bouncycastle.asn1.ASN1ObjectIdentifier r4 = r4.getAlgorithm()     // Catch: java.lang.Throwable -> L57
            org.bouncycastle.asn1.ASN1ObjectIdentifier r5 = org.bouncycastle.asn1.oiw.OIWObjectIdentifiers.elGamalAlgorithm     // Catch: java.lang.Throwable -> L57
            boolean r4 = r4.equals(r5)     // Catch: java.lang.Throwable -> L57
            if (r4 != 0) goto L34
            java.security.PrivateKey r4 = r6.privKey     // Catch: java.lang.Throwable -> L57
            r0.init(r2, r4, r1)     // Catch: java.lang.Throwable -> L57
            goto L39
        L34:
            java.security.PrivateKey r4 = r6.privKey     // Catch: java.lang.Throwable -> L57
            r0.init(r2, r4)     // Catch: java.lang.Throwable -> L57
        L39:
            org.bouncycastle.operator.jcajce.OperatorHelper r2 = r6.helper     // Catch: java.lang.Throwable -> L57
            org.bouncycastle.asn1.ASN1ObjectIdentifier r4 = r7.getAlgorithm()     // Catch: java.lang.Throwable -> L57
            java.lang.String r2 = r2.getKeyAlgorithmName(r4)     // Catch: java.lang.Throwable -> L57
            r4 = 3
            java.security.Key r2 = r0.unwrap(r8, r2, r4)     // Catch: java.lang.Throwable -> L57
            boolean r4 = r6.unwrappedKeyMustBeEncodable     // Catch: java.lang.Throwable -> L56
            if (r4 == 0) goto L56
            byte[] r4 = r2.getEncoded()
            if (r4 == 0) goto L57
            int r4 = r4.length
            if (r4 != 0) goto L56
            goto L57
        L56:
            r3 = r2
        L57:
            if (r3 != 0) goto L80
            r2 = 2
            if (r1 == 0) goto L6a
            java.security.PrivateKey r3 = r6.privKey     // Catch: java.security.InvalidAlgorithmParameterException -> L62 javax.crypto.BadPaddingException -> L64 javax.crypto.IllegalBlockSizeException -> L66 java.security.InvalidKeyException -> L68
            r0.init(r2, r3, r1)     // Catch: java.security.InvalidAlgorithmParameterException -> L62 javax.crypto.BadPaddingException -> L64 javax.crypto.IllegalBlockSizeException -> L66 java.security.InvalidKeyException -> L68
            goto L6f
        L62:
            r7 = move-exception
            goto L86
        L64:
            r7 = move-exception
            goto L9e
        L66:
            r7 = move-exception
            goto Lb6
        L68:
            r7 = move-exception
            goto Lce
        L6a:
            java.security.PrivateKey r1 = r6.privKey     // Catch: java.security.InvalidAlgorithmParameterException -> L62 javax.crypto.BadPaddingException -> L64 javax.crypto.IllegalBlockSizeException -> L66 java.security.InvalidKeyException -> L68
            r0.init(r2, r1)     // Catch: java.security.InvalidAlgorithmParameterException -> L62 javax.crypto.BadPaddingException -> L64 javax.crypto.IllegalBlockSizeException -> L66 java.security.InvalidKeyException -> L68
        L6f:
            javax.crypto.spec.SecretKeySpec r3 = new javax.crypto.spec.SecretKeySpec     // Catch: java.security.InvalidAlgorithmParameterException -> L62 javax.crypto.BadPaddingException -> L64 javax.crypto.IllegalBlockSizeException -> L66 java.security.InvalidKeyException -> L68
            byte[] r8 = r0.doFinal(r8)     // Catch: java.security.InvalidAlgorithmParameterException -> L62 javax.crypto.BadPaddingException -> L64 javax.crypto.IllegalBlockSizeException -> L66 java.security.InvalidKeyException -> L68
            org.bouncycastle.asn1.ASN1ObjectIdentifier r0 = r7.getAlgorithm()     // Catch: java.security.InvalidAlgorithmParameterException -> L62 javax.crypto.BadPaddingException -> L64 javax.crypto.IllegalBlockSizeException -> L66 java.security.InvalidKeyException -> L68
            java.lang.String r0 = r0.getId()     // Catch: java.security.InvalidAlgorithmParameterException -> L62 javax.crypto.BadPaddingException -> L64 javax.crypto.IllegalBlockSizeException -> L66 java.security.InvalidKeyException -> L68
            r3.<init>(r8, r0)     // Catch: java.security.InvalidAlgorithmParameterException -> L62 javax.crypto.BadPaddingException -> L64 javax.crypto.IllegalBlockSizeException -> L66 java.security.InvalidKeyException -> L68
        L80:
            org.bouncycastle.operator.jcajce.JceGenericKey r8 = new org.bouncycastle.operator.jcajce.JceGenericKey     // Catch: java.security.InvalidAlgorithmParameterException -> L62 javax.crypto.BadPaddingException -> L64 javax.crypto.IllegalBlockSizeException -> L66 java.security.InvalidKeyException -> L68
            r8.<init>(r7, r3)     // Catch: java.security.InvalidAlgorithmParameterException -> L62 javax.crypto.BadPaddingException -> L64 javax.crypto.IllegalBlockSizeException -> L66 java.security.InvalidKeyException -> L68
            return r8
        L86:
            org.bouncycastle.operator.OperatorException r8 = new org.bouncycastle.operator.OperatorException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "invalid algorithm parameters: "
            r0.<init>(r1)
            java.lang.String r1 = r7.getMessage()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r8.<init>(r0, r7)
            throw r8
        L9e:
            org.bouncycastle.operator.OperatorException r8 = new org.bouncycastle.operator.OperatorException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "bad padding: "
            r0.<init>(r1)
            java.lang.String r1 = r7.getMessage()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r8.<init>(r0, r7)
            throw r8
        Lb6:
            org.bouncycastle.operator.OperatorException r8 = new org.bouncycastle.operator.OperatorException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "illegal blocksize: "
            r0.<init>(r1)
            java.lang.String r1 = r7.getMessage()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r8.<init>(r0, r7)
            throw r8
        Lce:
            org.bouncycastle.operator.OperatorException r8 = new org.bouncycastle.operator.OperatorException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "key invalid: "
            r0.<init>(r1)
            java.lang.String r1 = r7.getMessage()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r8.<init>(r0, r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.operator.jcajce.JceAsymmetricKeyUnwrapper.generateUnwrappedKey(org.bouncycastle.asn1.x509.AlgorithmIdentifier, byte[]):org.bouncycastle.operator.GenericKey");
    }

    public JceAsymmetricKeyUnwrapper setAlgorithmMapping(ASN1ObjectIdentifier aSN1ObjectIdentifier, String str) {
        this.extraMappings.put(aSN1ObjectIdentifier, str);
        return this;
    }

    public JceAsymmetricKeyUnwrapper setMustProduceEncodableUnwrappedKey(boolean z) {
        this.unwrappedKeyMustBeEncodable = z;
        return this;
    }

    public JceAsymmetricKeyUnwrapper setProvider(String str) {
        this.helper = new OperatorHelper(new NamedJcaJceHelper(str));
        return this;
    }

    public JceAsymmetricKeyUnwrapper setProvider(Provider provider) {
        this.helper = new OperatorHelper(new ProviderJcaJceHelper(provider));
        return this;
    }
}
