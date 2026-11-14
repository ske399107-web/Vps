package o;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* renamed from: o.gf, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0155gf extends AbstractC0160h0 implements InterfaceC0191ib {
    public Context c;
    public ActionBarContextView d;
    public H1 e;

    /* renamed from: f, reason: collision with root package name */
    public WeakReference f219f;
    public boolean g;
    public MenuC0230kb h;

    @Override // o.AbstractC0160h0
    public final void a() {
        if (this.g) {
            return;
        }
        this.g = true;
        this.e.F(this);
    }

    @Override // o.AbstractC0160h0
    public final View b() {
        WeakReference weakReference = this.f219f;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // o.AbstractC0160h0
    public final MenuC0230kb c() {
        return this.h;
    }

    @Override // o.AbstractC0160h0
    public final MenuInflater d() {
        return new C0531zf(this.d.getContext());
    }

    @Override // o.AbstractC0160h0
    public final CharSequence e() {
        return this.d.getSubtitle();
    }

    @Override // o.AbstractC0160h0
    public final CharSequence f() {
        return this.d.getTitle();
    }

    @Override // o.AbstractC0160h0
    public final void g() {
        this.e.G(this, this.h);
    }

    @Override // o.AbstractC0160h0
    public final boolean h() {
        return this.d.s;
    }

    @Override // o.AbstractC0160h0
    public final void i(View view) {
        WeakReference weakReference;
        this.d.setCustomView(view);
        if (view != null) {
            weakReference = new WeakReference(view);
        } else {
            weakReference = null;
        }
        this.f219f = weakReference;
    }

    @Override // o.AbstractC0160h0
    public final void j(int i) {
        l(this.c.getString(i));
    }

    @Override // o.InterfaceC0191ib
    public final boolean k(MenuC0230kb menuC0230kb, MenuItem menuItem) {
        return ((H5) this.e.b).k(this, menuItem);
    }

    @Override // o.AbstractC0160h0
    public final void l(CharSequence charSequence) {
        this.d.setSubtitle(charSequence);
    }

    @Override // o.AbstractC0160h0
    public final void m(int i) {
        n(this.c.getString(i));
    }

    @Override // o.AbstractC0160h0
    public final void n(CharSequence charSequence) {
        this.d.setTitle(charSequence);
    }

    @Override // o.AbstractC0160h0
    public final void o(boolean z) {
        this.b = z;
        this.d.setTitleOptional(z);
    }

    @Override // o.InterfaceC0191ib
    public final void v(MenuC0230kb menuC0230kb) {
        g();
        C0080d0 c0080d0 = this.d.d;
        if (c0080d0 != null) {
            c0080d0.l();
        }
    }
}
