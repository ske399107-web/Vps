package org.conscrypt.ct;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class VerifiedSCT {
    public final SignedCertificateTimestamp sct;
    public final Status status;

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public enum Status {
        VALID,
        INVALID_SIGNATURE,
        UNKNOWN_LOG,
        INVALID_SCT
    }

    public VerifiedSCT(SignedCertificateTimestamp signedCertificateTimestamp, Status status) {
        this.sct = signedCertificateTimestamp;
        this.status = status;
    }
}
