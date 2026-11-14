package o;

import android.view.View;
import android.view.WindowInsets;

/* renamed from: o.wh, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0475wh {
    public static Mi a(View view) {
        WindowInsets rootWindowInsets = view.getRootWindowInsets();
        if (rootWindowInsets == null) {
            return null;
        }
        Mi g = Mi.g(null, rootWindowInsets);
        Ki ki = g.a;
        ki.p(g);
        ki.d(view.getRootView());
        return g;
    }

    public static void b(View view, int i, int i2) {
        view.setScrollIndicators(i, i2);
    }
}
