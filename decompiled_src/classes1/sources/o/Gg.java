package o;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Gg extends Ha {
    public static Class k;
    public static Constructor l;
    public static Method m;
    public static Method n;

    /* renamed from: o, reason: collision with root package name */
    public static boolean f97o;

    public static boolean D0(Object obj, String str, int i, boolean z) {
        E0();
        try {
            return ((Boolean) m.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    public static void E0() {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method method2;
        if (f97o) {
            return;
        }
        f97o = true;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi21Impl", e.getClass().getName(), e);
            cls = null;
            method = null;
            constructor = null;
            method2 = null;
        }
        l = constructor;
        k = cls;
        m = method2;
        n = method;
    }

    @Override // o.Ha
    public Typeface t(Context context, I7 i7, Resources resources, int i) {
        E0();
        try {
            Object newInstance = l.newInstance(new Object[0]);
            for (J7 j7 : i7.a) {
                File U = Ha.U(context);
                if (U == null) {
                    return null;
                }
                try {
                    if (!Ha.q(U, resources, j7.f113f)) {
                        return null;
                    }
                    if (!D0(newInstance, U.getPath(), j7.b, j7.c)) {
                        return null;
                    }
                    U.delete();
                } catch (RuntimeException unused) {
                    return null;
                } finally {
                    U.delete();
                }
            }
            E0();
            try {
                Object newInstance2 = Array.newInstance((Class<?>) k, 1);
                Array.set(newInstance2, 0, newInstance);
                return (Typeface) n.invoke(null, newInstance2);
            } catch (IllegalAccessException | InvocationTargetException e) {
                throw new RuntimeException(e);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // o.Ha
    public Typeface u(Context context, L7[] l7Arr, int i) {
        File file;
        String readlink;
        if (l7Arr.length < 1) {
            return null;
        }
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(C(l7Arr, i).a, "r", null);
            if (openFileDescriptor == null) {
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return null;
            }
            try {
                try {
                    readlink = Os.readlink("/proc/self/fd/" + openFileDescriptor.getFd());
                } catch (ErrnoException unused) {
                }
                try {
                    if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                        file = new File(readlink);
                        if (file != null && file.canRead()) {
                            Typeface createFromFile = Typeface.createFromFile(file);
                            openFileDescriptor.close();
                            return createFromFile;
                        }
                        FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                        Typeface w = w(context, fileInputStream);
                        fileInputStream.close();
                        openFileDescriptor.close();
                        return w;
                    }
                    Typeface w2 = w(context, fileInputStream);
                    fileInputStream.close();
                    openFileDescriptor.close();
                    return w2;
                } finally {
                }
                file = null;
                if (file != null) {
                    Typeface createFromFile2 = Typeface.createFromFile(file);
                    openFileDescriptor.close();
                    return createFromFile2;
                }
                FileInputStream fileInputStream2 = new FileInputStream(openFileDescriptor.getFileDescriptor());
            } catch (Throwable th) {
                try {
                    openFileDescriptor.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException unused2) {
            return null;
        }
    }
}
