package org.conscrypt;

import o.AbstractC0214jf;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
final class Preconditions {
    private Preconditions() {
    }

    private static String badPositionIndex(int i, int i2, String str) {
        if (i < 0) {
            return str + " (" + i + ") must not be negative";
        }
        if (i2 >= 0) {
            return str + " (" + i + ") must not be greater than size (" + i2 + ")";
        }
        throw new IllegalArgumentException(AbstractC0214jf.a(i2, "negative size: "));
    }

    private static String badPositionIndexes(int i, int i2, int i3) {
        if (i >= 0 && i <= i3) {
            if (i2 >= 0 && i2 <= i3) {
                return "end index (" + i2 + ") must not be less than start index (" + i + ")";
            }
            return badPositionIndex(i2, i3, "end index");
        }
        return badPositionIndex(i, i3, "start index");
    }

    public static void checkArgument(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static <T> T checkNotNull(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    public static void checkPositionIndexes(int i, int i2, int i3) {
        if (i >= 0 && i2 >= i && i2 <= i3) {
        } else {
            throw new IndexOutOfBoundsException(badPositionIndexes(i, i2, i3));
        }
    }

    public static void checkArgument(boolean z, String str, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, obj));
        }
    }
}
