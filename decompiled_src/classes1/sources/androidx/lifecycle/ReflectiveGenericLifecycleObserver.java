package androidx.lifecycle;

import java.util.HashMap;
import java.util.List;
import o.L9;
import o.P9;
import o.Q9;
import o.R9;
import o.T3;
import o.V3;

/* JADX INFO: Access modifiers changed from: package-private */
@Deprecated
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class ReflectiveGenericLifecycleObserver implements P9 {
    public final Q9 a;
    public final T3 b;

    public ReflectiveGenericLifecycleObserver(Q9 q9) {
        this.a = q9;
        V3 v3 = V3.c;
        Class<?> cls = q9.getClass();
        T3 t3 = (T3) v3.a.get(cls);
        this.b = t3 == null ? v3.a(cls, null) : t3;
    }

    @Override // o.P9
    public final void b(R9 r9, L9 l9) {
        HashMap hashMap = this.b.a;
        List list = (List) hashMap.get(l9);
        Q9 q9 = this.a;
        T3.a(list, r9, l9, q9);
        T3.a((List) hashMap.get(L9.ON_ANY), r9, l9, q9);
    }
}
