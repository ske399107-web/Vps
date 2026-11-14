package o;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* renamed from: o.uf, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class SubMenuC0433uf extends MenuC0230kb implements SubMenu {
    public final C0290nb A;
    public final MenuC0230kb z;

    public SubMenuC0433uf(Context context, MenuC0230kb menuC0230kb, C0290nb c0290nb) {
        super(context);
        this.z = menuC0230kb;
        this.A = c0290nb;
    }

    @Override // o.MenuC0230kb
    public final boolean d(C0290nb c0290nb) {
        return this.z.d(c0290nb);
    }

    @Override // o.MenuC0230kb
    public final boolean e(MenuC0230kb menuC0230kb, MenuItem menuItem) {
        if (!super.e(menuC0230kb, menuItem) && !this.z.e(menuC0230kb, menuItem)) {
            return false;
        }
        return true;
    }

    @Override // o.MenuC0230kb
    public final boolean f(C0290nb c0290nb) {
        return this.z.f(c0290nb);
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.A;
    }

    @Override // o.MenuC0230kb
    public final String j() {
        int i;
        C0290nb c0290nb = this.A;
        if (c0290nb != null) {
            i = c0290nb.a;
        } else {
            i = 0;
        }
        if (i == 0) {
            return null;
        }
        return AbstractC0214jf.a(i, "android:menu:actionviewstates:");
    }

    @Override // o.MenuC0230kb
    public final MenuC0230kb k() {
        return this.z.k();
    }

    @Override // o.MenuC0230kb
    public final boolean m() {
        return this.z.m();
    }

    @Override // o.MenuC0230kb
    public final boolean n() {
        return this.z.n();
    }

    @Override // o.MenuC0230kb
    public final boolean o() {
        return this.z.o();
    }

    @Override // o.MenuC0230kb, android.view.Menu
    public final void setGroupDividerEnabled(boolean z) {
        this.z.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        u(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        u(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        u(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.A.setIcon(drawable);
        return this;
    }

    @Override // o.MenuC0230kb, android.view.Menu
    public final void setQwertyMode(boolean z) {
        this.z.setQwertyMode(z);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i) {
        u(0, null, i, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i) {
        u(i, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i) {
        this.A.setIcon(i);
        return this;
    }
}
