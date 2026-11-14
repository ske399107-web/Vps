package o;

/* renamed from: o.zg, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0532zg extends AbstractC0454vg {
    public final /* synthetic */ int a = 1;
    public AbstractC0434ug b;

    public /* synthetic */ C0532zg() {
    }

    @Override // o.InterfaceC0414tg
    public final void a(AbstractC0434ug abstractC0434ug) {
        switch (this.a) {
            case 0:
                this.b.z();
                abstractC0434ug.x(this);
                return;
            default:
                K2 k2 = (K2) this.b;
                int i = k2.C - 1;
                k2.C = i;
                if (i == 0) {
                    k2.D = false;
                    k2.m();
                }
                abstractC0434ug.x(this);
                return;
        }
    }

    @Override // o.AbstractC0454vg, o.InterfaceC0414tg
    public void b(AbstractC0434ug abstractC0434ug) {
        switch (this.a) {
            case 1:
                K2 k2 = (K2) this.b;
                if (!k2.D) {
                    k2.G();
                    k2.D = true;
                    return;
                }
                return;
            default:
                return;
        }
    }

    public C0532zg(AbstractC0434ug abstractC0434ug) {
        this.b = abstractC0434ug;
    }
}
