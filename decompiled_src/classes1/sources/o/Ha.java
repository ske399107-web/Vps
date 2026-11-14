package o;

import android.animation.TimeInterpolator;
import android.app.Activity;
import android.app.AppOpsManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.icu.text.DecimalFormatSymbols;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StrictMode;
import android.os.Trace;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.crypto.hpke.HPKE;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Ha {
    public static Field a;
    public static boolean b;
    public static Class c;
    public static boolean d;
    public static Field e;

    /* renamed from: f, reason: collision with root package name */
    public static boolean f101f;
    public static Field g;
    public static boolean h;
    public static long i;
    public static Method j;

    public Ha() {
        new ConcurrentHashMap();
    }

    public static void A(int[] iArr, byte[] bArr, byte[] bArr2) {
        int z0 = z0(bArr, 0);
        int z02 = z0(bArr, 4);
        int i2 = -478700656;
        for (int i3 = 0; i3 < 16; i3++) {
            z02 -= (((z0 << 4) + iArr[2]) ^ (z0 + i2)) ^ ((z0 >>> 5) + iArr[3]);
            z0 -= (((z02 << 4) + iArr[0]) ^ (z02 + i2)) ^ ((z02 >>> 5) + iArr[1]);
            i2 -= -1640531527;
        }
        k0(bArr2, 0, z0);
        k0(bArr2, 4, z02);
    }

    public static ActionMode.Callback A0(ActionMode.Callback callback) {
        if ((callback instanceof Qf) && Build.VERSION.SDK_INT >= 26) {
            return ((Qf) callback).a;
        }
        return callback;
    }

    public static Ec[] B(Ec[] ecArr) {
        Ec[] ecArr2 = new Ec[ecArr.length];
        for (int i2 = 0; i2 < ecArr.length; i2++) {
            ecArr2[i2] = new Ec(ecArr[i2]);
        }
        return ecArr2;
    }

    public static ActionMode.Callback C0(ActionMode.Callback callback, TextView textView) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26 && i2 <= 27 && !(callback instanceof Qf) && callback != null) {
            return new Qf(callback, textView);
        }
        return callback;
    }

    public static int D(Context context, int i2, int i3) {
        Integer num;
        int i4;
        TypedValue m0 = m0(context, i2);
        if (m0 != null) {
            int i5 = m0.resourceId;
            if (i5 != 0) {
                i4 = context.getColor(i5);
            } else {
                i4 = m0.data;
            }
            num = Integer.valueOf(i4);
        } else {
            num = null;
        }
        if (num != null) {
            return num.intValue();
        }
        return i3;
    }

    public static int E(View view, int i2) {
        Context context = view.getContext();
        TypedValue q0 = q0(view.getContext(), i2, view.getClass().getCanonicalName());
        int i3 = q0.resourceId;
        if (i3 != 0) {
            return context.getColor(i3);
        }
        return q0.data;
    }

    public static ColorStateList F(Context context, TypedArray typedArray, int i2) {
        int resourceId;
        ColorStateList v;
        if (typedArray.hasValue(i2) && (resourceId = typedArray.getResourceId(i2, 0)) != 0 && (v = L1.v(context, resourceId)) != null) {
            return v;
        }
        return typedArray.getColorStateList(i2);
    }

    public static ColorStateList G(Context context, C0380s2 c0380s2, int i2) {
        int resourceId;
        ColorStateList v;
        TypedArray typedArray = (TypedArray) c0380s2.b;
        if (typedArray.hasValue(i2) && (resourceId = typedArray.getResourceId(i2, 0)) != 0 && (v = L1.v(context, resourceId)) != null) {
            return v;
        }
        return c0380s2.n(i2);
    }

    public static Drawable H(Context context, TypedArray typedArray, int i2) {
        int resourceId;
        Drawable z;
        if (typedArray.hasValue(i2) && (resourceId = typedArray.getResourceId(i2, 0)) != 0 && (z = L1.z(context, resourceId)) != null) {
            return z;
        }
        return typedArray.getDrawable(i2);
    }

    public static float K(int i2, String[] strArr) {
        float parseFloat = Float.parseFloat(strArr[i2]);
        if (parseFloat >= 0.0f && parseFloat <= 1.0f) {
            return parseFloat;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + parseFloat);
    }

    public static D1 N(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i2) {
        D1 d1;
        if (W(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i2, typedValue);
            int i3 = typedValue.type;
            if (i3 >= 28 && i3 <= 31) {
                return new D1(null, null, typedValue.data);
            }
            try {
                d1 = D1.b(typedArray.getResources(), typedArray.getResourceId(i2, 0), theme);
            } catch (Exception e2) {
                Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e2);
                d1 = null;
            }
            if (d1 != null) {
                return d1;
            }
        }
        return new D1(null, null, 0);
    }

    public static Intent P(U0 u0) {
        Intent parentActivityIntent = u0.getParentActivityIntent();
        if (parentActivityIntent != null) {
            return parentActivityIntent;
        }
        try {
            String R = R(u0, u0.getComponentName());
            if (R == null) {
                return null;
            }
            ComponentName componentName = new ComponentName(u0, R);
            try {
                if (R(u0, componentName) == null) {
                    return Intent.makeMainActivity(componentName);
                }
                return new Intent().setComponent(componentName);
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + R + "' in manifest");
                return null;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static Intent Q(U0 u0, ComponentName componentName) {
        String R = R(u0, componentName);
        if (R == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), R);
        if (R(u0, componentName2) == null) {
            return Intent.makeMainActivity(componentName2);
        }
        return new Intent().setComponent(componentName2);
    }

    public static String R(Activity activity, ComponentName componentName) {
        int i2;
        String string;
        PackageManager packageManager = activity.getPackageManager();
        if (Build.VERSION.SDK_INT >= 29) {
            i2 = 269222528;
        } else {
            i2 = 787072;
        }
        ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, i2);
        String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        Bundle bundle = activityInfo.metaData;
        if (bundle == null || (string = bundle.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        if (string.charAt(0) == '.') {
            return activity.getPackageName() + string;
        }
        return string;
    }

    public static File U(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i2 = 0; i2 < 100; i2++) {
            File file = new File(cacheDir, str + i2);
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    public static Oc V(C0201j2 c0201j2) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            return new Oc(AbstractC0046b6.i(c0201j2));
        }
        TextPaint textPaint = new TextPaint(c0201j2.getPaint());
        TextDirectionHeuristic textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
        int breakStrategy = c0201j2.getBreakStrategy();
        int hyphenationFrequency = c0201j2.getHyphenationFrequency();
        if (c0201j2.getTransformationMethod() instanceof PasswordTransformationMethod) {
            textDirectionHeuristic = TextDirectionHeuristics.LTR;
        } else {
            boolean z = true;
            if (i2 >= 28 && (c0201j2.getInputType() & 15) == 3) {
                byte directionality = Character.getDirectionality(AbstractC0046b6.a(DecimalFormatSymbols.getInstance(c0201j2.getTextLocale()))[0].codePointAt(0));
                textDirectionHeuristic = (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            } else {
                if (c0201j2.getLayoutDirection() != 1) {
                    z = false;
                }
                switch (c0201j2.getTextDirection()) {
                    case 2:
                        textDirectionHeuristic = TextDirectionHeuristics.ANYRTL_LTR;
                        break;
                    case 3:
                        textDirectionHeuristic = TextDirectionHeuristics.LTR;
                        break;
                    case 4:
                        textDirectionHeuristic = TextDirectionHeuristics.RTL;
                        break;
                    case 5:
                        textDirectionHeuristic = TextDirectionHeuristics.LOCALE;
                        break;
                    case 6:
                        break;
                    case 7:
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                        break;
                    default:
                        if (z) {
                            textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                            break;
                        }
                        break;
                }
            }
        }
        return new Oc(textPaint, textDirectionHeuristic, breakStrategy, hyphenationFrequency);
    }

    public static boolean W(XmlPullParser xmlPullParser, String str) {
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null) {
            return true;
        }
        return false;
    }

    public static boolean X(int i2) {
        boolean z;
        double pow;
        double pow2;
        double pow3;
        if (i2 != 0) {
            ThreadLocal threadLocal = AbstractC0263m4.a;
            double[] dArr = (double[]) threadLocal.get();
            if (dArr == null) {
                dArr = new double[3];
                threadLocal.set(dArr);
            }
            int red = Color.red(i2);
            int green = Color.green(i2);
            int blue = Color.blue(i2);
            if (dArr.length == 3) {
                double d2 = red / 255.0d;
                if (d2 < 0.04045d) {
                    pow = d2 / 12.92d;
                } else {
                    pow = Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
                }
                double d3 = green / 255.0d;
                if (d3 < 0.04045d) {
                    pow2 = d3 / 12.92d;
                } else {
                    pow2 = Math.pow((d3 + 0.055d) / 1.055d, 2.4d);
                }
                double d4 = blue / 255.0d;
                if (d4 < 0.04045d) {
                    pow3 = d4 / 12.92d;
                } else {
                    pow3 = Math.pow((d4 + 0.055d) / 1.055d, 2.4d);
                }
                z = false;
                dArr[0] = ((0.1805d * pow3) + (0.3576d * pow2) + (0.4124d * pow)) * 100.0d;
                double d5 = ((0.0722d * pow3) + (0.7152d * pow2) + (0.2126d * pow)) * 100.0d;
                dArr[1] = d5;
                dArr[2] = ((pow3 * 0.9505d) + (pow2 * 0.1192d) + (pow * 0.0193d)) * 100.0d;
                if (d5 / 100.0d > 0.5d) {
                    return true;
                }
            } else {
                throw new IllegalArgumentException("outXyz must have a length of 3.");
            }
        } else {
            z = false;
        }
        return z;
    }

    public static boolean Y() {
        if (Build.VERSION.SDK_INT >= 29) {
            return AbstractC0315og.a();
        }
        try {
            if (j == null) {
                i = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                j = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) j.invoke(null, Long.valueOf(i))).booleanValue();
        } catch (Exception e2) {
            if (e2 instanceof InvocationTargetException) {
                Throwable cause = e2.getCause();
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                throw new RuntimeException(cause);
            }
            Log.v("Trace", "Unable to call isTagEnabled via reflection", e2);
            return false;
        }
    }

    public static void a(String str) {
        if (str.length() > 127) {
            str = str.substring(0, CertificateBody.profileType);
        }
        Trace.beginSection(str);
    }

    public static boolean a0(Context context) {
        if (context.getResources().getConfiguration().fontScale >= 1.3f) {
            return true;
        }
        return false;
    }

    public static boolean b0(String str, String str2) {
        if (str.startsWith(str2.concat("(")) && str.endsWith(")")) {
            return true;
        }
        return false;
    }

    public static void e(boolean z, String str) {
        if (z) {
        } else {
            throw new IllegalArgumentException(str);
        }
    }

    public static int e0(int i2, int i3, float f2) {
        return AbstractC0263m4.b(AbstractC0263m4.d(i3, Math.round(Color.alpha(i3) * f2)), i2);
    }

    public static void f(int i2) {
        if (i2 >= 0) {
        } else {
            throw new IllegalArgumentException();
        }
    }

    public static MappedByteBuffer f0(Context context, Uri uri) {
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r", null);
            if (openFileDescriptor == null) {
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return null;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                try {
                    FileChannel channel = fileInputStream.getChannel();
                    MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                    fileInputStream.close();
                    openFileDescriptor.close();
                    return map;
                } finally {
                }
            } catch (Throwable th) {
                try {
                    openFileDescriptor.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException unused) {
            return null;
        }
    }

    public static void g(Object obj, String str) {
        if (obj != null) {
        } else {
            throw new NullPointerException(str);
        }
    }

    public static TypedArray g0(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        if (theme == null) {
            return resources.obtainAttributes(attributeSet, iArr);
        }
        return theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    public static int h(Context context, String str) {
        int noteProxyOpNoThrow;
        int myPid = Process.myPid();
        int myUid = Process.myUid();
        String packageName = context.getPackageName();
        if (context.checkPermission(str, myPid, myUid) == -1) {
            return -1;
        }
        String permissionToOp = AppOpsManager.permissionToOp(str);
        if (permissionToOp != null) {
            if (packageName == null) {
                String[] packagesForUid = context.getPackageManager().getPackagesForUid(myUid);
                if (packagesForUid == null || packagesForUid.length <= 0) {
                    return -1;
                }
                packageName = packagesForUid[0];
            }
            int myUid2 = Process.myUid();
            String packageName2 = context.getPackageName();
            if (myUid2 == myUid && Objects.equals(packageName2, packageName)) {
                if (Build.VERSION.SDK_INT >= 29) {
                    AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService(AppOpsManager.class);
                    int callingUid = Binder.getCallingUid();
                    int i2 = 1;
                    if (appOpsManager == null) {
                        noteProxyOpNoThrow = 1;
                    } else {
                        noteProxyOpNoThrow = appOpsManager.checkOpNoThrow(permissionToOp, callingUid, packageName);
                    }
                    if (noteProxyOpNoThrow == 0) {
                        String a2 = AbstractC0440v2.a(context);
                        if (appOpsManager != null) {
                            i2 = appOpsManager.checkOpNoThrow(permissionToOp, myUid, a2);
                        }
                        noteProxyOpNoThrow = i2;
                    }
                } else {
                    noteProxyOpNoThrow = ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(permissionToOp, packageName);
                }
            } else {
                noteProxyOpNoThrow = ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(permissionToOp, packageName);
            }
            if (noteProxyOpNoThrow != 0) {
                return -2;
            }
        }
        return 0;
    }

    public static int i(int i2, int i3, int i4) {
        if (i2 < i3) {
            return i3;
        }
        if (i2 > i4) {
            return i4;
        }
        return i2;
    }

    public static void j(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static float k(float f2, float f3, float f4) {
        if (f3 <= f4) {
            if (f2 < f3) {
                return f3;
            }
            if (f2 > f4) {
                return f4;
            }
            return f2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f4 + " is less than minimum " + f3 + '.');
    }

    public static void k0(byte[] bArr, int i2, int i3) {
        bArr[i2] = (byte) i3;
        bArr[i2 + 1] = (byte) (i3 >>> 8);
        bArr[i2 + 2] = (byte) (i3 >>> 16);
        bArr[i2 + 3] = (byte) (i3 >>> 24);
    }

    public static int l(int i2, int i3, int i4) {
        if (i3 <= i4) {
            if (i2 < i3) {
                return i3;
            }
            if (i2 > i4) {
                return i4;
            }
            return i2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i4 + " is less than minimum " + i3 + '.');
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [o.Ef, o.Fb] */
    public static Fb l0(MappedByteBuffer mappedByteBuffer) {
        long j2;
        ByteBuffer duplicate = mappedByteBuffer.duplicate();
        duplicate.order(ByteOrder.BIG_ENDIAN);
        duplicate.position(duplicate.position() + 4);
        int i2 = duplicate.getShort() & HPKE.aead_EXPORT_ONLY;
        if (i2 <= 100) {
            duplicate.position(duplicate.position() + 6);
            int i3 = 0;
            while (true) {
                if (i3 < i2) {
                    int i4 = duplicate.getInt();
                    duplicate.position(duplicate.position() + 4);
                    j2 = duplicate.getInt() & BodyPartID.bodyIdMax;
                    duplicate.position(duplicate.position() + 4);
                    if (1835365473 == i4) {
                        break;
                    }
                    i3++;
                } else {
                    j2 = -1;
                    break;
                }
            }
            if (j2 != -1) {
                duplicate.position(duplicate.position() + ((int) (j2 - duplicate.position())));
                duplicate.position(duplicate.position() + 12);
                long j3 = duplicate.getInt() & BodyPartID.bodyIdMax;
                for (int i5 = 0; i5 < j3; i5++) {
                    int i6 = duplicate.getInt();
                    long j4 = duplicate.getInt() & BodyPartID.bodyIdMax;
                    duplicate.getInt();
                    if (1164798569 == i6 || 1701669481 == i6) {
                        duplicate.position((int) (j4 + j2));
                        ?? ef = new Ef();
                        duplicate.order(ByteOrder.LITTLE_ENDIAN);
                        int position = duplicate.position() + duplicate.getInt(duplicate.position());
                        ef.d = duplicate;
                        ef.a = position;
                        int i7 = position - duplicate.getInt(position);
                        ef.b = i7;
                        ef.c = ((ByteBuffer) ef.d).getShort(i7);
                        return ef;
                    }
                }
            }
            throw new IOException("Cannot read metadata.");
        }
        throw new IOException("Cannot read metadata.");
    }

    public static int m(Fd fd, AbstractC0522z6 abstractC0522z6, View view, View view2, AbstractC0431ud abstractC0431ud, boolean z) {
        if (abstractC0431ud.v() != 0 && fd.b() != 0 && view != null && view2 != null) {
            if (!z) {
                return Math.abs(AbstractC0431ud.H(view) - AbstractC0431ud.H(view2)) + 1;
            }
            return Math.min(abstractC0522z6.l(), abstractC0522z6.b(view2) - abstractC0522z6.e(view));
        }
        return 0;
    }

    public static TypedValue m0(Context context, int i2) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i2, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static int n(Fd fd, AbstractC0522z6 abstractC0522z6, View view, View view2, AbstractC0431ud abstractC0431ud, boolean z, boolean z2) {
        int max;
        if (abstractC0431ud.v() == 0 || fd.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int min = Math.min(AbstractC0431ud.H(view), AbstractC0431ud.H(view2));
        int max2 = Math.max(AbstractC0431ud.H(view), AbstractC0431ud.H(view2));
        if (z2) {
            max = Math.max(0, (fd.b() - max2) - 1);
        } else {
            max = Math.max(0, min);
        }
        if (!z) {
            return max;
        }
        return Math.round((max * (Math.abs(abstractC0522z6.b(view2) - abstractC0522z6.e(view)) / (Math.abs(AbstractC0431ud.H(view) - AbstractC0431ud.H(view2)) + 1))) + (abstractC0522z6.k() - abstractC0522z6.e(view)));
    }

    public static boolean n0(Context context, int i2, boolean z) {
        TypedValue m0 = m0(context, i2);
        if (m0 != null && m0.type == 18) {
            if (m0.data != 0) {
                return true;
            }
            return false;
        }
        return z;
    }

    public static int o(Fd fd, AbstractC0522z6 abstractC0522z6, View view, View view2, AbstractC0431ud abstractC0431ud, boolean z) {
        if (abstractC0431ud.v() != 0 && fd.b() != 0 && view != null && view2 != null) {
            if (!z) {
                return fd.b();
            }
            return (int) (((abstractC0522z6.b(view2) - abstractC0522z6.e(view)) / (Math.abs(AbstractC0431ud.H(view) - AbstractC0431ud.H(view2)) + 1)) * fd.b());
        }
        return 0;
    }

    public static int o0(Context context, int i2, int i3) {
        TypedValue m0 = m0(context, i2);
        if (m0 != null && m0.type == 16) {
            return m0.data;
        }
        return i3;
    }

    public static float[] p(float[] fArr, int i2) {
        if (i2 >= 0) {
            int length = fArr.length;
            if (length >= 0) {
                int min = Math.min(i2, length);
                float[] fArr2 = new float[i2];
                System.arraycopy(fArr, 0, fArr2, 0, min);
                return fArr2;
            }
            throw new ArrayIndexOutOfBoundsException();
        }
        throw new IllegalArgumentException();
    }

    public static TimeInterpolator p0(Context context, int i2, Interpolator interpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i2, typedValue, true)) {
            return interpolator;
        }
        if (typedValue.type == 3) {
            String valueOf = String.valueOf(typedValue.string);
            if (!b0(valueOf, "cubic-bezier") && !b0(valueOf, "path")) {
                return AnimationUtils.loadInterpolator(context, typedValue.resourceId);
            }
            if (b0(valueOf, "cubic-bezier")) {
                String[] split = valueOf.substring(13, valueOf.length() - 1).split(",");
                if (split.length == 4) {
                    return new PathInterpolator(K(0, split), K(1, split), K(2, split), K(3, split));
                }
                throw new IllegalArgumentException("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: " + split.length);
            }
            if (b0(valueOf, "path")) {
                String substring = valueOf.substring(5, valueOf.length() - 1);
                Path path = new Path();
                try {
                    Ec.b(y(substring), path);
                    return new PathInterpolator(path);
                } catch (RuntimeException e2) {
                    throw new RuntimeException("Error in parsing ".concat(substring), e2);
                }
            }
            throw new IllegalArgumentException("Invalid motion easing type: ".concat(valueOf));
        }
        throw new IllegalArgumentException("Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes.");
    }

    public static boolean q(File file, Resources resources, int i2) {
        InputStream inputStream;
        try {
            inputStream = resources.openRawResource(i2);
            try {
                boolean r = r(file, inputStream);
                j(inputStream);
                return r;
            } catch (Throwable th) {
                th = th;
                j(inputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
    }

    public static TypedValue q0(Context context, int i2, String str) {
        TypedValue m0 = m0(context, i2);
        if (m0 != null) {
            return m0;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i2)));
    }

    public static boolean r(File file, InputStream inputStream) {
        FileOutputStream fileOutputStream;
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file, false);
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    j(fileOutputStream);
                    StrictMode.setThreadPolicy(allowThreadDiskWrites);
                    return true;
                }
            }
        } catch (IOException e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
            j(fileOutputStream2);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            j(fileOutputStream2);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            throw th;
        }
    }

    public static void r0(TextView textView, int i2) {
        int i3;
        f(i2);
        if (Build.VERSION.SDK_INT >= 28) {
            AbstractC0046b6.l(textView, i2);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        if (textView.getIncludeFontPadding()) {
            i3 = fontMetricsInt.top;
        } else {
            i3 = fontMetricsInt.ascent;
        }
        if (i2 > Math.abs(i3)) {
            textView.setPadding(textView.getPaddingLeft(), i2 + i3, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [o.L1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [o.L1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [o.L1, java.lang.Object] */
    public static L1 s(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                return new Object();
            }
            return new Object();
        }
        return new Object();
    }

    public static void s0(TextView textView, int i2) {
        int i3;
        f(i2);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        if (textView.getIncludeFontPadding()) {
            i3 = fontMetricsInt.bottom;
        } else {
            i3 = fontMetricsInt.descent;
        }
        if (i2 > Math.abs(i3)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i2 - i3);
        }
    }

    public static void t0(TextView textView, int i2) {
        f(i2);
        if (i2 != textView.getPaint().getFontMetricsInt(null)) {
            textView.setLineSpacing(i2 - r0, 1.0f);
        }
    }

    public static Set u0(Object... objArr) {
        int length = objArr.length;
        if (length != 0) {
            if (length != 1) {
                LinkedHashSet linkedHashSet = new LinkedHashSet(Ia.D0(objArr.length));
                for (Object obj : objArr) {
                    linkedHashSet.add(obj);
                }
                return linkedHashSet;
            }
            Set singleton = Collections.singleton(objArr[0]);
            AbstractC0487x9.n(singleton, "singleton(...)");
            return singleton;
        }
        return X6.a;
    }

    public static void v0(View view, C0111eb c0111eb) {
        C0464w6 c0464w6 = c0111eb.a.b;
        if (c0464w6 != null && c0464w6.a) {
            float f2 = 0.0f;
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                WeakHashMap weakHashMap = Dh.a;
                f2 += AbstractC0455vh.e((View) parent);
            }
            C0091db c0091db = c0111eb.a;
            if (c0091db.l != f2) {
                c0091db.l = f2;
                c0111eb.p();
            }
        }
    }

    public static void w0(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            AbstractC0215jg.a(view, charSequence);
            return;
        }
        ViewOnLongClickListenerC0255lg viewOnLongClickListenerC0255lg = ViewOnLongClickListenerC0255lg.k;
        if (viewOnLongClickListenerC0255lg != null && viewOnLongClickListenerC0255lg.a == view) {
            ViewOnLongClickListenerC0255lg.b(null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            ViewOnLongClickListenerC0255lg viewOnLongClickListenerC0255lg2 = ViewOnLongClickListenerC0255lg.l;
            if (viewOnLongClickListenerC0255lg2 != null && viewOnLongClickListenerC0255lg2.a == view) {
                viewOnLongClickListenerC0255lg2.a();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new ViewOnLongClickListenerC0255lg(view, charSequence);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x007a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0096 A[Catch: NumberFormatException -> 0x00aa, LOOP:3: B:25:0x0068->B:35:0x0096, LOOP_END, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:35:0x0096, B:39:0x009c, B:44:0x00b1, B:56:0x00b4), top: B:21:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0095 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009c A[Catch: NumberFormatException -> 0x00aa, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:35:0x0096, B:39:0x009c, B:44:0x00b1, B:56:0x00b4), top: B:21:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b1 A[Catch: NumberFormatException -> 0x00aa, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:35:0x0096, B:39:0x009c, B:44:0x00b1, B:56:0x00b4), top: B:21:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static o.Ec[] y(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Ha.y(java.lang.String):o.Ec[]");
    }

    public static Uf y0(String str, InterfaceC0426u8 interfaceC0426u8, int i2) {
        boolean z;
        if ((i2 & 2) != 0) {
            z = false;
        } else {
            z = true;
        }
        Uf uf = new Uf(interfaceC0426u8);
        if (z) {
            uf.setDaemon(true);
        }
        if (str != null) {
            uf.setName(str);
        }
        uf.start();
        return uf;
    }

    public static byte[] z(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length >= 16 && length % 8 == 0 && bArr2.length >= 16) {
            int[] iArr = new int[4];
            for (int i2 = 0; i2 < 4; i2++) {
                iArr[i2] = z0(bArr2, i2 * 4);
            }
            byte[] bArr3 = new byte[length];
            byte[] bArr4 = new byte[8];
            byte[] bArr5 = new byte[8];
            byte[] bArr6 = new byte[8];
            byte[] bArr7 = new byte[8];
            int i3 = 0;
            while (i3 < length) {
                for (int i4 = 0; i4 < 8; i4++) {
                    bArr4[i4] = (byte) (bArr[i3 + i4] ^ bArr6[i4]);
                }
                A(iArr, bArr4, bArr5);
                for (int i5 = 0; i5 < 8; i5++) {
                    bArr3[i3 + i5] = (byte) (bArr5[i5] ^ bArr7[i5]);
                }
                H2.l0(0, 14, bArr5, bArr6);
                int i6 = i3 + 8;
                H2.j0(bArr, bArr7, 0, i3, i6);
                i3 = i6;
            }
            int i7 = bArr3[0] & 7;
            int i8 = length - 7;
            for (int i9 = i8; i9 < length; i9++) {
                if (bArr3[i9] != 0) {
                    return null;
                }
            }
            int i10 = i7 + 3;
            if (i10 >= 0 && i8 >= i10) {
                return H2.n0(bArr3, i10, i8);
            }
        }
        return null;
    }

    public static int z0(byte[] bArr, int i2) {
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public abstract void B0(ViewGroup.MarginLayoutParams marginLayoutParams, int i2, int i3);

    public L7 C(L7[] l7Arr, int i2) {
        int i3;
        boolean z;
        int i4;
        if ((i2 & 1) == 0) {
            i3 = 400;
        } else {
            i3 = 700;
        }
        if ((i2 & 2) != 0) {
            z = true;
        } else {
            z = false;
        }
        L7 l7 = null;
        int i5 = Integer.MAX_VALUE;
        for (L7 l72 : l7Arr) {
            int abs = Math.abs(l72.c - i3) * 2;
            if (l72.d == z) {
                i4 = 0;
            } else {
                i4 = 1;
            }
            int i6 = abs + i4;
            if (l7 == null || i5 > i6) {
                l7 = l72;
                i5 = i6;
            }
        }
        return l7;
    }

    public abstract int I();

    public abstract int J();

    public abstract int L();

    public abstract int M();

    public abstract int O(View view);

    public abstract int S(CoordinatorLayout coordinatorLayout);

    public abstract int T();

    public abstract boolean Z(float f2);

    public abstract int b(ViewGroup.MarginLayoutParams marginLayoutParams);

    public abstract float c(int i2);

    public abstract boolean c0(View view);

    public void d(int i2) {
        new Handler(Looper.getMainLooper()).post(new RunnableC0034ae(this, i2, 0));
    }

    public abstract boolean d0(float f2, float f3);

    public abstract void h0(int i2);

    public abstract void i0(Typeface typeface);

    public abstract void j0(Typeface typeface, boolean z);

    public abstract Typeface t(Context context, I7 i7, Resources resources, int i2);

    public abstract Typeface u(Context context, L7[] l7Arr, int i2);

    public Typeface v(Context context, List list, int i2) {
        throw new IllegalStateException("createFromFontInfoWithFallback must only be called on API 29+");
    }

    public Typeface w(Context context, InputStream inputStream) {
        File U = U(context);
        if (U == null) {
            return null;
        }
        try {
            if (!r(U, inputStream)) {
                return null;
            }
            return Typeface.createFromFile(U.getPath());
        } catch (RuntimeException unused) {
            return null;
        } finally {
            U.delete();
        }
    }

    public Typeface x(Context context, Resources resources, int i2, String str, int i3) {
        File U = U(context);
        if (U == null) {
            return null;
        }
        try {
            if (!q(U, resources, i2)) {
                return null;
            }
            return Typeface.createFromFile(U.getPath());
        } catch (RuntimeException unused) {
            return null;
        } finally {
            U.delete();
        }
    }

    public abstract boolean x0(View view, float f2);
}
