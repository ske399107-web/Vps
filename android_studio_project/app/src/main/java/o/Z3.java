package o;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Z3 extends AnimatorListenerAdapter {
    public final /* synthetic */ int a;
    public final /* synthetic */ C0024a4 b;

    public /* synthetic */ Z3(C0024a4 c0024a4, int i) {
        this.a = i;
        this.b = c0024a4;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        switch (this.a) {
            case 1:
                this.b.b.h(false);
                return;
            default:
                super.onAnimationEnd(animator);
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.a) {
            case 0:
                this.b.b.h(true);
                return;
            default:
                super.onAnimationStart(animator);
                return;
        }
    }
}
