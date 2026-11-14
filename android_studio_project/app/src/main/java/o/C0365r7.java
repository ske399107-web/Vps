package o;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* renamed from: o.r7, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0365r7 extends AnimatorListenerAdapter {
    public boolean a = false;
    public final /* synthetic */ C0385s7 b;

    public C0365r7(C0385s7 c0385s7) {
        this.b = c0385s7;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.a) {
            this.a = false;
            return;
        }
        C0385s7 c0385s7 = this.b;
        if (((Float) c0385s7.z.getAnimatedValue()).floatValue() == 0.0f) {
            c0385s7.A = 0;
            c0385s7.f(0);
        } else {
            c0385s7.A = 2;
            c0385s7.s.invalidate();
        }
    }
}
