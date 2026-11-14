package o;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;

/* renamed from: o.u4, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class DialogC0422u4 extends Dialog implements R9, InterfaceC0271mc, InterfaceC0412te {
    public androidx.lifecycle.a a;
    public final C0406t8 b;
    public final androidx.activity.b c;

    public DialogC0422u4(Context context, int i) {
        super(context, i);
        this.b = new C0406t8(this);
        this.c = new androidx.activity.b(new RunnableC0180i0(6, this));
    }

    public static void a(DialogC0422u4 dialogC0422u4) {
        AbstractC0487x9.o(dialogC0422u4, "this$0");
        super.onBackPressed();
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        AbstractC0487x9.o(view, "view");
        d();
        super.addContentView(view, layoutParams);
    }

    @Override // o.InterfaceC0412te
    public final C0041b1 b() {
        return (C0041b1) this.b.c;
    }

    public final androidx.lifecycle.a c() {
        androidx.lifecycle.a aVar = this.a;
        if (aVar == null) {
            androidx.lifecycle.a aVar2 = new androidx.lifecycle.a(this);
            this.a = aVar2;
            return aVar2;
        }
        return aVar;
    }

    public final void d() {
        Window window = getWindow();
        AbstractC0487x9.l(window);
        View decorView = window.getDecorView();
        AbstractC0487x9.n(decorView, "window!!.decorView");
        Ng.s(decorView, this);
        Window window2 = getWindow();
        AbstractC0487x9.l(window2);
        View decorView2 = window2.getDecorView();
        AbstractC0487x9.n(decorView2, "window!!.decorView");
        Ng.t(decorView2, this);
        Window window3 = getWindow();
        AbstractC0487x9.l(window3);
        View decorView3 = window3.getDecorView();
        AbstractC0487x9.n(decorView3, "window!!.decorView");
        Ng.u(decorView3, this);
    }

    @Override // o.R9
    public final androidx.lifecycle.a e() {
        return c();
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        this.c.b();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            AbstractC0487x9.n(onBackInvokedDispatcher, "onBackInvokedDispatcher");
            androidx.activity.b bVar = this.c;
            bVar.getClass();
            bVar.e = onBackInvokedDispatcher;
            bVar.c(bVar.g);
        }
        this.b.b(bundle);
        c().d(L9.ON_CREATE);
    }

    @Override // android.app.Dialog
    public final Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        AbstractC0487x9.n(onSaveInstanceState, "super.onSaveInstanceState()");
        this.b.c(onSaveInstanceState);
        return onSaveInstanceState;
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        c().d(L9.ON_RESUME);
    }

    @Override // android.app.Dialog
    public void onStop() {
        c().d(L9.ON_DESTROY);
        this.a = null;
        super.onStop();
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        d();
        super.setContentView(i);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        AbstractC0487x9.o(view, "view");
        d();
        super.setContentView(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        AbstractC0487x9.o(view, "view");
        d();
        super.setContentView(view, layoutParams);
    }
}
