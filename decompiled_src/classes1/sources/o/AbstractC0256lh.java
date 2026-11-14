package o;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: o.lh, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0256lh {
    public final E2 a;
    public final E2 b;
    public final E2 c;

    public AbstractC0256lh(E2 e2, E2 e22, E2 e23) {
        this.a = e2;
        this.b = e22;
        this.c = e23;
    }

    public abstract C0276mh a();

    public final Class b(Class cls) {
        String name = cls.getName();
        E2 e2 = this.c;
        Class cls2 = (Class) e2.get(name);
        if (cls2 == null) {
            Class<?> cls3 = Class.forName(cls.getPackage().getName() + "." + cls.getSimpleName() + "Parcelizer", false, cls.getClassLoader());
            e2.put(cls.getName(), cls3);
            return cls3;
        }
        return cls2;
    }

    public final Method c(String str) {
        E2 e2 = this.a;
        Method method = (Method) e2.get(str);
        if (method == null) {
            System.currentTimeMillis();
            Method declaredMethod = Class.forName(str, true, AbstractC0256lh.class.getClassLoader()).getDeclaredMethod("read", AbstractC0256lh.class);
            e2.put(str, declaredMethod);
            return declaredMethod;
        }
        return method;
    }

    public final Method d(Class cls) {
        String name = cls.getName();
        E2 e2 = this.b;
        Method method = (Method) e2.get(name);
        if (method == null) {
            Class b = b(cls);
            System.currentTimeMillis();
            Method declaredMethod = b.getDeclaredMethod("write", cls, AbstractC0256lh.class);
            e2.put(cls.getName(), declaredMethod);
            return declaredMethod;
        }
        return method;
    }

    public abstract boolean e(int i);

    public final Parcelable f(Parcelable parcelable, int i) {
        if (!e(i)) {
            return parcelable;
        }
        return ((C0276mh) this).e.readParcelable(C0276mh.class.getClassLoader());
    }

    public final InterfaceC0296nh g() {
        String readString = ((C0276mh) this).e.readString();
        if (readString == null) {
            return null;
        }
        try {
            return (InterfaceC0296nh) c(readString).invoke(null, a());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    public abstract void h(int i);

    public final void i(InterfaceC0296nh interfaceC0296nh) {
        if (interfaceC0296nh == null) {
            ((C0276mh) this).e.writeString(null);
            return;
        }
        try {
            ((C0276mh) this).e.writeString(b(interfaceC0296nh.getClass()).getName());
            C0276mh a = a();
            try {
                d(interfaceC0296nh.getClass()).invoke(null, interfaceC0296nh, a);
                int i = a.i;
                if (i >= 0) {
                    int i2 = a.d.get(i);
                    Parcel parcel = a.e;
                    int dataPosition = parcel.dataPosition();
                    parcel.setDataPosition(i2);
                    parcel.writeInt(dataPosition - i2);
                    parcel.setDataPosition(dataPosition);
                }
            } catch (ClassNotFoundException e) {
                throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
            } catch (IllegalAccessException e2) {
                throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
            } catch (InvocationTargetException e4) {
                if (e4.getCause() instanceof RuntimeException) {
                    throw ((RuntimeException) e4.getCause());
                }
                throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
            }
        } catch (ClassNotFoundException e5) {
            throw new RuntimeException(interfaceC0296nh.getClass().getSimpleName().concat(" does not have a Parcelizer"), e5);
        }
    }
}
