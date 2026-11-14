package org.bouncycastle.tsp.cms;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.tsp.TimeStampToken;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class CMSTimeStampedDataGenerator extends CMSTimeStampedGenerator {
    public CMSTimeStampedData generate(TimeStampToken timeStampToken) throws CMSException {
        return generate(timeStampToken, (InputStream) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.bouncycastle.tsp.cms.CMSTimeStampedData generate(org.bouncycastle.tsp.TimeStampToken r6, java.io.InputStream r7) throws org.bouncycastle.cms.CMSException {
        /*
            r5 = this;
            r0 = 0
            if (r7 == 0) goto L2d
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream
            r1.<init>()
            org.bouncycastle.util.io.Streams.pipeAll(r7, r1)     // Catch: java.io.IOException -> L1b
            int r7 = r1.size()
            if (r7 == 0) goto L2d
            org.bouncycastle.asn1.BEROctetString r7 = new org.bouncycastle.asn1.BEROctetString
            byte[] r1 = r1.toByteArray()
            r7.<init>(r1)
            goto L2e
        L1b:
            r6 = move-exception
            org.bouncycastle.cms.CMSException r7 = new org.bouncycastle.cms.CMSException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "exception encapsulating content: "
            r0.<init>(r1)
            java.lang.String r0 = o.Ve.d(r6, r0)
            r7.<init>(r0, r6)
            throw r7
        L2d:
            r7 = r0
        L2e:
            org.bouncycastle.asn1.cms.TimeStampAndCRL r1 = new org.bouncycastle.asn1.cms.TimeStampAndCRL
            org.bouncycastle.cms.CMSSignedData r6 = r6.toCMSSignedData()
            org.bouncycastle.asn1.cms.ContentInfo r6 = r6.toASN1Structure()
            r1.<init>(r6)
            java.net.URI r6 = r5.dataUri
            if (r6 == 0) goto L4a
            org.bouncycastle.asn1.DERIA5String r0 = new org.bouncycastle.asn1.DERIA5String
            java.net.URI r6 = r5.dataUri
            java.lang.String r6 = r6.toString()
            r0.<init>(r6)
        L4a:
            org.bouncycastle.asn1.cms.TimeStampedData r6 = new org.bouncycastle.asn1.cms.TimeStampedData
            org.bouncycastle.asn1.cms.MetaData r2 = r5.metaData
            org.bouncycastle.asn1.cms.Evidence r3 = new org.bouncycastle.asn1.cms.Evidence
            org.bouncycastle.asn1.cms.TimeStampTokenEvidence r4 = new org.bouncycastle.asn1.cms.TimeStampTokenEvidence
            r4.<init>(r1)
            r3.<init>(r4)
            r6.<init>(r0, r2, r7, r3)
            org.bouncycastle.tsp.cms.CMSTimeStampedData r7 = new org.bouncycastle.tsp.cms.CMSTimeStampedData
            org.bouncycastle.asn1.cms.ContentInfo r0 = new org.bouncycastle.asn1.cms.ContentInfo
            org.bouncycastle.asn1.ASN1ObjectIdentifier r1 = org.bouncycastle.asn1.cms.CMSObjectIdentifiers.timestampedData
            r0.<init>(r1, r6)
            r7.<init>(r0)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.tsp.cms.CMSTimeStampedDataGenerator.generate(org.bouncycastle.tsp.TimeStampToken, java.io.InputStream):org.bouncycastle.tsp.cms.CMSTimeStampedData");
    }

    public CMSTimeStampedData generate(TimeStampToken timeStampToken, byte[] bArr) throws CMSException {
        return generate(timeStampToken, new ByteArrayInputStream(bArr));
    }
}
