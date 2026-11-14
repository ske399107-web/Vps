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
import java.util.List;
import o.AbstractC0214jf;
import o.AbstractC0431ud;
import o.AbstractC0522z6;
import o.Ad;
import o.C0030aa;
import o.C0411td;
import o.C0451vd;
import o.Ed;
import o.Fd;
import o.Ha;
import o.Id;
import o.R8;
import o.W9;
import o.X9;
import o.Y9;
import o.Z9;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class LinearLayoutManager extends AbstractC0431ud implements Ed {
    public final W9 A;
    public final X9 B;
    public final int C;
    public final int[] D;
    public int p;
    public Y9 q;
    public AbstractC0522z6 r;
    public boolean s;
    public final boolean t;
    public boolean u;
    public boolean v;
    public final boolean w;
    public int x;
    public int y;
    public Z9 z;

    /* JADX WARN: Type inference failed for: r2v1, types: [o.X9, java.lang.Object] */
    public LinearLayoutManager(int i) {
        this.p = 1;
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = true;
        this.x = -1;
        this.y = PKIFailureInfo.systemUnavail;
        this.z = null;
        this.A = new W9();
        this.B = new Object();
        this.C = 2;
        this.D = new int[2];
        Z0(i);
        c(null);
        if (this.t) {
            this.t = false;
            l0();
        }
    }

    public void A0(Fd fd, int[] iArr) {
        int i;
        int i2;
        if (fd.a != -1) {
            i = this.r.l();
        } else {
            i = 0;
        }
        if (this.q.f167f == -1) {
            i2 = 0;
        } else {
            i2 = i;
            i = 0;
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    public void B0(Fd fd, Y9 y9, R8 r8) {
        int i = y9.d;
        if (i >= 0 && i < fd.b()) {
            r8.a(i, Math.max(0, y9.g));
        }
    }

    public final int C0(Fd fd) {
        if (v() == 0) {
            return 0;
        }
        G0();
        AbstractC0522z6 abstractC0522z6 = this.r;
        boolean z = !this.w;
        return Ha.m(fd, abstractC0522z6, J0(z), I0(z), this, this.w);
    }

    public final int D0(Fd fd) {
        if (v() == 0) {
            return 0;
        }
        G0();
        AbstractC0522z6 abstractC0522z6 = this.r;
        boolean z = !this.w;
        return Ha.n(fd, abstractC0522z6, J0(z), I0(z), this, this.w, this.u);
    }

    public final int E0(Fd fd) {
        if (v() == 0) {
            return 0;
        }
        G0();
        AbstractC0522z6 abstractC0522z6 = this.r;
        boolean z = !this.w;
        return Ha.o(fd, abstractC0522z6, J0(z), I0(z), this, this.w);
    }

    public final int F0(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 17) {
                    if (i != 33) {
                        if (i != 66) {
                            if (i == 130 && this.p == 1) {
                                return 1;
                            }
                            return PKIFailureInfo.systemUnavail;
                        }
                        if (this.p == 0) {
                            return 1;
                        }
                        return PKIFailureInfo.systemUnavail;
                    }
                    if (this.p == 1) {
                        return -1;
                    }
                    return PKIFailureInfo.systemUnavail;
                }
                if (this.p == 0) {
                    return -1;
                }
                return PKIFailureInfo.systemUnavail;
            }
            if (this.p != 1 && S0()) {
                return -1;
            }
            return 1;
        }
        if (this.p == 1 || !S0()) {
            return -1;
        }
        return 1;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, o.Y9] */
    public final void G0() {
        if (this.q == null) {
            ?? obj = new Object();
            obj.a = true;
            obj.h = 0;
            obj.i = 0;
            obj.k = null;
            this.q = obj;
        }
    }

    public final int H0(Ad ad, Y9 y9, Fd fd, boolean z) {
        int i;
        int i2 = y9.c;
        int i3 = y9.g;
        if (i3 != Integer.MIN_VALUE) {
            if (i2 < 0) {
                y9.g = i3 + i2;
            }
            V0(ad, y9);
        }
        int i4 = y9.c + y9.h;
        while (true) {
            if ((!y9.l && i4 <= 0) || (i = y9.d) < 0 || i >= fd.b()) {
                break;
            }
            X9 x9 = this.B;
            x9.a = 0;
            x9.b = false;
            x9.c = false;
            x9.d = false;
            T0(ad, fd, y9, x9);
            if (!x9.b) {
                int i5 = y9.b;
                int i6 = x9.a;
                y9.b = (y9.f167f * i6) + i5;
                if (!x9.c || y9.k != null || !fd.g) {
                    y9.c -= i6;
                    i4 -= i6;
                }
                int i7 = y9.g;
                if (i7 != Integer.MIN_VALUE) {
                    int i8 = i7 + i6;
                    y9.g = i8;
                    int i9 = y9.c;
                    if (i9 < 0) {
                        y9.g = i8 + i9;
                    }
                    V0(ad, y9);
                }
                if (z && x9.d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i2 - y9.c;
    }

    public final View I0(boolean z) {
        if (this.u) {
            return M0(0, v(), z);
        }
        return M0(v() - 1, -1, z);
    }

    public final View J0(boolean z) {
        if (this.u) {
            return M0(v() - 1, -1, z);
        }
        return M0(0, v(), z);
    }

    public final int K0() {
        View M0 = M0(v() - 1, -1, false);
        if (M0 == null) {
            return -1;
        }
        return AbstractC0431ud.H(M0);
    }

    @Override // o.AbstractC0431ud
    public final boolean L() {
        return true;
    }

    public final View L0(int i, int i2) {
        int i3;
        int i4;
        G0();
        if (i2 > i || i2 < i) {
            if (this.r.e(u(i)) < this.r.k()) {
                i3 = 16644;
                i4 = 16388;
            } else {
                i3 = 4161;
                i4 = 4097;
            }
            if (this.p == 0) {
                return this.c.u(i, i2, i3, i4);
            }
            return this.d.u(i, i2, i3, i4);
        }
        return u(i);
    }

    public final View M0(int i, int i2, boolean z) {
        int i3;
        G0();
        if (z) {
            i3 = 24579;
        } else {
            i3 = 320;
        }
        if (this.p == 0) {
            return this.c.u(i, i2, i3, 320);
        }
        return this.d.u(i, i2, i3, 320);
    }

    public View N0(Ad ad, Fd fd, int i, int i2, int i3) {
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
            if (H >= 0 && H < i3) {
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

    public final int O0(int i, Ad ad, Fd fd, boolean z) {
        int g;
        int g2 = this.r.g() - i;
        if (g2 > 0) {
            int i2 = -Y0(-g2, ad, fd);
            int i3 = i + i2;
            if (z && (g = this.r.g() - i3) > 0) {
                this.r.p(g);
                return g + i2;
            }
            return i2;
        }
        return 0;
    }

    public final int P0(int i, Ad ad, Fd fd, boolean z) {
        int k;
        int k2 = i - this.r.k();
        if (k2 > 0) {
            int i2 = -Y0(k2, ad, fd);
            int i3 = i + i2;
            if (z && (k = i3 - this.r.k()) > 0) {
                this.r.p(-k);
                return i2 - k;
            }
            return i2;
        }
        return 0;
    }

    public final View Q0() {
        int v;
        if (this.u) {
            v = 0;
        } else {
            v = v() - 1;
        }
        return u(v);
    }

    @Override // o.AbstractC0431ud
    public final void R(RecyclerView recyclerView) {
    }

    public final View R0() {
        int i;
        if (this.u) {
            i = v() - 1;
        } else {
            i = 0;
        }
        return u(i);
    }

    @Override // o.AbstractC0431ud
    public View S(View view, int i, Ad ad, Fd fd) {
        int F0;
        View L0;
        View Q0;
        X0();
        if (v() == 0 || (F0 = F0(i)) == Integer.MIN_VALUE) {
            return null;
        }
        G0();
        b1(F0, (int) (this.r.l() * 0.33333334f), false, fd);
        Y9 y9 = this.q;
        y9.g = PKIFailureInfo.systemUnavail;
        y9.a = false;
        H0(ad, y9, fd, true);
        if (F0 == -1) {
            if (this.u) {
                L0 = L0(v() - 1, -1);
            } else {
                L0 = L0(0, v());
            }
        } else if (this.u) {
            L0 = L0(0, v());
        } else {
            L0 = L0(v() - 1, -1);
        }
        if (F0 == -1) {
            Q0 = R0();
        } else {
            Q0 = Q0();
        }
        if (Q0.hasFocusable()) {
            if (L0 == null) {
                return null;
            }
            return Q0;
        }
        return L0;
    }

    public final boolean S0() {
        if (C() == 1) {
            return true;
        }
        return false;
    }

    @Override // o.AbstractC0431ud
    public final void T(AccessibilityEvent accessibilityEvent) {
        int H;
        super.T(accessibilityEvent);
        if (v() > 0) {
            View M0 = M0(0, v(), false);
            if (M0 == null) {
                H = -1;
            } else {
                H = AbstractC0431ud.H(M0);
            }
            accessibilityEvent.setFromIndex(H);
            accessibilityEvent.setToIndex(K0());
        }
    }

    public void T0(Ad ad, Fd fd, Y9 y9, X9 x9) {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z2;
        View b = y9.b(ad);
        if (b == null) {
            x9.b = true;
            return;
        }
        C0451vd c0451vd = (C0451vd) b.getLayoutParams();
        if (y9.k == null) {
            boolean z3 = this.u;
            if (y9.f167f == -1) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z3 == z2) {
                b(b, -1, false);
            } else {
                b(b, 0, false);
            }
        } else {
            boolean z4 = this.u;
            if (y9.f167f == -1) {
                z = true;
            } else {
                z = false;
            }
            if (z4 == z) {
                b(b, -1, true);
            } else {
                b(b, 0, true);
            }
        }
        C0451vd c0451vd2 = (C0451vd) b.getLayoutParams();
        Rect J = this.b.J(b);
        int i5 = J.left + J.right;
        int i6 = J.top + J.bottom;
        int w = AbstractC0431ud.w(d(), this.n, this.l, F() + E() + ((ViewGroup.MarginLayoutParams) c0451vd2).leftMargin + ((ViewGroup.MarginLayoutParams) c0451vd2).rightMargin + i5, ((ViewGroup.MarginLayoutParams) c0451vd2).width);
        int w2 = AbstractC0431ud.w(e(), this.f285o, this.m, D() + G() + ((ViewGroup.MarginLayoutParams) c0451vd2).topMargin + ((ViewGroup.MarginLayoutParams) c0451vd2).bottomMargin + i6, ((ViewGroup.MarginLayoutParams) c0451vd2).height);
        if (u0(b, w, w2, c0451vd2)) {
            b.measure(w, w2);
        }
        x9.a = this.r.c(b);
        if (this.p == 1) {
            if (S0()) {
                i4 = this.n - F();
                i = i4 - this.r.d(b);
            } else {
                i = E();
                i4 = this.r.d(b) + i;
            }
            if (y9.f167f == -1) {
                i2 = y9.b;
                i3 = i2 - x9.a;
            } else {
                i3 = y9.b;
                i2 = x9.a + i3;
            }
        } else {
            int G = G();
            int d = this.r.d(b) + G;
            if (y9.f167f == -1) {
                int i7 = y9.b;
                int i8 = i7 - x9.a;
                i4 = i7;
                i2 = d;
                i = i8;
                i3 = G;
            } else {
                int i9 = y9.b;
                int i10 = x9.a + i9;
                i = i9;
                i2 = d;
                i3 = G;
                i4 = i10;
            }
        }
        AbstractC0431ud.N(b, i, i3, i4, i2);
        if (c0451vd.a.i() || c0451vd.a.l()) {
            x9.c = true;
        }
        x9.d = b.hasFocusable();
    }

    public void U0(Ad ad, Fd fd, W9 w9, int i) {
    }

    public final void V0(Ad ad, Y9 y9) {
        if (y9.a && !y9.l) {
            int i = y9.g;
            int i2 = y9.i;
            if (y9.f167f == -1) {
                int v = v();
                if (i >= 0) {
                    int f2 = (this.r.f() - i) + i2;
                    if (this.u) {
                        for (int i3 = 0; i3 < v; i3++) {
                            View u = u(i3);
                            if (this.r.e(u) < f2 || this.r.o(u) < f2) {
                                W0(ad, 0, i3);
                                return;
                            }
                        }
                        return;
                    }
                    int i4 = v - 1;
                    for (int i5 = i4; i5 >= 0; i5--) {
                        View u2 = u(i5);
                        if (this.r.e(u2) < f2 || this.r.o(u2) < f2) {
                            W0(ad, i4, i5);
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            if (i >= 0) {
                int i6 = i - i2;
                int v2 = v();
                if (this.u) {
                    int i7 = v2 - 1;
                    for (int i8 = i7; i8 >= 0; i8--) {
                        View u3 = u(i8);
                        if (this.r.b(u3) > i6 || this.r.n(u3) > i6) {
                            W0(ad, i7, i8);
                            return;
                        }
                    }
                    return;
                }
                for (int i9 = 0; i9 < v2; i9++) {
                    View u4 = u(i9);
                    if (this.r.b(u4) > i6 || this.r.n(u4) > i6) {
                        W0(ad, 0, i9);
                        return;
                    }
                }
            }
        }
    }

    public final void W0(Ad ad, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 > i) {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                View u = u(i3);
                j0(i3);
                ad.f(u);
            }
            return;
        }
        while (i > i2) {
            View u2 = u(i);
            j0(i);
            ad.f(u2);
            i--;
        }
    }

    public final void X0() {
        if (this.p != 1 && S0()) {
            this.u = !this.t;
        } else {
            this.u = this.t;
        }
    }

    public final int Y0(int i, Ad ad, Fd fd) {
        int i2;
        if (v() == 0 || i == 0) {
            return 0;
        }
        G0();
        this.q.a = true;
        if (i > 0) {
            i2 = 1;
        } else {
            i2 = -1;
        }
        int abs = Math.abs(i);
        b1(i2, abs, true, fd);
        Y9 y9 = this.q;
        int H0 = H0(ad, y9, fd, false) + y9.g;
        if (H0 < 0) {
            return 0;
        }
        if (abs > H0) {
            i = i2 * H0;
        }
        this.r.p(-i);
        this.q.j = i;
        return i;
    }

    public final void Z0(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(AbstractC0214jf.a(i, "invalid orientation:"));
        }
        c(null);
        if (i != this.p || this.r == null) {
            AbstractC0522z6 a = AbstractC0522z6.a(this, i);
            this.r = a;
            this.A.a = a;
            this.p = i;
            l0();
        }
    }

    @Override // o.Ed
    public final PointF a(int i) {
        if (v() == 0) {
            return null;
        }
        boolean z = false;
        int i2 = 1;
        if (i < AbstractC0431ud.H(u(0))) {
            z = true;
        }
        if (z != this.u) {
            i2 = -1;
        }
        if (this.p == 0) {
            return new PointF(i2, 0.0f);
        }
        return new PointF(0.0f, i2);
    }

    public void a1(boolean z) {
        c(null);
        if (this.v == z) {
            return;
        }
        this.v = z;
        l0();
    }

    @Override // o.AbstractC0431ud
    public void b0(Ad ad, Fd fd) {
        View focusedChild;
        int i;
        View focusedChild2;
        View N0;
        int k;
        int i2;
        boolean z;
        boolean z2;
        int e;
        int i3;
        boolean z3;
        int i4;
        int i5;
        List list;
        boolean z4;
        int i6;
        int i7;
        int O0;
        int i8;
        View q;
        int e2;
        int i9;
        int i10;
        int i11 = -1;
        if ((this.z != null || this.x != -1) && fd.b() == 0) {
            g0(ad);
            return;
        }
        Z9 z9 = this.z;
        if (z9 != null && (i10 = z9.a) >= 0) {
            this.x = i10;
        }
        G0();
        this.q.a = false;
        X0();
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || ((ArrayList) this.a.d).contains(focusedChild)) {
            focusedChild = null;
        }
        W9 w9 = this.A;
        if (w9.e && this.x == -1 && this.z == null) {
            if (focusedChild != null && (this.r.e(focusedChild) >= this.r.g() || this.r.b(focusedChild) <= this.r.k())) {
                w9.c(focusedChild, AbstractC0431ud.H(focusedChild));
            }
        } else {
            w9.d();
            w9.d = this.u ^ this.v;
            if (!fd.g && (i2 = this.x) != -1) {
                if (i2 >= 0 && i2 < fd.b()) {
                    int i12 = this.x;
                    w9.b = i12;
                    Z9 z92 = this.z;
                    if (z92 != null && z92.a >= 0) {
                        boolean z5 = z92.c;
                        w9.d = z5;
                        if (z5) {
                            w9.c = this.r.g() - this.z.b;
                        } else {
                            w9.c = this.r.k() + this.z.b;
                        }
                    } else if (this.y == Integer.MIN_VALUE) {
                        View q2 = q(i12);
                        if (q2 != null) {
                            if (this.r.c(q2) > this.r.l()) {
                                w9.a();
                            } else if (this.r.e(q2) - this.r.k() < 0) {
                                w9.c = this.r.k();
                                w9.d = false;
                            } else if (this.r.g() - this.r.b(q2) < 0) {
                                w9.c = this.r.g();
                                w9.d = true;
                            } else {
                                if (w9.d) {
                                    e = this.r.m() + this.r.b(q2);
                                } else {
                                    e = this.r.e(q2);
                                }
                                w9.c = e;
                            }
                        } else {
                            if (v() > 0) {
                                if (this.x < AbstractC0431ud.H(u(0))) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (z == this.u) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                w9.d = z2;
                            }
                            w9.a();
                        }
                    } else {
                        boolean z6 = this.u;
                        w9.d = z6;
                        if (z6) {
                            w9.c = this.r.g() - this.y;
                        } else {
                            w9.c = this.r.k() + this.y;
                        }
                    }
                    w9.e = true;
                } else {
                    this.x = -1;
                    this.y = PKIFailureInfo.systemUnavail;
                }
            }
            if (v() != 0) {
                RecyclerView recyclerView2 = this.b;
                if (recyclerView2 == null || (focusedChild2 = recyclerView2.getFocusedChild()) == null || ((ArrayList) this.a.d).contains(focusedChild2)) {
                    focusedChild2 = null;
                }
                if (focusedChild2 != null) {
                    C0451vd c0451vd = (C0451vd) focusedChild2.getLayoutParams();
                    if (!c0451vd.a.i() && c0451vd.a.b() >= 0 && c0451vd.a.b() < fd.b()) {
                        w9.c(focusedChild2, AbstractC0431ud.H(focusedChild2));
                        w9.e = true;
                    }
                }
                if (this.s == this.v) {
                    if (w9.d) {
                        if (this.u) {
                            N0 = N0(ad, fd, 0, v(), fd.b());
                        } else {
                            N0 = N0(ad, fd, v() - 1, -1, fd.b());
                        }
                    } else if (this.u) {
                        N0 = N0(ad, fd, v() - 1, -1, fd.b());
                    } else {
                        N0 = N0(ad, fd, 0, v(), fd.b());
                    }
                    if (N0 != null) {
                        w9.b(N0, AbstractC0431ud.H(N0));
                        if (!fd.g && z0() && (this.r.e(N0) >= this.r.g() || this.r.b(N0) < this.r.k())) {
                            if (w9.d) {
                                k = this.r.g();
                            } else {
                                k = this.r.k();
                            }
                            w9.c = k;
                        }
                        w9.e = true;
                    }
                }
            }
            w9.a();
            if (this.v) {
                i = fd.b() - 1;
            } else {
                i = 0;
            }
            w9.b = i;
            w9.e = true;
        }
        Y9 y9 = this.q;
        if (y9.j >= 0) {
            i3 = 1;
        } else {
            i3 = -1;
        }
        y9.f167f = i3;
        int[] iArr = this.D;
        iArr[0] = 0;
        iArr[1] = 0;
        A0(fd, iArr);
        int k2 = this.r.k() + Math.max(0, iArr[0]);
        int h = this.r.h() + Math.max(0, iArr[1]);
        if (fd.g && (i8 = this.x) != -1 && this.y != Integer.MIN_VALUE && (q = q(i8)) != null) {
            if (this.u) {
                i9 = this.r.g() - this.r.b(q);
                e2 = this.y;
            } else {
                e2 = this.r.e(q) - this.r.k();
                i9 = this.y;
            }
            int i13 = i9 - e2;
            if (i13 > 0) {
                k2 += i13;
            } else {
                h -= i13;
            }
        }
        if (!w9.d ? !this.u : this.u) {
            i11 = 1;
        }
        U0(ad, fd, w9, i11);
        p(ad);
        Y9 y92 = this.q;
        if (this.r.i() == 0 && this.r.f() == 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        y92.l = z3;
        this.q.getClass();
        this.q.i = 0;
        if (w9.d) {
            d1(w9.b, w9.c);
            Y9 y93 = this.q;
            y93.h = k2;
            H0(ad, y93, fd, false);
            Y9 y94 = this.q;
            i5 = y94.b;
            int i14 = y94.d;
            int i15 = y94.c;
            if (i15 > 0) {
                h += i15;
            }
            c1(w9.b, w9.c);
            Y9 y95 = this.q;
            y95.h = h;
            y95.d += y95.e;
            H0(ad, y95, fd, false);
            Y9 y96 = this.q;
            i4 = y96.b;
            int i16 = y96.c;
            if (i16 > 0) {
                d1(i14, i5);
                Y9 y97 = this.q;
                y97.h = i16;
                H0(ad, y97, fd, false);
                i5 = this.q.b;
            }
        } else {
            c1(w9.b, w9.c);
            Y9 y98 = this.q;
            y98.h = h;
            H0(ad, y98, fd, false);
            Y9 y99 = this.q;
            i4 = y99.b;
            int i17 = y99.d;
            int i18 = y99.c;
            if (i18 > 0) {
                k2 += i18;
            }
            d1(w9.b, w9.c);
            Y9 y910 = this.q;
            y910.h = k2;
            y910.d += y910.e;
            H0(ad, y910, fd, false);
            Y9 y911 = this.q;
            i5 = y911.b;
            int i19 = y911.c;
            if (i19 > 0) {
                c1(i17, i4);
                Y9 y912 = this.q;
                y912.h = i19;
                H0(ad, y912, fd, false);
                i4 = this.q.b;
            }
        }
        if (v() > 0) {
            if (this.u ^ this.v) {
                int O02 = O0(i4, ad, fd, true);
                i6 = i5 + O02;
                i7 = i4 + O02;
                O0 = P0(i6, ad, fd, false);
            } else {
                int P0 = P0(i5, ad, fd, true);
                i6 = i5 + P0;
                i7 = i4 + P0;
                O0 = O0(i7, ad, fd, false);
            }
            i5 = i6 + O0;
            i4 = i7 + O0;
        }
        if (fd.k && v() != 0 && !fd.g && z0()) {
            List list2 = ad.d;
            int size = list2.size();
            int H = AbstractC0431ud.H(u(0));
            int i20 = 0;
            int i21 = 0;
            for (int i22 = 0; i22 < size; i22++) {
                Id id = (Id) list2.get(i22);
                if (!id.i()) {
                    if (id.b() < H) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    boolean z7 = this.u;
                    View view = id.a;
                    if (z4 != z7) {
                        i20 += this.r.c(view);
                    } else {
                        i21 += this.r.c(view);
                    }
                }
            }
            this.q.k = list2;
            if (i20 > 0) {
                d1(AbstractC0431ud.H(R0()), i5);
                Y9 y913 = this.q;
                y913.h = i20;
                y913.c = 0;
                y913.a(null);
                H0(ad, this.q, fd, false);
            }
            if (i21 > 0) {
                c1(AbstractC0431ud.H(Q0()), i4);
                Y9 y914 = this.q;
                y914.h = i21;
                y914.c = 0;
                list = null;
                y914.a(null);
                H0(ad, this.q, fd, false);
            } else {
                list = null;
            }
            this.q.k = list;
        }
        if (!fd.g) {
            AbstractC0522z6 abstractC0522z6 = this.r;
            abstractC0522z6.a = abstractC0522z6.l();
        } else {
            w9.d();
        }
        this.s = this.v;
    }

    public final void b1(int i, int i2, boolean z, Fd fd) {
        boolean z2;
        int i3;
        int k;
        Y9 y9 = this.q;
        boolean z3 = false;
        int i4 = 1;
        if (this.r.i() == 0 && this.r.f() == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        y9.l = z2;
        this.q.f167f = i;
        int[] iArr = this.D;
        iArr[0] = 0;
        iArr[1] = 0;
        A0(fd, iArr);
        int max = Math.max(0, iArr[0]);
        int max2 = Math.max(0, iArr[1]);
        if (i == 1) {
            z3 = true;
        }
        Y9 y92 = this.q;
        if (z3) {
            i3 = max2;
        } else {
            i3 = max;
        }
        y92.h = i3;
        if (!z3) {
            max = max2;
        }
        y92.i = max;
        if (z3) {
            y92.h = this.r.h() + i3;
            View Q0 = Q0();
            Y9 y93 = this.q;
            if (this.u) {
                i4 = -1;
            }
            y93.e = i4;
            int H = AbstractC0431ud.H(Q0);
            Y9 y94 = this.q;
            y93.d = H + y94.e;
            y94.b = this.r.b(Q0);
            k = this.r.b(Q0) - this.r.g();
        } else {
            View R0 = R0();
            Y9 y95 = this.q;
            y95.h = this.r.k() + y95.h;
            Y9 y96 = this.q;
            if (!this.u) {
                i4 = -1;
            }
            y96.e = i4;
            int H2 = AbstractC0431ud.H(R0);
            Y9 y97 = this.q;
            y96.d = H2 + y97.e;
            y97.b = this.r.e(R0);
            k = (-this.r.e(R0)) + this.r.k();
        }
        Y9 y98 = this.q;
        y98.c = i2;
        if (z) {
            y98.c = i2 - k;
        }
        y98.g = k;
    }

    @Override // o.AbstractC0431ud
    public final void c(String str) {
        if (this.z == null) {
            super.c(str);
        }
    }

    @Override // o.AbstractC0431ud
    public void c0(Fd fd) {
        this.z = null;
        this.x = -1;
        this.y = PKIFailureInfo.systemUnavail;
        this.A.d();
    }

    public final void c1(int i, int i2) {
        int i3;
        this.q.c = this.r.g() - i2;
        Y9 y9 = this.q;
        if (this.u) {
            i3 = -1;
        } else {
            i3 = 1;
        }
        y9.e = i3;
        y9.d = i;
        y9.f167f = 1;
        y9.b = i2;
        y9.g = PKIFailureInfo.systemUnavail;
    }

    @Override // o.AbstractC0431ud
    public final boolean d() {
        if (this.p == 0) {
            return true;
        }
        return false;
    }

    @Override // o.AbstractC0431ud
    public final void d0(Parcelable parcelable) {
        if (parcelable instanceof Z9) {
            this.z = (Z9) parcelable;
            l0();
        }
    }

    public final void d1(int i, int i2) {
        int i3;
        this.q.c = i2 - this.r.k();
        Y9 y9 = this.q;
        y9.d = i;
        if (this.u) {
            i3 = 1;
        } else {
            i3 = -1;
        }
        y9.e = i3;
        y9.f167f = -1;
        y9.b = i2;
        y9.g = PKIFailureInfo.systemUnavail;
    }

    @Override // o.AbstractC0431ud
    public final boolean e() {
        if (this.p == 1) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.os.Parcelable, java.lang.Object, o.Z9] */
    /* JADX WARN: Type inference failed for: r1v9, types: [android.os.Parcelable, java.lang.Object, o.Z9] */
    @Override // o.AbstractC0431ud
    public final Parcelable e0() {
        Z9 z9 = this.z;
        if (z9 != null) {
            ?? obj = new Object();
            obj.a = z9.a;
            obj.b = z9.b;
            obj.c = z9.c;
            return obj;
        }
        ?? obj2 = new Object();
        if (v() > 0) {
            G0();
            boolean z = this.s ^ this.u;
            obj2.c = z;
            if (z) {
                View Q0 = Q0();
                obj2.b = this.r.g() - this.r.b(Q0);
                obj2.a = AbstractC0431ud.H(Q0);
            } else {
                View R0 = R0();
                obj2.a = AbstractC0431ud.H(R0);
                obj2.b = this.r.e(R0) - this.r.k();
            }
        } else {
            obj2.a = -1;
        }
        return obj2;
    }

    @Override // o.AbstractC0431ud
    public final void h(int i, int i2, Fd fd, R8 r8) {
        int i3;
        if (this.p != 0) {
            i = i2;
        }
        if (v() != 0 && i != 0) {
            G0();
            if (i > 0) {
                i3 = 1;
            } else {
                i3 = -1;
            }
            b1(i3, Math.abs(i), true, fd);
            B0(fd, this.q, r8);
        }
    }

    @Override // o.AbstractC0431ud
    public final void i(int i, R8 r8) {
        boolean z;
        int i2;
        Z9 z9 = this.z;
        int i3 = -1;
        if (z9 != null && (i2 = z9.a) >= 0) {
            z = z9.c;
        } else {
            X0();
            z = this.u;
            i2 = this.x;
            if (i2 == -1) {
                i2 = z ? i - 1 : 0;
            }
        }
        if (!z) {
            i3 = 1;
        }
        for (int i4 = 0; i4 < this.C && i2 >= 0 && i2 < i; i4++) {
            r8.a(i2, 0);
            i2 += i3;
        }
    }

    @Override // o.AbstractC0431ud
    public final int j(Fd fd) {
        return C0(fd);
    }

    @Override // o.AbstractC0431ud
    public int k(Fd fd) {
        return D0(fd);
    }

    @Override // o.AbstractC0431ud
    public int l(Fd fd) {
        return E0(fd);
    }

    @Override // o.AbstractC0431ud
    public final int m(Fd fd) {
        return C0(fd);
    }

    @Override // o.AbstractC0431ud
    public int m0(int i, Ad ad, Fd fd) {
        if (this.p == 1) {
            return 0;
        }
        return Y0(i, ad, fd);
    }

    @Override // o.AbstractC0431ud
    public int n(Fd fd) {
        return D0(fd);
    }

    @Override // o.AbstractC0431ud
    public final void n0(int i) {
        this.x = i;
        this.y = PKIFailureInfo.systemUnavail;
        Z9 z9 = this.z;
        if (z9 != null) {
            z9.a = -1;
        }
        l0();
    }

    @Override // o.AbstractC0431ud
    public int o(Fd fd) {
        return E0(fd);
    }

    @Override // o.AbstractC0431ud
    public int o0(int i, Ad ad, Fd fd) {
        if (this.p == 0) {
            return 0;
        }
        return Y0(i, ad, fd);
    }

    @Override // o.AbstractC0431ud
    public final View q(int i) {
        int v = v();
        if (v == 0) {
            return null;
        }
        int H = i - AbstractC0431ud.H(u(0));
        if (H >= 0 && H < v) {
            View u = u(H);
            if (AbstractC0431ud.H(u) == i) {
                return u;
            }
        }
        return super.q(i);
    }

    @Override // o.AbstractC0431ud
    public C0451vd r() {
        return new C0451vd(-2, -2);
    }

    @Override // o.AbstractC0431ud
    public final boolean v0() {
        if (this.m == 1073741824 || this.l == 1073741824) {
            return false;
        }
        int v = v();
        for (int i = 0; i < v; i++) {
            ViewGroup.LayoutParams layoutParams = u(i).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                return true;
            }
        }
        return false;
    }

    @Override // o.AbstractC0431ud
    public void x0(RecyclerView recyclerView, int i) {
        C0030aa c0030aa = new C0030aa(recyclerView.getContext());
        c0030aa.a = i;
        y0(c0030aa);
    }

    @Override // o.AbstractC0431ud
    public boolean z0() {
        if (this.z == null && this.s == this.v) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [o.X9, java.lang.Object] */
    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.p = 1;
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = true;
        this.x = -1;
        this.y = PKIFailureInfo.systemUnavail;
        this.z = null;
        this.A = new W9();
        this.B = new Object();
        this.C = 2;
        this.D = new int[2];
        C0411td I = AbstractC0431ud.I(context, attributeSet, i, i2);
        Z0(I.a);
        boolean z = I.c;
        c(null);
        if (z != this.t) {
            this.t = z;
            l0();
        }
        a1(I.d);
    }
}
