package o;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class U1 implements PopupWindow.OnDismissListener {
    public final /* synthetic */ P1 a;
    public final /* synthetic */ V1 b;

    public U1(V1 v1, P1 p1) {
        this.b = v1;
        this.a = p1;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.b.G.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.a);
        }
    }
}
