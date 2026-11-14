package o;

import android.widget.PopupWindow;

/* renamed from: o.tb, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0409tb implements PopupWindow.OnDismissListener {
    public final /* synthetic */ C0429ub a;

    public C0409tb(C0429ub c0429ub) {
        this.a = c0429ub;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.a.c();
    }
}
