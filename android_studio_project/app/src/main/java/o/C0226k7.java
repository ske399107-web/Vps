package o;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* renamed from: o.k7, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0226k7 extends AnimatorListenerAdapter implements InterfaceC0414tg {
    public final View a;
    public boolean b = false;

    public C0226k7(View view) {
        this.a = view;
    }

    @Override // o.InterfaceC0414tg
    public final void a(AbstractC0434ug abstractC0434ug) {
    }

    @Override // o.InterfaceC0414tg
    public final void b(AbstractC0434ug abstractC0434ug) {
    }

    @Override // o.InterfaceC0414tg
    public final void c(AbstractC0434ug abstractC0434ug) {
    }

    @Override // o.InterfaceC0414tg
    public final void d() {
        float f2;
        View view = this.a;
        if (view.getVisibility() == 0) {
            f2 = Wh.a.h(view);
        } else {
            f2 = 0.0f;
        }
        view.setTag(2131231211, Float.valueOf(f2));
    }

    @Override // o.InterfaceC0414tg
    public final void e() {
        this.a.setTag(2131231211, null);
    }

    @Override // o.InterfaceC0414tg
    public final void f(AbstractC0434ug abstractC0434ug) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        Wh.a.x(this.a, 1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        onAnimationEnd(animator, false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        View view = this.a;
        if (view.hasOverlappingRendering() && view.getLayerType() == 0) {
            this.b = true;
            view.setLayerType(2, null);
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator, boolean z) {
        boolean z2 = this.b;
        View view = this.a;
        if (z2) {
            view.setLayerType(0, null);
        }
        if (z) {
            return;
        }
        C0078ci c0078ci = Wh.a;
        c0078ci.x(view, 1.0f);
        c0078ci.getClass();
    }
}
