package org.conscrypt;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
final class ArrayUtils {
    private ArrayUtils() {
    }

    public static void checkOffsetAndCount(int i, int i2, int i3) {
        if ((i2 | i3) >= 0 && i2 <= i && i - i2 >= i3) {
            return;
        }
        throw new ArrayIndexOutOfBoundsException("length=" + i + "; regionStart=" + i2 + "; regionLength=" + i3);
    }
}
