package o;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import android.view.animation.Interpolator;
import java.util.Objects;
import java.util.WeakHashMap;

/* renamed from: o.ui, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class ViewOnApplyWindowInsetsListenerC0436ui implements View.OnApplyWindowInsetsListener {
    public final R4 a;
    public Mi b;

    public ViewOnApplyWindowInsetsListenerC0436ui(View view, R4 r4) {
        Mi mi;
        Ei ai;
        this.a = r4;
        WeakHashMap weakHashMap = Dh.a;
        Mi a = AbstractC0475wh.a(view);
        if (a != null) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                ai = new Di(a);
            } else if (i >= 29) {
                ai = new Ci(a);
            } else {
                ai = new Ai(a);
            }
            mi = ai.b();
        } else {
            mi = null;
        }
        this.b = mi;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        Ki ki;
        Interpolator interpolator;
        if (!view.isLaidOut()) {
            this.b = Mi.g(view, windowInsets);
            return C0456vi.i(view, windowInsets);
        }
        Mi g = Mi.g(view, windowInsets);
        if (this.b == null) {
            WeakHashMap weakHashMap = Dh.a;
            this.b = AbstractC0475wh.a(view);
        }
        if (this.b == null) {
            this.b = g;
            return C0456vi.i(view, windowInsets);
        }
        R4 j = C0456vi.j(view);
        if (j != null && Objects.equals((WindowInsets) j.b, windowInsets)) {
            return C0456vi.i(view, windowInsets);
        }
        Mi mi = this.b;
        int i = 1;
        int i2 = 0;
        while (true) {
            ki = g.a;
            if (i > 256) {
                break;
            }
            if (!ki.f(i).equals(mi.a.f(i))) {
                i2 |= i;
            }
            i <<= 1;
        }
        if (i2 == 0) {
            return C0456vi.i(view, windowInsets);
        }
        Mi mi2 = this.b;
        if ((i2 & 8) != 0) {
            if (ki.f(8).d > mi2.a.f(8).d) {
                interpolator = C0456vi.e;
            } else {
                interpolator = C0456vi.f289f;
            }
        } else {
            interpolator = C0456vi.g;
        }
        zi ziVar = new zi(i2, interpolator, 160L);
        ziVar.a.d(0.0f);
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(ziVar.a.a());
        C0407t9 f2 = ki.f(i2);
        C0407t9 f3 = mi2.a.f(i2);
        int min = Math.min(f2.a, f3.a);
        int i3 = f2.b;
        int i4 = f3.b;
        int min2 = Math.min(i3, i4);
        int i5 = f2.c;
        int i6 = f3.c;
        int min3 = Math.min(i5, i6);
        int i7 = f2.d;
        int i8 = i2;
        int i9 = f3.d;
        H1 h1 = new H1(C0407t9.b(min, min2, min3, Math.min(i7, i9)), C0407t9.b(Math.max(f2.a, f3.a), Math.max(i3, i4), Math.max(i5, i6), Math.max(i7, i9)), 23, false);
        C0456vi.f(view, windowInsets, false);
        duration.addUpdateListener(new C0416ti(ziVar, g, mi2, i8, view));
        duration.addListener(new C0374rg(ziVar, view));
        ViewTreeObserverOnPreDrawListenerC0351qc.a(view, new E5(view, ziVar, h1, duration));
        this.b = g;
        return C0456vi.i(view, windowInsets);
    }
}
