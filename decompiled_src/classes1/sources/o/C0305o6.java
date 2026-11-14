package o;

import android.animation.ValueAnimator;
import android.view.View;

/* renamed from: o.o6, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class C0305o6 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0305o6(C0364r6 c0364r6) {
        this.b = c0364r6;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.a) {
            case 0:
                C0364r6 c0364r6 = (C0364r6) this.b;
                c0364r6.getClass();
                c0364r6.d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                return;
            default:
                ((View) ((C0396si) ((Oh) this.b).a).X.getParent()).invalidate();
                return;
        }
    }

    public /* synthetic */ C0305o6(Oh oh, View view) {
        this.b = oh;
    }
}
