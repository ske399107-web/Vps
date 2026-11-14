package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.WeakHashMap;
import o.AbstractC0431ud;
import o.AbstractC0522z6;
import o.Ad;
import o.Ba;
import o.C;
import o.C0030aa;
import o.C0075cf;
import o.C0095df;
import o.C0135ff;
import o.C0411td;
import o.C0451vd;
import o.D;
import o.Dh;
import o.Ed;
import o.Fd;
import o.G9;
import o.H1;
import o.Ha;
import o.J2;
import o.R8;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class StaggeredGridLayoutManager extends AbstractC0431ud implements Ed {
    public final H1 B;
    public final int C;
    public boolean D;
    public boolean E;
    public C0135ff F;
    public final Rect G;
    public final C0075cf H;
    public final boolean I;
    public int[] J;
    public final J2 K;
    public final int p;
    public final Ba[] q;
    public final AbstractC0522z6 r;
    public final AbstractC0522z6 s;
    public final int t;
    public int u;
    public final G9 v;
    public boolean w;
    public final BitSet y;
    public boolean x = false;
    public int z = -1;
    public int A = PKIFailureInfo.systemUnavail;

    /* JADX WARN: Type inference failed for: r7v3, types: [o.G9, java.lang.Object] */
    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.p = -1;
        this.w = false;
        H1 h1 = new H1(19, false);
        this.B = h1;
        this.C = 2;
        this.G = new Rect();
        this.H = new C0075cf(this);
        this.I = true;
        this.K = new J2(10, this);
        C0411td I = AbstractC0431ud.I(context, attributeSet, i, i2);
        int i3 = I.a;
        if (i3 != 0 && i3 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        c(null);
        if (i3 != this.t) {
            this.t = i3;
            AbstractC0522z6 abstractC0522z6 = this.r;
            this.r = this.s;
            this.s = abstractC0522z6;
            l0();
        }
        int i4 = I.b;
        c(null);
        if (i4 != this.p) {
            int[] iArr = (int[]) h1.b;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            h1.c = null;
            l0();
            this.p = i4;
            this.y = new BitSet(this.p);
            this.q = new Ba[this.p];
            for (int i5 = 0; i5 < this.p; i5++) {
                this.q[i5] = new Ba(this, i5);
            }
            l0();
        }
        boolean z = I.c;
        c(null);
        C0135ff c0135ff = this.F;
        if (c0135ff != null && c0135ff.h != z) {
            c0135ff.h = z;
        }
        this.w = z;
        l0();
        ?? obj = new Object();
        obj.a = true;
        obj.f95f = 0;
        obj.g = 0;
        this.v = obj;
        this.r = AbstractC0522z6.a(this, this.t);
        this.s = AbstractC0522z6.a(this, 1 - this.t);
    }

    public static int d1(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        if (mode != Integer.MIN_VALUE && mode != 1073741824) {
            return i;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode);
    }

    public final int A0(int i) {
        boolean z;
        if (v() == 0) {
            if (!this.x) {
                return -1;
            }
            return 1;
        }
        if (i < K0()) {
            z = true;
        } else {
            z = false;
        }
        if (z != this.x) {
            return -1;
        }
        return 1;
    }

    public final boolean B0() {
        int K0;
        if (v() != 0 && this.C != 0 && this.g) {
            if (this.x) {
                K0 = L0();
                K0();
            } else {
                K0 = K0();
                L0();
            }
            H1 h1 = this.B;
            if (K0 == 0 && P0() != null) {
                int[] iArr = (int[]) h1.b;
                if (iArr != null) {
                    Arrays.fill(iArr, -1);
                }
                h1.c = null;
                this.f284f = true;
                l0();
                return true;
            }
        }
        return false;
    }

    public final int C0(Fd fd) {
        if (v() == 0) {
            return 0;
        }
        AbstractC0522z6 abstractC0522z6 = this.r;
        boolean z = !this.I;
        return Ha.m(fd, abstractC0522z6, H0(z), G0(z), this, this.I);
    }

    public final int D0(Fd fd) {
        if (v() == 0) {
            return 0;
        }
        AbstractC0522z6 abstractC0522z6 = this.r;
        boolean z = !this.I;
        return Ha.n(fd, abstractC0522z6, H0(z), G0(z), this, this.I, this.x);
    }

    public final int E0(Fd fd) {
        if (v() == 0) {
            return 0;
        }
        AbstractC0522z6 abstractC0522z6 = this.r;
        boolean z = !this.I;
        return Ha.o(fd, abstractC0522z6, H0(z), G0(z), this, this.I);
    }

    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [int, boolean] */
    public final int F0(Ad ad, G9 g9, Fd fd) {
        int i;
        int k;
        int i2;
        int M0;
        int i3;
        Ba ba;
        ?? r6;
        int i4;
        int i5;
        int c;
        int k2;
        int c2;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10 = 0;
        int i11 = 1;
        this.y.set(0, this.p, true);
        G9 g92 = this.v;
        if (g92.i) {
            if (g9.e == 1) {
                i = Integer.MAX_VALUE;
            } else {
                i = PKIFailureInfo.systemUnavail;
            }
        } else if (g9.e == 1) {
            i = g9.g + g9.b;
        } else {
            i = g9.f95f - g9.b;
        }
        int i12 = g9.e;
        for (int i13 = 0; i13 < this.p; i13++) {
            if (!((ArrayList) this.q[i13].f73f).isEmpty()) {
                c1(this.q[i13], i12, i);
            }
        }
        if (this.x) {
            k = this.r.g();
        } else {
            k = this.r.k();
        }
        boolean z = false;
        while (true) {
            int i14 = g9.c;
            if (i14 >= 0 && i14 < fd.b()) {
                i2 = i11;
            } else {
                i2 = i10;
            }
            if (i2 == 0 || (!g92.i && this.y.isEmpty())) {
                break;
            }
            View view = ad.i(g9.c, Long.MAX_VALUE).a;
            g9.c += g9.d;
            C0095df c0095df = (C0095df) view.getLayoutParams();
            int b = c0095df.a.b();
            H1 h1 = this.B;
            int[] iArr = (int[]) h1.b;
            if (iArr != null && b < iArr.length) {
                i3 = iArr[b];
            } else {
                i3 = -1;
            }
            if (i3 == -1) {
                if (T0(g9.e)) {
                    i9 = this.p - i11;
                    i8 = -1;
                    i7 = -1;
                } else {
                    i7 = i11;
                    i8 = this.p;
                    i9 = i10;
                }
                Ba ba2 = null;
                if (g9.e == i11) {
                    int k3 = this.r.k();
                    int i15 = Integer.MAX_VALUE;
                    while (i9 != i8) {
                        Ba ba3 = this.q[i9];
                        int g = ba3.g(k3);
                        if (g < i15) {
                            i15 = g;
                            ba2 = ba3;
                        }
                        i9 += i7;
                    }
                } else {
                    int g2 = this.r.g();
                    int i16 = PKIFailureInfo.systemUnavail;
                    while (i9 != i8) {
                        Ba ba4 = this.q[i9];
                        int i17 = ba4.i(g2);
                        if (i17 > i16) {
                            ba2 = ba4;
                            i16 = i17;
                        }
                        i9 += i7;
                    }
                }
                ba = ba2;
                h1.s(b);
                ((int[]) h1.b)[b] = ba.e;
            } else {
                ba = this.q[i3];
            }
            c0095df.e = ba;
            if (g9.e == 1) {
                r6 = 0;
                b(view, -1, false);
            } else {
                r6 = 0;
                b(view, 0, false);
            }
            if (this.t == 1) {
                i4 = 1;
                R0(view, AbstractC0431ud.w(r6, this.u, this.l, r6, ((ViewGroup.MarginLayoutParams) c0095df).width), AbstractC0431ud.w(true, this.f285o, this.m, D() + G(), ((ViewGroup.MarginLayoutParams) c0095df).height));
            } else {
                i4 = 1;
                R0(view, AbstractC0431ud.w(true, this.n, this.l, F() + E(), ((ViewGroup.MarginLayoutParams) c0095df).width), AbstractC0431ud.w(false, this.u, this.m, 0, ((ViewGroup.MarginLayoutParams) c0095df).height));
            }
            if (g9.e == i4) {
                c = ba.g(k);
                i5 = this.r.c(view) + c;
            } else {
                i5 = ba.i(k);
                c = i5 - this.r.c(view);
            }
            if (g9.e == 1) {
                Ba ba5 = c0095df.e;
                ba5.getClass();
                C0095df c0095df2 = (C0095df) view.getLayoutParams();
                c0095df2.e = ba5;
                ArrayList arrayList = (ArrayList) ba5.f73f;
                arrayList.add(view);
                ba5.c = PKIFailureInfo.systemUnavail;
                if (arrayList.size() == 1) {
                    ba5.b = PKIFailureInfo.systemUnavail;
                }
                if (c0095df2.a.i() || c0095df2.a.l()) {
                    ba5.d = ((StaggeredGridLayoutManager) ba5.g).r.c(view) + ba5.d;
                }
            } else {
                Ba ba6 = c0095df.e;
                ba6.getClass();
                C0095df c0095df3 = (C0095df) view.getLayoutParams();
                c0095df3.e = ba6;
                ArrayList arrayList2 = (ArrayList) ba6.f73f;
                arrayList2.add(0, view);
                ba6.b = PKIFailureInfo.systemUnavail;
                if (arrayList2.size() == 1) {
                    ba6.c = PKIFailureInfo.systemUnavail;
                }
                if (c0095df3.a.i() || c0095df3.a.l()) {
                    ba6.d = ((StaggeredGridLayoutManager) ba6.g).r.c(view) + ba6.d;
                }
            }
            if (Q0() && this.t == 1) {
                c2 = this.s.g() - (((this.p - 1) - ba.e) * this.u);
                k2 = c2 - this.s.c(view);
            } else {
                k2 = this.s.k() + (ba.e * this.u);
                c2 = this.s.c(view) + k2;
            }
            if (this.t == 1) {
                AbstractC0431ud.N(view, k2, c, c2, i5);
            } else {
                AbstractC0431ud.N(view, c, k2, i5, c2);
            }
            c1(ba, g92.e, i);
            V0(ad, g92);
            if (g92.h && view.hasFocusable()) {
                i6 = 0;
                this.y.set(ba.e, false);
            } else {
                i6 = 0;
            }
            i10 = i6;
            i11 = 1;
            z = true;
        }
        int i18 = i10;
        if (!z) {
            V0(ad, g92);
        }
        if (g92.e == -1) {
            M0 = this.r.k() - N0(this.r.k());
        } else {
            M0 = M0(this.r.g()) - this.r.g();
        }
        if (M0 > 0) {
            return Math.min(g9.b, M0);
        }
        return i18;
    }

    public final View G0(boolean z) {
        int k = this.r.k();
        int g = this.r.g();
        View view = null;
        for (int v = v() - 1; v >= 0; v--) {
            View u = u(v);
            int e = this.r.e(u);
            int b = this.r.b(u);
            if (b > k && e < g) {
                if (b > g && z) {
                    if (view == null) {
                        view = u;
                    }
                } else {
                    return u;
                }
            }
        }
        return view;
    }

    public final View H0(boolean z) {
        int k = this.r.k();
        int g = this.r.g();
        int v = v();
        View view = null;
        for (int i = 0; i < v; i++) {
            View u = u(i);
            int e = this.r.e(u);
            if (this.r.b(u) > k && e < g) {
                if (e < k && z) {
                    if (view == null) {
                        view = u;
                    }
                } else {
                    return u;
                }
            }
        }
        return view;
    }

    public final void I0(Ad ad, Fd fd, boolean z) {
        int g;
        int M0 = M0(PKIFailureInfo.systemUnavail);
        if (M0 != Integer.MIN_VALUE && (g = this.r.g() - M0) > 0) {
            int i = g - (-Z0(-g, ad, fd));
            if (z && i > 0) {
                this.r.p(i);
            }
        }
    }

    @Override // o.AbstractC0431ud
    public final int J(Ad ad, Fd fd) {
        if (this.t == 0) {
            return this.p;
        }
        return super.J(ad, fd);
    }

    public final void J0(Ad ad, Fd fd, boolean z) {
        int k;
        int N0 = N0(Integer.MAX_VALUE);
        if (N0 != Integer.MAX_VALUE && (k = N0 - this.r.k()) > 0) {
            int Z0 = k - Z0(k, ad, fd);
            if (z && Z0 > 0) {
                this.r.p(-Z0);
            }
        }
    }

    public final int K0() {
        if (v() == 0) {
            return 0;
        }
        return AbstractC0431ud.H(u(0));
    }

    @Override // o.AbstractC0431ud
    public final boolean L() {
        if (this.C != 0) {
            return true;
        }
        return false;
    }

    public final int L0() {
        int v = v();
        if (v == 0) {
            return 0;
        }
        return AbstractC0431ud.H(u(v - 1));
    }

    public final int M0(int i) {
        int g = this.q[0].g(i);
        for (int i2 = 1; i2 < this.p; i2++) {
            int g2 = this.q[i2].g(i);
            if (g2 > g) {
                g = g2;
            }
        }
        return g;
    }

    public final int N0(int i) {
        int i2 = this.q[0].i(i);
        for (int i3 = 1; i3 < this.p; i3++) {
            int i4 = this.q[i3].i(i);
            if (i4 < i2) {
                i2 = i4;
            }
        }
        return i2;
    }

    @Override // o.AbstractC0431ud
    public final void O(int i) {
        super.O(i);
        for (int i2 = 0; i2 < this.p; i2++) {
            Ba ba = this.q[i2];
            int i3 = ba.b;
            if (i3 != Integer.MIN_VALUE) {
                ba.b = i3 + i;
            }
            int i4 = ba.c;
            if (i4 != Integer.MIN_VALUE) {
                ba.c = i4 + i;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void O0(int r11, int r12, int r13) {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.O0(int, int, int):void");
    }

    @Override // o.AbstractC0431ud
    public final void P(int i) {
        super.P(i);
        for (int i2 = 0; i2 < this.p; i2++) {
            Ba ba = this.q[i2];
            int i3 = ba.b;
            if (i3 != Integer.MIN_VALUE) {
                ba.b = i3 + i;
            }
            int i4 = ba.c;
            if (i4 != Integer.MIN_VALUE) {
                ba.c = i4 + i;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0107 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x002c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View P0() {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.P0():android.view.View");
    }

    public final boolean Q0() {
        if (C() == 1) {
            return true;
        }
        return false;
    }

    @Override // o.AbstractC0431ud
    public final void R(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.b;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(this.K);
        }
        for (int i = 0; i < this.p; i++) {
            this.q[i].b();
        }
        recyclerView.requestLayout();
    }

    public final void R0(View view, int i, int i2) {
        RecyclerView recyclerView = this.b;
        Rect rect = this.G;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.J(view));
        }
        C0095df c0095df = (C0095df) view.getLayoutParams();
        int d1 = d1(i, ((ViewGroup.MarginLayoutParams) c0095df).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) c0095df).rightMargin + rect.right);
        int d12 = d1(i2, ((ViewGroup.MarginLayoutParams) c0095df).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) c0095df).bottomMargin + rect.bottom);
        if (u0(view, d1, d12, c0095df)) {
            view.measure(d1, d12);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x004f, code lost:
    
        if (r8.t == 1) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0054, code lost:
    
        if (r8.t == 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0061, code lost:
    
        if (Q0() == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x006e, code lost:
    
        if (Q0() == false) goto L46;
     */
    @Override // o.AbstractC0431ud
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View S(android.view.View r9, int r10, o.Ad r11, o.Fd r12) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.S(android.view.View, int, o.Ad, o.Fd):android.view.View");
    }

    /* JADX WARN: Code restructure failed: missing block: B:257:0x040c, code lost:
    
        if (B0() != false) goto L250;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void S0(o.Ad r17, o.Fd r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 1066
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.S0(o.Ad, o.Fd, boolean):void");
    }

    @Override // o.AbstractC0431ud
    public final void T(AccessibilityEvent accessibilityEvent) {
        super.T(accessibilityEvent);
        if (v() > 0) {
            View H0 = H0(false);
            View G0 = G0(false);
            if (H0 != null && G0 != null) {
                int H = AbstractC0431ud.H(H0);
                int H2 = AbstractC0431ud.H(G0);
                if (H < H2) {
                    accessibilityEvent.setFromIndex(H);
                    accessibilityEvent.setToIndex(H2);
                } else {
                    accessibilityEvent.setFromIndex(H2);
                    accessibilityEvent.setToIndex(H);
                }
            }
        }
    }

    public final boolean T0(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        if (this.t == 0) {
            if (i == -1) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3 == this.x) {
                return false;
            }
            return true;
        }
        if (i == -1) {
            z = true;
        } else {
            z = false;
        }
        if (z == this.x) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2 != Q0()) {
            return false;
        }
        return true;
    }

    public final void U0(int i, Fd fd) {
        int K0;
        int i2;
        if (i > 0) {
            K0 = L0();
            i2 = 1;
        } else {
            K0 = K0();
            i2 = -1;
        }
        G9 g9 = this.v;
        g9.a = true;
        b1(K0, fd);
        a1(i2);
        g9.c = K0 + g9.d;
        g9.b = Math.abs(i);
    }

    @Override // o.AbstractC0431ud
    public final void V(Ad ad, Fd fd, View view, D d) {
        int i;
        int i2;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C0095df)) {
            U(view, d);
            return;
        }
        C0095df c0095df = (C0095df) layoutParams;
        if (this.t == 0) {
            Ba ba = c0095df.e;
            if (ba == null) {
                i2 = -1;
            } else {
                i2 = ba.e;
            }
            d.j(C.B(false, i2, 1, -1, -1));
            return;
        }
        Ba ba2 = c0095df.e;
        if (ba2 == null) {
            i = -1;
        } else {
            i = ba2.e;
        }
        d.j(C.B(false, -1, -1, i, 1));
    }

    public final void V0(Ad ad, G9 g9) {
        int min;
        int min2;
        if (g9.a && !g9.i) {
            if (g9.b == 0) {
                if (g9.e == -1) {
                    W0(ad, g9.g);
                    return;
                } else {
                    X0(ad, g9.f95f);
                    return;
                }
            }
            int i = 1;
            if (g9.e == -1) {
                int i2 = g9.f95f;
                int i3 = this.q[0].i(i2);
                while (i < this.p) {
                    int i4 = this.q[i].i(i2);
                    if (i4 > i3) {
                        i3 = i4;
                    }
                    i++;
                }
                int i5 = i2 - i3;
                if (i5 < 0) {
                    min2 = g9.g;
                } else {
                    min2 = g9.g - Math.min(i5, g9.b);
                }
                W0(ad, min2);
                return;
            }
            int i6 = g9.g;
            int g = this.q[0].g(i6);
            while (i < this.p) {
                int g2 = this.q[i].g(i6);
                if (g2 < g) {
                    g = g2;
                }
                i++;
            }
            int i7 = g - g9.g;
            if (i7 < 0) {
                min = g9.f95f;
            } else {
                min = Math.min(i7, g9.b) + g9.f95f;
            }
            X0(ad, min);
        }
    }

    @Override // o.AbstractC0431ud
    public final void W(int i, int i2) {
        O0(i, i2, 1);
    }

    public final void W0(Ad ad, int i) {
        for (int v = v() - 1; v >= 0; v--) {
            View u = u(v);
            if (this.r.e(u) >= i && this.r.o(u) >= i) {
                C0095df c0095df = (C0095df) u.getLayoutParams();
                c0095df.getClass();
                if (((ArrayList) c0095df.e.f73f).size() == 1) {
                    return;
                }
                Ba ba = c0095df.e;
                ArrayList arrayList = (ArrayList) ba.f73f;
                int size = arrayList.size();
                View view = (View) arrayList.remove(size - 1);
                C0095df c0095df2 = (C0095df) view.getLayoutParams();
                c0095df2.e = null;
                if (c0095df2.a.i() || c0095df2.a.l()) {
                    ba.d -= ((StaggeredGridLayoutManager) ba.g).r.c(view);
                }
                if (size == 1) {
                    ba.b = PKIFailureInfo.systemUnavail;
                }
                ba.c = PKIFailureInfo.systemUnavail;
                i0(u, ad);
            } else {
                return;
            }
        }
    }

    @Override // o.AbstractC0431ud
    public final void X() {
        H1 h1 = this.B;
        int[] iArr = (int[]) h1.b;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        h1.c = null;
        l0();
    }

    public final void X0(Ad ad, int i) {
        while (v() > 0) {
            View u = u(0);
            if (this.r.b(u) <= i && this.r.n(u) <= i) {
                C0095df c0095df = (C0095df) u.getLayoutParams();
                c0095df.getClass();
                if (((ArrayList) c0095df.e.f73f).size() == 1) {
                    return;
                }
                Ba ba = c0095df.e;
                ArrayList arrayList = (ArrayList) ba.f73f;
                View view = (View) arrayList.remove(0);
                C0095df c0095df2 = (C0095df) view.getLayoutParams();
                c0095df2.e = null;
                if (arrayList.size() == 0) {
                    ba.c = PKIFailureInfo.systemUnavail;
                }
                if (c0095df2.a.i() || c0095df2.a.l()) {
                    ba.d -= ((StaggeredGridLayoutManager) ba.g).r.c(view);
                }
                ba.b = PKIFailureInfo.systemUnavail;
                i0(u, ad);
            } else {
                return;
            }
        }
    }

    @Override // o.AbstractC0431ud
    public final void Y(int i, int i2) {
        O0(i, i2, 8);
    }

    public final void Y0() {
        if (this.t != 1 && Q0()) {
            this.x = !this.w;
        } else {
            this.x = this.w;
        }
    }

    @Override // o.AbstractC0431ud
    public final void Z(int i, int i2) {
        O0(i, i2, 2);
    }

    public final int Z0(int i, Ad ad, Fd fd) {
        if (v() == 0 || i == 0) {
            return 0;
        }
        U0(i, fd);
        G9 g9 = this.v;
        int F0 = F0(ad, g9, fd);
        if (g9.b >= F0) {
            if (i < 0) {
                i = -F0;
            } else {
                i = F0;
            }
        }
        this.r.p(-i);
        this.D = this.x;
        g9.b = 0;
        V0(ad, g9);
        return i;
    }

    @Override // o.Ed
    public final PointF a(int i) {
        int A0 = A0(i);
        PointF pointF = new PointF();
        if (A0 == 0) {
            return null;
        }
        if (this.t == 0) {
            pointF.x = A0;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = A0;
        }
        return pointF;
    }

    @Override // o.AbstractC0431ud
    public final void a0(int i, int i2) {
        O0(i, i2, 4);
    }

    public final void a1(int i) {
        boolean z;
        G9 g9 = this.v;
        g9.e = i;
        boolean z2 = this.x;
        int i2 = 1;
        if (i == -1) {
            z = true;
        } else {
            z = false;
        }
        if (z2 != z) {
            i2 = -1;
        }
        g9.d = i2;
    }

    @Override // o.AbstractC0431ud
    public final void b0(Ad ad, Fd fd) {
        S0(ad, fd, true);
    }

    public final void b1(int i, Fd fd) {
        boolean z;
        int i2;
        int i3;
        int i4;
        boolean z2;
        G9 g9 = this.v;
        boolean z3 = false;
        g9.b = 0;
        g9.c = i;
        C0030aa c0030aa = this.e;
        if (c0030aa != null && c0030aa.e) {
            z = true;
        } else {
            z = false;
        }
        if (z && (i4 = fd.a) != -1) {
            boolean z4 = this.x;
            if (i4 < i) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z4 == z2) {
                i2 = this.r.l();
                i3 = 0;
            } else {
                i3 = this.r.l();
                i2 = 0;
            }
        } else {
            i2 = 0;
            i3 = 0;
        }
        RecyclerView recyclerView = this.b;
        if (recyclerView != null && recyclerView.g) {
            g9.f95f = this.r.k() - i3;
            g9.g = this.r.g() + i2;
        } else {
            g9.g = this.r.f() + i2;
            g9.f95f = -i3;
        }
        g9.h = false;
        g9.a = true;
        if (this.r.i() == 0 && this.r.f() == 0) {
            z3 = true;
        }
        g9.i = z3;
    }

    @Override // o.AbstractC0431ud
    public final void c(String str) {
        if (this.F == null) {
            super.c(str);
        }
    }

    @Override // o.AbstractC0431ud
    public final void c0(Fd fd) {
        this.z = -1;
        this.A = PKIFailureInfo.systemUnavail;
        this.F = null;
        this.H.a();
    }

    public final void c1(Ba ba, int i, int i2) {
        int i3 = ba.d;
        int i4 = ba.e;
        if (i == -1) {
            int i5 = ba.b;
            if (i5 == Integer.MIN_VALUE) {
                View view = (View) ((ArrayList) ba.f73f).get(0);
                C0095df c0095df = (C0095df) view.getLayoutParams();
                ba.b = ((StaggeredGridLayoutManager) ba.g).r.e(view);
                c0095df.getClass();
                i5 = ba.b;
            }
            if (i5 + i3 <= i2) {
                this.y.set(i4, false);
                return;
            }
            return;
        }
        int i6 = ba.c;
        if (i6 == Integer.MIN_VALUE) {
            ba.a();
            i6 = ba.c;
        }
        if (i6 - i3 >= i2) {
            this.y.set(i4, false);
        }
    }

    @Override // o.AbstractC0431ud
    public final boolean d() {
        if (this.t == 0) {
            return true;
        }
        return false;
    }

    @Override // o.AbstractC0431ud
    public final void d0(Parcelable parcelable) {
        if (parcelable instanceof C0135ff) {
            this.F = (C0135ff) parcelable;
            l0();
        }
    }

    @Override // o.AbstractC0431ud
    public final boolean e() {
        if (this.t == 1) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.os.Parcelable, java.lang.Object, o.ff] */
    /* JADX WARN: Type inference failed for: r1v28, types: [android.os.Parcelable, java.lang.Object, o.ff] */
    @Override // o.AbstractC0431ud
    public final Parcelable e0() {
        int K0;
        View H0;
        int i;
        int k;
        int[] iArr;
        C0135ff c0135ff = this.F;
        if (c0135ff != null) {
            ?? obj = new Object();
            obj.c = c0135ff.c;
            obj.a = c0135ff.a;
            obj.b = c0135ff.b;
            obj.d = c0135ff.d;
            obj.e = c0135ff.e;
            obj.f211f = c0135ff.f211f;
            obj.h = c0135ff.h;
            obj.i = c0135ff.i;
            obj.j = c0135ff.j;
            obj.g = c0135ff.g;
            return obj;
        }
        ?? obj2 = new Object();
        obj2.h = this.w;
        obj2.i = this.D;
        obj2.j = this.E;
        H1 h1 = this.B;
        if (h1 != null && (iArr = (int[]) h1.b) != null) {
            obj2.f211f = iArr;
            obj2.e = iArr.length;
            obj2.g = (ArrayList) h1.c;
        } else {
            obj2.e = 0;
        }
        int i2 = -1;
        if (v() > 0) {
            if (this.D) {
                K0 = L0();
            } else {
                K0 = K0();
            }
            obj2.a = K0;
            if (this.x) {
                H0 = G0(true);
            } else {
                H0 = H0(true);
            }
            if (H0 != null) {
                i2 = AbstractC0431ud.H(H0);
            }
            obj2.b = i2;
            int i3 = this.p;
            obj2.c = i3;
            obj2.d = new int[i3];
            for (int i4 = 0; i4 < this.p; i4++) {
                if (this.D) {
                    i = this.q[i4].g(PKIFailureInfo.systemUnavail);
                    if (i != Integer.MIN_VALUE) {
                        k = this.r.g();
                        i -= k;
                        obj2.d[i4] = i;
                    } else {
                        obj2.d[i4] = i;
                    }
                } else {
                    i = this.q[i4].i(PKIFailureInfo.systemUnavail);
                    if (i != Integer.MIN_VALUE) {
                        k = this.r.k();
                        i -= k;
                        obj2.d[i4] = i;
                    } else {
                        obj2.d[i4] = i;
                    }
                }
            }
        } else {
            obj2.a = -1;
            obj2.b = -1;
            obj2.c = 0;
        }
        return obj2;
    }

    @Override // o.AbstractC0431ud
    public final boolean f(C0451vd c0451vd) {
        return c0451vd instanceof C0095df;
    }

    @Override // o.AbstractC0431ud
    public final void f0(int i) {
        if (i == 0) {
            B0();
        }
    }

    @Override // o.AbstractC0431ud
    public final void h(int i, int i2, Fd fd, R8 r8) {
        G9 g9;
        int g;
        int i3;
        if (this.t != 0) {
            i = i2;
        }
        if (v() != 0 && i != 0) {
            U0(i, fd);
            int[] iArr = this.J;
            if (iArr == null || iArr.length < this.p) {
                this.J = new int[this.p];
            }
            int i4 = 0;
            int i5 = 0;
            while (true) {
                int i6 = this.p;
                g9 = this.v;
                if (i4 >= i6) {
                    break;
                }
                if (g9.d == -1) {
                    g = g9.f95f;
                    i3 = this.q[i4].i(g);
                } else {
                    g = this.q[i4].g(g9.g);
                    i3 = g9.g;
                }
                int i7 = g - i3;
                if (i7 >= 0) {
                    this.J[i5] = i7;
                    i5++;
                }
                i4++;
            }
            Arrays.sort(this.J, 0, i5);
            for (int i8 = 0; i8 < i5; i8++) {
                int i9 = g9.c;
                if (i9 >= 0 && i9 < fd.b()) {
                    r8.a(g9.c, this.J[i8]);
                    g9.c += g9.d;
                } else {
                    return;
                }
            }
        }
    }

    @Override // o.AbstractC0431ud
    public final int j(Fd fd) {
        return C0(fd);
    }

    @Override // o.AbstractC0431ud
    public final int k(Fd fd) {
        return D0(fd);
    }

    @Override // o.AbstractC0431ud
    public final int l(Fd fd) {
        return E0(fd);
    }

    @Override // o.AbstractC0431ud
    public final int m(Fd fd) {
        return C0(fd);
    }

    @Override // o.AbstractC0431ud
    public final int m0(int i, Ad ad, Fd fd) {
        return Z0(i, ad, fd);
    }

    @Override // o.AbstractC0431ud
    public final int n(Fd fd) {
        return D0(fd);
    }

    @Override // o.AbstractC0431ud
    public final void n0(int i) {
        C0135ff c0135ff = this.F;
        if (c0135ff != null && c0135ff.a != i) {
            c0135ff.d = null;
            c0135ff.c = 0;
            c0135ff.a = -1;
            c0135ff.b = -1;
        }
        this.z = i;
        this.A = PKIFailureInfo.systemUnavail;
        l0();
    }

    @Override // o.AbstractC0431ud
    public final int o(Fd fd) {
        return E0(fd);
    }

    @Override // o.AbstractC0431ud
    public final int o0(int i, Ad ad, Fd fd) {
        return Z0(i, ad, fd);
    }

    @Override // o.AbstractC0431ud
    public final C0451vd r() {
        if (this.t == 0) {
            return new C0451vd(-2, -1);
        }
        return new C0451vd(-1, -2);
    }

    @Override // o.AbstractC0431ud
    public final void r0(Rect rect, int i, int i2) {
        int g;
        int g2;
        int i3 = this.p;
        int F = F() + E();
        int D = D() + G();
        if (this.t == 1) {
            int height = rect.height() + D;
            RecyclerView recyclerView = this.b;
            WeakHashMap weakHashMap = Dh.a;
            g2 = AbstractC0431ud.g(i2, height, recyclerView.getMinimumHeight());
            g = AbstractC0431ud.g(i, (this.u * i3) + F, this.b.getMinimumWidth());
        } else {
            int width = rect.width() + F;
            RecyclerView recyclerView2 = this.b;
            WeakHashMap weakHashMap2 = Dh.a;
            g = AbstractC0431ud.g(i, width, recyclerView2.getMinimumWidth());
            g2 = AbstractC0431ud.g(i2, (this.u * i3) + D, this.b.getMinimumHeight());
        }
        this.b.setMeasuredDimension(g, g2);
    }

    @Override // o.AbstractC0431ud
    public final C0451vd s(Context context, AttributeSet attributeSet) {
        return new C0451vd(context, attributeSet);
    }

    @Override // o.AbstractC0431ud
    public final C0451vd t(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new C0451vd((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new C0451vd(layoutParams);
    }

    @Override // o.AbstractC0431ud
    public final int x(Ad ad, Fd fd) {
        if (this.t == 1) {
            return this.p;
        }
        return super.x(ad, fd);
    }

    @Override // o.AbstractC0431ud
    public final void x0(RecyclerView recyclerView, int i) {
        C0030aa c0030aa = new C0030aa(recyclerView.getContext());
        c0030aa.a = i;
        y0(c0030aa);
    }

    @Override // o.AbstractC0431ud
    public final boolean z0() {
        if (this.F == null) {
            return true;
        }
        return false;
    }
}
