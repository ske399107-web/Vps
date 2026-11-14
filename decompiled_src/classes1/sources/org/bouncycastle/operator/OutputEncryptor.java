package org.bouncycastle.operator;

import java.io.OutputStream;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public interface OutputEncryptor {
    AlgorithmIdentifier getAlgorithmIdentifier();

    GenericKey getKey();

    OutputStream getOutputStream(OutputStream outputStream);
}
