package com.ffrt.proxyread;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.net.Uri;
import android.os.Build;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import o.AbstractC0284n5;
import o.AbstractC0487x9;
import o.I3;
import o.L1;
import org.bouncycastle.crypto.signers.PSSSigner;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Integrity {
    public static final byte[] a = {119, -103, -98, -71, -2, -96, -125, 88, 28, -23, 61, 69, -81, 78, 7, 5, -35, -58, -17, -9, -25, 116, 91, 13, -94, -54, 126, -41, -102, -12, 63, 100};
    public static final byte[] b = {7, 71, -41, 106, 60, 67, -46, 33, 18, 36, -106, -23, -95, -4, 64, 94, 92, -42, 48, -60, -80, PSSSigner.TRAILER_IMPLICIT, -4, -94, -87, 78, -4, -23, 77, 126, -107, -37};
    public static final byte[] c = {98, -77, 40, -76, 10, 117, 117, -25, 2, 125, -89, -23, -127, 93, -57, -33, 48, -95, 31, -121, -96, 74, 11, 121, 39, 94, -14, 39, -18, 65, -69, -109};
    public static final byte[] d = {57, 35, 42, 63, 40, 62, 63, 57, 53, 62, 63, 116, 57, 54, 51, 57, 49};
    public static final byte[] e = {-40, -96, -69, -97, -46, 121, 27, -121, -89, -127, 64, -119, 7, -71, -112, -81, -52, -86, -110, -115, 113, 87, 30, -26, -51, -3, 25, 47, -42, 48, -73, -35};

    /* renamed from: f, reason: collision with root package name */
    public static final byte[] f43f = {57, 53, 55, 116, 60, 60, 40, 46, 116, 42, 40, 53, 34, 35, 40, 63, 59, 62};
    public static volatile boolean g;
    public static volatile boolean h;

    public static boolean a() {
        return true;
    }

    public static boolean b() {
        String host = host();
        Uri parse = Uri.parse("https://" + host());
        if (!AbstractC0487x9.b(parse.getScheme(), "https") || !AbstractC0487x9.b(parse.getHost(), host)) {
            return false;
        }
        if (parse.getPort() != -1 && parse.getPort() != 443) {
            return false;
        }
        byte[] bytes = host.getBytes(I3.a);
        AbstractC0487x9.n(bytes, "getBytes(...)");
        return Arrays.equals(d(bytes), g(e, 165));
    }

    public static void c(Context context) {
        AbstractC0487x9.o(context, "ctx");
        g = true;
        h = true;
        L1.b = true;
        context.getSharedPreferences("crg_auth", 0).edit().putString("session_jws", "BYPASSED_SESSION").putString("license", "BYPASSED_LICENSE").apply();
    }

    public static byte[] d(byte[] bArr) {
        byte[] digest = MessageDigest.getInstance("SHA-256").digest(bArr);
        AbstractC0487x9.n(digest, "digest(...)");
        return digest;
    }

    public static ArrayList e(Context context) {
        SigningInfo signingInfo;
        Signature[] apkContentsSigners;
        Signature[] signingCertificateHistory;
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        ArrayList arrayList = new ArrayList(4);
        try {
            int i = 0;
            if (Build.VERSION.SDK_INT >= 28) {
                signingInfo = packageManager.getPackageInfo(packageName, 134217728).signingInfo;
                if (signingInfo != null) {
                    apkContentsSigners = signingInfo.getApkContentsSigners();
                    if (apkContentsSigners != null) {
                        for (Signature signature : apkContentsSigners) {
                            byte[] byteArray = signature.toByteArray();
                            AbstractC0487x9.n(byteArray, "toByteArray(...)");
                            arrayList.add(d(byteArray));
                        }
                    }
                    signingCertificateHistory = signingInfo.getSigningCertificateHistory();
                    if (signingCertificateHistory != null) {
                        int length = signingCertificateHistory.length;
                        while (i < length) {
                            byte[] byteArray2 = signingCertificateHistory[i].toByteArray();
                            AbstractC0487x9.n(byteArray2, "toByteArray(...)");
                            arrayList.add(d(byteArray2));
                            i++;
                        }
                    }
                } else {
                    return arrayList;
                }
            } else {
                Signature[] signatureArr = packageManager.getPackageInfo(packageName, 64).signatures;
                if (signatureArr != null) {
                    int length2 = signatureArr.length;
                    while (i < length2) {
                        byte[] byteArray3 = signatureArr[i].toByteArray();
                        AbstractC0487x9.n(byteArray3, "toByteArray(...)");
                        arrayList.add(d(byteArray3));
                        i++;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }

    public static byte[] f(Context context, String str) {
        Object obj;
        AbstractC0487x9.o(context, "ctx");
        ArrayList e2 = e(context);
        if (e2.isEmpty()) {
            obj = null;
        } else {
            obj = e2.get(0);
        }
        byte[] bArr = (byte[]) obj;
        if (bArr == null) {
            bArr = new byte[32];
        }
        String host = host();
        Charset charset = I3.a;
        byte[] bytes = host.getBytes(charset);
        AbstractC0487x9.n(bytes, "getBytes(...)");
        byte[] bytes2 = AbstractC0284n5.d(context).getBytes(charset);
        AbstractC0487x9.n(bytes2, "getBytes(...)");
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update(bArr);
        messageDigest.update(bytes);
        messageDigest.update(bytes2);
        byte[] bytes3 = str.getBytes(charset);
        AbstractC0487x9.n(bytes3, "getBytes(...)");
        messageDigest.update(bytes3);
        byte[] digest = messageDigest.digest();
        AbstractC0487x9.n(digest, "digest(...)");
        return digest;
    }

    public static byte[] g(byte[] bArr, int i) {
        byte[] bArr2 = new byte[bArr.length];
        int length = bArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            bArr2[i2] = (byte) (bArr[i2] ^ i);
        }
        return bArr2;
    }

    public static final String host() {
        return new String(g(d, 90), I3.b);
    }
}
