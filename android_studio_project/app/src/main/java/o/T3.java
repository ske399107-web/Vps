package o;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class T3 {
    public final HashMap a = new HashMap();
    public final HashMap b;

    public T3(HashMap hashMap) {
        this.b = hashMap;
        for (Map.Entry entry : hashMap.entrySet()) {
            L9 l9 = (L9) entry.getValue();
            List list = (List) this.a.get(l9);
            if (list == null) {
                list = new ArrayList();
                this.a.put(l9, list);
            }
            list.add((U3) entry.getKey());
        }
    }

    public static void a(List list, R9 r9, L9 l9, Q9 q9) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                U3 u3 = (U3) list.get(size);
                u3.getClass();
                try {
                    int i = u3.a;
                    Method method = u3.b;
                    if (i != 0) {
                        if (i != 1) {
                            if (i == 2) {
                                method.invoke(q9, r9, l9);
                            }
                        } else {
                            method.invoke(q9, r9);
                        }
                    } else {
                        method.invoke(q9, new Object[0]);
                    }
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                } catch (InvocationTargetException e2) {
                    throw new RuntimeException("Failed to call observer method", e2.getCause());
                }
            }
        }
    }
}
