package o;

import android.animation.ValueAnimator;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class S2 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ S2(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        Object obj = this.b;
        switch (this.a) {
            case 0:
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                W2 w2 = (W2) obj;
                Iterator it = w2.l.iterator();
                while (it.hasNext()) {
                    C0275mg c0275mg = (C0275mg) it.next();
                    c0275mg.M = 1.2f;
                    c0275mg.K = floatValue;
                    c0275mg.L = floatValue;
                    c0275mg.N = Q0.b(0.0f, 1.0f, 0.19f, 1.0f, floatValue);
                    c0275mg.invalidateSelf();
                }
                WeakHashMap weakHashMap = Dh.a;
                w2.postInvalidateOnAnimation();
                return;
            case 1:
                float floatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                C0111eb c0111eb = ((BottomSheetBehavior) obj).i;
                if (c0111eb != null) {
                    C0091db c0091db = c0111eb.a;
                    if (c0091db.i != floatValue2) {
                        c0091db.i = floatValue2;
                        c0111eb.e = true;
                        c0111eb.invalidateSelf();
                        return;
                    }
                    return;
                }
                return;
            case 2:
                int floatValue3 = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
                C0385s7 c0385s7 = (C0385s7) obj;
                c0385s7.c.setAlpha(floatValue3);
                c0385s7.d.setAlpha(floatValue3);
                c0385s7.s.invalidate();
                return;
            default:
                ((TextInputLayout) obj).v0.k(((Float) valueAnimator.getAnimatedValue()).floatValue());
                return;
        }
    }
}
