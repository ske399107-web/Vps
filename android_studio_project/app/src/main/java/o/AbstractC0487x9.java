package o;

import com.ffrt.proxyread.R;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.core.graphics.drawable.IconCompat;
import androidx.lifecycle.SavedStateHandleAttacher;
import com.ffrt.proxyread.AdbPairReceiver;
import com.ffrt.proxyread.MainActivity;
import com.google.android.material.appbar.MaterialToolbar;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* renamed from: o.x9, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0487x9 implements Rb {
    public static Method K;
    public static boolean L;
    public static volatile boolean T;
    public static final int[] a = {R.attr.name, R.attr.tint, R.attr.height, R.attr.width, R.attr.alpha, R.attr.autoMirrored, R.attr.tintMode, R.attr.viewportWidth, R.attr.viewportHeight};
    public static final int[] b = {R.attr.name, R.attr.pivotX, R.attr.pivotY, R.attr.scaleX, R.attr.scaleY, R.attr.rotation, R.attr.translateX, R.attr.translateY};
    public static final int[] c = {R.attr.name, R.attr.fillColor, R.attr.pathData, R.attr.strokeColor, R.attr.strokeWidth, R.attr.trimPathStart, R.attr.trimPathEnd, R.attr.trimPathOffset, R.attr.strokeLineCap, R.attr.strokeLineJoin, R.attr.strokeMiterLimit, R.attr.strokeAlpha, R.attr.fillAlpha, R.attr.fillType};
    public static final int[] d = {R.attr.name, R.attr.pathData, R.attr.fillType};
    public static final int[] e = {R.attr.drawable};

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f295f = {R.attr.name, R.attr.animation};
    public static final Object g = new Object();
    public static final float[][] h = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};
    public static final float[][] i = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};
    public static final float[] j = {95.047f, 100.0f, 108.883f};
    public static final float[][] k = {new float[]{0.41233894f, 0.35762063f, 0.18051042f}, new float[]{0.2126f, 0.7152f, 0.0722f}, new float[]{0.01932141f, 0.11916382f, 0.9503448f}};
    public static final Object[] l = new Object[0];
    public static final int[] m = new int[0];
    public static final Object[] n = new Object[0];

    /* renamed from: o, reason: collision with root package name */
    public static final C0063c3 f296o = new Object();
    public static final String[] p = {"standard", "accelerate", "decelerate", "linear"};
    public static final String[] q = new String[0];
    public static final int[] r = {3, 7, 11, 15};
    public static final int[] s = {1, 2, 4, 5, 6, 8, 9, 10, 12, 13, 14};
    public static final int[][] t = {new int[]{7, 11, 19, 3, 23, 5, 17, 29, 13, 31, 37}, new int[]{5, 17, 7, 31, 11, 29, 3, 23, 37, 13, 19}, new int[]{13, 3, 29, 17, 37, 7, 11, 19, 5, 31, 23}, new int[]{23, 37, 13, 5, 19, 31, 7, 11, 29, 3, 17}};
    public static final int[] u = {9, 21, 4, 30};
    public static final Object v = new Object();
    public static final int[] w = {R.attr.theme, 2130904186};
    public static final int[] x = {2130903817};
    public static final boolean[] y = new boolean[3];
    public static final C0424u6 z = new C0424u6(20);
    public static final byte[] A = {112, 114, 111, 0};
    public static final byte[] B = {112, 114, 109, 0};
    public static final byte[] C = {48, 49, 53, 0};
    public static final byte[] D = {48, 49, 48, 0};
    public static final byte[] E = {48, 48, 57, 0};
    public static final byte[] F = {48, 48, 53, 0};
    public static final byte[] G = {48, 48, 49, 0};
    public static final byte[] H = {48, 48, 49, 0};
    public static final byte[] I = {48, 48, 50, 0};
    public static final Object J = new Object();
    public static final C0424u6 M = new C0424u6(26);
    public static final C0424u6 N = new C0424u6(27);
    public static final C0424u6 O = new C0424u6(25);
    public static final Object P = new Object();
    public static final int[] Q = {2130903315};
    public static final int[] R = {2130903322};
    public static final C0065c5 S = new C0065c5(5);

    public static int A(float f2) {
        float f3;
        boolean z2;
        float f4;
        if (f2 < 1.0f) {
            return -16777216;
        }
        if (f2 > 99.0f) {
            return -1;
        }
        float f5 = (f2 + 16.0f) / 116.0f;
        if (f2 > 8.0f) {
            f3 = f5 * f5 * f5;
        } else {
            f3 = f2 / 903.2963f;
        }
        float f6 = f5 * f5 * f5;
        if (f6 > 0.008856452f) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            f4 = f6;
        } else {
            f4 = ((f5 * 116.0f) - 16.0f) / 903.2963f;
        }
        if (!z2) {
            f6 = ((f5 * 116.0f) - 16.0f) / 903.2963f;
        }
        float[] fArr = j;
        return AbstractC0263m4.a(f4 * fArr[0], f3 * fArr[1], f6 * fArr[2]);
    }

    public static int B(Context context) {
        o(context, "ctx");
        return context.getSharedPreferences("adb_session", 0).getInt("connect_port", 0);
    }

    public static float C(int i2) {
        float pow;
        float f2 = i2 / 255.0f;
        if (f2 <= 0.04045f) {
            pow = f2 / 12.92f;
        } else {
            pow = (float) Math.pow((f2 + 0.055f) / 1.055f, 2.4000000953674316d);
        }
        return pow * 100.0f;
    }

    public static boolean D() {
        Object c0094de;
        boolean z2 = true;
        if (T) {
            return true;
        }
        try {
            B0 b0 = B0.d;
            if (b0 == null || !b0.isConnected()) {
                z2 = false;
            }
            c0094de = Boolean.valueOf(z2);
        } catch (Throwable th) {
            c0094de = new C0094de(th);
        }
        Object obj = Boolean.FALSE;
        if (c0094de instanceof C0094de) {
            c0094de = obj;
        }
        return ((Boolean) c0094de).booleanValue();
    }

    public static void E(Context context, int i2) {
        context.getSharedPreferences("adb_session", 0).edit().putBoolean("paired", true).putInt("connect_port", i2).apply();
    }

    public static String F(String str) {
        StringBuilder sb = new StringBuilder(16);
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt != '-') {
                sb.append(Character.toUpperCase(charAt));
            }
        }
        return sb.toString();
    }

    public static void G(PackageInfo packageInfo, File file) {
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(new File(file, "profileinstaller_profileWrittenFor_lastUpdateTime.dat")));
            try {
                dataOutputStream.writeLong(packageInfo.lastUpdateTime);
                dataOutputStream.close();
            } finally {
            }
        } catch (IOException unused) {
        }
    }

    public static TypedArray H(Context context, AttributeSet attributeSet, int[] iArr, int i2, int i3, int... iArr2) {
        j(context, attributeSet, i2, i3);
        q(context, attributeSet, iArr, i2, i3, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i2, i3);
    }

    public static void I(EditorInfo editorInfo, InputConnection inputConnection, TextView textView) {
        if (inputConnection != null && editorInfo.hintText == null) {
            for (ViewParent parent = textView.getParent(); parent instanceof View; parent = parent.getParent()) {
            }
        }
    }

    public static void J(Context context, int i2, String str) {
        try {
            B0.c.d(context).pair("127.0.0.1", i2, AbstractC0413tf.L0(str).toString());
        } catch (NullPointerException e2) {
            int i3 = AbstractC0408ta.a;
            AbstractC0408ta.a("ADB pair close ".concat(e2.getClass().getSimpleName()));
        }
        context.getSharedPreferences("adb_session", 0).edit().putBoolean("paired", true).apply();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003c, code lost:
    
        if (r5 != null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0050, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003e, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x004c, code lost:
    
        if (r5 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void L(android.content.Context r5, java.lang.String r6) {
        /*
            java.lang.Object r0 = o.AbstractC0487x9.g
            monitor-enter(r0)
            java.lang.String r1 = ""
            boolean r1 = r6.equals(r1)     // Catch: java.lang.Throwable -> L12
            if (r1 == 0) goto L14
            java.lang.String r6 = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            r5.deleteFile(r6)     // Catch: java.lang.Throwable -> L12
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L12
            return
        L12:
            r5 = move-exception
            goto L60
        L14:
            java.lang.String r1 = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            r2 = 0
            java.io.FileOutputStream r5 = r5.openFileOutput(r1, r2)     // Catch: java.lang.Throwable -> L12 java.io.FileNotFoundException -> L57
            org.xmlpull.v1.XmlSerializer r1 = android.util.Xml.newSerializer()     // Catch: java.lang.Throwable -> L12
            r2 = 0
            r1.setOutput(r5, r2)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            java.lang.String r3 = "UTF-8"
            java.lang.Boolean r4 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            r1.startDocument(r3, r4)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            java.lang.String r3 = "locales"
            r1.startTag(r2, r3)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            java.lang.String r3 = "application_locales"
            r1.attribute(r2, r3, r6)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            java.lang.String r6 = "locales"
            r1.endTag(r2, r6)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            r1.endDocument()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            if (r5 == 0) goto L4f
        L3e:
            r5.close()     // Catch: java.lang.Throwable -> L12 java.io.IOException -> L4f
            goto L4f
        L42:
            r6 = move-exception
            goto L51
        L44:
            r6 = move-exception
            java.lang.String r1 = "AppLocalesStorageHelper"
            java.lang.String r2 = "Storing App Locales : Failed to persist app-locales in storage "
            android.util.Log.w(r1, r2, r6)     // Catch: java.lang.Throwable -> L42
            if (r5 == 0) goto L4f
            goto L3e
        L4f:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L12
            return
        L51:
            if (r5 == 0) goto L56
            r5.close()     // Catch: java.lang.Throwable -> L12 java.io.IOException -> L56
        L56:
            throw r6     // Catch: java.lang.Throwable -> L12
        L57:
            java.lang.String r5 = "AppLocalesStorageHelper"
            java.lang.String r6 = "Storing App Locales : FileNotFoundException: Cannot open file androidx.appcompat.app.AppCompatDelegate.application_locales_record_file for writing "
            android.util.Log.w(r5, r6)     // Catch: java.lang.Throwable -> L12
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L12
            return
        L60:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L12
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: o.AbstractC0487x9.L(android.content.Context, java.lang.String):void");
    }

    public static int[] O(ByteArrayInputStream byteArrayInputStream, int i2) {
        int[] iArr = new int[i2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += (int) L1.U(byteArrayInputStream, 2);
            iArr[i4] = i3;
        }
        return iArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0044, code lost:
    
        if (r2 != null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005a, code lost:
    
        if (r1.isEmpty() == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005d, code lost:
    
        r8.deleteFile("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0046, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x002e, code lost:
    
        if (r5 != 4) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x003b, code lost:
    
        if (r3.getName().equals("locales") == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x003d, code lost:
    
        r1 = r3.getAttributeValue(null, "application_locales");
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0053, code lost:
    
        if (r2 == null) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String P(android.content.Context r8) {
        /*
            java.lang.Object r0 = o.AbstractC0487x9.g
            monitor-enter(r0)
            java.lang.String r1 = ""
            java.lang.String r2 = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            java.io.FileInputStream r2 = r8.openFileInput(r2)     // Catch: java.lang.Throwable -> L4a java.io.FileNotFoundException -> L6a
            org.xmlpull.v1.XmlPullParser r3 = android.util.Xml.newPullParser()     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L4c
            java.lang.String r4 = "UTF-8"
            r3.setInput(r2, r4)     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L4c
            int r4 = r3.getDepth()     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L4c
        L18:
            int r5 = r3.next()     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L4c
            r6 = 1
            if (r5 == r6) goto L44
            r6 = 3
            if (r5 != r6) goto L2b
            int r7 = r3.getDepth()     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L4c
            if (r7 <= r4) goto L44
            goto L2b
        L29:
            r8 = move-exception
            goto L64
        L2b:
            if (r5 == r6) goto L18
            r6 = 4
            if (r5 != r6) goto L31
            goto L18
        L31:
            java.lang.String r5 = r3.getName()     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L4c
            java.lang.String r6 = "locales"
            boolean r5 = r5.equals(r6)     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L4c
            if (r5 == 0) goto L18
            java.lang.String r4 = "application_locales"
            r5 = 0
            java.lang.String r1 = r3.getAttributeValue(r5, r4)     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L4c
        L44:
            if (r2 == 0) goto L56
        L46:
            r2.close()     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L56
            goto L56
        L4a:
            r8 = move-exception
            goto L6c
        L4c:
            java.lang.String r3 = "AppLocalesStorageHelper"
            java.lang.String r4 = "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            android.util.Log.w(r3, r4)     // Catch: java.lang.Throwable -> L29
            if (r2 == 0) goto L56
            goto L46
        L56:
            boolean r2 = r1.isEmpty()     // Catch: java.lang.Throwable -> L4a
            if (r2 != 0) goto L5d
            goto L62
        L5d:
            java.lang.String r2 = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            r8.deleteFile(r2)     // Catch: java.lang.Throwable -> L4a
        L62:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L4a
            return r1
        L64:
            if (r2 == 0) goto L69
            r2.close()     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L69
        L69:
            throw r8     // Catch: java.lang.Throwable -> L4a
        L6a:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L4a
            return r1
        L6c:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L4a
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: o.AbstractC0487x9.P(android.content.Context):java.lang.String");
    }

    public static T5[] Q(FileInputStream fileInputStream, byte[] bArr, byte[] bArr2, T5[] t5Arr) {
        byte[] bArr3 = H;
        if (Arrays.equals(bArr, bArr3)) {
            if (!Arrays.equals(C, bArr2)) {
                if (Arrays.equals(bArr, bArr3)) {
                    int U = (int) L1.U(fileInputStream, 1);
                    byte[] T2 = L1.T(fileInputStream, (int) L1.U(fileInputStream, 4), (int) L1.U(fileInputStream, 4));
                    if (fileInputStream.read() <= 0) {
                        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(T2);
                        try {
                            T5[] R2 = R(byteArrayInputStream, U, t5Arr);
                            byteArrayInputStream.close();
                            return R2;
                        } catch (Throwable th) {
                            try {
                                byteArrayInputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                    throw new IllegalStateException("Content found after the end of file");
                }
                throw new IllegalStateException("Unsupported meta version");
            }
            throw new IllegalStateException("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
        }
        if (Arrays.equals(bArr, I)) {
            int U2 = (int) L1.U(fileInputStream, 2);
            byte[] T3 = L1.T(fileInputStream, (int) L1.U(fileInputStream, 4), (int) L1.U(fileInputStream, 4));
            if (fileInputStream.read() <= 0) {
                ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(T3);
                try {
                    T5[] S2 = S(byteArrayInputStream2, bArr2, U2, t5Arr);
                    byteArrayInputStream2.close();
                    return S2;
                } catch (Throwable th3) {
                    try {
                        byteArrayInputStream2.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            }
            throw new IllegalStateException("Content found after the end of file");
        }
        throw new IllegalStateException("Unsupported meta version");
    }

    public static T5[] R(ByteArrayInputStream byteArrayInputStream, int i2, T5[] t5Arr) {
        if (byteArrayInputStream.available() == 0) {
            return new T5[0];
        }
        if (i2 == t5Arr.length) {
            String[] strArr = new String[i2];
            int[] iArr = new int[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                int U = (int) L1.U(byteArrayInputStream, 2);
                iArr[i3] = (int) L1.U(byteArrayInputStream, 2);
                strArr[i3] = new String(L1.Q(byteArrayInputStream, U), StandardCharsets.UTF_8);
            }
            for (int i4 = 0; i4 < i2; i4++) {
                T5 t5 = t5Arr[i4];
                if (t5.b.equals(strArr[i4])) {
                    int i5 = iArr[i4];
                    t5.e = i5;
                    t5.h = O(byteArrayInputStream, i5);
                } else {
                    throw new IllegalStateException("Order of dexfiles in metadata did not match baseline");
                }
            }
            return t5Arr;
        }
        throw new IllegalStateException("Mismatched number of dex files found in metadata");
    }

    public static T5[] S(ByteArrayInputStream byteArrayInputStream, byte[] bArr, int i2, T5[] t5Arr) {
        String str;
        if (byteArrayInputStream.available() == 0) {
            return new T5[0];
        }
        if (i2 == t5Arr.length) {
            for (int i3 = 0; i3 < i2; i3++) {
                L1.U(byteArrayInputStream, 2);
                String str2 = new String(L1.Q(byteArrayInputStream, (int) L1.U(byteArrayInputStream, 2)), StandardCharsets.UTF_8);
                long U = L1.U(byteArrayInputStream, 4);
                int U2 = (int) L1.U(byteArrayInputStream, 2);
                T5 t5 = null;
                if (t5Arr.length > 0) {
                    int indexOf = str2.indexOf("!");
                    if (indexOf < 0) {
                        indexOf = str2.indexOf(":");
                    }
                    if (indexOf > 0) {
                        str = str2.substring(indexOf + 1);
                    } else {
                        str = str2;
                    }
                    int i4 = 0;
                    while (true) {
                        if (i4 >= t5Arr.length) {
                            break;
                        }
                        if (t5Arr[i4].b.equals(str)) {
                            t5 = t5Arr[i4];
                            break;
                        }
                        i4++;
                    }
                }
                if (t5 != null) {
                    t5.d = U;
                    int[] O2 = O(byteArrayInputStream, U2);
                    if (Arrays.equals(bArr, G)) {
                        t5.e = U2;
                        t5.h = O2;
                    }
                } else {
                    throw new IllegalStateException("Missing profile key: ".concat(str2));
                }
            }
            return t5Arr;
        }
        throw new IllegalStateException("Mismatched number of dex files found in metadata");
    }

    public static T5[] T(FileInputStream fileInputStream, byte[] bArr, String str) {
        if (Arrays.equals(bArr, D)) {
            int U = (int) L1.U(fileInputStream, 1);
            byte[] T2 = L1.T(fileInputStream, (int) L1.U(fileInputStream, 4), (int) L1.U(fileInputStream, 4));
            if (fileInputStream.read() <= 0) {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(T2);
                try {
                    T5[] U2 = U(byteArrayInputStream, str, U);
                    byteArrayInputStream.close();
                    return U2;
                } catch (Throwable th) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            throw new IllegalStateException("Content found after the end of file");
        }
        throw new IllegalStateException("Unsupported version");
    }

    public static T5[] U(ByteArrayInputStream byteArrayInputStream, String str, int i2) {
        TreeMap treeMap;
        int i3;
        if (byteArrayInputStream.available() == 0) {
            return new T5[0];
        }
        T5[] t5Arr = new T5[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            int U = (int) L1.U(byteArrayInputStream, 2);
            int U2 = (int) L1.U(byteArrayInputStream, 2);
            t5Arr[i4] = new T5(str, new String(L1.Q(byteArrayInputStream, U), StandardCharsets.UTF_8), L1.U(byteArrayInputStream, 4), U2, (int) L1.U(byteArrayInputStream, 4), (int) L1.U(byteArrayInputStream, 4), new int[U2], new TreeMap());
        }
        for (int i5 = 0; i5 < i2; i5++) {
            T5 t5 = t5Arr[i5];
            int available = byteArrayInputStream.available() - t5.f145f;
            int i6 = 0;
            while (true) {
                int available2 = byteArrayInputStream.available();
                treeMap = t5.i;
                if (available2 <= available) {
                    break;
                }
                i6 += (int) L1.U(byteArrayInputStream, 2);
                treeMap.put(Integer.valueOf(i6), 1);
                for (int U3 = (int) L1.U(byteArrayInputStream, 2); U3 > 0; U3--) {
                    L1.U(byteArrayInputStream, 2);
                    int U4 = (int) L1.U(byteArrayInputStream, 1);
                    if (U4 != 6 && U4 != 7) {
                        while (U4 > 0) {
                            L1.U(byteArrayInputStream, 1);
                            for (int U5 = (int) L1.U(byteArrayInputStream, 1); U5 > 0; U5--) {
                                L1.U(byteArrayInputStream, 2);
                            }
                            U4--;
                        }
                    }
                }
            }
            if (byteArrayInputStream.available() == available) {
                t5.h = O(byteArrayInputStream, t5.e);
                int i7 = t5.g;
                BitSet valueOf = BitSet.valueOf(L1.Q(byteArrayInputStream, (((i7 * 2) + 7) & (-8)) / 8));
                for (int i8 = 0; i8 < i7; i8++) {
                    if (valueOf.get(i8)) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    if (valueOf.get(i8 + i7)) {
                        i3 |= 4;
                    }
                    if (i3 != 0) {
                        Integer num = (Integer) treeMap.get(Integer.valueOf(i8));
                        if (num == null) {
                            num = 0;
                        }
                        treeMap.put(Integer.valueOf(i8), Integer.valueOf(i3 | num.intValue()));
                    }
                }
            } else {
                throw new IllegalStateException("Read too much data during profile line parse");
            }
        }
        return t5Arr;
    }

    public static void V(RuntimeException runtimeException) {
        String name = AbstractC0487x9.class.getName();
        StackTraceElement[] stackTrace = runtimeException.getStackTrace();
        int length = stackTrace.length;
        int i2 = -1;
        for (int i3 = 0; i3 < length; i3++) {
            if (name.equals(stackTrace[i3].getClassName())) {
                i2 = i3;
            }
        }
        runtimeException.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i2 + 1, length));
    }

    public static void W(EditorInfo editorInfo, CharSequence charSequence, int i2, int i3) {
        SpannableStringBuilder spannableStringBuilder;
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        if (charSequence != null) {
            spannableStringBuilder = new SpannableStringBuilder(charSequence);
        } else {
            spannableStringBuilder = null;
        }
        editorInfo.extras.putCharSequence("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT", spannableStringBuilder);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD", i2);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END", i3);
    }

    public static byte[] X(String str) {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bytes = str.getBytes(I3.a);
        n(bytes, "getBytes(...)");
        byte[] digest = messageDigest.digest(bytes);
        n(digest, "digest(...)");
        return digest;
    }

    public static String Y(String str) {
        byte[] X = X(str);
        StringBuilder sb = new StringBuilder(X.length * 2);
        for (byte b2 : X) {
            sb.append("0123456789abcdef".charAt((b2 & 255) >> 4));
            sb.append("0123456789abcdef".charAt(b2 & 15));
        }
        String sb2 = sb.toString();
        n(sb2, "toString(...)");
        return sb2;
    }

    public static void Z(Context context) {
        Object c0094de;
        boolean booleanValue;
        boolean z2;
        int i2;
        Od[] odArr;
        Od[] odArr2;
        NotificationChannel notificationChannel;
        o(context, "ctx");
        if (!T) {
            if (T) {
                booleanValue = true;
            } else {
                try {
                    B0 b0 = B0.d;
                    if (b0 != null && b0.isConnected()) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    c0094de = Boolean.valueOf(z2);
                } catch (Throwable th) {
                    c0094de = new C0094de(th);
                }
                Object obj = Boolean.FALSE;
                if (c0094de instanceof C0094de) {
                    c0094de = obj;
                }
                booleanValue = ((Boolean) c0094de).booleanValue();
            }
            if (!booleanValue) {
                Context applicationContext = context.getApplicationContext();
                NotificationManager notificationManager = (NotificationManager) applicationContext.getSystemService(NotificationManager.class);
                if (notificationManager == null) {
                    return;
                }
                int i3 = Build.VERSION.SDK_INT;
                if (i3 >= 26) {
                    notificationChannel = notificationManager.getNotificationChannel("adb_pair");
                    if (notificationChannel == null) {
                        AbstractC0039b.f();
                        NotificationChannel c2 = AbstractC0039b.c(applicationContext.getString(2131623980));
                        c2.setDescription(applicationContext.getString(2131624097));
                        c2.setShowBadge(false);
                        c2.setSound(null, null);
                        c2.enableVibration(false);
                        notificationManager.createNotificationChannel(c2);
                    }
                }
                Intent intent = new Intent(applicationContext, (Class<?>) AdbPairReceiver.class).setAction("com.ffrt.proxyread.ADB_PAIR").setPackage(applicationContext.getPackageName());
                if (i3 >= 31) {
                    i2 = 33554432;
                } else {
                    i2 = 0;
                }
                PendingIntent broadcast = PendingIntent.getBroadcast(applicationContext, 11, intent, i2 | 134217728);
                Od od = new Od(applicationContext.getString(2131624095), new Bundle(), new HashSet());
                String string = applicationContext.getString(2131624094);
                IconCompat a2 = IconCompat.a(R.drawable.ic_menu_send);
                Bundle bundle = new Bundle();
                CharSequence b2 = Zb.b(string);
                ArrayList arrayList = new ArrayList();
                arrayList.add(od);
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Od od2 = (Od) it.next();
                    od2.getClass();
                    arrayList3.add(od2);
                }
                if (arrayList2.isEmpty()) {
                    odArr = null;
                } else {
                    odArr = (Od[]) arrayList2.toArray(new Od[arrayList2.size()]);
                }
                if (arrayList3.isEmpty()) {
                    odArr2 = null;
                } else {
                    odArr2 = (Od[]) arrayList3.toArray(new Od[arrayList3.size()]);
                }
                Xb xb = new Xb(a2, b2, broadcast, bundle, odArr2, odArr, false, 1, false);
                PendingIntent activity = PendingIntent.getActivity(applicationContext, 0, new Intent(applicationContext, (Class<?>) MainActivity.class).setFlags(PKIFailureInfo.duplicateCertReq), 201326592);
                Handler handler = AbstractC0458w0.a;
                String str = AbstractC0458w0.g;
                if (AbstractC0413tf.D0(str, true, "null")) {
                    str = applicationContext.getString(2131624097);
                } else if (!AbstractC0458w0.h) {
                    o(str, "<this>");
                    if (!str.startsWith("Lỗi") && !str.startsWith("Đang") && !str.startsWith("Ghép")) {
                        str = applicationContext.getString(2131624097);
                    }
                }
                l(str);
                Zb zb = new Zb(applicationContext, "adb_pair");
                zb.p.icon = R.drawable.stat_notify_sync_noanim;
                zb.e = Zb.b(applicationContext.getString(2131624098));
                zb.f174f = Zb.b(str);
                zb.g = activity;
                zb.b.add(xb);
                zb.j = "status";
                zb.h = 0;
                zb.c(8, true);
                Notification notification = zb.p;
                notification.defaults = 0;
                notification.sound = null;
                notification.audioStreamType = -1;
                notification.audioAttributes = Yb.a(Yb.d(Yb.c(Yb.b(), 4), 5));
                zb.p.vibrate = null;
                zb.c(16, false);
                zb.l = -12389709;
                zb.m = 1;
                if (applicationContext.getSharedPreferences("adb_session", 0).getBoolean("paired", false)) {
                    zb.b.add(new Xb(IconCompat.a(R.drawable.ic_menu_rotate), applicationContext.getString(2131624096), PendingIntent.getBroadcast(applicationContext, 12, new Intent(applicationContext, (Class<?>) AdbPairReceiver.class).setAction("com.ffrt.proxyread.ADB_RECONNECT").setPackage(applicationContext.getPackageName()), 201326592), new Bundle(), null, null, true, 0, true));
                }
                notificationManager.notify(42, zb.a());
                return;
            }
        }
        NotificationManager notificationManager2 = (NotificationManager) context.getApplicationContext().getSystemService(NotificationManager.class);
        if (notificationManager2 != null) {
            notificationManager2.cancel(42);
        }
    }

    public static boolean a(Context context, int i2) {
        o(context, "ctx");
        B0 b0 = B0.d;
        if (b0 == null || !b0.isConnected()) {
            return false;
        }
        T = true;
        if (i2 <= 0) {
            i2 = B(context);
        }
        E(context, i2);
        return true;
    }

    public static void a0(int i2, C4 c4, L4 l4, boolean z2) {
        float f2;
        float f3 = l4.d0;
        C0482x4 c0482x4 = l4.I;
        int d2 = c0482x4.f293f.d();
        C0482x4 c0482x42 = l4.K;
        int d3 = c0482x42.f293f.d();
        int e2 = c0482x4.e() + d2;
        int e3 = d3 - c0482x42.e();
        if (d2 == d3) {
            f3 = 0.5f;
        } else {
            d2 = e2;
            d3 = e3;
        }
        int q2 = l4.q();
        int i3 = (d3 - d2) - q2;
        if (d2 > d3) {
            i3 = (d2 - d3) - q2;
        }
        if (i3 > 0) {
            f2 = (f3 * i3) + 0.5f;
        } else {
            f2 = f3 * i3;
        }
        int i4 = ((int) f2) + d2;
        int i5 = i4 + q2;
        if (d2 > d3) {
            i5 = i4 - q2;
        }
        l4.J(i4, i5);
        z(i2 + 1, c4, l4, z2);
    }

    public static boolean b(Object obj, Object obj2) {
        if (obj == null) {
            if (obj2 == null) {
                return true;
            }
            return false;
        }
        return obj.equals(obj2);
    }

    public static void b0(int i2, L4 l4, C4 c4, L4 l42, boolean z2) {
        int q2;
        float f2 = l42.d0;
        C0482x4 c0482x4 = l42.I;
        int e2 = c0482x4.e() + c0482x4.f293f.d();
        C0482x4 c0482x42 = l42.K;
        int d2 = c0482x42.f293f.d() - c0482x42.e();
        if (d2 >= e2) {
            int q3 = l42.q();
            if (l42.g0 != 8) {
                int i3 = l42.r;
                if (i3 == 2) {
                    if (l4 instanceof M4) {
                        q2 = l4.q();
                    } else {
                        q2 = l4.T.q();
                    }
                    q3 = (int) (l42.d0 * 0.5f * q2);
                } else if (i3 == 0) {
                    q3 = d2 - e2;
                }
                q3 = Math.max(l42.u, q3);
                int i4 = l42.v;
                if (i4 > 0) {
                    q3 = Math.min(i4, q3);
                }
            }
            int i5 = e2 + ((int) ((f2 * ((d2 - e2) - q3)) + 0.5f));
            l42.J(i5, q3 + i5);
            z(i2 + 1, c4, l42, z2);
        }
    }

    public static void c(Context context) {
        o(context, "ctx");
        B0 d2 = B0.c.d(context);
        try {
            d2.autoConnect(context, 8000L);
        } catch (Exception e2) {
            if (d2.isConnected()) {
                int i2 = AbstractC0408ta.a;
                AbstractC0408ta.a("ADB auto after ".concat(e2.getClass().getSimpleName()));
            } else {
                throw e2;
            }
        }
        T = true;
        E(context, B(context));
    }

    public static void c0(int i2, C4 c4, L4 l4) {
        float f2;
        float f3 = l4.e0;
        C0482x4 c0482x4 = l4.J;
        int d2 = c0482x4.f293f.d();
        C0482x4 c0482x42 = l4.L;
        int d3 = c0482x42.f293f.d();
        int e2 = c0482x4.e() + d2;
        int e3 = d3 - c0482x42.e();
        if (d2 == d3) {
            f3 = 0.5f;
        } else {
            d2 = e2;
            d3 = e3;
        }
        int k2 = l4.k();
        int i3 = (d3 - d2) - k2;
        if (d2 > d3) {
            i3 = (d2 - d3) - k2;
        }
        if (i3 > 0) {
            f2 = (f3 * i3) + 0.5f;
        } else {
            f2 = f3 * i3;
        }
        int i4 = (int) f2;
        int i5 = d2 + i4;
        int i6 = i5 + k2;
        if (d2 > d3) {
            i5 = d2 - i4;
            i6 = i5 - k2;
        }
        l4.K(i5, i6);
        i0(i2 + 1, c4, l4);
    }

    public static final int d(int i2, int i3, int[] iArr) {
        o(iArr, "array");
        int i4 = i2 - 1;
        int i5 = 0;
        while (i5 <= i4) {
            int i6 = (i5 + i4) >>> 1;
            int i7 = iArr[i6];
            if (i7 < i3) {
                i5 = i6 + 1;
            } else if (i7 > i3) {
                i4 = i6 - 1;
            } else {
                return i6;
            }
        }
        return ~i5;
    }

    public static void d0(int i2, L4 l4, C4 c4, L4 l42) {
        int k2;
        float f2 = l42.e0;
        C0482x4 c0482x4 = l42.J;
        int e2 = c0482x4.e() + c0482x4.f293f.d();
        C0482x4 c0482x42 = l42.L;
        int d2 = c0482x42.f293f.d() - c0482x42.e();
        if (d2 >= e2) {
            int k3 = l42.k();
            if (l42.g0 != 8) {
                int i3 = l42.s;
                if (i3 == 2) {
                    if (l4 instanceof M4) {
                        k2 = l4.k();
                    } else {
                        k2 = l4.T.k();
                    }
                    k3 = (int) (f2 * 0.5f * k2);
                } else if (i3 == 0) {
                    k3 = d2 - e2;
                }
                k3 = Math.max(l42.x, k3);
                int i4 = l42.y;
                if (i4 > 0) {
                    k3 = Math.min(i4, k3);
                }
            }
            int i5 = e2 + ((int) ((f2 * ((d2 - e2) - k3)) + 0.5f));
            l42.K(i5, k3 + i5);
            i0(i2 + 1, c4, l42);
        }
    }

    public static final int e(long[] jArr, int i2, long j2) {
        o(jArr, "array");
        int i3 = i2 - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            long j3 = jArr[i5];
            if (j3 < j2) {
                i4 = i5 + 1;
            } else if (j3 > j2) {
                i3 = i5 - 1;
            } else {
                return i5;
            }
        }
        return ~i4;
    }

    public static void e0(String str) {
        RuntimeException runtimeException = new RuntimeException(AbstractC0304o5.h("lateinit property ", str, " has not been initialized"));
        V(runtimeException);
        throw runtimeException;
    }

    public static boolean f(L4 l4) {
        M4 m4;
        boolean z2;
        boolean z3;
        int[] iArr = l4.p0;
        int i2 = iArr[0];
        int i3 = iArr[1];
        L4 l42 = l4.T;
        if (l42 != null) {
            m4 = (M4) l42;
        } else {
            m4 = null;
        }
        if (m4 != null) {
            int i4 = m4.p0[0];
        }
        if (m4 != null) {
            int i5 = m4.p0[1];
        }
        if (i2 != 1 && !l4.A() && i2 != 2 && ((i2 != 3 || l4.r != 0 || l4.W != 0.0f || !l4.t(0)) && (i2 != 3 || l4.r != 1 || !l4.u(0, l4.q())))) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (i3 != 1 && !l4.B() && i3 != 2 && ((i3 != 3 || l4.s != 0 || l4.W != 0.0f || !l4.t(1)) && (i3 != 3 || l4.s != 1 || !l4.u(1, l4.k())))) {
            z3 = false;
        } else {
            z3 = true;
        }
        if (l4.W > 0.0f && (z2 || z3)) {
            return true;
        }
        if (!z2 || !z3) {
            return false;
        }
        return true;
    }

    public static final Object[] f0(Collection collection) {
        int size = collection.size();
        Object[] objArr = l;
        if (size != 0) {
            Iterator it = collection.iterator();
            if (it.hasNext()) {
                Object[] objArr2 = new Object[size];
                int i2 = 0;
                while (true) {
                    int i3 = i2 + 1;
                    objArr2[i2] = it.next();
                    if (i3 >= objArr2.length) {
                        if (it.hasNext()) {
                            int i4 = ((i3 * 3) + 1) >>> 1;
                            if (i4 <= i3) {
                                i4 = 2147483645;
                                if (i3 >= 2147483645) {
                                    throw new OutOfMemoryError();
                                }
                            }
                            objArr2 = Arrays.copyOf(objArr2, i4);
                        } else {
                            return objArr2;
                        }
                    } else if (!it.hasNext()) {
                        Object[] copyOf = Arrays.copyOf(objArr2, i3);
                        n(copyOf, "copyOf(...)");
                        return copyOf;
                    }
                    i2 = i3;
                }
            } else {
                return objArr;
            }
        } else {
            return objArr;
        }
    }

    public static final Object[] g0(Collection collection, Object[] objArr) {
        Object[] objArr2;
        int size = collection.size();
        int i2 = 0;
        if (size == 0) {
            if (objArr.length > 0) {
                objArr[0] = null;
                return objArr;
            }
            return objArr;
        }
        Iterator it = collection.iterator();
        if (!it.hasNext()) {
            if (objArr.length > 0) {
                objArr[0] = null;
                return objArr;
            }
            return objArr;
        }
        if (size <= objArr.length) {
            objArr2 = objArr;
        } else {
            Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
            m(newInstance, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArr2 = (Object[]) newInstance;
        }
        while (true) {
            int i3 = i2 + 1;
            objArr2[i2] = it.next();
            if (i3 >= objArr2.length) {
                if (!it.hasNext()) {
                    return objArr2;
                }
                int i4 = ((i3 * 3) + 1) >>> 1;
                if (i4 <= i3) {
                    i4 = 2147483645;
                    if (i3 >= 2147483645) {
                        throw new OutOfMemoryError();
                    }
                }
                objArr2 = Arrays.copyOf(objArr2, i4);
            } else if (!it.hasNext()) {
                if (objArr2 == objArr) {
                    objArr[i3] = null;
                    return objArr;
                }
                Object[] copyOf = Arrays.copyOf(objArr2, i3);
                n(copyOf, "copyOf(...)");
                return copyOf;
            }
            i2 = i3;
        }
    }

    /* JADX WARN: Finally extract failed */
    public static boolean h0(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr, T5[] t5Arr) {
        long j2;
        ArrayList arrayList;
        int length;
        byte[] bArr2 = C;
        int i2 = 0;
        if (Arrays.equals(bArr, bArr2)) {
            ArrayList arrayList2 = new ArrayList(3);
            ArrayList arrayList3 = new ArrayList(3);
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                L1.h0(byteArrayOutputStream2, t5Arr.length);
                int i3 = 2;
                int i4 = 2;
                for (T5 t5 : t5Arr) {
                    L1.g0(byteArrayOutputStream2, t5.c, 4);
                    L1.g0(byteArrayOutputStream2, t5.d, 4);
                    L1.g0(byteArrayOutputStream2, t5.g, 4);
                    String x2 = x(t5.a, t5.b, bArr2);
                    Charset charset = StandardCharsets.UTF_8;
                    int length2 = x2.getBytes(charset).length;
                    L1.h0(byteArrayOutputStream2, length2);
                    i4 = i4 + 14 + length2;
                    byteArrayOutputStream2.write(x2.getBytes(charset));
                }
                byte[] byteArray = byteArrayOutputStream2.toByteArray();
                if (i4 == byteArray.length) {
                    Ui ui = new Ui(1, byteArray, false);
                    byteArrayOutputStream2.close();
                    arrayList2.add(ui);
                    ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
                    int i5 = 0;
                    int i6 = 0;
                    while (i5 < t5Arr.length) {
                        try {
                            T5 t52 = t5Arr[i5];
                            L1.h0(byteArrayOutputStream3, i5);
                            L1.h0(byteArrayOutputStream3, t52.e);
                            i6 = i6 + 4 + (t52.e * 2);
                            int[] iArr = t52.h;
                            int length3 = iArr.length;
                            int i7 = i2;
                            while (i2 < length3) {
                                int i8 = iArr[i2];
                                L1.h0(byteArrayOutputStream3, i8 - i7);
                                i2++;
                                i7 = i8;
                            }
                            i5++;
                            i2 = 0;
                        } catch (Throwable th) {
                        }
                    }
                    byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
                    if (i6 == byteArray2.length) {
                        Ui ui2 = new Ui(3, byteArray2, true);
                        byteArrayOutputStream3.close();
                        arrayList2.add(ui2);
                        byteArrayOutputStream3 = new ByteArrayOutputStream();
                        int i9 = 0;
                        int i10 = 0;
                        while (i9 < t5Arr.length) {
                            try {
                                T5 t53 = t5Arr[i9];
                                Iterator it = t53.i.entrySet().iterator();
                                int i11 = 0;
                                while (it.hasNext()) {
                                    i11 |= ((Integer) ((Map.Entry) it.next()).getValue()).intValue();
                                }
                                ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
                                try {
                                    m0(byteArrayOutputStream4, i11, t53);
                                    byte[] byteArray3 = byteArrayOutputStream4.toByteArray();
                                    byteArrayOutputStream4.close();
                                    byteArrayOutputStream4 = new ByteArrayOutputStream();
                                    try {
                                        n0(byteArrayOutputStream4, t53);
                                        byte[] byteArray4 = byteArrayOutputStream4.toByteArray();
                                        byteArrayOutputStream4.close();
                                        L1.h0(byteArrayOutputStream3, i9);
                                        int length4 = byteArray3.length + i3 + byteArray4.length;
                                        int i12 = i10 + 6;
                                        ArrayList arrayList4 = arrayList3;
                                        L1.g0(byteArrayOutputStream3, length4, 4);
                                        L1.h0(byteArrayOutputStream3, i11);
                                        byteArrayOutputStream3.write(byteArray3);
                                        byteArrayOutputStream3.write(byteArray4);
                                        i10 = i12 + length4;
                                        i9++;
                                        arrayList3 = arrayList4;
                                        i3 = 2;
                                    } finally {
                                    }
                                } finally {
                                }
                            } finally {
                                try {
                                    byteArrayOutputStream3.close();
                                    throw th;
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                            }
                        }
                        ArrayList arrayList5 = arrayList3;
                        byte[] byteArray5 = byteArrayOutputStream3.toByteArray();
                        if (i10 == byteArray5.length) {
                            Ui ui3 = new Ui(4, byteArray5, true);
                            byteArrayOutputStream3.close();
                            arrayList2.add(ui3);
                            long j3 = 4;
                            long size = j3 + j3 + 4 + (arrayList2.size() * 16);
                            L1.g0(byteArrayOutputStream, arrayList2.size(), 4);
                            int i13 = 0;
                            while (i13 < arrayList2.size()) {
                                Ui ui4 = (Ui) arrayList2.get(i13);
                                int i14 = ui4.a;
                                if (i14 != 1) {
                                    if (i14 != 2) {
                                        if (i14 != 3) {
                                            if (i14 != 4) {
                                                if (i14 == 5) {
                                                    j2 = 4;
                                                } else {
                                                    throw null;
                                                }
                                            } else {
                                                j2 = 3;
                                            }
                                        } else {
                                            j2 = 2;
                                        }
                                    } else {
                                        j2 = 1;
                                    }
                                } else {
                                    j2 = 0;
                                }
                                L1.g0(byteArrayOutputStream, j2, 4);
                                L1.g0(byteArrayOutputStream, size, 4);
                                byte[] bArr3 = ui4.b;
                                if (ui4.c) {
                                    long length5 = bArr3.length;
                                    byte[] l2 = L1.l(bArr3);
                                    arrayList = arrayList5;
                                    arrayList.add(l2);
                                    L1.g0(byteArrayOutputStream, l2.length, 4);
                                    L1.g0(byteArrayOutputStream, length5, 4);
                                    length = l2.length;
                                } else {
                                    arrayList = arrayList5;
                                    arrayList.add(bArr3);
                                    L1.g0(byteArrayOutputStream, bArr3.length, 4);
                                    L1.g0(byteArrayOutputStream, 0L, 4);
                                    length = bArr3.length;
                                }
                                size += length;
                                i13++;
                                arrayList5 = arrayList;
                            }
                            ArrayList arrayList6 = arrayList5;
                            for (int i15 = 0; i15 < arrayList6.size(); i15++) {
                                byteArrayOutputStream.write((byte[]) arrayList6.get(i15));
                            }
                            return true;
                        }
                        throw new IllegalStateException("Expected size " + i10 + ", does not match actual size " + byteArray5.length);
                    }
                    throw new IllegalStateException("Expected size " + i6 + ", does not match actual size " + byteArray2.length);
                }
                throw new IllegalStateException("Expected size " + i4 + ", does not match actual size " + byteArray.length);
            } catch (Throwable th3) {
                try {
                    byteArrayOutputStream2.close();
                    throw th3;
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                    throw th3;
                }
            }
        }
        byte[] bArr4 = D;
        if (Arrays.equals(bArr, bArr4)) {
            byte[] u2 = u(t5Arr, bArr4);
            L1.g0(byteArrayOutputStream, t5Arr.length, 1);
            L1.g0(byteArrayOutputStream, u2.length, 4);
            byte[] l3 = L1.l(u2);
            L1.g0(byteArrayOutputStream, l3.length, 4);
            byteArrayOutputStream.write(l3);
            return true;
        }
        byte[] bArr5 = F;
        if (Arrays.equals(bArr, bArr5)) {
            L1.g0(byteArrayOutputStream, t5Arr.length, 1);
            for (T5 t54 : t5Arr) {
                int size2 = t54.i.size() * 4;
                String x3 = x(t54.a, t54.b, bArr5);
                Charset charset2 = StandardCharsets.UTF_8;
                L1.h0(byteArrayOutputStream, x3.getBytes(charset2).length);
                L1.h0(byteArrayOutputStream, t54.h.length);
                L1.g0(byteArrayOutputStream, size2, 4);
                L1.g0(byteArrayOutputStream, t54.c, 4);
                byteArrayOutputStream.write(x3.getBytes(charset2));
                Iterator it2 = t54.i.keySet().iterator();
                while (it2.hasNext()) {
                    L1.h0(byteArrayOutputStream, ((Integer) it2.next()).intValue());
                    L1.h0(byteArrayOutputStream, 0);
                }
                for (int i16 : t54.h) {
                    L1.h0(byteArrayOutputStream, i16);
                }
            }
            return true;
        }
        byte[] bArr6 = E;
        if (Arrays.equals(bArr, bArr6)) {
            byte[] u3 = u(t5Arr, bArr6);
            L1.g0(byteArrayOutputStream, t5Arr.length, 1);
            L1.g0(byteArrayOutputStream, u3.length, 4);
            byte[] l4 = L1.l(u3);
            L1.g0(byteArrayOutputStream, l4.length, 4);
            byteArrayOutputStream.write(l4);
            return true;
        }
        byte[] bArr7 = G;
        if (Arrays.equals(bArr, bArr7)) {
            L1.h0(byteArrayOutputStream, t5Arr.length);
            for (T5 t55 : t5Arr) {
                String x4 = x(t55.a, t55.b, bArr7);
                Charset charset3 = StandardCharsets.UTF_8;
                L1.h0(byteArrayOutputStream, x4.getBytes(charset3).length);
                TreeMap treeMap = t55.i;
                L1.h0(byteArrayOutputStream, treeMap.size());
                L1.h0(byteArrayOutputStream, t55.h.length);
                L1.g0(byteArrayOutputStream, t55.c, 4);
                byteArrayOutputStream.write(x4.getBytes(charset3));
                Iterator it3 = treeMap.keySet().iterator();
                while (it3.hasNext()) {
                    L1.h0(byteArrayOutputStream, ((Integer) it3.next()).intValue());
                }
                for (int i17 : t55.h) {
                    L1.h0(byteArrayOutputStream, i17);
                }
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r10v14, types: [java.lang.Object, o.c3] */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.lang.Object, o.c3] */
    /* JADX WARN: Type inference failed for: r15v2, types: [java.lang.Object, o.c3] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object, o.c3] */
    public static void i0(int i2, C4 c4, L4 l4) {
        C0482x4 c0482x4;
        boolean z2;
        C0482x4 c0482x42;
        C0482x4 c0482x43;
        boolean z3;
        C0482x4 c0482x44;
        C0482x4 c0482x45;
        if (l4.n) {
            return;
        }
        if (!(l4 instanceof M4) && l4.z() && f(l4)) {
            M4.V(l4, c4, new Object());
        }
        C0482x4 i3 = l4.i(3);
        C0482x4 i4 = l4.i(5);
        int d2 = i3.d();
        int d3 = i4.d();
        HashSet hashSet = i3.a;
        if (hashSet != null && i3.c) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                C0482x4 c0482x46 = (C0482x4) it.next();
                L4 l42 = c0482x46.d;
                int i5 = i2 + 1;
                boolean f2 = f(l42);
                if (l42.z() && f2) {
                    M4.V(l42, c4, new Object());
                }
                C0482x4 c0482x47 = l42.J;
                C0482x4 c0482x48 = l42.L;
                if ((c0482x46 == c0482x47 && (c0482x45 = c0482x48.f293f) != null && c0482x45.c) || (c0482x46 == c0482x48 && (c0482x44 = c0482x47.f293f) != null && c0482x44.c)) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                int i6 = l42.p0[1];
                if (i6 == 3 && !f2) {
                    if (i6 == 3 && l42.y >= 0 && l42.x >= 0 && (l42.g0 == 8 || (l42.s == 0 && l42.W == 0.0f))) {
                        if (!l42.y() && !l42.F && z3 && !l42.y()) {
                            d0(i5, l4, c4, l42);
                        }
                    }
                } else if (!l42.z()) {
                    if (c0482x46 == c0482x47 && c0482x48.f293f == null) {
                        int e2 = c0482x47.e() + d2;
                        l42.K(e2, l42.k() + e2);
                        i0(i5, c4, l42);
                    } else if (c0482x46 == c0482x48 && c0482x47.f293f == null) {
                        int e3 = d2 - c0482x48.e();
                        l42.K(e3 - l42.k(), e3);
                        i0(i5, c4, l42);
                    } else if (z3 && !l42.y()) {
                        c0(i5, c4, l42);
                    }
                }
            }
        }
        if (l4 instanceof X8) {
            return;
        }
        HashSet hashSet2 = i4.a;
        if (hashSet2 != null && i4.c) {
            Iterator it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                C0482x4 c0482x49 = (C0482x4) it2.next();
                L4 l43 = c0482x49.d;
                int i7 = i2 + 1;
                boolean f3 = f(l43);
                if (l43.z() && f3) {
                    M4.V(l43, c4, new Object());
                }
                C0482x4 c0482x410 = l43.J;
                C0482x4 c0482x411 = l43.L;
                if ((c0482x49 == c0482x410 && (c0482x43 = c0482x411.f293f) != null && c0482x43.c) || (c0482x49 == c0482x411 && (c0482x42 = c0482x410.f293f) != null && c0482x42.c)) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                int i8 = l43.p0[1];
                if (i8 == 3 && !f3) {
                    if (i8 == 3 && l43.y >= 0 && l43.x >= 0) {
                        if (l43.g0 != 8) {
                            if (l43.s == 0) {
                                if (l43.W == 0.0f) {
                                }
                            }
                        }
                        if (!l43.y() && !l43.F && z2 && !l43.y()) {
                            d0(i7, l4, c4, l43);
                        }
                    }
                } else if (!l43.z()) {
                    if (c0482x49 == c0482x410 && c0482x411.f293f == null) {
                        int e4 = c0482x410.e() + d3;
                        l43.K(e4, l43.k() + e4);
                        i0(i7, c4, l43);
                    } else if (c0482x49 == c0482x411 && c0482x410.f293f == null) {
                        int e5 = d3 - c0482x411.e();
                        l43.K(e5 - l43.k(), e5);
                        i0(i7, c4, l43);
                    } else if (z2 && !l43.y()) {
                        c0(i7, c4, l43);
                    }
                }
            }
        }
        C0482x4 i9 = l4.i(6);
        if (i9.a != null && i9.c) {
            int d4 = i9.d();
            Iterator it3 = i9.a.iterator();
            while (it3.hasNext()) {
                C0482x4 c0482x412 = (C0482x4) it3.next();
                L4 l44 = c0482x412.d;
                int i10 = i2 + 1;
                boolean f4 = f(l44);
                if (l44.z() && f4) {
                    M4.V(l44, c4, new Object());
                }
                if (l44.p0[1] != 3 || f4) {
                    if (!l44.z() && c0482x412 == (c0482x4 = l44.M)) {
                        int e6 = c0482x412.e() + d4;
                        if (l44.E) {
                            int i11 = e6 - l44.a0;
                            int i12 = l44.V + i11;
                            l44.Z = i11;
                            l44.J.l(i11);
                            l44.L.l(i12);
                            c0482x4.l(e6);
                            l44.l = true;
                        }
                        i0(i10, c4, l44);
                    }
                }
            }
        }
        l4.n = true;
    }

    public static void j(Context context, AttributeSet attributeSet, int i2, int i3) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0133fd.D, i2, i3);
        boolean z2 = obtainStyledAttributes.getBoolean(1, false);
        obtainStyledAttributes.recycle();
        if (z2) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(2130903630, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                r(context, R, "Theme.MaterialComponents");
            }
        }
        r(context, Q, "Theme.AppCompat");
    }

    public static Context j0(Context context, AttributeSet attributeSet, int i2, int i3) {
        boolean z2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, x, i2, i3);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        if ((context instanceof V4) && ((V4) context).a == resourceId) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (resourceId != 0 && !z2) {
            V4 v4 = new V4(context, resourceId);
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, w);
            int resourceId2 = obtainStyledAttributes2.getResourceId(0, 0);
            int resourceId3 = obtainStyledAttributes2.getResourceId(1, 0);
            obtainStyledAttributes2.recycle();
            if (resourceId2 == 0) {
                resourceId2 = resourceId3;
            }
            if (resourceId2 != 0) {
                v4.getTheme().applyStyle(resourceId2, true);
            }
            return v4;
        }
        return context;
    }

    public static void k(M4 m4, C0050ba c0050ba, L4 l4) {
        l4.f119o = -1;
        l4.p = -1;
        int i2 = m4.p0[0];
        int[] iArr = l4.p0;
        if (i2 != 2 && iArr[0] == 4) {
            C0482x4 c0482x4 = l4.I;
            int i3 = c0482x4.g;
            int q2 = m4.q();
            C0482x4 c0482x42 = l4.K;
            int i4 = q2 - c0482x42.g;
            c0482x4.i = c0050ba.k(c0482x4);
            c0482x42.i = c0050ba.k(c0482x42);
            c0050ba.d(c0482x4.i, i3);
            c0050ba.d(c0482x42.i, i4);
            l4.f119o = 2;
            l4.Y = i3;
            int i5 = i4 - i3;
            l4.U = i5;
            int i6 = l4.b0;
            if (i5 < i6) {
                l4.U = i6;
            }
        }
        if (m4.p0[1] != 2 && iArr[1] == 4) {
            C0482x4 c0482x43 = l4.J;
            int i7 = c0482x43.g;
            int k2 = m4.k();
            C0482x4 c0482x44 = l4.L;
            int i8 = k2 - c0482x44.g;
            c0482x43.i = c0050ba.k(c0482x43);
            c0482x44.i = c0050ba.k(c0482x44);
            c0050ba.d(c0482x43.i, i7);
            c0050ba.d(c0482x44.i, i8);
            if (l4.a0 > 0 || l4.g0 == 8) {
                C0482x4 c0482x45 = l4.M;
                We k3 = c0050ba.k(c0482x45);
                c0482x45.i = k3;
                c0050ba.d(k3, l4.a0 + i7);
            }
            l4.p = 2;
            l4.Z = i7;
            int i9 = i8 - i7;
            l4.V = i9;
            int i10 = l4.c0;
            if (i9 < i10) {
                l4.V = i10;
            }
        }
    }

    public static void k0(ByteArrayOutputStream byteArrayOutputStream, T5 t5) {
        n0(byteArrayOutputStream, t5);
        int[] iArr = t5.h;
        int length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = iArr[i2];
            L1.h0(byteArrayOutputStream, i4 - i3);
            i2++;
            i3 = i4;
        }
        int i5 = t5.g;
        byte[] bArr = new byte[(((i5 * 2) + 7) & (-8)) / 8];
        for (Map.Entry entry : t5.i.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            int intValue2 = ((Integer) entry.getValue()).intValue();
            if ((intValue2 & 2) != 0) {
                int i6 = intValue / 8;
                bArr[i6] = (byte) (bArr[i6] | (1 << (intValue % 8)));
            }
            if ((intValue2 & 4) != 0) {
                int i7 = intValue + i5;
                int i8 = i7 / 8;
                bArr[i8] = (byte) ((1 << (i7 % 8)) | bArr[i8]);
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void l(Object obj) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException();
        V(nullPointerException);
        throw nullPointerException;
    }

    public static void l0(ByteArrayOutputStream byteArrayOutputStream, T5 t5, String str) {
        Charset charset = StandardCharsets.UTF_8;
        L1.h0(byteArrayOutputStream, str.getBytes(charset).length);
        L1.h0(byteArrayOutputStream, t5.e);
        L1.g0(byteArrayOutputStream, t5.f145f, 4);
        L1.g0(byteArrayOutputStream, t5.c, 4);
        L1.g0(byteArrayOutputStream, t5.g, 4);
        byteArrayOutputStream.write(str.getBytes(charset));
    }

    public static void m(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(str);
        V(nullPointerException);
        throw nullPointerException;
    }

    public static void m0(ByteArrayOutputStream byteArrayOutputStream, int i2, T5 t5) {
        int bitCount = Integer.bitCount(i2 & (-2));
        int i3 = t5.g;
        byte[] bArr = new byte[(((bitCount * i3) + 7) & (-8)) / 8];
        for (Map.Entry entry : t5.i.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            int intValue2 = ((Integer) entry.getValue()).intValue();
            int i4 = 0;
            for (int i5 = 1; i5 <= 4; i5 <<= 1) {
                if (i5 != 1 && (i5 & i2) != 0) {
                    if ((i5 & intValue2) == i5) {
                        int i6 = (i4 * i3) + intValue;
                        int i7 = i6 / 8;
                        bArr[i7] = (byte) ((1 << (i6 % 8)) | bArr[i7]);
                    }
                    i4++;
                }
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void n(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(str.concat(" must not be null"));
        V(nullPointerException);
        throw nullPointerException;
    }

    public static void n0(ByteArrayOutputStream byteArrayOutputStream, T5 t5) {
        int i2 = 0;
        for (Map.Entry entry : t5.i.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                L1.h0(byteArrayOutputStream, intValue - i2);
                L1.h0(byteArrayOutputStream, 0);
                i2 = intValue;
            }
        }
    }

    public static void o(Object obj, String str) {
        if (obj == null) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            String name = AbstractC0487x9.class.getName();
            int i2 = 0;
            while (!stackTrace[i2].getClassName().equals(name)) {
                i2++;
            }
            while (stackTrace[i2].getClassName().equals(name)) {
                i2++;
            }
            StackTraceElement stackTraceElement = stackTrace[i2];
            NullPointerException nullPointerException = new NullPointerException("Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ", parameter " + str);
            V(nullPointerException);
            throw nullPointerException;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x01cb, code lost:
    
        if (r7 == null) goto L132;
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0180 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x010b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x02f8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01e0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r8v0, types: [o.Vc] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void o0(android.content.Context r18, java.util.concurrent.Executor r19, o.Vc r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 780
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.AbstractC0487x9.o0(android.content.Context, java.util.concurrent.Executor, o.Vc, boolean):void");
    }

    public static void p(int i2, int i3, int i4) {
        if (i2 >= 0 && i3 <= i4) {
            if (i2 <= i3) {
                return;
            }
            throw new IllegalArgumentException("fromIndex: " + i2 + " > toIndex: " + i3);
        }
        throw new IndexOutOfBoundsException("fromIndex: " + i2 + ", toIndex: " + i3 + ", size: " + i4);
    }

    public static float p0() {
        return ((float) Math.pow((50.0f + 16.0d) / 116.0d, 3.0d)) * 100.0f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
    
        if (r0.getResourceId(0, -1) != (-1)) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void q(android.content.Context r5, android.util.AttributeSet r6, int[] r7, int r8, int r9, int... r10) {
        /*
            int[] r0 = o.AbstractC0133fd.D
            android.content.res.TypedArray r0 = r5.obtainStyledAttributes(r6, r0, r8, r9)
            r1 = 2
            r2 = 0
            boolean r1 = r0.getBoolean(r1, r2)
            if (r1 != 0) goto L12
            r0.recycle()
            return
        L12:
            int r1 = r10.length
            r3 = 1
            r4 = -1
            if (r1 != 0) goto L1f
            int r5 = r0.getResourceId(r2, r4)
            if (r5 == r4) goto L3a
        L1d:
            r2 = r3
            goto L3a
        L1f:
            android.content.res.TypedArray r5 = r5.obtainStyledAttributes(r6, r7, r8, r9)
            int r6 = r10.length
            r7 = r2
        L25:
            if (r7 >= r6) goto L36
            r8 = r10[r7]
            int r8 = r5.getResourceId(r8, r4)
            if (r8 != r4) goto L33
            r5.recycle()
            goto L3a
        L33:
            int r7 = r7 + 1
            goto L25
        L36:
            r5.recycle()
            goto L1d
        L3a:
            r0.recycle()
            if (r2 == 0) goto L40
            return
        L40:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: o.AbstractC0487x9.q(android.content.Context, android.util.AttributeSet, int[], int, int, int[]):void");
    }

    public static void r(Context context, int[] iArr, String str) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (!obtainStyledAttributes.hasValue(i2)) {
                obtainStyledAttributes.recycle();
                throw new IllegalArgumentException(AbstractC0304o5.h("The style on this component requires your app theme to be ", str, " (or a descendant)."));
            }
        }
        obtainStyledAttributes.recycle();
    }

    public static void s(Context context, int i2) {
        o(context, "ctx");
        B0 d2 = B0.c.d(context);
        try {
            d2.connect("127.0.0.1", i2);
        } catch (Exception e2) {
            if (d2.isConnected()) {
                int i3 = AbstractC0408ta.a;
                AbstractC0408ta.a("ADB connect after ".concat(e2.getClass().getSimpleName()));
            } else {
                throw e2;
            }
        }
        T = true;
        E(context, i2);
    }

    public static boolean t(Context context, int i2, long j2) {
        o(context, "ctx");
        if (D()) {
            T = true;
            return true;
        }
        if (j2 > 0) {
            Thread.sleep(j2);
        }
        if (i2 <= 0) {
            i2 = B(context);
        }
        if (1 <= i2 && i2 < 65536) {
            try {
                s(context, i2);
                return true;
            } catch (Exception e2) {
                if (a(context, i2)) {
                    return true;
                }
                int i3 = AbstractC0408ta.a;
                AbstractC0408ta.a("ADB connect :" + i2 + " " + e2.getClass().getSimpleName() + " " + e2.getMessage());
            }
        }
        try {
            c(context);
            return true;
        } catch (Exception e3) {
            if (a(context, i2)) {
                return true;
            }
            int i4 = AbstractC0408ta.a;
            AbstractC0408ta.a("ADB auto " + e3.getClass().getSimpleName() + " " + e3.getMessage());
            return false;
        }
    }

    public static byte[] u(T5[] t5Arr, byte[] bArr) {
        int i2 = 0;
        int i3 = 0;
        for (T5 t5 : t5Arr) {
            i3 += ((((t5.g * 2) + 7) & (-8)) / 8) + (t5.e * 2) + x(t5.a, t5.b, bArr).getBytes(StandardCharsets.UTF_8).length + 16 + t5.f145f;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i3);
        if (Arrays.equals(bArr, E)) {
            int length = t5Arr.length;
            while (i2 < length) {
                T5 t52 = t5Arr[i2];
                l0(byteArrayOutputStream, t52, x(t52.a, t52.b, bArr));
                k0(byteArrayOutputStream, t52);
                i2++;
            }
        } else {
            for (T5 t53 : t5Arr) {
                l0(byteArrayOutputStream, t53, x(t53.a, t53.b, bArr));
            }
            int length2 = t5Arr.length;
            while (i2 < length2) {
                k0(byteArrayOutputStream, t5Arr[i2]);
                i2++;
            }
        }
        if (byteArrayOutputStream.size() == i3) {
            return byteArrayOutputStream.toByteArray();
        }
        throw new IllegalStateException("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + i3);
    }

    public static final void v(InterfaceC0412te interfaceC0412te) {
        InterfaceC0392se interfaceC0392se;
        M9 m9 = interfaceC0412te.e().c;
        if (m9 != M9.b && m9 != M9.c) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        C0041b1 b2 = interfaceC0412te.b();
        b2.getClass();
        Iterator it = ((C0273me) b2.f181f).iterator();
        while (true) {
            C0194ie c0194ie = (C0194ie) it;
            if (c0194ie.hasNext()) {
                Map.Entry entry = (Map.Entry) c0194ie.next();
                n(entry, "components");
                String str = (String) entry.getKey();
                interfaceC0392se = (InterfaceC0392se) entry.getValue();
                if (b(str, "androidx.lifecycle.internal.SavedStateHandlesProvider")) {
                    break;
                }
            } else {
                interfaceC0392se = null;
                break;
            }
        }
        if (interfaceC0392se == null) {
            C0313oe c0313oe = new C0313oe(interfaceC0412te.b(), (Mh) interfaceC0412te);
            interfaceC0412te.b().e("androidx.lifecycle.internal.SavedStateHandlesProvider", c0313oe);
            interfaceC0412te.e().a(new SavedStateHandleAttacher(c0313oe));
        }
    }

    public static final boolean w(int i2, int i3) {
        if ((i2 & i3) == i3) {
            return true;
        }
        return false;
    }

    public static String x(String str, String str2, byte[] bArr) {
        Object obj;
        byte[] bArr2 = G;
        boolean equals = Arrays.equals(bArr, bArr2);
        byte[] bArr3 = F;
        String str3 = "!";
        if (!equals && !Arrays.equals(bArr, bArr3)) {
            obj = "!";
        } else {
            obj = ":";
        }
        if (str.length() <= 0) {
            if ("!".equals(obj)) {
                return str2.replace(":", "!");
            }
            if (":".equals(obj)) {
                return str2.replace("!", ":");
            }
            return str2;
        }
        if (str2.equals("classes.dex")) {
            return str;
        }
        if (!str2.contains("!") && !str2.contains(":")) {
            if (str2.endsWith(".apk")) {
                return str2;
            }
            StringBuilder o2 = Ve.o(str);
            if (Arrays.equals(bArr, bArr2) || Arrays.equals(bArr, bArr3)) {
                str3 = ":";
            }
            return Ve.k(o2, str3, str2);
        }
        if ("!".equals(obj)) {
            return str2.replace(":", "!");
        }
        if (":".equals(obj)) {
            return str2.replace("!", ":");
        }
        return str2;
    }

    public static ArrayList y(MaterialToolbar materialToolbar, CharSequence charSequence) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < materialToolbar.getChildCount(); i2++) {
            View childAt = materialToolbar.getChildAt(i2);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (TextUtils.equals(textView.getText(), charSequence)) {
                    arrayList.add(textView);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Type inference failed for: r3v11, types: [java.lang.Object, o.c3] */
    /* JADX WARN: Type inference failed for: r8v8, types: [java.lang.Object, o.c3] */
    /* JADX WARN: Type inference failed for: r9v7, types: [java.lang.Object, o.c3] */
    public static void z(int i2, C4 c4, L4 l4, boolean z2) {
        boolean z3;
        C0482x4 c0482x4;
        C0482x4 c0482x42;
        char c2;
        C0482x4 c0482x43;
        C0482x4 c0482x44;
        if (l4.m) {
            return;
        }
        if (!(l4 instanceof M4) && l4.z() && f(l4)) {
            M4.V(l4, c4, new Object());
        }
        C0482x4 i3 = l4.i(2);
        C0482x4 i4 = l4.i(4);
        int d2 = i3.d();
        int d3 = i4.d();
        HashSet hashSet = i3.a;
        char c3 = 0;
        if (hashSet != null && i3.c) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                C0482x4 c0482x45 = (C0482x4) it.next();
                L4 l42 = c0482x45.d;
                int i5 = i2 + 1;
                boolean f2 = f(l42);
                if (l42.z() && f2) {
                    M4.V(l42, c4, new Object());
                }
                C0482x4 c0482x46 = l42.I;
                C0482x4 c0482x47 = l42.K;
                if ((c0482x45 == c0482x46 && (c0482x44 = c0482x47.f293f) != null && c0482x44.c) || (c0482x45 == c0482x47 && (c0482x43 = c0482x46.f293f) != null && c0482x43.c)) {
                    c2 = 1;
                } else {
                    c2 = c3;
                }
                int i6 = l42.p0[c3];
                if (i6 == 3 && !f2) {
                    if (i6 == 3 && l42.v >= 0 && l42.u >= 0 && ((l42.g0 == 8 || (l42.r == 0 && l42.W == 0.0f)) && !l42.x() && !l42.F && c2 != 0 && !l42.x())) {
                        b0(i5, l4, c4, l42, z2);
                    }
                } else if (!l42.z()) {
                    if (c0482x45 == c0482x46 && c0482x47.f293f == null) {
                        int e2 = c0482x46.e() + d2;
                        l42.J(e2, l42.q() + e2);
                        z(i5, c4, l42, z2);
                    } else if (c0482x45 == c0482x47 && c0482x46.f293f == null) {
                        int e3 = d2 - c0482x47.e();
                        l42.J(e3 - l42.q(), e3);
                        z(i5, c4, l42, z2);
                    } else if (c2 != 0 && !l42.x()) {
                        a0(i5, c4, l42, z2);
                    }
                }
                c3 = 0;
            }
        }
        if (l4 instanceof X8) {
            return;
        }
        HashSet hashSet2 = i4.a;
        if (hashSet2 != null && i4.c) {
            Iterator it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                C0482x4 c0482x48 = (C0482x4) it2.next();
                L4 l43 = c0482x48.d;
                int i7 = i2 + 1;
                boolean f3 = f(l43);
                if (l43.z() && f3) {
                    M4.V(l43, c4, new Object());
                }
                C0482x4 c0482x49 = l43.I;
                C0482x4 c0482x410 = l43.K;
                if ((c0482x48 == c0482x49 && (c0482x42 = c0482x410.f293f) != null && c0482x42.c) || (c0482x48 == c0482x410 && (c0482x4 = c0482x49.f293f) != null && c0482x4.c)) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                int i8 = l43.p0[0];
                if (i8 == 3 && !f3) {
                    if (i8 == 3 && l43.v >= 0 && l43.u >= 0) {
                        if (l43.g0 != 8) {
                            if (l43.r == 0) {
                                if (l43.W == 0.0f) {
                                }
                            }
                        }
                        if (!l43.x() && !l43.F && z3 && !l43.x()) {
                            b0(i7, l4, c4, l43, z2);
                        }
                    }
                } else if (!l43.z()) {
                    if (c0482x48 == c0482x49 && c0482x410.f293f == null) {
                        int e4 = c0482x49.e() + d3;
                        l43.J(e4, l43.q() + e4);
                        z(i7, c4, l43, z2);
                    } else if (c0482x48 == c0482x410 && c0482x49.f293f == null) {
                        int e5 = d3 - c0482x410.e();
                        l43.J(e5 - l43.q(), e5);
                        z(i7, c4, l43, z2);
                    } else if (z3 && !l43.x()) {
                        a0(i7, c4, l43, z2);
                    }
                }
            }
        }
        l4.m = true;
    }

    public abstract Object K(int i2, Intent intent);

    public abstract void M(C0278n c0278n, C0278n c0278n2);

    public abstract void N(C0278n c0278n, Thread thread);

    public abstract boolean g(AbstractFutureC0298o abstractFutureC0298o, C0218k c0218k);

    public abstract boolean h(AbstractFutureC0298o abstractFutureC0298o, Object obj, Object obj2);

    public abstract boolean i(AbstractFutureC0298o abstractFutureC0298o, C0278n c0278n, C0278n c0278n2);
}
