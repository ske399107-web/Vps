package o;

import java.lang.reflect.Method;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Hc {
    public static final Method a;

    static {
        Method method;
        Method[] methods = Throwable.class.getMethods();
        AbstractC0487x9.l(methods);
        int length = methods.length;
        int i = 0;
        while (true) {
            method = null;
            Class<?> cls = null;
            if (i >= length) {
                break;
            }
            Method method2 = methods[i];
            if (AbstractC0487x9.b(method2.getName(), "addSuppressed")) {
                Class<?>[] parameterTypes = method2.getParameterTypes();
                AbstractC0487x9.n(parameterTypes, "getParameterTypes(...)");
                if (parameterTypes.length == 1) {
                    cls = parameterTypes[0];
                }
                if (AbstractC0487x9.b(cls, Throwable.class)) {
                    method = method2;
                    break;
                }
            }
            i++;
        }
        a = method;
        int length2 = methods.length;
        for (int i2 = 0; i2 < length2 && !AbstractC0487x9.b(methods[i2].getName(), "getSuppressed"); i2++) {
        }
    }
}
