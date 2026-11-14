package org.bouncycastle.util.encoders;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class EncoderException extends IllegalStateException {
    private Throwable cause;

    public EncoderException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
