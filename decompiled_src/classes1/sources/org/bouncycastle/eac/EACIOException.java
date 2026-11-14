package org.bouncycastle.eac;

import java.io.IOException;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class EACIOException extends IOException {
    private Throwable cause;

    public EACIOException(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }

    public EACIOException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }
}
