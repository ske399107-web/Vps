package o;

/* renamed from: o.ha, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class RunnableC0170ha implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ C0249la b;

    public /* synthetic */ RunnableC0170ha(C0249la c0249la, int i) {
        this.a = i;
        this.b = c0249la;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                C0285n6 c0285n6 = this.b.c;
                if (c0285n6 != null) {
                    c0285n6.setListSelectionHidden(true);
                    c0285n6.requestLayout();
                    return;
                }
                return;
            default:
                C0249la c0249la = this.b;
                C0285n6 c0285n62 = c0249la.c;
                if (c0285n62 != null && c0285n62.isAttachedToWindow() && c0249la.c.getCount() > c0249la.c.getChildCount() && c0249la.c.getChildCount() <= c0249la.m) {
                    c0249la.z.setInputMethodMode(2);
                    c0249la.f();
                    return;
                }
                return;
        }
    }
}
