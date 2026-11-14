package o;

import android.os.Build;
import android.view.animation.Interpolator;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class zi {
    public yi a;

    public zi(int i, Interpolator interpolator, long j) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.a = new xi(AbstractC0437v.i(i, interpolator, j));
        } else {
            this.a = new yi(i, interpolator, j);
        }
    }
}
