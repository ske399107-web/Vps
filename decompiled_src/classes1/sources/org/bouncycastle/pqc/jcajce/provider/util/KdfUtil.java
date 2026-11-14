package org.bouncycastle.pqc.jcajce.provider.util;

import o.AbstractC0304o5;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.agreement.kdf.ConcatenationKDFGenerator;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA384Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.crypto.generators.HKDFBytesGenerator;
import org.bouncycastle.crypto.generators.KDF2BytesGenerator;
import org.bouncycastle.crypto.macs.KMAC;
import org.bouncycastle.crypto.params.HKDFParameters;
import org.bouncycastle.crypto.params.KDFParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.jcajce.spec.KEMKDFSpec;
import org.bouncycastle.util.Arrays;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class KdfUtil {
    public static Digest getDigest(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        if (aSN1ObjectIdentifier.equals((ASN1Primitive) NISTObjectIdentifiers.id_sha256)) {
            return new SHA256Digest();
        }
        if (aSN1ObjectIdentifier.equals((ASN1Primitive) NISTObjectIdentifiers.id_sha512)) {
            return new SHA512Digest();
        }
        if (aSN1ObjectIdentifier.equals((ASN1Primitive) NISTObjectIdentifiers.id_shake128)) {
            return new SHAKEDigest(128);
        }
        if (aSN1ObjectIdentifier.equals((ASN1Primitive) NISTObjectIdentifiers.id_shake256)) {
            return new SHAKEDigest(256);
        }
        throw new IllegalArgumentException(AbstractC0304o5.k("unrecognized digest OID: ", aSN1ObjectIdentifier));
    }

    public static byte[] makeKeyBytes(AlgorithmIdentifier algorithmIdentifier, byte[] bArr, byte[] bArr2, int i) {
        KMAC kmac;
        KeyParameter keyParameter;
        HKDFBytesGenerator hKDFBytesGenerator;
        HKDFParameters hKDFParameters;
        DerivationFunction concatenationKDFGenerator;
        KDFParameters kDFParameters;
        int i2 = (i + 7) / 8;
        byte[] bArr3 = new byte[i2];
        if (algorithmIdentifier == null) {
            System.arraycopy(bArr, 0, bArr3, 0, i2);
        } else {
            if (X9ObjectIdentifiers.id_kdf_kdf2.equals((ASN1Primitive) algorithmIdentifier.getAlgorithm())) {
                concatenationKDFGenerator = new KDF2BytesGenerator(getDigest(AlgorithmIdentifier.getInstance(algorithmIdentifier.getParameters()).getAlgorithm()));
                kDFParameters = new KDFParameters(bArr, bArr2);
            } else if (X9ObjectIdentifiers.id_kdf_kdf3.equals((ASN1Primitive) algorithmIdentifier.getAlgorithm())) {
                concatenationKDFGenerator = new ConcatenationKDFGenerator(getDigest(AlgorithmIdentifier.getInstance(algorithmIdentifier.getParameters()).getAlgorithm()));
                kDFParameters = new KDFParameters(bArr, bArr2);
            } else {
                if (PKCSObjectIdentifiers.id_alg_hkdf_with_sha256.equals((ASN1Primitive) algorithmIdentifier.getAlgorithm())) {
                    if (algorithmIdentifier.getParameters() != null) {
                        throw new IllegalStateException("HDKF parameter support not added");
                    }
                    hKDFBytesGenerator = new HKDFBytesGenerator(new SHA256Digest());
                    hKDFParameters = new HKDFParameters(bArr, null, bArr2);
                } else if (PKCSObjectIdentifiers.id_alg_hkdf_with_sha384.equals((ASN1Primitive) algorithmIdentifier.getAlgorithm())) {
                    if (algorithmIdentifier.getParameters() != null) {
                        throw new IllegalStateException("HDKF parameter support not added");
                    }
                    hKDFBytesGenerator = new HKDFBytesGenerator(new SHA384Digest());
                    hKDFParameters = new HKDFParameters(bArr, null, bArr2);
                } else if (!PKCSObjectIdentifiers.id_alg_hkdf_with_sha512.equals((ASN1Primitive) algorithmIdentifier.getAlgorithm())) {
                    if (NISTObjectIdentifiers.id_Kmac128.equals((ASN1Primitive) algorithmIdentifier.getAlgorithm())) {
                        byte[] bArr4 = new byte[0];
                        if (algorithmIdentifier.getParameters() != null) {
                            bArr4 = ASN1OctetString.getInstance(algorithmIdentifier.getParameters()).getOctets();
                        }
                        kmac = new KMAC(128, bArr4);
                        keyParameter = new KeyParameter(bArr, 0, bArr.length);
                    } else if (NISTObjectIdentifiers.id_Kmac256.equals((ASN1Primitive) algorithmIdentifier.getAlgorithm())) {
                        byte[] bArr5 = new byte[0];
                        if (algorithmIdentifier.getParameters() != null) {
                            bArr5 = ASN1OctetString.getInstance(algorithmIdentifier.getParameters()).getOctets();
                        }
                        kmac = new KMAC(256, bArr5);
                        keyParameter = new KeyParameter(bArr, 0, bArr.length);
                    } else {
                        if (!NISTObjectIdentifiers.id_shake256.equals((ASN1Primitive) algorithmIdentifier.getAlgorithm())) {
                            throw new IllegalArgumentException("Unrecognized KDF: " + algorithmIdentifier.getAlgorithm());
                        }
                        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
                        sHAKEDigest.update(bArr, 0, bArr.length);
                        sHAKEDigest.update(bArr2, 0, bArr2.length);
                        sHAKEDigest.doFinal(bArr3, 0, i2);
                    }
                    kmac.init(keyParameter);
                    kmac.update(bArr2, 0, bArr2.length);
                    kmac.doFinal(bArr3, 0, i2);
                } else {
                    if (algorithmIdentifier.getParameters() != null) {
                        throw new IllegalStateException("HDKF parameter support not added");
                    }
                    hKDFBytesGenerator = new HKDFBytesGenerator(new SHA512Digest());
                    hKDFParameters = new HKDFParameters(bArr, null, bArr2);
                }
                hKDFBytesGenerator.init(hKDFParameters);
                hKDFBytesGenerator.generateBytes(bArr3, 0, i2);
            }
            concatenationKDFGenerator.init(kDFParameters);
            concatenationKDFGenerator.generateBytes(bArr3, 0, i2);
        }
        return bArr3;
    }

    public static byte[] makeKeyBytes(KEMKDFSpec kEMKDFSpec, byte[] bArr) {
        byte[] makeKeyBytes;
        try {
            if (kEMKDFSpec == null) {
                int length = bArr.length;
                makeKeyBytes = new byte[length];
                System.arraycopy(bArr, 0, makeKeyBytes, 0, length);
            } else {
                makeKeyBytes = makeKeyBytes(kEMKDFSpec.getKdfAlgorithm(), bArr, kEMKDFSpec.getOtherInfo(), kEMKDFSpec.getKeySize());
            }
            Arrays.clear(bArr);
            return makeKeyBytes;
        } catch (Throwable th) {
            Arrays.clear(bArr);
            throw th;
        }
    }
}
