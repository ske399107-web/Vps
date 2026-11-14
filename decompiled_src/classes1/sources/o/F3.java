package o;

import android.view.ViewGroup;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class F3 extends AbstractC0454vg {
    public boolean a = false;
    public final ViewGroup b;

    public F3(ViewGroup viewGroup) {
        this.b = viewGroup;
    }

    @Override // o.InterfaceC0414tg
    public final void a(AbstractC0434ug abstractC0434ug) {
        if (!this.a) {
            Ng.z(this.b, false);
        }
        abstractC0434ug.x(this);
    }

    @Override // o.AbstractC0454vg, o.InterfaceC0414tg
    public final void c(AbstractC0434ug abstractC0434ug) {
        Ng.z(this.b, false);
        this.a = true;
    }

    @Override // o.AbstractC0454vg, o.InterfaceC0414tg
    public final void d() {
        Ng.z(this.b, false);
    }

    @Override // o.AbstractC0454vg, o.InterfaceC0414tg
    public final void e() {
        Ng.z(this.b, true);
    }
}
