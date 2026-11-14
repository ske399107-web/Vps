package org.bouncycastle.pkcs;

import java.io.OutputStream;
import o.AbstractC0214jf;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.pkcs.MacData;
import org.bouncycastle.asn1.pkcs.PKCS12PBEParams;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.DigestInfo;
import org.bouncycastle.operator.MacCalculator;
import org.bouncycastle.util.Strings;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
class MacDataGenerator {
    private PKCS12MacCalculatorBuilder builder;

    public MacDataGenerator(PKCS12MacCalculatorBuilder pKCS12MacCalculatorBuilder) {
        this.builder = pKCS12MacCalculatorBuilder;
    }

    public MacData build(char[] cArr, byte[] bArr) throws PKCSException {
        int intValue;
        byte[] bArr2;
        try {
            MacCalculator build = this.builder.build(cArr);
            OutputStream outputStream = build.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
            AlgorithmIdentifier algorithmIdentifier = build.getAlgorithmIdentifier();
            DigestInfo digestInfo = new DigestInfo(this.builder.getDigestAlgorithmIdentifier(), build.getMac());
            if (PKCSObjectIdentifiers.id_PBMAC1.equals((ASN1Primitive) digestInfo.getAlgorithmId().getAlgorithm())) {
                bArr2 = Strings.toUTF8ByteArray("NOT USED".toCharArray());
                intValue = 1;
            } else {
                PKCS12PBEParams pKCS12PBEParams = PKCS12PBEParams.getInstance(algorithmIdentifier.getParameters());
                byte[] iv = pKCS12PBEParams.getIV();
                intValue = pKCS12PBEParams.getIterations().intValue();
                bArr2 = iv;
            }
            return new MacData(digestInfo, bArr2, intValue);
        } catch (Exception e) {
            throw new PKCSException(AbstractC0214jf.b(e, new StringBuilder("unable to process data: ")), e);
        }
    }
}
