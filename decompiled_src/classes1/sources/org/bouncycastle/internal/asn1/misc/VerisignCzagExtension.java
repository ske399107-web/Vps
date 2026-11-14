package org.bouncycastle.internal.asn1.misc;

import org.bouncycastle.asn1.ASN1IA5String;
import org.bouncycastle.asn1.DERIA5String;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class VerisignCzagExtension extends DERIA5String {
    public VerisignCzagExtension(ASN1IA5String aSN1IA5String) {
        super(aSN1IA5String.getString());
    }

    @Override // org.bouncycastle.asn1.ASN1IA5String
    public String toString() {
        return "VerisignCzagExtension: " + getString();
    }
}
