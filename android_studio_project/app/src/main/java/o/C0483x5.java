package o;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* renamed from: o.x5, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0483x5 extends AnimatorListenerAdapter {
    public final /* synthetic */ Id a;
    public final /* synthetic */ int b;
    public final /* synthetic */ View c;
    public final /* synthetic */ int d;
    public final /* synthetic */ ViewPropertyAnimator e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ B5 f294f;

    public C0483x5(B5 b5, Id id, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
        this.f294f = b5;
        this.a = id;
        this.b = i;
        this.c = view;
        this.d = i2;
        this.e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        int i = this.b;
        View view = this.c;
        if (i != 0) {
            view.setTranslationX(0.0f);
        }
        if (this.d != 0) {
            view.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.e.setListener(null);
        B5 b5 = this.f294f;
        Id id = this.a;
        b5.c(id);
        b5.p.remove(id);
        b5.i();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f294f.getClass();
    }
}
