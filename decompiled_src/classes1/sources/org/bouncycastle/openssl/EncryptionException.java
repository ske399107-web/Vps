package org.bouncycastle.openssl;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class EncryptionException extends PEMException {
    private Throwable cause;

    public EncryptionException(String str) {
        super(str);
    }

    @Override // org.bouncycastle.openssl.PEMException, java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }

    public EncryptionException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }
}
