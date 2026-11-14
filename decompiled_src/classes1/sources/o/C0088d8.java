package o;

import java.lang.reflect.InvocationTargetException;

/* renamed from: o.d8, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0088d8 {
    public static final Qe b = new Qe(0);
    public final /* synthetic */ C0188i8 a;

    public C0088d8(C0188i8 c0188i8) {
        this.a = c0188i8;
    }

    public static Class b(ClassLoader classLoader, String str) {
        Qe qe = b;
        Qe qe2 = (Qe) qe.get(classLoader);
        if (qe2 == null) {
            qe2 = new Qe(0);
            qe.put(classLoader, qe2);
        }
        Class cls = (Class) qe2.get(str);
        if (cls == null) {
            Class<?> cls2 = Class.forName(str, false, classLoader);
            qe2.put(str, cls2);
            return cls2;
        }
        return cls;
    }

    public static Class c(ClassLoader classLoader, String str) {
        try {
            return b(classLoader, str);
        } catch (ClassCastException e) {
            throw new RuntimeException(AbstractC0304o5.h("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException(AbstractC0304o5.h("Unable to instantiate fragment ", str, ": make sure class name exists"), e2);
        }
    }

    public final T7 a(String str) {
        try {
            return (T7) c(this.a.t.h.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(AbstractC0304o5.h("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(AbstractC0304o5.h("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException(AbstractC0304o5.h("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e3);
        } catch (InvocationTargetException e4) {
            throw new RuntimeException(AbstractC0304o5.h("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e4);
        }
    }
}
