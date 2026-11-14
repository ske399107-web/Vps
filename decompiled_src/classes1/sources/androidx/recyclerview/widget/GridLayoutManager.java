package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.WeakHashMap;
import o.AbstractC0214jf;
import o.AbstractC0431ud;
import o.Ad;
import o.C;
import o.C0451vd;
import o.D;
import o.Dh;
import o.Fd;
import o.H1;
import o.R8;
import o.V8;
import o.W9;
import o.Y9;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    public boolean E;
    public int F;
    public int[] G;
    public View[] H;
    public final SparseIntArray I;
    public final SparseIntArray J;
    public final H1 K;
    public final Rect L;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.E = false;
        this.F = -1;
        this.I = new SparseIntArray();
        this.J = new SparseIntArray();
        this.K = new H1(16);
        this.L = new Rect();
        l1(AbstractC0431ud.I(context, attributeSet, i, i2).b);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void B0(Fd fd, Y9 y9, R8 r8) {
        int i;
        int i2 = this.F;
        for (int i3 = 0; i3 < this.F && (i = y9.d) >= 0 && i < fd.b() && i2 > 0; i3++) {
            r8.a(y9.d, Math.max(0, y9.g));
            this.K.getClass();
            i2--;
            y9.d += y9.e;
        }
    }

    @Override // o.AbstractC0431ud
    public final int J(Ad ad, Fd fd) {
        if (this.p == 0) {
            return this.F;
        }
        if (fd.b() < 1) {
            return 0;
        }
        return h1(fd.b() - 1, ad, fd) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final View N0(Ad ad, Fd fd, int i, int i2, int i3) {
        int i4;
        G0();
        int k = this.r.k();
        int g = this.r.g();
        if (i2 > i) {
            i4 = 1;
        } else {
            i4 = -1;
        }
        View view = null;
        View view2 = null;
        while (i != i2) {
            View u = u(i);
            int H = AbstractC0431ud.H(u);
            if (H >= 0 && H < i3 && i1(H, ad, fd) == 0) {
                if (((C0451vd) u.getLayoutParams()).a.i()) {
                    if (view2 == null) {
                        view2 = u;
                    }
                } else {
                    if (this.r.e(u) < g && this.r.b(u) >= k) {
                        return u;
                    }
                    if (view == null) {
                        view = u;
                    }
                }
            }
            i += i4;
        }
        if (view == null) {
            return view2;
        }
        return view;
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x00e1, code lost:
    
        if (r13 == r5) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0103, code lost:
    
        if (r13 == r5) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0022, code lost:
    
        if (((java.util.ArrayList) r22.a.d).contains(r3) != false) goto L5;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x011c  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, o.AbstractC0431ud
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View S(android.view.View r23, int r24, o.Ad r25, o.Fd r26) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.S(android.view.View, int, o.Ad, o.Fd):android.view.View");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0099, code lost:
    
        r22.b = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x009b, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r8v32 */
    /* JADX WARN: Type inference failed for: r8v33 */
    /* JADX WARN: Type inference failed for: r8v38 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void T0(o.Ad r19, o.Fd r20, o.Y9 r21, o.X9 r22) {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.T0(o.Ad, o.Fd, o.Y9, o.X9):void");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void U0(Ad ad, Fd fd, W9 w9, int i) {
        boolean z;
        m1();
        if (fd.b() > 0 && !fd.g) {
            if (i == 1) {
                z = true;
            } else {
                z = false;
            }
            int i1 = i1(w9.b, ad, fd);
            if (z) {
                while (i1 > 0) {
                    int i2 = w9.b;
                    if (i2 <= 0) {
                        break;
                    }
                    int i3 = i2 - 1;
                    w9.b = i3;
                    i1 = i1(i3, ad, fd);
                }
            } else {
                int b = fd.b() - 1;
                int i4 = w9.b;
                while (i4 < b) {
                    int i5 = i4 + 1;
                    int i12 = i1(i5, ad, fd);
                    if (i12 <= i1) {
                        break;
                    }
                    i4 = i5;
                    i1 = i12;
                }
                w9.b = i4;
            }
        }
        f1();
    }

    @Override // o.AbstractC0431ud
    public final void V(Ad ad, Fd fd, View view, D d) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof V8)) {
            U(view, d);
            return;
        }
        V8 v8 = (V8) layoutParams;
        int h1 = h1(v8.a.b(), ad, fd);
        if (this.p == 0) {
            d.j(C.B(false, v8.e, v8.f154f, h1, 1));
        } else {
            d.j(C.B(false, h1, 1, v8.e, v8.f154f));
        }
    }

    @Override // o.AbstractC0431ud
    public final void W(int i, int i2) {
        H1 h1 = this.K;
        h1.z();
        ((SparseIntArray) h1.c).clear();
    }

    @Override // o.AbstractC0431ud
    public final void X() {
        H1 h1 = this.K;
        h1.z();
        ((SparseIntArray) h1.c).clear();
    }

    @Override // o.AbstractC0431ud
    public final void Y(int i, int i2) {
        H1 h1 = this.K;
        h1.z();
        ((SparseIntArray) h1.c).clear();
    }

    @Override // o.AbstractC0431ud
    public final void Z(int i, int i2) {
        H1 h1 = this.K;
        h1.z();
        ((SparseIntArray) h1.c).clear();
    }

    @Override // o.AbstractC0431ud
    public final void a0(int i, int i2) {
        H1 h1 = this.K;
        h1.z();
        ((SparseIntArray) h1.c).clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void a1(boolean z) {
        if (!z) {
            super.a1(false);
            return;
        }
        throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, o.AbstractC0431ud
    public final void b0(Ad ad, Fd fd) {
        boolean z = fd.g;
        SparseIntArray sparseIntArray = this.J;
        SparseIntArray sparseIntArray2 = this.I;
        if (z) {
            int v = v();
            for (int i = 0; i < v; i++) {
                V8 v8 = (V8) u(i).getLayoutParams();
                int b = v8.a.b();
                sparseIntArray2.put(b, v8.f154f);
                sparseIntArray.put(b, v8.e);
            }
        }
        super.b0(ad, fd);
        sparseIntArray2.clear();
        sparseIntArray.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, o.AbstractC0431ud
    public final void c0(Fd fd) {
        super.c0(fd);
        this.E = false;
    }

    public final void e1(int i) {
        int i2;
        int[] iArr = this.G;
        int i3 = this.F;
        if (iArr == null || iArr.length != i3 + 1 || iArr[iArr.length - 1] != i) {
            iArr = new int[i3 + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i / i3;
        int i6 = i % i3;
        int i7 = 0;
        for (int i8 = 1; i8 <= i3; i8++) {
            i4 += i6;
            if (i4 > 0 && i3 - i4 < i6) {
                i2 = i5 + 1;
                i4 -= i3;
            } else {
                i2 = i5;
            }
            i7 += i2;
            iArr[i8] = i7;
        }
        this.G = iArr;
    }

    @Override // o.AbstractC0431ud
    public final boolean f(C0451vd c0451vd) {
        return c0451vd instanceof V8;
    }

    public final void f1() {
        View[] viewArr = this.H;
        if (viewArr == null || viewArr.length != this.F) {
            this.H = new View[this.F];
        }
    }

    public final int g1(int i, int i2) {
        if (this.p == 1 && S0()) {
            int[] iArr = this.G;
            int i3 = this.F;
            return iArr[i3 - i] - iArr[(i3 - i) - i2];
        }
        int[] iArr2 = this.G;
        return iArr2[i2 + i] - iArr2[i];
    }

    public final int h1(int i, Ad ad, Fd fd) {
        boolean z = fd.g;
        H1 h1 = this.K;
        if (!z) {
            int i2 = this.F;
            h1.getClass();
            return H1.y(i, i2);
        }
        int b = ad.b(i);
        if (b == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
            return 0;
        }
        int i3 = this.F;
        h1.getClass();
        return H1.y(b, i3);
    }

    public final int i1(int i, Ad ad, Fd fd) {
        boolean z = fd.g;
        H1 h1 = this.K;
        if (!z) {
            int i2 = this.F;
            h1.getClass();
            return i % i2;
        }
        int i3 = this.J.get(i, -1);
        if (i3 != -1) {
            return i3;
        }
        int b = ad.b(i);
        if (b == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
            return 0;
        }
        int i4 = this.F;
        h1.getClass();
        return b % i4;
    }

    public final int j1(int i, Ad ad, Fd fd) {
        boolean z = fd.g;
        H1 h1 = this.K;
        if (!z) {
            h1.getClass();
            return 1;
        }
        int i2 = this.I.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        if (ad.b(i) == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
            return 1;
        }
        h1.getClass();
        return 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, o.AbstractC0431ud
    public final int k(Fd fd) {
        return D0(fd);
    }

    public final void k1(View view, int i, boolean z) {
        int i2;
        int i3;
        boolean u0;
        V8 v8 = (V8) view.getLayoutParams();
        Rect rect = v8.b;
        int i4 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) v8).topMargin + ((ViewGroup.MarginLayoutParams) v8).bottomMargin;
        int i5 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) v8).leftMargin + ((ViewGroup.MarginLayoutParams) v8).rightMargin;
        int g1 = g1(v8.e, v8.f154f);
        if (this.p == 1) {
            i3 = AbstractC0431ud.w(false, g1, i, i5, ((ViewGroup.MarginLayoutParams) v8).width);
            i2 = AbstractC0431ud.w(true, this.r.l(), this.m, i4, ((ViewGroup.MarginLayoutParams) v8).height);
        } else {
            int w = AbstractC0431ud.w(false, g1, i, i4, ((ViewGroup.MarginLayoutParams) v8).height);
            int w2 = AbstractC0431ud.w(true, this.r.l(), this.l, i5, ((ViewGroup.MarginLayoutParams) v8).width);
            i2 = w;
            i3 = w2;
        }
        C0451vd c0451vd = (C0451vd) view.getLayoutParams();
        if (z) {
            u0 = w0(view, i3, i2, c0451vd);
        } else {
            u0 = u0(view, i3, i2, c0451vd);
        }
        if (u0) {
            view.measure(i3, i2);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, o.AbstractC0431ud
    public final int l(Fd fd) {
        return E0(fd);
    }

    public final void l1(int i) {
        if (i == this.F) {
            return;
        }
        this.E = true;
        if (i >= 1) {
            this.F = i;
            this.K.z();
            l0();
            return;
        }
        throw new IllegalArgumentException(AbstractC0214jf.a(i, "Span count should be at least 1. Provided "));
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, o.AbstractC0431ud
    public final int m0(int i, Ad ad, Fd fd) {
        m1();
        f1();
        return super.m0(i, ad, fd);
    }

    public final void m1() {
        int D;
        int G;
        if (this.p == 1) {
            D = this.n - F();
            G = E();
        } else {
            D = this.f285o - D();
            G = G();
        }
        e1(D - G);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, o.AbstractC0431ud
    public final int n(Fd fd) {
        return D0(fd);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, o.AbstractC0431ud
    public final int o(Fd fd) {
        return E0(fd);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, o.AbstractC0431ud
    public final int o0(int i, Ad ad, Fd fd) {
        m1();
        f1();
        return super.o0(i, ad, fd);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, o.AbstractC0431ud
    public final C0451vd r() {
        if (this.p == 0) {
            return new V8(-2, -1);
        }
        return new V8(-1, -2);
    }

    @Override // o.AbstractC0431ud
    public final void r0(Rect rect, int i, int i2) {
        int g;
        int g2;
        if (this.G == null) {
            super.r0(rect, i, i2);
        }
        int F = F() + E();
        int D = D() + G();
        if (this.p == 1) {
            int height = rect.height() + D;
            RecyclerView recyclerView = this.b;
            WeakHashMap weakHashMap = Dh.a;
            g2 = AbstractC0431ud.g(i2, height, recyclerView.getMinimumHeight());
            int[] iArr = this.G;
            g = AbstractC0431ud.g(i, iArr[iArr.length - 1] + F, this.b.getMinimumWidth());
        } else {
            int width = rect.width() + F;
            RecyclerView recyclerView2 = this.b;
            WeakHashMap weakHashMap2 = Dh.a;
            g = AbstractC0431ud.g(i, width, recyclerView2.getMinimumWidth());
            int[] iArr2 = this.G;
            g2 = AbstractC0431ud.g(i2, iArr2[iArr2.length - 1] + D, this.b.getMinimumHeight());
        }
        this.b.setMeasuredDimension(g, g2);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [o.V8, o.vd] */
    @Override // o.AbstractC0431ud
    public final C0451vd s(Context context, AttributeSet attributeSet) {
        ?? c0451vd = new C0451vd(context, attributeSet);
        c0451vd.e = -1;
        c0451vd.f154f = 0;
        return c0451vd;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [o.V8, o.vd] */
    /* JADX WARN: Type inference failed for: r0v2, types: [o.V8, o.vd] */
    @Override // o.AbstractC0431ud
    public final C0451vd t(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ?? c0451vd = new C0451vd((ViewGroup.MarginLayoutParams) layoutParams);
            c0451vd.e = -1;
            c0451vd.f154f = 0;
            return c0451vd;
        }
        ?? c0451vd2 = new C0451vd(layoutParams);
        c0451vd2.e = -1;
        c0451vd2.f154f = 0;
        return c0451vd2;
    }

    @Override // o.AbstractC0431ud
    public final int x(Ad ad, Fd fd) {
        if (this.p == 1) {
            return this.F;
        }
        if (fd.b() < 1) {
            return 0;
        }
        return h1(fd.b() - 1, ad, fd) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, o.AbstractC0431ud
    public final boolean z0() {
        if (this.z == null && !this.E) {
            return true;
        }
        return false;
    }

    public GridLayoutManager(int i) {
        super(1);
        this.E = false;
        this.F = -1;
        this.I = new SparseIntArray();
        this.J = new SparseIntArray();
        this.K = new H1(16);
        this.L = new Rect();
        l1(i);
    }
}
