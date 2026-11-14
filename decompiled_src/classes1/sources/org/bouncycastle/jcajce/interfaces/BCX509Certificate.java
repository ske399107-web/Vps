package org.bouncycastle.jcajce.interfaces;

import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.TBSCertificate;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public interface BCX509Certificate {
    X500Name getIssuerX500Name();

    X500Name getSubjectX500Name();

    TBSCertificate getTBSCertificateNative();
}
