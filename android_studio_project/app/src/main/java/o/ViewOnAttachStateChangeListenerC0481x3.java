package o;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import java.util.WeakHashMap;

/* renamed from: o.x3, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class ViewOnAttachStateChangeListenerC0481x3 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ViewOnAttachStateChangeListenerC0481x3(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    private final void a(View view) {
    }

    private final void b(View view) {
    }

    private final void c(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        AccessibilityManager accessibilityManager;
        Object obj = this.b;
        switch (this.a) {
            case 0:
                return;
            case 1:
                C0047b7 c0047b7 = (C0047b7) obj;
                if (c0047b7.u != null && (accessibilityManager = c0047b7.t) != null) {
                    WeakHashMap weakHashMap = Dh.a;
                    if (c0047b7.isAttachedToWindow()) {
                        accessibilityManager.addTouchExplorationStateChangeListener(new AccessibilityManagerTouchExplorationStateChangeListenerC0377s(c0047b7.u));
                        return;
                    }
                    return;
                }
                return;
            case 2:
                View view2 = (View) obj;
                view2.removeOnAttachStateChangeListener(this);
                WeakHashMap weakHashMap2 = Dh.a;
                AbstractC0415th.c(view2);
                return;
            default:
                return;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        AccessibilityManager accessibilityManager;
        switch (this.a) {
            case 0:
                A3 a3 = (A3) this.b;
                ViewTreeObserver viewTreeObserver = a3.x;
                if (viewTreeObserver != null) {
                    if (!viewTreeObserver.isAlive()) {
                        a3.x = view.getViewTreeObserver();
                    }
                    a3.x.removeGlobalOnLayoutListener(a3.i);
                }
                view.removeOnAttachStateChangeListener(this);
                return;
            case 1:
                C0047b7 c0047b7 = (C0047b7) this.b;
                C0378s0 c0378s0 = c0047b7.u;
                if (c0378s0 != null && (accessibilityManager = c0047b7.t) != null) {
                    accessibilityManager.removeTouchExplorationStateChangeListener(new AccessibilityManagerTouchExplorationStateChangeListenerC0377s(c0378s0));
                    return;
                }
                return;
            case 2:
                return;
            default:
                ViewOnKeyListenerC0175hf viewOnKeyListenerC0175hf = (ViewOnKeyListenerC0175hf) this.b;
                ViewTreeObserver viewTreeObserver2 = viewOnKeyListenerC0175hf.f224o;
                if (viewTreeObserver2 != null) {
                    if (!viewTreeObserver2.isAlive()) {
                        viewOnKeyListenerC0175hf.f224o = view.getViewTreeObserver();
                    }
                    viewOnKeyListenerC0175hf.f224o.removeGlobalOnLayoutListener(viewOnKeyListenerC0175hf.i);
                }
                view.removeOnAttachStateChangeListener(this);
                return;
        }
    }
}
