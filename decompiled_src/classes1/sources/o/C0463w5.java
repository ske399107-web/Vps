package o;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* renamed from: o.w5, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0463w5 extends AnimatorListenerAdapter {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ Id b;
    public final /* synthetic */ View c;
    public final /* synthetic */ ViewPropertyAnimator d;
    public final /* synthetic */ B5 e;

    public C0463w5(B5 b5, Id id, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.e = b5;
        this.b = id;
        this.d = viewPropertyAnimator;
        this.c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.a) {
            case 1:
                this.c.setAlpha(1.0f);
                return;
            default:
                super.onAnimationCancel(animator);
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.a) {
            case 0:
                this.d.setListener(null);
                this.c.setAlpha(1.0f);
                B5 b5 = this.e;
                Id id = this.b;
                b5.c(id);
                b5.q.remove(id);
                b5.i();
                return;
            default:
                this.d.setListener(null);
                B5 b52 = this.e;
                Id id2 = this.b;
                b52.c(id2);
                b52.f71o.remove(id2);
                b52.i();
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.a) {
            case 0:
                this.e.getClass();
                return;
            default:
                this.e.getClass();
                return;
        }
    }

    public C0463w5(B5 b5, Id id, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.e = b5;
        this.b = id;
        this.c = view;
        this.d = viewPropertyAnimator;
    }
}
