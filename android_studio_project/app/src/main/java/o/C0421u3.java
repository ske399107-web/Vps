package o;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.google.android.material.carousel.CarouselLayoutManager;

/* renamed from: o.u3, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0421u3 extends C0030aa {
    public final /* synthetic */ int q;
    public final /* synthetic */ Object r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0421u3(Object obj, Context context, int i) {
        super(context);
        this.q = i;
        this.r = obj;
    }

    @Override // o.C0030aa
    public int b(View view, int i) {
        switch (this.q) {
            case 0:
                ((CarouselLayoutManager) this.r).getClass();
                return 0;
            default:
                return super.b(view, i);
        }
    }

    @Override // o.C0030aa
    public int c(View view, int i) {
        switch (this.q) {
            case 0:
                ((CarouselLayoutManager) this.r).getClass();
                return 0;
            default:
                return super.c(view, i);
        }
    }

    @Override // o.C0030aa
    public float d(DisplayMetrics displayMetrics) {
        switch (this.q) {
            case 1:
                return 100.0f / displayMetrics.densityDpi;
            default:
                return super.d(displayMetrics);
        }
    }

    @Override // o.C0030aa
    public int e(int i) {
        switch (this.q) {
            case 1:
                return Math.min(100, super.e(i));
            default:
                return super.e(i);
        }
    }

    @Override // o.C0030aa
    public PointF f(int i) {
        switch (this.q) {
            case 0:
                ((CarouselLayoutManager) this.r).getClass();
                return null;
            default:
                return super.f(i);
        }
    }

    @Override // o.C0030aa
    public void h(View view, Dd dd) {
        switch (this.q) {
            case 1:
                Ac ac = (Ac) this.r;
                int[] a = ac.a(ac.a.getLayoutManager(), view);
                int i = a[0];
                int i2 = a[1];
                int ceil = (int) Math.ceil(e(Math.max(Math.abs(i), Math.abs(i2))) / 0.3356d);
                if (ceil > 0) {
                    DecelerateInterpolator decelerateInterpolator = this.j;
                    dd.a = i;
                    dd.b = i2;
                    dd.c = ceil;
                    dd.e = decelerateInterpolator;
                    dd.f81f = true;
                    return;
                }
                return;
            default:
                super.h(view, dd);
                return;
        }
    }
}
