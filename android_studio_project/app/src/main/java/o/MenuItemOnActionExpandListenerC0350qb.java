package o;

import android.view.MenuItem;

/* renamed from: o.qb, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class MenuItemOnActionExpandListenerC0350qb implements MenuItem.OnActionExpandListener {
    public final MenuItem.OnActionExpandListener a;
    public final /* synthetic */ MenuItemC0369rb b;

    public MenuItemOnActionExpandListenerC0350qb(MenuItemC0369rb menuItemC0369rb, MenuItem.OnActionExpandListener onActionExpandListener) {
        this.b = menuItemC0369rb;
        this.a = onActionExpandListener;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.a.onMenuItemActionCollapse(this.b.g(menuItem));
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.a.onMenuItemActionExpand(this.b.g(menuItem));
    }
}
