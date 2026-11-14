package o;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.widget.FrameLayout;

/* renamed from: o.hi, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0178hi extends AnimatorListenerAdapter implements InterfaceC0414tg {
    public final FrameLayout a;
    public final View b;
    public final View c;
    public boolean d = true;
    public final /* synthetic */ C0246l7 e;

    public C0178hi(C0246l7 c0246l7, FrameLayout frameLayout, View view, View view2) {
        this.e = c0246l7;
        this.a = frameLayout;
        this.b = view;
        this.c = view2;
    }

    @Override // o.InterfaceC0414tg
    public final void a(AbstractC0434ug abstractC0434ug) {
        abstractC0434ug.x(this);
    }

    @Override // o.InterfaceC0414tg
    public final void b(AbstractC0434ug abstractC0434ug) {
    }

    @Override // o.InterfaceC0414tg
    public final void c(AbstractC0434ug abstractC0434ug) {
        if (this.d) {
            g();
        }
    }

    @Override // o.InterfaceC0414tg
    public final void d() {
    }

    @Override // o.InterfaceC0414tg
    public final void e() {
    }

    public final void g() {
        this.c.setTag(2131231106, null);
        this.a.getOverlay().remove(this.b);
        this.d = false;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        g();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        this.a.getOverlay().remove(this.b);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        View view = this.b;
        if (view.getParent() == null) {
            this.a.getOverlay().add(view);
        } else {
            this.e.c();
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator, boolean z) {
        if (z) {
            View view = this.c;
            View view2 = this.b;
            view.setTag(2131231106, view2);
            this.a.getOverlay().add(view2);
            this.d = true;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator, boolean z) {
        if (z) {
            return;
        }
        g();
    }
}
