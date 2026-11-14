package org.bouncycastle.operator;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class OperatorException extends Exception {
    private Throwable cause;

    public OperatorException(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }

    public OperatorException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }
}
