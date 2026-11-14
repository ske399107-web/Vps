package org.bouncycastle.cms;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class CMSException extends Exception {
    Exception e;

    public CMSException(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.e;
    }

    public Exception getUnderlyingException() {
        return this.e;
    }

    public CMSException(String str, Exception exc) {
        super(str);
        this.e = exc;
    }
}
