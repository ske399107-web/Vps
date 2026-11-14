package o;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.animation.PathInterpolator;
import java.util.Collections;

/* renamed from: o.ti, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0416ti implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ zi a;
    public final /* synthetic */ Mi b;
    public final /* synthetic */ Mi c;
    public final /* synthetic */ int d;
    public final /* synthetic */ View e;

    public C0416ti(zi ziVar, Mi mi, Mi mi2, int i, View view) {
        this.a = ziVar;
        this.b = mi;
        this.c = mi2;
        this.d = i;
        this.e = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        Ei ai;
        float f2;
        zi ziVar;
        float animatedFraction = valueAnimator.getAnimatedFraction();
        zi ziVar2 = this.a;
        ziVar2.a.d(animatedFraction);
        float b = ziVar2.a.b();
        PathInterpolator pathInterpolator = C0456vi.e;
        int i = Build.VERSION.SDK_INT;
        Mi mi = this.b;
        if (i >= 30) {
            ai = new Di(mi);
        } else if (i >= 29) {
            ai = new Ci(mi);
        } else {
            ai = new Ai(mi);
        }
        int i2 = 1;
        while (i2 <= 256) {
            int i3 = this.d & i2;
            Ki ki = mi.a;
            if (i3 == 0) {
                ai.c(i2, ki.f(i2));
                f2 = b;
                ziVar = ziVar2;
            } else {
                C0407t9 f3 = ki.f(i2);
                C0407t9 f4 = this.c.a.f(i2);
                int i4 = (int) (((f3.a - f4.a) * r10) + 0.5d);
                int i5 = (int) (((f3.b - f4.b) * r10) + 0.5d);
                f2 = b;
                int i6 = (int) (((f3.c - f4.c) * r10) + 0.5d);
                float f5 = (f3.d - f4.d) * (1.0f - b);
                ziVar = ziVar2;
                ai.c(i2, Mi.e(f3, i4, i5, i6, (int) (f5 + 0.5d)));
            }
            i2 <<= 1;
            b = f2;
            ziVar2 = ziVar;
        }
        C0456vi.g(this.e, ai.b(), Collections.singletonList(ziVar2));
    }
}
