package o;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Ia extends Ha {
    public static int D0(int i) {
        if (i >= 0) {
            if (i < 3) {
                return i + 1;
            }
            if (i < 1073741824) {
                return (int) ((i / 0.75f) + 1.0f);
            }
            return Integer.MAX_VALUE;
        }
        return i;
    }

    public static Map E0(ArrayList arrayList) {
        W6 w6 = W6.a;
        int size = arrayList.size();
        if (size != 0) {
            if (size != 1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(D0(arrayList.size()));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Cc cc = (Cc) it.next();
                    linkedHashMap.put(cc.a, cc.b);
                }
                return linkedHashMap;
            }
            Cc cc2 = (Cc) arrayList.get(0);
            AbstractC0487x9.o(cc2, "pair");
            Map singletonMap = Collections.singletonMap(cc2.a, cc2.b);
            AbstractC0487x9.n(singletonMap, "singletonMap(...)");
            return singletonMap;
        }
        return w6;
    }
}
