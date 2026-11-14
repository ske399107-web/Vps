package o;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* renamed from: o.ri, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0376ri extends AbstractC0160h0 implements InterfaceC0191ib {
    public final Context c;
    public final MenuC0230kb d;
    public H1 e;

    /* renamed from: f, reason: collision with root package name */
    public WeakReference f274f;
    public final /* synthetic */ C0396si g;

    public C0376ri(C0396si c0396si, Context context, H1 h1) {
        this.g = c0396si;
        this.c = context;
        this.e = h1;
        MenuC0230kb menuC0230kb = new MenuC0230kb(context);
        menuC0230kb.l = 1;
        this.d = menuC0230kb;
        menuC0230kb.e = this;
    }

    @Override // o.AbstractC0160h0
    public final void a() {
        C0396si c0396si = this.g;
        if (c0396si.c0 != this) {
            return;
        }
        if (c0396si.j0) {
            c0396si.d0 = this;
            c0396si.e0 = this.e;
        } else {
            this.e.F(this);
        }
        this.e = null;
        c0396si.q0(false);
        ActionBarContextView actionBarContextView = c0396si.Z;
        if (actionBarContextView.k == null) {
            actionBarContextView.e();
        }
        c0396si.W.setHideOnContentScrollEnabled(c0396si.o0);
        c0396si.c0 = null;
    }

    @Override // o.AbstractC0160h0
    public final View b() {
        WeakReference weakReference = this.f274f;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // o.AbstractC0160h0
    public final MenuC0230kb c() {
        return this.d;
    }

    @Override // o.AbstractC0160h0
    public final MenuInflater d() {
        return new C0531zf(this.c);
    }

    @Override // o.AbstractC0160h0
    public final CharSequence e() {
        return this.g.Z.getSubtitle();
    }

    @Override // o.AbstractC0160h0
    public final CharSequence f() {
        return this.g.Z.getTitle();
    }

    @Override // o.AbstractC0160h0
    public final void g() {
        if (this.g.c0 != this) {
            return;
        }
        MenuC0230kb menuC0230kb = this.d;
        menuC0230kb.w();
        try {
            this.e.G(this, menuC0230kb);
        } finally {
            menuC0230kb.v();
        }
    }

    @Override // o.AbstractC0160h0
    public final boolean h() {
        return this.g.Z.s;
    }

    @Override // o.AbstractC0160h0
    public final void i(View view) {
        this.g.Z.setCustomView(view);
        this.f274f = new WeakReference(view);
    }

    @Override // o.AbstractC0160h0
    public final void j(int i) {
        l(this.g.U.getResources().getString(i));
    }

    @Override // o.InterfaceC0191ib
    public final boolean k(MenuC0230kb menuC0230kb, MenuItem menuItem) {
        H1 h1 = this.e;
        if (h1 != null) {
            return ((H5) h1.b).k(this, menuItem);
        }
        return false;
    }

    @Override // o.AbstractC0160h0
    public final void l(CharSequence charSequence) {
        this.g.Z.setSubtitle(charSequence);
    }

    @Override // o.AbstractC0160h0
    public final void m(int i) {
        n(this.g.U.getResources().getString(i));
    }

    @Override // o.AbstractC0160h0
    public final void n(CharSequence charSequence) {
        this.g.Z.setTitle(charSequence);
    }

    @Override // o.AbstractC0160h0
    public final void o(boolean z) {
        this.b = z;
        this.g.Z.setTitleOptional(z);
    }

    @Override // o.InterfaceC0191ib
    public final void v(MenuC0230kb menuC0230kb) {
        if (this.e == null) {
            return;
        }
        g();
        C0080d0 c0080d0 = this.g.Z.d;
        if (c0080d0 != null) {
            c0080d0.l();
        }
    }
}
