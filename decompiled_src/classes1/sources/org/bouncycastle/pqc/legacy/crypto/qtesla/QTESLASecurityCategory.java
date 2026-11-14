package org.bouncycastle.pqc.legacy.crypto.qtesla;

import o.AbstractC0214jf;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class QTESLASecurityCategory {
    public static final int PROVABLY_SECURE_I = 5;
    public static final int PROVABLY_SECURE_III = 6;

    private QTESLASecurityCategory() {
    }

    public static String getName(int i) {
        if (i != 5) {
            if (i == 6) {
                return "qTESLA-p-III";
            }
            throw new IllegalArgumentException(AbstractC0214jf.a(i, "unknown security category: "));
        }
        return "qTESLA-p-I";
    }

    public static int getPrivateSize(int i) {
        if (i != 5) {
            if (i == 6) {
                return 12392;
            }
            throw new IllegalArgumentException(AbstractC0214jf.a(i, "unknown security category: "));
        }
        return 5224;
    }

    public static int getPublicSize(int i) {
        if (i != 5) {
            if (i == 6) {
                return 38432;
            }
            throw new IllegalArgumentException(AbstractC0214jf.a(i, "unknown security category: "));
        }
        return 14880;
    }

    public static int getSignatureSize(int i) {
        if (i != 5) {
            if (i == 6) {
                return 5664;
            }
            throw new IllegalArgumentException(AbstractC0214jf.a(i, "unknown security category: "));
        }
        return 2592;
    }

    public static void validate(int i) {
        if (i != 5 && i != 6) {
            throw new IllegalArgumentException(AbstractC0214jf.a(i, "unknown security category: "));
        }
    }
}
