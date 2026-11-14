package o;

import android.graphics.Typeface;

/* renamed from: o.p3, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0322p3 extends Ha {
    public final Typeface k;
    public final C l;
    public boolean m;

    public C0322p3(C c, Typeface typeface) {
        this.k = typeface;
        this.l = c;
    }

    @Override // o.Ha
    public final void h0(int i) {
        if (!this.m) {
            C0084d4 c0084d4 = (C0084d4) this.l.b;
            if (c0084d4.j(this.k)) {
                c0084d4.h(false);
            }
        }
    }

    @Override // o.Ha
    public final void j0(Typeface typeface, boolean z) {
        if (!this.m) {
            C0084d4 c0084d4 = (C0084d4) this.l.b;
            if (c0084d4.j(typeface)) {
                c0084d4.h(false);
            }
        }
    }
}
