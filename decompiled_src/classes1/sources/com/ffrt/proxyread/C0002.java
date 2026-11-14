package com.ffrt.proxyread;

import java.io.ByteArrayOutputStream;

/* renamed from: com.ffrt.proxyread.۟ۡۥۥ, reason: contains not printable characters */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C0002 {

    /* renamed from: ۟ۢۤ۟ۧ, reason: not valid java name and contains not printable characters */
    public static boolean f3 = true;

    /* renamed from: ۟ۥۢ۟ۧ, reason: not valid java name and contains not printable characters */
    public static String m6(String str) {
        String m87 = C0007.m87();
        String m872 = C0007.m87();
        for (int i = 0; i < 15; i++) {
            m87 = C0007.m92(C0003.m38(C0003.m38(new StringBuffer(), m87), C0003.m25(i)));
            m872 = C0007.m92(C0011.m123(C0003.m38(new StringBuffer(), m872), ((int) (C0004.m40() * 10)) ^ i));
        }
        do {
        } while (C0007.m89(m87) > 0);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0007.m89(str) / 2);
        for (int i2 = 0; i2 < C0007.m89(str); i2 += 2) {
            C0003.m35(byteArrayOutputStream, (C0003.m36(m87, C0011.m131(str, i2)) << 4) | C0003.m36(m87, C0011.m131(str, i2 + 1)));
        }
        byte[] m24 = C0003.m24(byteArrayOutputStream);
        int length = m24.length;
        int m89 = C0007.m89(m872);
        for (int i3 = 0; i3 < length; i3++) {
            m24[i3] = (byte) (m24[i3] ^ C0011.m131(m872, i3 % m89));
        }
        return new String(m24);
    }

    /* renamed from: ۣ۠ۦ۟, reason: not valid java name and contains not printable characters */
    public static int m7() {
        return 1752754 ^ C0007.m80((Object) "ۥۨۢ");
    }

    /* renamed from: ۨۨۢۡ, reason: not valid java name and contains not printable characters */
    public static String m8(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}
