package org.bouncycastle.cms;

import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Set;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
interface CMSSecureReadable {
    ASN1Set getAuthAttrSet();

    ASN1ObjectIdentifier getContentType();

    InputStream getInputStream() throws IOException, CMSException;

    boolean hasAdditionalData();

    void setAuthAttrSet(ASN1Set aSN1Set);
}
