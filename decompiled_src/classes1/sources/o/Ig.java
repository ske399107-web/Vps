package o;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Ig extends Gg {
    public final Class p;
    public final Constructor q;
    public final Method r;
    public final Method s;
    public final Method t;
    public final Method u;
    public final Method v;

    public Ig() {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            method2 = L0(cls);
            Class cls2 = Integer.TYPE;
            method3 = cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
            method4 = cls.getMethod("freeze", new Class[0]);
            method = cls.getMethod("abortCreation", new Class[0]);
            method5 = M0(cls);
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class ".concat(e.getClass().getName()), e);
            cls = null;
            method = null;
            constructor = null;
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
        }
        this.p = cls;
        this.q = constructor;
        this.r = method2;
        this.s = method3;
        this.t = method4;
        this.u = method;
        this.v = method5;
    }

    public static Method L0(Class cls) {
        Class cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    public final void F0(Object obj) {
        try {
            this.u.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    public final boolean G0(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.r.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public Typeface H0(Object obj) {
        try {
            Object newInstance = Array.newInstance((Class<?>) this.p, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.v.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public final boolean I0(Object obj) {
        try {
            return ((Boolean) this.t.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final boolean J0() {
        Method method = this.r;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        if (method != null) {
            return true;
        }
        return false;
    }

    public final Object K0() {
        try {
            return this.q.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    public Method M0(Class cls) {
        Class<?> cls2 = Array.newInstance((Class<?>) cls, 1).getClass();
        Class cls3 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", cls2, cls3, cls3);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    @Override // o.Gg, o.Ha
    public final Typeface t(Context context, I7 i7, Resources resources, int i) {
        if (!J0()) {
            return super.t(context, i7, resources, i);
        }
        Object K0 = K0();
        if (K0 == null) {
            return null;
        }
        for (J7 j7 : i7.a) {
            if (!G0(context, K0, j7.a, j7.e, j7.b, j7.c ? 1 : 0, FontVariationAxis.fromFontVariationSettings(j7.d))) {
                F0(K0);
                return null;
            }
        }
        if (!I0(K0)) {
            return null;
        }
        return H0(K0);
    }

    @Override // o.Gg, o.Ha
    public final Typeface u(Context context, L7[] l7Arr, int i) {
        Typeface H0;
        boolean z;
        if (l7Arr.length < 1) {
            return null;
        }
        if (!J0()) {
            L7 C = C(l7Arr, i);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(C.a, "r", null);
                if (openFileDescriptor == null) {
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return null;
                }
                try {
                    Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(C.c).setItalic(C.d).build();
                    openFileDescriptor.close();
                    return build;
                } finally {
                }
            } catch (IOException unused) {
                return null;
            }
        }
        HashMap hashMap = new HashMap();
        for (L7 l7 : l7Arr) {
            if (l7.e == 0) {
                Uri uri = l7.a;
                if (!hashMap.containsKey(uri)) {
                    hashMap.put(uri, Ha.f0(context, uri));
                }
            }
        }
        Map unmodifiableMap = Collections.unmodifiableMap(hashMap);
        Object K0 = K0();
        if (K0 == null) {
            return null;
        }
        int length = l7Arr.length;
        int i2 = 0;
        boolean z2 = false;
        while (i2 < length) {
            L7 l72 = l7Arr[i2];
            ByteBuffer byteBuffer = (ByteBuffer) unmodifiableMap.get(l72.a);
            if (byteBuffer != null) {
                try {
                    z = ((Boolean) this.s.invoke(K0, byteBuffer, Integer.valueOf(l72.b), null, Integer.valueOf(l72.c), Integer.valueOf(l72.d ? 1 : 0))).booleanValue();
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                    z = false;
                }
                if (!z) {
                    F0(K0);
                    return null;
                }
                z2 = true;
            }
            i2++;
            z2 = z2;
        }
        if (!z2) {
            F0(K0);
            return null;
        }
        if (!I0(K0) || (H0 = H0(K0)) == null) {
            return null;
        }
        return Typeface.create(H0, i);
    }

    @Override // o.Ha
    public final Typeface x(Context context, Resources resources, int i, String str, int i2) {
        if (!J0()) {
            return super.x(context, resources, i, str, i2);
        }
        Object K0 = K0();
        if (K0 == null) {
            return null;
        }
        if (!G0(context, K0, str, 0, -1, -1, null)) {
            F0(K0);
            return null;
        }
        if (!I0(K0)) {
            return null;
        }
        return H0(K0);
    }
}
