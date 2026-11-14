package com.ffrt.proxyread;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.net.VpnService;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;

/* renamed from: com.ffrt.proxyread.۟ۡۦ۠ۧ, reason: contains not printable characters */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C0003 {

    /* renamed from: ۡۦۣ۟, reason: not valid java name and contains not printable characters */
    public static boolean f4 = true;

    /* renamed from: ۣ۟۠ۧۧ, reason: not valid java name and contains not printable characters */
    public static String m9() {
        if (C0007.m84() >= 0) {
            return "ۣ۟ۥ";
        }
        return null;
    }

    /* renamed from: ۟ۡۡۤۧ, reason: not valid java name and contains not printable characters */
    public static MaterialButton m10(Object obj) {
        if (C0004.m52() >= 0) {
            return ((MainActivity) obj).E;
        }
        return null;
    }

    /* renamed from: ۟ۡۨ۟ۢ, reason: not valid java name and contains not printable characters */
    public static Uri m11(Object obj) {
        if (C0004.m52() >= 0) {
            return Uri.parse((String) obj);
        }
        return null;
    }

    /* renamed from: ۣ۟ۥۥۢ, reason: not valid java name and contains not printable characters */
    public static String m12() {
        if (C0004.m52() > 0) {
            return "ۨۧ";
        }
        return null;
    }

    /* renamed from: ۟ۤ۟ۡۥ, reason: not valid java name and contains not printable characters */
    public static Intent m13(Object obj, Object obj2) {
        if (C0002.m7() > 0) {
            return ((Intent) obj).setAction((String) obj2);
        }
        return null;
    }

    /* renamed from: ۟ۥ۠ۢۥ, reason: not valid java name and contains not printable characters */
    public static boolean m14(Object obj) {
        if (C0004.m52() > 0) {
            return ((MainActivity) obj).G;
        }
        return false;
    }

    /* renamed from: ۟ۥ۠ۤۢ, reason: not valid java name and contains not printable characters */
    public static String m15(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۟ۥۧ۟ۢ, reason: not valid java name and contains not printable characters */
    public static void m16(Object obj, int i) {
        if (C0011.m133() > 0) {
            ((TextView) obj).setTextColor(i);
        }
    }

    /* renamed from: ۟ۥۣۨۦ, reason: not valid java name and contains not printable characters */
    public static void m17(Object obj, Object obj2) {
        if (C0002.m7() >= 0) {
            ((TextView) obj).setText((CharSequence) obj2);
        }
    }

    /* renamed from: ۟ۥۨۦۤ, reason: not valid java name and contains not printable characters */
    public static void m18(Object obj, int i) {
        if (C0007.m84() > 0) {
            ((View) obj).setVisibility(i);
        }
    }

    /* renamed from: ۟ۦۤۢۧ, reason: not valid java name and contains not printable characters */
    public static void m19(Object obj) {
        if (C0004.m52() >= 0) {
            ((MainActivity) obj).r();
        }
    }

    /* renamed from: ۟ۧۢۢۥ, reason: not valid java name and contains not printable characters */
    public static Looper m20() {
        if (C0007.m84() >= 0) {
            return Looper.getMainLooper();
        }
        return null;
    }

    /* renamed from: ۟ۧۢۦ۟, reason: not valid java name and contains not printable characters */
    public static void m21(Object obj) {
        if (C0004.m52() > 0) {
            ((MainActivity) obj).t();
        }
    }

    /* renamed from: ۣۣ۟ۧۨ, reason: not valid java name and contains not printable characters */
    public static String m22(String str) {
        String m87 = C0007.m87();
        String m872 = C0007.m87();
        for (int i = 0; i < 15; i++) {
            m87 = C0007.m92(m38(m38(new StringBuffer(), m87), m25(i)));
            m872 = C0007.m92(C0011.m123(m38(new StringBuffer(), m872), ((int) (C0004.m40() * 10)) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0007.m89(str) / 2);
        for (int i2 = 0; i2 < C0007.m89(str); i2 += 2) {
            m35(byteArrayOutputStream, (m36(m87, C0011.m131(str, i2)) << 4) | m36(m87, C0011.m131(str, i2 + 1)));
        }
        byte[] m24 = m24(byteArrayOutputStream);
        int length = m24.length;
        int m89 = C0007.m89(m872);
        for (int i3 = 0; i3 < length; i3++) {
            m24[i3] = (byte) (m24[i3] ^ C0011.m131(m872, i3 % m89));
        }
        for (int i4 = 0; i4 < m24.length; i4 = C0007.m89(C0007.m87()) + 1) {
        }
        return new String(m24);
    }

    /* renamed from: ۟ۧۦۨۨ, reason: not valid java name and contains not printable characters */
    public static String m23() {
        if (C0002.m7() > 0) {
            return "ۣۣۣ";
        }
        return null;
    }

    /* renamed from: ۟ۨ۟ۢ, reason: not valid java name and contains not printable characters */
    public static byte[] m24(Object obj) {
        if (C0002.m7() > 0) {
            return ((ByteArrayOutputStream) obj).toByteArray();
        }
        return null;
    }

    /* renamed from: ۟ۨۨ۟, reason: not valid java name and contains not printable characters */
    public static String m25(int i) {
        if (C0011.m133() >= 0) {
            return Integer.toHexString(i);
        }
        return null;
    }

    /* renamed from: ۠ۤۢ۟, reason: not valid java name and contains not printable characters */
    public static void m26(Object obj, Object obj2) {
        if (C0011.m133() > 0) {
            ((View) obj).setOnClickListener((View.OnClickListener) obj2);
        }
    }

    /* renamed from: ۠ۦ۟ۥ, reason: not valid java name and contains not printable characters */
    public static TextView m27(Object obj) {
        if (C0002.m7() > 0) {
            return ((MainActivity) obj).z;
        }
        return null;
    }

    /* renamed from: ۠ۨ۟ۨ, reason: not valid java name and contains not printable characters */
    public static boolean m28(Object obj, Object obj2) {
        if (C0004.m52() >= 0) {
            return ((Handler) obj).post((Runnable) obj2);
        }
        return false;
    }

    /* renamed from: ۠ۨ۠, reason: not valid java name and contains not printable characters */
    public static String m29() {
        if (C0002.m7() > 0) {
            return "ۦۡۦ";
        }
        return null;
    }

    /* renamed from: ۣۡ۟ۥ, reason: not valid java name and contains not printable characters */
    public static Intent m30(Object obj) {
        if (C0007.m84() > 0) {
            return VpnService.prepare((Context) obj);
        }
        return null;
    }

    /* renamed from: ۡۡ۟۟, reason: not valid java name and contains not printable characters */
    public static void m31(Object obj) {
        if (C0011.m133() >= 0) {
            ((SharedPreferences.Editor) obj).apply();
        }
    }

    /* renamed from: ۢ۟۟ۤ, reason: not valid java name and contains not printable characters */
    public static TextView m32(Object obj) {
        if (C0007.m84() > 0) {
            return ((MainActivity) obj).C;
        }
        return null;
    }

    /* renamed from: ۣۤۧۡ, reason: not valid java name and contains not printable characters */
    public static String m33() {
        if (C0011.m133() > 0) {
            return "ۤۤۧ";
        }
        return null;
    }

    /* renamed from: ۤ۠ۥ, reason: not valid java name and contains not printable characters */
    public static int m34() {
        return 1750595 ^ C0007.m80((Object) "ۣۢ۠");
    }

    /* renamed from: ۤۡۤۦ, reason: not valid java name and contains not printable characters */
    public static void m35(Object obj, int i) {
        if (C0007.m84() > 0) {
            ((ByteArrayOutputStream) obj).write(i);
        }
    }

    /* renamed from: ۥۣ۠ۧ, reason: contains not printable characters */
    public static int m36(Object obj, int i) {
        if (C0007.m84() > 0) {
            return ((String) obj).indexOf(i);
        }
        return 0;
    }

    /* renamed from: ۥۧ۠۟, reason: contains not printable characters */
    public static TextView m37(Object obj) {
        if (C0007.m84() > 0) {
            return ((MainActivity) obj).B;
        }
        return null;
    }

    /* renamed from: ۨ۠ۡۢ, reason: not valid java name and contains not printable characters */
    public static StringBuffer m38(Object obj, Object obj2) {
        if (C0007.m84() > 0) {
            return ((StringBuffer) obj).append((String) obj2);
        }
        return null;
    }

    /* renamed from: ۨۡۦ۟, reason: not valid java name and contains not printable characters */
    public static boolean m39(Object obj, Object obj2) {
        if (C0004.m52() >= 0) {
            return ((ArrayList) obj).add(obj2);
        }
        return false;
    }
}
