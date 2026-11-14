package o;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* renamed from: o.y5, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0502y5 extends AnimatorListenerAdapter {
    public final /* synthetic */ int a;
    public final /* synthetic */ C0521z5 b;
    public final /* synthetic */ ViewPropertyAnimator c;
    public final /* synthetic */ View d;
    public final /* synthetic */ B5 e;

    public /* synthetic */ C0502y5(B5 b5, C0521z5 c0521z5, ViewPropertyAnimator viewPropertyAnimator, View view, int i) {
        this.a = i;
        this.e = b5;
        this.b = c0521z5;
        this.c = viewPropertyAnimator;
        this.d = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.a) {
            case 0:
                this.c.setListener(null);
                View view = this.d;
                view.setAlpha(1.0f);
                view.setTranslationX(0.0f);
                view.setTranslationY(0.0f);
                C0521z5 c0521z5 = this.b;
                Id id = c0521z5.a;
                B5 b5 = this.e;
                b5.c(id);
                b5.r.remove(c0521z5.a);
                b5.i();
                return;
            default:
                this.c.setListener(null);
                View view2 = this.d;
                view2.setAlpha(1.0f);
                view2.setTranslationX(0.0f);
                view2.setTranslationY(0.0f);
                C0521z5 c0521z52 = this.b;
                Id id2 = c0521z52.b;
                B5 b52 = this.e;
                b52.c(id2);
                b52.r.remove(c0521z52.b);
                b52.i();
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.a) {
            case 0:
                Id id = this.b.a;
                this.e.getClass();
                return;
            default:
                Id id2 = this.b.b;
                this.e.getClass();
                return;
        }
    }
}
