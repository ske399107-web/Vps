package o;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
//import org.conscrypt.BuildConfig // replaced by app BuildConfig

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class T9 {
    public static final HashMap a = new HashMap();
    public static final HashMap b = new HashMap();

    public static void a(Constructor constructor, Q9 q9) {
        try {
            AbstractC0487x9.n(constructor.newInstance(q9), "{\n            constructo…tance(`object`)\n        }");
            throw new ClassCastException();
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    public static final String b(String str) {
        StringBuilder sb = new StringBuilder();
        int F0 = AbstractC0413tf.F0(str, ".", 0, false);
        if (F0 >= 0) {
            int length = str.length();
            if (length >= 0) {
                StringBuilder sb2 = new StringBuilder(length);
                int i = 0;
                do {
                    sb2.append((CharSequence) str, i, F0);
                    sb2.append("_");
                    i = F0 + 1;
                    if (F0 >= str.length()) {
                        break;
                    }
                    F0 = AbstractC0413tf.F0(str, ".", i, false);
                } while (F0 > 0);
                sb2.append((CharSequence) str, i, str.length());
                str = sb2.toString();
                AbstractC0487x9.n(str, "toString(...)");
            } else {
                throw new OutOfMemoryError();
            }
        }
        return Ve.k(sb, str, "_LifecycleAdapter");
    }

    public static int c(Class cls) {
        Constructor<?> constructor;
        boolean z;
        boolean z2;
        boolean z3;
        String str;
        HashMap hashMap = a;
        Integer num = (Integer) hashMap.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int i = 1;
        if (cls.getCanonicalName() != null) {
            ArrayList arrayList = null;
            try {
                Package r3 = cls.getPackage();
                String canonicalName = cls.getCanonicalName();
                if (r3 != null) {
                    str = r3.getName();
                } else {
                    str = BuildConfig.FLAVOR;
                }
                AbstractC0487x9.n(str, "fullPackage");
                if (str.length() != 0) {
                    AbstractC0487x9.n(canonicalName, "name");
                    canonicalName = canonicalName.substring(str.length() + 1);
                    AbstractC0487x9.n(canonicalName, "this as java.lang.String).substring(startIndex)");
                }
                AbstractC0487x9.n(canonicalName, "if (fullPackage.isEmpty(…g(fullPackage.length + 1)");
                String b2 = b(canonicalName);
                if (str.length() != 0) {
                    b2 = str + '.' + b2;
                }
                constructor = Class.forName(b2).getDeclaredConstructor(cls);
                if (!constructor.isAccessible()) {
                    constructor.setAccessible(true);
                }
            } catch (ClassNotFoundException unused) {
                constructor = null;
            } catch (NoSuchMethodException e) {
                throw new RuntimeException(e);
            }
            HashMap hashMap2 = b;
            if (constructor != null) {
                hashMap2.put(cls, L1.H(constructor));
            } else {
                V3 v3 = V3.c;
                HashMap hashMap3 = v3.b;
                Boolean bool = (Boolean) hashMap3.get(cls);
                if (bool != null) {
                    z = bool.booleanValue();
                } else {
                    try {
                        Method[] declaredMethods = cls.getDeclaredMethods();
                        int length = declaredMethods.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 < length) {
                                if (((InterfaceC0311oc) declaredMethods[i2].getAnnotation(InterfaceC0311oc.class)) != null) {
                                    v3.a(cls, declaredMethods);
                                    z = true;
                                    break;
                                }
                                i2++;
                            } else {
                                hashMap3.put(cls, Boolean.FALSE);
                                z = false;
                                break;
                            }
                        }
                    } catch (NoClassDefFoundError e2) {
                        throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e2);
                    }
                }
                if (!z) {
                    Class superclass = cls.getSuperclass();
                    if (superclass != null && Q9.class.isAssignableFrom(superclass)) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        AbstractC0487x9.n(superclass, "superclass");
                        if (c(superclass) != 1) {
                            Object obj = hashMap2.get(superclass);
                            AbstractC0487x9.l(obj);
                            arrayList = new ArrayList((Collection) obj);
                        }
                    }
                    Class<?>[] interfaces = cls.getInterfaces();
                    AbstractC0487x9.n(interfaces, "klass.interfaces");
                    int length2 = interfaces.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 < length2) {
                            Class<?> cls2 = interfaces[i3];
                            if (cls2 != null && Q9.class.isAssignableFrom(cls2)) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (z3) {
                                AbstractC0487x9.n(cls2, "intrface");
                                if (c(cls2) == 1) {
                                    break;
                                }
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                Object obj2 = hashMap2.get(cls2);
                                AbstractC0487x9.l(obj2);
                                arrayList.addAll((Collection) obj2);
                            }
                            i3++;
                        } else if (arrayList != null) {
                            hashMap2.put(cls, arrayList);
                        }
                    }
                }
            }
            i = 2;
        }
        hashMap.put(cls, Integer.valueOf(i));
        return i;
    }
}
