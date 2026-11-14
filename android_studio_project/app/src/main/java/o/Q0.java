package o;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Q0 {
    public static final LinearInterpolator a = new LinearInterpolator();
    public static final C0306o7 b = new Aa(C0306o7.d);
    public static final C0306o7 c = new C0306o7();
    public static final C0306o7 d = new Aa(C0306o7.e);
    public static final DecelerateInterpolator e = new DecelerateInterpolator();

    public static float a(float f2, float f3, float f4) {
        return ((f3 - f2) * f4) + f2;
    }

    public static float b(float f2, float f3, float f4, float f5, float f6) {
        if (f6 <= f4) {
            return f2;
        }
        if (f6 >= f5) {
            return f3;
        }
        return a(f2, f3, (f6 - f4) / (f5 - f4));
    }

    public static int c(int i, int i2, float f2) {
        return Math.round(f2 * (i2 - i)) + i;
    }
}
