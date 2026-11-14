package androidx.activity;

import android.view.inputmethod.InputMethodManager;
import o.L9;
import o.P9;
import o.R9;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
final class ImmLeaksCleaner implements P9 {
    public static int a;

    @Override // o.P9
    public final void b(R9 r9, L9 l9) {
        if (l9 != L9.ON_DESTROY) {
            return;
        }
        if (a == 0) {
            try {
                a = 2;
                InputMethodManager.class.getDeclaredField("mServedView").setAccessible(true);
                InputMethodManager.class.getDeclaredField("mNextServedView").setAccessible(true);
                InputMethodManager.class.getDeclaredField("mH").setAccessible(true);
                a = 1;
            } catch (NoSuchFieldException unused) {
            }
        }
        if (a != 1) {
        } else {
            throw null;
        }
    }
}
