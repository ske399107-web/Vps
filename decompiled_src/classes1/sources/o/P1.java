package o;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class P1 implements ViewTreeObserver.OnGlobalLayoutListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ P1(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        switch (this.a) {
            case 0:
                Y1 y1 = (Y1) this.b;
                if (!y1.getInternalPopup().b()) {
                    y1.f165f.e(y1.getTextDirection(), y1.getTextAlignment());
                }
                ViewTreeObserver viewTreeObserver = y1.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                    return;
                }
                return;
            case 1:
                V1 v1 = (V1) this.b;
                Y1 y12 = v1.G;
                v1.getClass();
                if (y12.isAttachedToWindow() && y12.getGlobalVisibleRect(v1.E)) {
                    v1.s();
                    v1.f();
                    return;
                } else {
                    v1.dismiss();
                    return;
                }
            case 2:
                A3 a3 = (A3) this.b;
                if (a3.b()) {
                    ArrayList arrayList = a3.h;
                    if (arrayList.size() > 0 && !((C0519z3) arrayList.get(0)).a.y) {
                        View view = a3.f63o;
                        if (view != null && view.isShown()) {
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                ((C0519z3) it.next()).a.f();
                            }
                            return;
                        }
                        a3.dismiss();
                        return;
                    }
                    return;
                }
                return;
            default:
                ViewOnKeyListenerC0175hf viewOnKeyListenerC0175hf = (ViewOnKeyListenerC0175hf) this.b;
                if (viewOnKeyListenerC0175hf.b()) {
                    C0508yb c0508yb = viewOnKeyListenerC0175hf.h;
                    if (!c0508yb.y) {
                        View view2 = viewOnKeyListenerC0175hf.m;
                        if (view2 != null && view2.isShown()) {
                            c0508yb.f();
                            return;
                        } else {
                            viewOnKeyListenerC0175hf.dismiss();
                            return;
                        }
                    }
                    return;
                }
                return;
        }
    }
}
