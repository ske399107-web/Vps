package o;

import android.graphics.Typeface;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Gf extends Ha {
    public final /* synthetic */ Ha k;
    public final /* synthetic */ If l;

    public Gf(If r1, Ha ha) {
        this.l = r1;
        this.k = ha;
    }

    @Override // o.Ha
    public final void h0(int i) {
        this.l.m = true;
        this.k.h0(i);
    }

    @Override // o.Ha
    public final void i0(Typeface typeface) {
        If r0 = this.l;
        r0.n = Typeface.create(typeface, r0.c);
        r0.m = true;
        this.k.j0(r0.n, false);
    }
}
