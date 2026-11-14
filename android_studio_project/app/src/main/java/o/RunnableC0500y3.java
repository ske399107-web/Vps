package o;

/* renamed from: o.y3, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class RunnableC0500y3 implements Runnable {
    public final /* synthetic */ C0519z3 a;
    public final /* synthetic */ C0290nb b;
    public final /* synthetic */ MenuC0230kb c;
    public final /* synthetic */ C d;

    public RunnableC0500y3(C c, C0519z3 c0519z3, C0290nb c0290nb, MenuC0230kb menuC0230kb) {
        this.d = c;
        this.a = c0519z3;
        this.b = c0290nb;
        this.c = menuC0230kb;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0519z3 c0519z3 = this.a;
        if (c0519z3 != null) {
            C c = this.d;
            ((A3) c.b).z = true;
            c0519z3.b.c(false);
            ((A3) c.b).z = false;
        }
        C0290nb c0290nb = this.b;
        if (c0290nb.isEnabled() && c0290nb.hasSubMenu()) {
            this.c.q(c0290nb, null, 4);
        }
    }
}
