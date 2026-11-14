package o;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

/* renamed from: o.yb, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0508yb extends C0249la implements InterfaceC0270mb {
    public static final Method D;
    public C C;

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                D = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    @Override // o.C0249la
    public final C0285n6 a(Context context, boolean z) {
        C0489xb c0489xb = new C0489xb(context, z);
        c0489xb.setHoverListener(this);
        return c0489xb;
    }

    @Override // o.InterfaceC0270mb
    public final void l(MenuC0230kb menuC0230kb, C0290nb c0290nb) {
        C c = this.C;
        if (c != null) {
            c.l(menuC0230kb, c0290nb);
        }
    }

    @Override // o.InterfaceC0270mb
    public final void o(MenuC0230kb menuC0230kb, C0290nb c0290nb) {
        C c = this.C;
        if (c != null) {
            c.o(menuC0230kb, c0290nb);
        }
    }
}
