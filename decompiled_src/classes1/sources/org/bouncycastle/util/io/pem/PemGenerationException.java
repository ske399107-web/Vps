package org.bouncycastle.util.io.pem;

import java.io.IOException;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class PemGenerationException extends IOException {
    private Throwable cause;

    public PemGenerationException(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }

    public PemGenerationException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }
}
