package o;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.WeakHashMap;

/* renamed from: o.uh, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class ViewOnApplyWindowInsetsListenerC0435uh implements View.OnApplyWindowInsetsListener {
    public Mi a = null;
    public final /* synthetic */ View b;
    public final /* synthetic */ InterfaceC0112ec c;

    public ViewOnApplyWindowInsetsListenerC0435uh(View view, InterfaceC0112ec interfaceC0112ec) {
        this.b = view;
        this.c = interfaceC0112ec;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        Mi g = Mi.g(view, windowInsets);
        int i = Build.VERSION.SDK_INT;
        InterfaceC0112ec interfaceC0112ec = this.c;
        if (i < 30) {
            AbstractC0455vh.a(windowInsets, this.b);
            if (g.equals(this.a)) {
                return interfaceC0112ec.w(view, g).f();
            }
        }
        this.a = g;
        Mi w = interfaceC0112ec.w(view, g);
        if (i >= 30) {
            return w.f();
        }
        WeakHashMap weakHashMap = Dh.a;
        AbstractC0415th.c(view);
        return w.f();
    }
}
