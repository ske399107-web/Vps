package o;

import android.view.animation.Interpolator;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class yi {
    public final int a;
    public float b;
    public final Interpolator c;
    public final long d;

    public yi(int i, Interpolator interpolator, long j) {
        this.a = i;
        this.c = interpolator;
        this.d = j;
    }

    public long a() {
        return this.d;
    }

    public float b() {
        Interpolator interpolator = this.c;
        if (interpolator != null) {
            return interpolator.getInterpolation(this.b);
        }
        return this.b;
    }

    public int c() {
        return this.a;
    }

    public void d(float f2) {
        this.b = f2;
    }
}
