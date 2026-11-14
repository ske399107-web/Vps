package com.ffrt.proxyread;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.google.android.material.slider.Slider;
import java.io.ByteArrayOutputStream;
import o.C0378s0;

/* renamed from: com.ffrt.proxyread.ۣۧ۟۟, reason: contains not printable characters */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C0011 {

    /* renamed from: ۥۨۤۧ, reason: contains not printable characters */
    public static boolean f15 = true;

    /* renamed from: ۟۠۠ۧۦ, reason: not valid java name and contains not printable characters */
    public static SharedPreferences m110(Object obj, Object obj2, int i) {
        if (C0007.m84() > 0) {
            return ((Context) obj).getSharedPreferences((String) obj2, i);
        }
        return null;
    }

    /* renamed from: ۟ۡۡ۟ۧ, reason: not valid java name and contains not printable characters */
    public static void m111(Object obj, Object obj2) {
        if (C0007.m84() > 0) {
            ((CompoundButton) obj).setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener) obj2);
        }
    }

    /* renamed from: ۣ۟ۡۢۢ, reason: not valid java name and contains not printable characters */
    public static String m112() {
        if (C0007.m84() >= 0) {
            return "ۦۢۢ";
        }
        return null;
    }

    /* renamed from: ۟ۡۦۥۢ, reason: not valid java name and contains not printable characters */
    public static String m113() {
        if (C0004.m52() >= 0) {
            return "ۡۨ۟";
        }
        return null;
    }

    /* renamed from: ۣ۟ۢ۟ۨ, reason: not valid java name and contains not printable characters */
    public static String m114() {
        if (C0004.m52() > 0) {
            return "ۤۨۤ";
        }
        return null;
    }

    /* renamed from: ۟ۢۤ۠ۥ, reason: not valid java name and contains not printable characters */
    public static TextView m115(Object obj) {
        if (C0007.m84() > 0) {
            return ((MainActivity) obj).y;
        }
        return null;
    }

    /* renamed from: ۟ۢۧۦۢ, reason: not valid java name and contains not printable characters */
    public static String m116(String str) {
        String m87 = C0007.m87();
        String m872 = C0007.m87();
        for (int i = 0; i < 15; i++) {
            m87 = C0007.m92(C0003.m38(C0003.m38(new StringBuffer(), m87), C0003.m25(i)));
            m872 = C0007.m92(m123(C0003.m38(new StringBuffer(), m872), ((int) (C0004.m40() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0007.m89(str) / 2);
        for (int i2 = 0; i2 < C0007.m89(str); i2 += 2) {
            C0003.m35(byteArrayOutputStream, (C0003.m36(m87, m131(str, i2)) << 4) | C0003.m36(m87, m131(str, i2 + 1)));
        }
        byte[] m24 = C0003.m24(byteArrayOutputStream);
        int length = m24.length;
        int m89 = C0007.m89(m872);
        while (length > 0) {
            m24[-1] = (byte) (m24[-1] ^ m131(m872, (-1) % m89));
        }
        for (int i3 = 0; i3 < m24.length; i3 = C0007.m89(C0007.m87()) + 1) {
        }
        return new String(m24);
    }

    /* renamed from: ۣ۟ۡۦ۟, reason: not valid java name and contains not printable characters */
    public static void m117(Object obj, Object obj2, int i) {
        if (C0002.m7() > 0) {
            ((Activity) obj).startActivityForResult((Intent) obj2, i);
        }
    }

    /* renamed from: ۣ۟ۥ۠۟, reason: not valid java name and contains not printable characters */
    public static String m118(Object obj, Object obj2, Object obj3) {
        if (C0007.m84() >= 0) {
            return ((SharedPreferences) obj).getString((String) obj2, (String) obj3);
        }
        return null;
    }

    /* renamed from: ۣ۟ۨۦ۟, reason: not valid java name and contains not printable characters */
    public static boolean m119(Object obj) {
        if (C0007.m84() >= 0) {
            return ((CompoundButton) obj).isChecked();
        }
        return false;
    }

    /* renamed from: ۟ۤۨ۟ۧ, reason: not valid java name and contains not printable characters */
    public static String m120(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۟ۥۣ۠ۦ, reason: not valid java name and contains not printable characters */
    public static C0378s0 m121(Object obj) {
        if (C0007.m84() >= 0) {
            return ((MainActivity) obj).H;
        }
        return null;
    }

    /* renamed from: ۟ۦۣۨۤ, reason: not valid java name and contains not printable characters */
    public static void m122(Object obj, float f2) {
        if (C0007.m84() > 0) {
            ((Slider) obj).setStepSize(f2);
        }
    }

    /* renamed from: ۟ۦۨۦ۟, reason: not valid java name and contains not printable characters */
    public static StringBuffer m123(Object obj, int i) {
        if (m133() >= 0) {
            return ((StringBuffer) obj).append(i);
        }
        return null;
    }

    /* renamed from: ۟ۧ۠ۦ۟, reason: not valid java name and contains not printable characters */
    public static boolean m124(Object obj, Object obj2, long j) {
        if (C0002.m7() > 0) {
            return ((Handler) obj).postDelayed((Runnable) obj2, j);
        }
        return false;
    }

    /* renamed from: ۡ۠ۤۦ, reason: not valid java name and contains not printable characters */
    public static int m125(Object obj, Object obj2, int i) {
        if (C0004.m52() > 0) {
            return ((SharedPreferences) obj).getInt((String) obj2, i);
        }
        return 0;
    }

    /* renamed from: ۣۢۡۤ, reason: not valid java name and contains not printable characters */
    public static void m126(Object obj, Object obj2) {
        if (C0004.m52() >= 0) {
            ((TextView) obj).setOnEditorActionListener((TextView.OnEditorActionListener) obj2);
        }
    }

    /* renamed from: ۤۧۧ۟, reason: not valid java name and contains not printable characters */
    public static SharedPreferences.Editor m127(Object obj) {
        if (m133() >= 0) {
            return ((SharedPreferences) obj).edit();
        }
        return null;
    }

    /* renamed from: ۣۤۨ۟, reason: not valid java name and contains not printable characters */
    public static void m128(Object obj, Object obj2, int i) {
        if (C0004.m52() >= 0) {
            ((Activity) obj).requestPermissions((String[]) obj2, i);
        }
    }

    /* renamed from: ۥۡۤۦ, reason: contains not printable characters */
    public static boolean m129(Object obj, Object obj2, boolean z) {
        if (C0002.m7() > 0) {
            return ((SharedPreferences) obj).getBoolean((String) obj2, z);
        }
        return false;
    }

    /* renamed from: ۦۡۦۦ, reason: contains not printable characters */
    public static String m130() {
        if (C0002.m7() >= 0) {
            return "ۤ۠۠";
        }
        return null;
    }

    /* renamed from: ۦۦۦ, reason: contains not printable characters */
    public static char m131(Object obj, int i) {
        if (C0002.m7() > 0) {
            return ((String) obj).charAt(i);
        }
        return (char) 0;
    }

    /* renamed from: ۣۧۥۡ, reason: not valid java name and contains not printable characters */
    public static void m132(Object obj) {
        if (m133() > 0) {
            ((MainActivity) obj).u();
        }
    }

    /* renamed from: ۣۧۧ۟, reason: not valid java name and contains not printable characters */
    public static int m133() {
        return 1752522 ^ C0007.m80((Object) "ۥ۟ۨ");
    }

    /* renamed from: ۣۨ۟ۤ, reason: not valid java name and contains not printable characters */
    public static String m134() {
        if (C0007.m84() >= 0) {
            return "ۧۦۣ";
        }
        return null;
    }
}
