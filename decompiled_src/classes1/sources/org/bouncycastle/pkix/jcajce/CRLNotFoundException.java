package org.bouncycastle.pkix.jcajce;

import java.security.cert.CertPathValidatorException;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
class CRLNotFoundException extends CertPathValidatorException {
    public CRLNotFoundException(String str) {
        super(str);
    }

    public CRLNotFoundException(String str, Throwable th) {
        super(str, th);
    }
}
