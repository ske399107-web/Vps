package org.bouncycastle.jce.provider;

import java.security.cert.CRLException;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
class ExtCRLException extends CRLException {
    Throwable cause;

    public ExtCRLException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
