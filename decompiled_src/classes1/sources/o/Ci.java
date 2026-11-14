package o;

import android.view.WindowInsets;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Ci extends Ei {
    public final WindowInsets.Builder c;

    public Ci() {
        this.c = Bi.b();
    }

    @Override // o.Ei
    public Mi b() {
        WindowInsets build;
        a();
        build = this.c.build();
        Mi g = Mi.g(null, build);
        g.a.o(this.b);
        return g;
    }

    @Override // o.Ei
    public void d(C0407t9 c0407t9) {
        this.c.setMandatorySystemGestureInsets(c0407t9.d());
    }

    @Override // o.Ei
    public void e(C0407t9 c0407t9) {
        this.c.setStableInsets(c0407t9.d());
    }

    @Override // o.Ei
    public void f(C0407t9 c0407t9) {
        this.c.setSystemGestureInsets(c0407t9.d());
    }

    @Override // o.Ei
    public void g(C0407t9 c0407t9) {
        this.c.setSystemWindowInsets(c0407t9.d());
    }

    @Override // o.Ei
    public void h(C0407t9 c0407t9) {
        this.c.setTappableElementInsets(c0407t9.d());
    }

    public Ci(Mi mi) {
        super(mi);
        WindowInsets.Builder b;
        WindowInsets f2 = mi.f();
        if (f2 != null) {
            b = Bi.c(f2);
        } else {
            b = Bi.b();
        }
        this.c = b;
    }
}
