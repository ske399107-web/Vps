package o;

import android.util.Log;

/* renamed from: o.q8, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0347q8 {
    public static final C0327p8 a = C0327p8.a;

    public static C0327p8 a(T7 t7) {
        while (t7 != null) {
            if (t7.m()) {
                t7.j();
            }
            t7 = t7.u;
        }
        return a;
    }

    public static void b(C0267m8 c0267m8) {
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "StrictMode violation in ".concat(c0267m8.a.getClass().getName()), c0267m8);
        }
    }

    public static final void c(T7 t7, String str) {
        AbstractC0487x9.o(str, "previousFragmentId");
        b(new C0267m8(t7, "Attempting to reuse fragment " + t7 + " with previous ID " + str));
        a(t7).getClass();
    }
}
