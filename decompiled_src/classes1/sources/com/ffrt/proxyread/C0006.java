package com.ffrt.proxyread;

import java.io.ByteArrayOutputStream;
import org.conscrypt.BuildConfig;

/* renamed from: com.ffrt.proxyread.ۡۨۥۨ, reason: contains not printable characters */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C0006 {

    /* renamed from: short, reason: not valid java name */
    private static final short[] f8short = {2885, 502};

    /* renamed from: ۣۣۡۦ, reason: not valid java name and contains not printable characters */
    public static boolean f9;

    /* renamed from: ۣۣ۟ۧ۟, reason: not valid java name and contains not printable characters */
    public static String m68(String str) {
        String str2 = BuildConfig.FLAVOR;
        String str3 = BuildConfig.FLAVOR;
        for (int i = 0; i < 15; i++) {
            str2 = new StringBuffer().append(str2).append(Integer.toHexString(i)).toString();
            str3 = new StringBuffer().append(str3).append(((int) (Math.random() * 10)) ^ i).toString();
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(str.length() / 2);
        for (int i2 = 0; i2 < str.length(); i2 += 2) {
            byteArrayOutputStream.write((str2.indexOf(str.charAt(i2)) << 4) | str2.indexOf(str.charAt(i2 + 1)));
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        String m67 = C0005.m67(f8short, 0, 1, 2852);
        while (m67.length() > 0) {
            m67 = BuildConfig.FLAVOR;
            if (BuildConfig.FLAVOR.length() == 0) {
                m67 = C0009.m105(f8short, 1, 1, 407);
            }
        }
        int length = m67.length();
        int length2 = str3.length();
        for (int i3 = 0; i3 < length; i3++) {
            byteArray[i3] = (byte) (byteArray[i3] ^ str3.charAt(i3 % length2));
        }
        for (int i4 = 0; i4 < byteArray.length; i4 = BuildConfig.FLAVOR.length() + 1) {
        }
        return new String(byteArray);
    }

    /* renamed from: ۣۢۡۡ, reason: not valid java name and contains not printable characters */
    public static int m70() {
        return 1755329 ^ m71((Object) "ۨ۟ۢ");
    }

    /* renamed from: ۦۣۤ۟, reason: contains not printable characters */
    public static int m71(Object obj) {
        return obj.hashCode();
    }

    /* renamed from: ۦۣۤ۟, reason: contains not printable characters */
    public static Class<?> m72(String str) throws ClassNotFoundException {
        return Class.forName(str);
    }

    /* renamed from: ۟ۤۡ۟ۢ, reason: not valid java name and contains not printable characters */
    public static String m69(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* renamed from: ۦۣۤ۟, reason: contains not printable characters */
    public static String m73(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}
