package o;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;

/* renamed from: o.lb, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class DialogInterfaceOnKeyListenerC0250lb implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, InterfaceC0527zb {
    public SubMenuC0433uf a;
    public J0 b;
    public C0090da c;

    @Override // o.InterfaceC0527zb
    public final void a(MenuC0230kb menuC0230kb, boolean z) {
        J0 j0;
        if ((z || menuC0230kb == this.a) && (j0 = this.b) != null) {
            j0.dismiss();
        }
    }

    @Override // o.InterfaceC0527zb
    public final boolean g(MenuC0230kb menuC0230kb) {
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        C0090da c0090da = this.c;
        if (c0090da.f198f == null) {
            c0090da.f198f = new C0070ca(c0090da);
        }
        this.a.q(c0090da.f198f.getItem(i), null, 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.c.a(this.a, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        SubMenuC0433uf subMenuC0433uf = this.a;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.b.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.b.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                subMenuC0433uf.c(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return subMenuC0433uf.performShortcut(i, keyEvent, 0);
    }
}
