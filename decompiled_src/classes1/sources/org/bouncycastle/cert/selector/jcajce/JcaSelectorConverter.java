package org.bouncycastle.cert.selector.jcajce;

import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.X509CertSelector;
import o.Ve;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.cert.selector.X509CertificateHolderSelector;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class JcaSelectorConverter {
    public X509CertificateHolderSelector getCertificateHolderSelector(X509CertSelector x509CertSelector) {
        byte[] bArr;
        try {
            X500Name x500Name = X500Name.getInstance(x509CertSelector.getIssuerAsBytes());
            BigInteger serialNumber = x509CertSelector.getSerialNumber();
            byte[] subjectKeyIdentifier = x509CertSelector.getSubjectKeyIdentifier();
            if (subjectKeyIdentifier != null) {
                bArr = ASN1OctetString.getInstance(subjectKeyIdentifier).getOctets();
            } else {
                bArr = null;
            }
            return new X509CertificateHolderSelector(x500Name, serialNumber, bArr);
        } catch (IOException e) {
            throw new IllegalArgumentException(Ve.d(e, new StringBuilder("unable to convert issuer: ")));
        }
    }
}
