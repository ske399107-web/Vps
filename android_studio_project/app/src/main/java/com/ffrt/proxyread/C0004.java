package com.ffrt.proxyread;

import android.content.Context;
import android.provider.Settings;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.slider.Slider;
import java.io.ByteArrayOutputStream;

/* renamed from: com.ffrt.proxyread.۟ۢۤۤۧ, reason: contains not printable characters */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C0004 {

    /* renamed from: short, reason: not valid java name */
    private static final short[] f5short = {2259, 2144};

    /* renamed from: ۧۦۣ۟, reason: not valid java name and contains not printable characters */
    public static int f6 = -57;

    /* renamed from: ۣ۟۟۠ۧ, reason: not valid java name and contains not printable characters */
    public static double m40() {
        if (C0011.m133() >= 0) {
            return Math.random();
        }
        return 0.0d;
    }

    /* renamed from: ۣ۟۟ۢ, reason: not valid java name and contains not printable characters */
    public static void m41(Object obj) {
        if (C0011.m133() > 0) {
            ((MainActivity) obj).w();
        }
    }

    /* renamed from: ۟۠ۥۦۥ, reason: not valid java name and contains not printable characters */
    public static StringBuilder m42(Object obj, Object obj2) {
        if (C0011.m133() > 0) {
            return ((StringBuilder) obj).append((String) obj2);
        }
        return null;
    }

    /* renamed from: ۟۠ۦۥۨ, reason: not valid java name and contains not printable characters */
    public static short[] m43() {
        if (C0007.m84() >= 0) {
            return f5short;
        }
        return null;
    }

    /* renamed from: ۟۠ۧۤۡ, reason: not valid java name and contains not printable characters */
    public static String m44() {
        if (C0007.m84() >= 0) {
            return "۟ۥۦ";
        }
        return null;
    }

    /* renamed from: ۟۠ۨۨۥ, reason: not valid java name and contains not printable characters */
    public static void m45(Object obj, float f2) {
        if (m52() >= 0) {
            ((Slider) obj).setValueFrom(f2);
        }
    }

    /* renamed from: ۟ۡۨ۟, reason: not valid java name and contains not printable characters */
    public static String m46() {
        if (C0007.m84() >= 0) {
            return "ۤۡۦ";
        }
        return null;
    }

    /* renamed from: ۣ۟ۦۤۧ, reason: not valid java name and contains not printable characters */
    public static MaterialButton m47(Object obj) {
        if (m52() > 0) {
            return ((MainActivity) obj).D;
        }
        return null;
    }

    /* renamed from: ۟ۦ۟ۨۧ, reason: not valid java name and contains not printable characters */
    public static String m48() {
        if (C0002.m7() > 0) {
            return "ۦۥۣ";
        }
        return null;
    }

    /* renamed from: ۟ۦۡۡۦ, reason: not valid java name and contains not printable characters */
    public static String m49() {
        if (C0011.m133() > 0) {
            return "۠ۨۨ";
        }
        return null;
    }

    /* renamed from: ۟ۦۣۡ, reason: not valid java name and contains not printable characters */
    public static String m50() {
        if (C0011.m133() >= 0) {
            return "ۨۨۨ";
        }
        return null;
    }

    /* renamed from: ۟ۦۦۥ, reason: not valid java name and contains not printable characters */
    public static int m51(Object obj, Object obj2) {
        if (m52() >= 0) {
            return ((Context) obj).checkSelfPermission((String) obj2);
        }
        return 0;
    }

    /* renamed from: ۟ۧۦۨ۠, reason: not valid java name and contains not printable characters */
    public static int m52() {
        return 1753401 ^ C0007.m80((Object) "ۦ۠ۡ");
    }

    /* renamed from: ۣۡۨۢ, reason: not valid java name and contains not printable characters */
    public static String m53() {
        if (C0007.m84() > 0) {
            return "۟ۦۥ";
        }
        return null;
    }

    /* renamed from: ۢۢ۠۟, reason: not valid java name and contains not printable characters */
    public static void m54(Object obj, boolean z) {
        if (C0007.m84() > 0) {
            ((View) obj).setEnabled(z);
        }
    }

    /* renamed from: ۣۢۨ, reason: not valid java name and contains not printable characters */
    public static String m55() {
        if (m52() > 0) {
            return "ۦۧ۠";
        }
        return null;
    }

    /* renamed from: ۢۨۧۤ, reason: not valid java name and contains not printable characters */
    public static boolean m56(Object obj) {
        if (C0002.m7() >= 0) {
            return Settings.canDrawOverlays((Context) obj);
        }
        return false;
    }

    /* renamed from: ۣۥۤۧ, reason: not valid java name and contains not printable characters */
    public static String m57(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۥۨ۟ۤ, reason: contains not printable characters */
    public static String m58() {
        if (C0007.m84() >= 0) {
            return "ۨۡۨ";
        }
        return null;
    }

    /* renamed from: ۦۥۧ۠, reason: contains not printable characters */
    public static void m59(Object obj, float f2) {
        if (C0007.m84() >= 0) {
            ((Slider) obj).setValueTo(f2);
        }
    }

    /* renamed from: ۨ۟۠۟, reason: not valid java name and contains not printable characters */
    public static EditText m60(Object obj) {
        if (C0011.m133() >= 0) {
            return ((MainActivity) obj).F;
        }
        return null;
    }

    /* renamed from: ۨ۟ۧۦ, reason: not valid java name and contains not printable characters */
    public static String m61() {
        if (C0011.m133() >= 0) {
            return "ۣۢ۠";
        }
        return null;
    }

    /* renamed from: ۨۥۢ۟, reason: not valid java name and contains not printable characters */
    public static String m62() {
        if (C0002.m7() >= 0) {
            return "۟ۤۥ";
        }
        return null;
    }

    /* renamed from: ۣۨۨۡ, reason: not valid java name and contains not printable characters */
    public static Class m63(Object obj) {
        if (C0007.m84() > 0) {
            return obj.getClass();
        }
        return null;
    }

    /* renamed from: ۨۨۦۥ, reason: not valid java name and contains not printable characters */
    public static String m64(String str) {
        String m87 = C0007.m87();
        String m872 = C0007.m87();
        for (int i = 0; i < 15; i++) {
            m87 = C0007.m92(C0003.m38(C0003.m38(new StringBuffer(), m87), C0003.m25(i)));
            m872 = C0007.m92(C0011.m123(C0003.m38(new StringBuffer(), m872), ((int) (m40() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0007.m89(str) / 2);
        for (int i2 = 0; i2 < C0007.m89(str); i2 += 2) {
            C0003.m35(byteArrayOutputStream, (C0003.m36(m87, C0011.m131(str, i2)) << 4) | C0003.m36(m87, C0011.m131(str, i2 + 1)));
        }
        byte[] m24 = C0003.m24(byteArrayOutputStream);
        String m15 = C0003.m15(m43(), 0, 1, 2226);
        while (C0007.m89(m15) > 0) {
            m15 = C0007.m87();
            if (C0007.m89(m15) == 0) {
                m15 = m57(m43(), 1, 1, 2049);
            }
        }
        int m89 = C0007.m89(m15);
        int m892 = C0007.m89(m872);
        for (int i3 = 0; i3 < m89; i3++) {
            m24[i3] = (byte) (m24[i3] ^ C0011.m131(m872, i3 % m892));
        }
        for (int i4 = 0; i4 < m24.length; i4 = C0007.m89(C0007.m87()) + 1) {
        }
        return new String(m24);
    }
}
