package org.bouncycastle.operator;

import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public interface SecretKeySizeProvider {
    int getKeySize(ASN1ObjectIdentifier aSN1ObjectIdentifier);

    int getKeySize(AlgorithmIdentifier algorithmIdentifier);
}
