package com.ffrt.proxyread;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import com.google.android.material.slider.Slider;
import java.io.ByteArrayOutputStream;
import org.conscrypt.BuildConfig;

/* renamed from: com.ffrt.proxyread.ۣۤۧۢ, reason: contains not printable characters */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C0007 {

    /* renamed from: ۟ۢۤ۟, reason: not valid java name and contains not printable characters */
    public static boolean f10 = true;

    /* renamed from: ۟۟ۥۡ۠, reason: not valid java name and contains not printable characters */
    public static void m74(Object obj, float f2) {
        if (C0002.m7() > 0) {
            ((Slider) obj).setValue(f2);
        }
    }

    /* renamed from: ۟۟ۦۢۨ, reason: not valid java name and contains not printable characters */
    public static void m75(Object obj) {
        if (C0002.m7() > 0) {
            ((MainActivity) obj).v();
        }
    }

    /* renamed from: ۟۟ۧۥ, reason: not valid java name and contains not printable characters */
    public static String m76() {
        if (m84() > 0) {
            return "۟۠";
        }
        return null;
    }

    /* renamed from: ۟۟ۨ۟ۥ, reason: not valid java name and contains not printable characters */
    public static String m77() {
        if (C0002.m7() >= 0) {
            return "۟۟ۨ";
        }
        return null;
    }

    /* renamed from: ۣۣ۟۠ۢ, reason: not valid java name and contains not printable characters */
    public static String m78() {
        if (m84() > 0) {
            return "ۤ۟ۨ";
        }
        return null;
    }

    /* renamed from: ۟ۡ۠ۤۥ, reason: not valid java name and contains not printable characters */
    public static String m79(String str) {
        String m87 = m87();
        String m872 = m87();
        for (int i = 0; i < 15; i++) {
            m87 = m92(C0003.m38(C0003.m38(new StringBuffer(), m87), C0003.m25(i)));
            m872 = m92(C0011.m123(C0003.m38(new StringBuffer(), m872), ((int) (C0004.m40() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(m89(str) / 2);
        for (int i2 = 0; i2 < m89(str); i2 += 2) {
            C0003.m35(byteArrayOutputStream, (C0003.m36(m87, C0011.m131(str, i2)) << 4) | C0003.m36(m87, C0011.m131(str, i2 + 1)));
        }
        byte[] m24 = C0003.m24(byteArrayOutputStream);
        int length = m24.length;
        int m89 = m89(m872);
        for (int i3 = 0; i3 < length; i3++) {
            m24[i3] = (byte) (m24[i3] ^ C0011.m131(m872, i3 % m89));
        }
        for (int i4 = 0; i4 < m24.length; i4 = m89(m87()) + 1) {
        }
        return new String(m24);
    }

    /* renamed from: ۟ۢۧۤۥ, reason: not valid java name and contains not printable characters */
    public static int m80(Object obj) {
        return obj.hashCode();
    }

    /* renamed from: ۟ۢۧۤۥ, reason: not valid java name and contains not printable characters */
    public static Class<?> m81(String str) throws ClassNotFoundException {
        return Class.forName(str);
    }

    /* renamed from: ۟ۢۧۤۥ, reason: not valid java name and contains not printable characters */
    public static String m82(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۣ۟۟۠, reason: not valid java name and contains not printable characters */
    public static String m83() {
        if (C0002.m7() >= 0) {
            return "۠ۦ۠";
        }
        return null;
    }

    /* renamed from: ۣ۟۟ۥ, reason: not valid java name and contains not printable characters */
    public static int m84() {
        return 1754622 ^ m80((Object) "ۧۧ۟");
    }

    /* renamed from: ۟ۤۢ۟۟, reason: not valid java name and contains not printable characters */
    public static void m85(Object obj, Object obj2) {
        if (m84() >= 0) {
            ((Context) obj).startActivity((Intent) obj2);
        }
    }

    /* renamed from: ۣۣ۟ۤۤ, reason: not valid java name and contains not printable characters */
    public static String m86(Object obj) {
        if (m84() >= 0) {
            return ((StringBuilder) obj).toString();
        }
        return null;
    }

    /* renamed from: ۟ۤۥ۟۟, reason: not valid java name and contains not printable characters */
    public static String m87() {
        if (C0002.m7() >= 0) {
            return BuildConfig.FLAVOR;
        }
        return null;
    }

    /* renamed from: ۟ۤۦۢۢ, reason: not valid java name and contains not printable characters */
    public static String m88() {
        if (m84() > 0) {
            return "۠ۨۡ";
        }
        return null;
    }

    /* renamed from: ۟ۥۨ۟ۡ, reason: not valid java name and contains not printable characters */
    public static int m89(Object obj) {
        if (C0011.m133() > 0) {
            return ((String) obj).length();
        }
        return 0;
    }

    /* renamed from: ۟ۥۨۡ۠, reason: not valid java name and contains not printable characters */
    public static SharedPreferences.Editor m90(Object obj, Object obj2, boolean z) {
        if (C0002.m7() > 0) {
            return ((SharedPreferences.Editor) obj).putBoolean((String) obj2, z);
        }
        return null;
    }

    /* renamed from: ۟ۧۢۢۦ, reason: not valid java name and contains not printable characters */
    public static ComponentName m91(Object obj, Object obj2) {
        if (m84() > 0) {
            return ((Context) obj).startService((Intent) obj2);
        }
        return null;
    }

    /* renamed from: ۢۦۡۨ, reason: not valid java name and contains not printable characters */
    public static String m92(Object obj) {
        if (m84() >= 0) {
            return ((StringBuffer) obj).toString();
        }
        return null;
    }

    /* renamed from: ۢۨ۠ۧ, reason: not valid java name and contains not printable characters */
    public static String m93(Object obj) {
        if (C0002.m7() > 0) {
            return ((Context) obj).getPackageName();
        }
        return null;
    }

    /* renamed from: ۤ۠ۦ۟, reason: not valid java name and contains not printable characters */
    public static StringBuilder m94(Object obj, int i) {
        if (C0004.m52() >= 0) {
            return ((StringBuilder) obj).append(i);
        }
        return null;
    }

    /* renamed from: ۥ۠۠ۧ, reason: contains not printable characters */
    public static int m95(Object obj, int i) {
        if (C0002.m7() > 0) {
            return ((Context) obj).getColor(i);
        }
        return 0;
    }

    /* renamed from: ۦۣۡ۟, reason: contains not printable characters */
    public static String m96(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۦۥۣ۟, reason: contains not printable characters */
    public static String m97() {
        if (C0004.m52() >= 0) {
            return "ۦۨ";
        }
        return null;
    }

    /* renamed from: ۧۥۣۤ, reason: not valid java name and contains not printable characters */
    public static void m98(Object obj) {
        if (C0002.m7() > 0) {
            ((Activity) obj).finish();
        }
    }

    /* renamed from: ۨ۟ۤۤ, reason: not valid java name and contains not printable characters */
    public static int m99() {
        if (C0011.m133() > 0) {
            return Build.VERSION.SDK_INT;
        }
        return 0;
    }

    /* renamed from: ۨۧ۟ۧ, reason: not valid java name and contains not printable characters */
    public static Handler m100(Object obj) {
        if (C0002.m7() > 0) {
            return ((MainActivity) obj).x;
        }
        return null;
    }
}
