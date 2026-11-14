package o;

import java.util.concurrent.Executors;

/* renamed from: o.w2, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0460w2 extends Ha {
    public static volatile C0460w2 l;
    public final Object k;

    public C0460w2(int i) {
        switch (i) {
            case 1:
                this.k = new Object();
                Executors.newFixedThreadPool(4, new L5());
                return;
            default:
                this.k = new C0460w2(1);
                return;
        }
    }

    public static C0460w2 D0() {
        if (l != null) {
            return l;
        }
        synchronized (C0460w2.class) {
            try {
                if (l == null) {
                    l = new C0460w2(0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return l;
    }
}
