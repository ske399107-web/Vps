package org.bouncycastle.cms;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import o.Ve;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSet;
import org.bouncycastle.asn1.cms.AuthEnvelopedData;
import org.bouncycastle.asn1.cms.CMSObjectIdentifiers;
import org.bouncycastle.asn1.cms.ContentInfo;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.operator.OutputAEADEncryptor;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class CMSAuthEnvelopedDataGenerator extends CMSAuthEnvelopedGenerator {
    private CMSAuthEnvelopedData doGenerate(CMSTypedData cMSTypedData, OutputAEADEncryptor outputAEADEncryptor) throws CMSException {
        ASN1Set processAuthAttrSet;
        ASN1EncodableVector recipentInfos = CMSUtils.getRecipentInfos(outputAEADEncryptor.getKey(), this.recipientInfoGenerators);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            OutputStream outputStream = outputAEADEncryptor.getOutputStream(byteArrayOutputStream);
            if (outputAEADEncryptor.getAlgorithmIdentifier().getAlgorithm().equals(PKCSObjectIdentifiers.id_alg_AEADChaCha20Poly1305)) {
                processAuthAttrSet = CMSUtils.processAuthAttrSet(this.authAttrsGenerator, outputAEADEncryptor);
                cMSTypedData.write(outputStream);
            } else {
                cMSTypedData.write(outputStream);
                processAuthAttrSet = CMSUtils.processAuthAttrSet(this.authAttrsGenerator, outputAEADEncryptor);
            }
            ASN1Set aSN1Set = processAuthAttrSet;
            outputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byte[] mac = outputAEADEncryptor.getMAC();
            return new CMSAuthEnvelopedData(new ContentInfo(CMSObjectIdentifiers.authEnvelopedData, new AuthEnvelopedData(((CMSAuthEnvelopedGenerator) this).originatorInfo, new DERSet(recipentInfos), CMSUtils.getEncryptedContentInfo(cMSTypedData, outputAEADEncryptor, byteArray), aSN1Set, new DEROctetString(mac), CMSUtils.getAttrDLSet(this.unauthAttrsGenerator))));
        } catch (IOException e) {
            throw new CMSException(Ve.d(e, new StringBuilder("unable to process authenticated content: ")), e);
        }
    }

    public CMSAuthEnvelopedData generate(CMSTypedData cMSTypedData, OutputAEADEncryptor outputAEADEncryptor) throws CMSException {
        return doGenerate(cMSTypedData, outputAEADEncryptor);
    }
}
