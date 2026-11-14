package org.bouncycastle.operator;

import java.io.IOException;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class OperatorStreamException extends IOException {
    private Throwable cause;

    public OperatorStreamException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
