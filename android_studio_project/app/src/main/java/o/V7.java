package o;

import android.os.Handler;
import android.view.View;
import android.view.Window;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class V7 extends L1 implements Mh, InterfaceC0271mc, InterfaceC0412te, InterfaceC0247l8 {
    public final U0 g;
    public final U0 h;
    public final Handler i;
    public final C0188i8 j;
    public final /* synthetic */ U0 k;

    public V7(U0 u0) {
        this.k = u0;
        Handler handler = new Handler();
        this.j = new C0188i8();
        this.g = u0;
        this.h = u0;
        this.i = handler;
    }

    @Override // o.L1
    public final View L(int i) {
        return this.k.findViewById(i);
    }

    @Override // o.L1
    public final boolean M() {
        Window window = this.k.getWindow();
        if (window != null && window.peekDecorView() != null) {
            return true;
        }
        return false;
    }

    @Override // o.InterfaceC0247l8
    public final void a() {
    }

    @Override // o.InterfaceC0412te
    public final C0041b1 b() {
        return (C0041b1) this.k.e.c;
    }

    @Override // o.Mh
    public final Lh d() {
        return this.k.d();
    }

    @Override // o.R9
    public final androidx.lifecycle.a e() {
        return this.k.s;
    }
}
