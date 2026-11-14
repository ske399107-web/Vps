package o;

import android.view.ActionProvider;

/* renamed from: o.ob, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class ActionProviderVisibilityListenerC0310ob implements ActionProvider.VisibilityListener {
    public C a;
    public final ActionProvider b;
    public final /* synthetic */ MenuItemC0369rb c;

    public ActionProviderVisibilityListenerC0310ob(MenuItemC0369rb menuItemC0369rb, ActionProvider actionProvider) {
        this.c = menuItemC0369rb;
        this.b = actionProvider;
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public final void onActionProviderVisibilityChanged(boolean z) {
        C c = this.a;
        if (c != null) {
            MenuC0230kb menuC0230kb = ((C0290nb) c.b).n;
            menuC0230kb.h = true;
            menuC0230kb.p(true);
        }
    }
}
