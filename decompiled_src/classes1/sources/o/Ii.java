package o;

import android.graphics.Insets;
import android.view.WindowInsets;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Ii extends Hi {
    public C0407t9 n;

    /* renamed from: o, reason: collision with root package name */
    public C0407t9 f110o;
    public C0407t9 p;

    public Ii(Mi mi, WindowInsets windowInsets) {
        super(mi, windowInsets);
        this.n = null;
        this.f110o = null;
        this.p = null;
    }

    @Override // o.Ki
    public C0407t9 g() {
        Insets mandatorySystemGestureInsets;
        if (this.f110o == null) {
            mandatorySystemGestureInsets = this.c.getMandatorySystemGestureInsets();
            this.f110o = C0407t9.c(mandatorySystemGestureInsets);
        }
        return this.f110o;
    }

    @Override // o.Ki
    public C0407t9 i() {
        Insets systemGestureInsets;
        if (this.n == null) {
            systemGestureInsets = this.c.getSystemGestureInsets();
            this.n = C0407t9.c(systemGestureInsets);
        }
        return this.n;
    }

    @Override // o.Ki
    public C0407t9 k() {
        Insets tappableElementInsets;
        if (this.p == null) {
            tappableElementInsets = this.c.getTappableElementInsets();
            this.p = C0407t9.c(tappableElementInsets);
        }
        return this.p;
    }

    @Override // o.Fi, o.Ki
    public Mi l(int i, int i2, int i3, int i4) {
        WindowInsets inset;
        inset = this.c.inset(i, i2, i3, i4);
        return Mi.g(null, inset);
    }

    @Override // o.Gi, o.Ki
    public void q(C0407t9 c0407t9) {
    }
}
