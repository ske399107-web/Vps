package o;

import android.content.Context;
import android.view.View;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Z extends C0429ub {
    public final /* synthetic */ int l = 1;
    public final /* synthetic */ C0080d0 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Z(C0080d0 c0080d0, Context context, MenuC0230kb menuC0230kb, View view) {
        super(2130903074, context, view, menuC0230kb, true);
        this.m = c0080d0;
        this.f283f = 8388613;
        C c = c0080d0.w;
        this.h = c;
        AbstractC0389sb abstractC0389sb = this.i;
        if (abstractC0389sb != null) {
            abstractC0389sb.c(c);
        }
    }

    @Override // o.C0429ub
    public final void c() {
        switch (this.l) {
            case 0:
                C0080d0 c0080d0 = this.m;
                c0080d0.t = null;
                c0080d0.getClass();
                super.c();
                return;
            default:
                C0080d0 c0080d02 = this.m;
                MenuC0230kb menuC0230kb = c0080d02.c;
                if (menuC0230kb != null) {
                    menuC0230kb.c(true);
                }
                c0080d02.s = null;
                super.c();
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Z(C0080d0 c0080d0, Context context, SubMenuC0433uf subMenuC0433uf, View view) {
        super(2130903074, context, view, subMenuC0433uf, false);
        this.m = c0080d0;
        if (!subMenuC0433uf.A.f()) {
            View view2 = c0080d0.i;
            this.e = view2 == null ? (View) c0080d0.h : view2;
        }
        C c = c0080d0.w;
        this.h = c;
        AbstractC0389sb abstractC0389sb = this.i;
        if (abstractC0389sb != null) {
            abstractC0389sb.c(c);
        }
    }
}
