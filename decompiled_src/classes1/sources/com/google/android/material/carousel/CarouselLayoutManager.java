package com.google.android.material.carousel;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.carousel.CarouselLayoutManager;
import o.AbstractC0133fd;
import o.AbstractC0214jf;
import o.AbstractC0431ud;
import o.Ad;
import o.C0421u3;
import o.C0441v3;
import o.C0451vd;
import o.C0461w3;
import o.Ed;
import o.Fd;
import o.Nb;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class CarouselLayoutManager extends AbstractC0431ud implements Ed {
    public final Nb p;
    public C0461w3 q;
    public final View.OnLayoutChangeListener r;

    public CarouselLayoutManager() {
        Nb nb = new Nb();
        new C0441v3();
        this.r = new View.OnLayoutChangeListener() { // from class: o.t3
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
                if (i != i5 || i2 != i6 || i3 != i7 || i4 != i8) {
                    view.post(new RunnableC0180i0(2, carouselLayoutManager));
                }
            }
        };
        this.p = nb;
        l0();
        C0(0);
    }

    public final boolean A0() {
        if (this.q.a == 0) {
            return true;
        }
        return false;
    }

    public final boolean B0() {
        if (A0() && C() == 1) {
            return true;
        }
        return false;
    }

    public final void C0(int i) {
        C0461w3 c0461w3;
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(AbstractC0214jf.a(i, "invalid orientation:"));
        }
        c(null);
        C0461w3 c0461w32 = this.q;
        if (c0461w32 == null || i != c0461w32.a) {
            if (i != 0) {
                if (i == 1) {
                    c0461w3 = new C0461w3(this, 0);
                } else {
                    throw new IllegalArgumentException("invalid orientation");
                }
            } else {
                c0461w3 = new C0461w3(this, 1);
            }
            this.q = c0461w3;
            l0();
        }
    }

    @Override // o.AbstractC0431ud
    public final boolean L() {
        return true;
    }

    @Override // o.AbstractC0431ud
    public final void Q(RecyclerView recyclerView) {
        Nb nb = this.p;
        Context context = recyclerView.getContext();
        float f2 = nb.a;
        if (f2 <= 0.0f) {
            f2 = context.getResources().getDimension(2131099890);
        }
        nb.a = f2;
        float f3 = nb.b;
        if (f3 <= 0.0f) {
            f3 = context.getResources().getDimension(2131099889);
        }
        nb.b = f3;
        l0();
        recyclerView.addOnLayoutChangeListener(this.r);
    }

    @Override // o.AbstractC0431ud
    public final void R(RecyclerView recyclerView) {
        recyclerView.removeOnLayoutChangeListener(this.r);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x003a, code lost:
    
        if (r7 == 1) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0043, code lost:
    
        if (B0() != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0046, code lost:
    
        if (r7 == 1) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x004f, code lost:
    
        if (B0() != false) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0056 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0057  */
    @Override // o.AbstractC0431ud
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View S(android.view.View r5, int r6, o.Ad r7, o.Fd r8) {
        /*
            r4 = this;
            int r7 = r4.v()
            r8 = 0
            if (r7 != 0) goto L8
            return r8
        L8:
            o.w3 r7 = r4.q
            int r7 = r7.a
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = -1
            r2 = 1
            if (r6 == r2) goto L53
            r3 = 2
            if (r6 == r3) goto L51
            r3 = 17
            if (r6 == r3) goto L49
            r3 = 33
            if (r6 == r3) goto L46
            r3 = 66
            if (r6 == r3) goto L3d
            r3 = 130(0x82, float:1.82E-43)
            if (r6 == r3) goto L3a
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r3 = "Unknown focus request:"
            r7.<init>(r3)
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            java.lang.String r7 = "CarouselLayoutManager"
            android.util.Log.d(r7, r6)
        L38:
            r6 = r0
            goto L54
        L3a:
            if (r7 != r2) goto L38
            goto L51
        L3d:
            if (r7 != 0) goto L38
            boolean r6 = r4.B0()
            if (r6 == 0) goto L51
            goto L53
        L46:
            if (r7 != r2) goto L38
            goto L53
        L49:
            if (r7 != 0) goto L38
            boolean r6 = r4.B0()
            if (r6 == 0) goto L53
        L51:
            r6 = r2
            goto L54
        L53:
            r6 = r1
        L54:
            if (r6 != r0) goto L57
            return r8
        L57:
            r7 = 0
            if (r6 != r1) goto L8b
            int r5 = o.AbstractC0431ud.H(r5)
            if (r5 != 0) goto L61
            return r8
        L61:
            android.view.View r5 = r4.u(r7)
            int r5 = o.AbstractC0431ud.H(r5)
            int r5 = r5 - r2
            if (r5 < 0) goto L7a
            int r6 = r4.B()
            if (r5 < r6) goto L73
            goto L7a
        L73:
            o.w3 r5 = r4.q
            r5.a()
            r5 = 0
            throw r5
        L7a:
            boolean r5 = r4.B0()
            if (r5 == 0) goto L86
            int r5 = r4.v()
            int r7 = r5 + (-1)
        L86:
            android.view.View r5 = r4.u(r7)
            goto Lc6
        L8b:
            int r5 = o.AbstractC0431ud.H(r5)
            int r6 = r4.B()
            int r6 = r6 - r2
            if (r5 != r6) goto L97
            return r8
        L97:
            int r5 = r4.v()
            int r5 = r5 - r2
            android.view.View r5 = r4.u(r5)
            int r5 = o.AbstractC0431ud.H(r5)
            int r5 = r5 + r2
            if (r5 < 0) goto Lb5
            int r6 = r4.B()
            if (r5 < r6) goto Lae
            goto Lb5
        Lae:
            o.w3 r5 = r4.q
            r5.a()
            r5 = 0
            throw r5
        Lb5:
            boolean r5 = r4.B0()
            if (r5 == 0) goto Lbc
            goto Lc2
        Lbc:
            int r5 = r4.v()
            int r7 = r5 + (-1)
        Lc2:
            android.view.View r5 = r4.u(r7)
        Lc6:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.carousel.CarouselLayoutManager.S(android.view.View, int, o.Ad, o.Fd):android.view.View");
    }

    @Override // o.AbstractC0431ud
    public final void T(AccessibilityEvent accessibilityEvent) {
        super.T(accessibilityEvent);
        if (v() > 0) {
            accessibilityEvent.setFromIndex(AbstractC0431ud.H(u(0)));
            accessibilityEvent.setToIndex(AbstractC0431ud.H(u(v() - 1)));
        }
    }

    @Override // o.AbstractC0431ud
    public final void W(int i, int i2) {
        B();
    }

    @Override // o.AbstractC0431ud
    public final void Z(int i, int i2) {
        B();
    }

    @Override // o.Ed
    public final PointF a(int i) {
        return null;
    }

    @Override // o.AbstractC0431ud
    public final void b0(Ad ad, Fd fd) {
        int i;
        if (fd.b() > 0) {
            if (A0()) {
                i = this.n;
            } else {
                i = this.f285o;
            }
            if (i > 0.0f) {
                B0();
                View view = ad.i(0, Long.MAX_VALUE).a;
                throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
            }
        }
        g0(ad);
    }

    @Override // o.AbstractC0431ud
    public final void c0(Fd fd) {
        if (v() != 0) {
            AbstractC0431ud.H(u(0));
        }
    }

    @Override // o.AbstractC0431ud
    public final boolean d() {
        return A0();
    }

    @Override // o.AbstractC0431ud
    public final boolean e() {
        return !A0();
    }

    @Override // o.AbstractC0431ud
    public final int j(Fd fd) {
        v();
        return 0;
    }

    @Override // o.AbstractC0431ud
    public final int k(Fd fd) {
        return 0;
    }

    @Override // o.AbstractC0431ud
    public final boolean k0(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
        return false;
    }

    @Override // o.AbstractC0431ud
    public final int l(Fd fd) {
        return 0;
    }

    @Override // o.AbstractC0431ud
    public final int m(Fd fd) {
        v();
        return 0;
    }

    @Override // o.AbstractC0431ud
    public final int m0(int i, Ad ad, Fd fd) {
        if (!A0() || v() == 0 || i == 0) {
            return 0;
        }
        View view = ad.i(0, Long.MAX_VALUE).a;
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    @Override // o.AbstractC0431ud
    public final int n(Fd fd) {
        return 0;
    }

    @Override // o.AbstractC0431ud
    public final void n0(int i) {
    }

    @Override // o.AbstractC0431ud
    public final int o(Fd fd) {
        return 0;
    }

    @Override // o.AbstractC0431ud
    public final int o0(int i, Ad ad, Fd fd) {
        if (!e() || v() == 0 || i == 0) {
            return 0;
        }
        View view = ad.i(0, Long.MAX_VALUE).a;
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    @Override // o.AbstractC0431ud
    public final C0451vd r() {
        return new C0451vd(-2, -2);
    }

    @Override // o.AbstractC0431ud
    public final void x0(RecyclerView recyclerView, int i) {
        C0421u3 c0421u3 = new C0421u3(this, recyclerView.getContext(), 0);
        c0421u3.a = i;
        y0(c0421u3);
    }

    @Override // o.AbstractC0431ud
    public final void y(View view, Rect rect) {
        super.y(view, rect);
        rect.centerY();
        if (A0()) {
            rect.centerX();
        }
        throw null;
    }

    @SuppressLint({"UnknownNullness"})
    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        new C0441v3();
        this.r = new View.OnLayoutChangeListener() { // from class: o.t3
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i3, int i22, int i32, int i4, int i5, int i6, int i7, int i8) {
                CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
                if (i3 != i5 || i22 != i6 || i32 != i7 || i4 != i8) {
                    view.post(new RunnableC0180i0(2, carouselLayoutManager));
                }
            }
        };
        this.p = new Nb();
        l0();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0133fd.b);
            obtainStyledAttributes.getInt(0, 0);
            l0();
            C0(obtainStyledAttributes.getInt(0, 0));
            obtainStyledAttributes.recycle();
        }
    }
}
