package o;

import android.view.WindowInsets;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Gi extends Fi {
    public C0407t9 m;

    public Gi(Mi mi, WindowInsets windowInsets) {
        super(mi, windowInsets);
        this.m = null;
    }

    @Override // o.Ki
    public Mi b() {
        return Mi.g(null, this.c.consumeStableInsets());
    }

    @Override // o.Ki
    public Mi c() {
        return Mi.g(null, this.c.consumeSystemWindowInsets());
    }

    @Override // o.Ki
    public final C0407t9 h() {
        if (this.m == null) {
            WindowInsets windowInsets = this.c;
            this.m = C0407t9.b(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
        }
        return this.m;
    }

    @Override // o.Ki
    public boolean m() {
        return this.c.isConsumed();
    }

    @Override // o.Ki
    public void q(C0407t9 c0407t9) {
        this.m = c0407t9;
    }
}
