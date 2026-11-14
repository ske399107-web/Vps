package o;

import android.view.View;
import androidx.appcompat.view.menu.ActionMenuItemView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class X extends O7 {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ View k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public X(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.k = actionMenuItemView;
    }

    @Override // o.O7
    public final Ne b() {
        Z z;
        switch (this.j) {
            case 0:
                Y y = ((ActionMenuItemView) this.k).m;
                if (y == null || (z = ((C0020a0) y).a.t) == null) {
                    return null;
                }
                return z.a();
            default:
                Z z2 = ((C0060c0) this.k).d.s;
                if (z2 == null) {
                    return null;
                }
                return z2.a();
        }
    }

    @Override // o.O7
    public final boolean c() {
        Ne b;
        switch (this.j) {
            case 0:
                ActionMenuItemView actionMenuItemView = (ActionMenuItemView) this.k;
                InterfaceC0210jb interfaceC0210jb = actionMenuItemView.k;
                if (interfaceC0210jb == null || !interfaceC0210jb.c(actionMenuItemView.h) || (b = b()) == null || !b.b()) {
                    return false;
                }
                return true;
            default:
                ((C0060c0) this.k).d.l();
                return true;
        }
    }

    @Override // o.O7
    public boolean d() {
        switch (this.j) {
            case 1:
                C0080d0 c0080d0 = ((C0060c0) this.k).d;
                if (c0080d0.u != null) {
                    return false;
                }
                c0080d0.f();
                return true;
            default:
                return super.d();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public X(C0060c0 c0060c0, C0060c0 c0060c02) {
        super(c0060c02);
        this.k = c0060c0;
    }
}
