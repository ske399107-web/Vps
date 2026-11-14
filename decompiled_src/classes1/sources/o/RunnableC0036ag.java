package o;

import androidx.appcompat.widget.Toolbar;

/* renamed from: o.ag, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class RunnableC0036ag implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Toolbar b;

    public /* synthetic */ RunnableC0036ag(Toolbar toolbar, int i) {
        this.a = i;
        this.b = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0290nb c0290nb;
        switch (this.a) {
            case 0:
                C0096dg c0096dg = this.b.L;
                if (c0096dg == null) {
                    c0290nb = null;
                } else {
                    c0290nb = c0096dg.b;
                }
                if (c0290nb != null) {
                    c0290nb.collapseActionView();
                    return;
                }
                return;
            default:
                this.b.n();
                return;
        }
    }
}
