package org.bouncycastle.cms;

import org.bouncycastle.asn1.ASN1Set;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
interface AuthAttributesProvider {
    ASN1Set getAuthAttributes();

    boolean isAead();
}
