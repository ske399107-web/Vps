package o;

import java.util.ArrayList;

/* renamed from: o.wg, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0474wg extends AbstractC0454vg {
    public final /* synthetic */ E2 a;
    public final /* synthetic */ ViewTreeObserverOnPreDrawListenerC0494xg b;

    public C0474wg(ViewTreeObserverOnPreDrawListenerC0494xg viewTreeObserverOnPreDrawListenerC0494xg, E2 e2) {
        this.b = viewTreeObserverOnPreDrawListenerC0494xg;
        this.a = e2;
    }

    @Override // o.InterfaceC0414tg
    public final void a(AbstractC0434ug abstractC0434ug) {
        ((ArrayList) this.a.get(this.b.b)).remove(abstractC0434ug);
        abstractC0434ug.x(this);
    }
}
