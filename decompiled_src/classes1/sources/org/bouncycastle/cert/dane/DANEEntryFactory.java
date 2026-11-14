package org.bouncycastle.cert.dane;

import o.AbstractC0214jf;
import org.bouncycastle.cert.X509CertificateHolder;
import org.bouncycastle.operator.DigestCalculator;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class DANEEntryFactory {
    private final DANEEntrySelectorFactory selectorFactory;

    public DANEEntryFactory(DigestCalculator digestCalculator) {
        this.selectorFactory = new DANEEntrySelectorFactory(digestCalculator);
    }

    public DANEEntry createEntry(String str, int i, X509CertificateHolder x509CertificateHolder) throws DANEException {
        if (i < 0 || i > 3) {
            throw new DANEException(AbstractC0214jf.a(i, "unknown certificate usage: "));
        }
        return new DANEEntry(this.selectorFactory.createSelector(str).getDomainName(), new byte[]{(byte) i, 0, 0}, x509CertificateHolder);
    }

    public DANEEntry createEntry(String str, X509CertificateHolder x509CertificateHolder) throws DANEException {
        return createEntry(str, 3, x509CertificateHolder);
    }
}
