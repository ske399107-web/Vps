package adrt;

import com.byp.dts.ۥۣۣۧ;
import java.io.ByteArrayOutputStream;
import org.conscrypt.BuildConfig;

/* renamed from: adrt.ۣ۟ۡۤۡ, reason: contains not printable characters */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C0000 {

    /* renamed from: ۟۟ۤۤۢ, reason: not valid java name and contains not printable characters */
    public static int f0 = -46;

    /* renamed from: ۢۤۧۨ, reason: not valid java name and contains not printable characters */
    public static String m0(String str) {
        String str2 = BuildConfig.FLAVOR;
        String str3 = BuildConfig.FLAVOR;
        for (int i = 0; i < 15; i++) {
            str2 = new StringBuffer().append(str2).append(Integer.toHexString(i)).toString();
            str3 = new StringBuffer().append(str3).append(((int) (Math.random() * 10)) ^ i).toString();
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(str.length() / 2);
        while (str.length() > 0) {
            byteArrayOutputStream.write((str2.indexOf(str.charAt(-2)) << 4) | str2.indexOf(str.charAt(-1)));
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int length = byteArray.length;
        int length2 = str3.length();
        for (int i2 = 0; i2 < length; i2++) {
            byteArray[i2] = (byte) (byteArray[i2] ^ str3.charAt(i2 % length2));
        }
        return new String(byteArray);
    }

    /* renamed from: ۣ۠, reason: not valid java name and contains not printable characters */
    public static int m1() {
        return (-56575) ^ ۥۣۣۧ.ۢۡۥۧ("ۦۧ");
    }

    /* renamed from: ۣۤۢۦ, reason: not valid java name and contains not printable characters */
    public static String m2(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}
