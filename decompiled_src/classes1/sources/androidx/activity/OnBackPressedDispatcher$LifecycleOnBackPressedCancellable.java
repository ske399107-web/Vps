package androidx.activity;

import o.AbstractC0487x9;
import o.C0048b8;
import o.C0231kc;
import o.C0251lc;
import o.InterfaceC0342q3;
import o.L9;
import o.P9;
import o.R9;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
final class OnBackPressedDispatcher$LifecycleOnBackPressedCancellable implements P9, InterfaceC0342q3 {
    public final androidx.lifecycle.a a;
    public final C0048b8 b;
    public C0231kc c;
    public final /* synthetic */ b d;

    public OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(b bVar, androidx.lifecycle.a aVar, C0048b8 c0048b8) {
        AbstractC0487x9.o(c0048b8, "onBackPressedCallback");
        this.d = bVar;
        this.a = aVar;
        this.b = c0048b8;
        aVar.a(this);
    }

    @Override // o.P9
    public final void b(R9 r9, L9 l9) {
        if (l9 == L9.ON_START) {
            b bVar = this.d;
            bVar.getClass();
            C0048b8 c0048b8 = this.b;
            AbstractC0487x9.o(c0048b8, "onBackPressedCallback");
            bVar.b.addLast(c0048b8);
            C0231kc c0231kc = new C0231kc(bVar, c0048b8);
            c0048b8.b.add(c0231kc);
            bVar.d();
            c0048b8.c = new C0251lc(1, bVar);
            this.c = c0231kc;
            return;
        }
        if (l9 == L9.ON_STOP) {
            C0231kc c0231kc2 = this.c;
            if (c0231kc2 != null) {
                c0231kc2.cancel();
                return;
            }
            return;
        }
        if (l9 == L9.ON_DESTROY) {
            cancel();
        }
    }

    @Override // o.InterfaceC0342q3
    public final void cancel() {
        this.a.f(this);
        this.b.b.remove(this);
        C0231kc c0231kc = this.c;
        if (c0231kc != null) {
            c0231kc.cancel();
        }
        this.c = null;
    }
}
