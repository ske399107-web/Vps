package o;

import android.window.OnBackInvokedCallback;

/* renamed from: o.n1, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class C0280n1 implements OnBackInvokedCallback {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0280n1(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public final void onBackInvoked() {
        switch (this.a) {
            case 0:
                ((LayoutInflaterFactory2C0439v1) this.b).C();
                return;
            case 1:
                ((InterfaceC0426u8) this.b).a();
                return;
            default:
                ((Runnable) this.b).run();
                return;
        }
    }
}
