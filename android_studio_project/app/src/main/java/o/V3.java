package o;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class V3 {
    public static final V3 c = new V3();
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();

    public static void b(HashMap hashMap, U3 u3, L9 l9, Class cls) {
        L9 l92 = (L9) hashMap.get(u3);
        if (l92 != null && l9 != l92) {
            throw new IllegalArgumentException("Method " + u3.b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + l92 + ", new value " + l9);
        }
        if (l92 == null) {
            hashMap.put(u3, l9);
        }
    }

    public final T3 a(Class cls, Method[] methodArr) {
        int i;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = this.a;
        if (superclass != null) {
            T3 t3 = (T3) hashMap2.get(superclass);
            if (t3 == null) {
                t3 = a(superclass, null);
            }
            hashMap.putAll(t3.b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            T3 t32 = (T3) hashMap2.get(cls2);
            if (t32 == null) {
                t32 = a(cls2, null);
            }
            for (Map.Entry entry : t32.b.entrySet()) {
                b(hashMap, (U3) entry.getKey(), (L9) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
            }
        }
        boolean z = false;
        for (Method method : methodArr) {
            InterfaceC0311oc interfaceC0311oc = (InterfaceC0311oc) method.getAnnotation(InterfaceC0311oc.class);
            if (interfaceC0311oc != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length > 0) {
                    if (R9.class.isAssignableFrom(parameterTypes[0])) {
                        i = 1;
                    } else {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                } else {
                    i = 0;
                }
                L9 value = interfaceC0311oc.value();
                if (parameterTypes.length > 1) {
                    if (L9.class.isAssignableFrom(parameterTypes[1])) {
                        if (value == L9.ON_ANY) {
                            i = 2;
                        } else {
                            throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                        }
                    } else {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                }
                if (parameterTypes.length <= 2) {
                    b(hashMap, new U3(i, method), value, cls);
                    z = true;
                } else {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
            }
        }
        T3 t33 = new T3(hashMap);
        hashMap2.put(cls, t33);
        this.b.put(cls, Boolean.valueOf(z));
        return t33;
    }
}
