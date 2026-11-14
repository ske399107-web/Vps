package o;

import android.util.Log;
import android.view.animation.BaseInterpolator;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Dd {
    public int a;
    public int b;
    public int c;
    public int d;
    public BaseInterpolator e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f81f;
    public int g;

    public final void a(RecyclerView recyclerView) {
        int i = this.d;
        if (i >= 0) {
            this.d = -1;
            recyclerView.M(i);
            this.f81f = false;
            return;
        }
        if (this.f81f) {
            BaseInterpolator baseInterpolator = this.e;
            if (baseInterpolator != null && this.c < 1) {
                throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
            }
            int i2 = this.c;
            if (i2 >= 1) {
                recyclerView.W.b(this.a, this.b, i2, baseInterpolator);
                int i3 = this.g + 1;
                this.g = i3;
                if (i3 > 10) {
                    Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                }
                this.f81f = false;
                return;
            }
            throw new IllegalStateException("Scroll duration must be a positive number");
        }
        this.g = 0;
    }
}
