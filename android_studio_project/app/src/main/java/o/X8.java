package o;

import java.util.ArrayList;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class X8 extends L4 {
    public float q0 = -1.0f;
    public int r0 = -1;
    public int s0 = -1;
    public C0482x4 t0 = this.J;
    public int u0 = 0;
    public boolean v0;

    public X8() {
        this.R.clear();
        this.R.add(this.t0);
        int length = this.Q.length;
        for (int i = 0; i < length; i++) {
            this.Q[i] = this.t0;
        }
    }

    @Override // o.L4
    public final boolean A() {
        return this.v0;
    }

    @Override // o.L4
    public final boolean B() {
        return this.v0;
    }

    @Override // o.L4
    public final void Q(C0050ba c0050ba, boolean z) {
        if (this.T == null) {
            return;
        }
        C0482x4 c0482x4 = this.t0;
        c0050ba.getClass();
        int n = C0050ba.n(c0482x4);
        if (this.u0 == 1) {
            this.Y = n;
            this.Z = 0;
            L(this.T.k());
            O(0);
            return;
        }
        this.Y = 0;
        this.Z = n;
        O(this.T.q());
        L(0);
    }

    public final void R(int i) {
        this.t0.l(i);
        this.v0 = true;
    }

    public final void S(int i) {
        if (this.u0 == i) {
            return;
        }
        this.u0 = i;
        ArrayList arrayList = this.R;
        arrayList.clear();
        if (this.u0 == 1) {
            this.t0 = this.I;
        } else {
            this.t0 = this.J;
        }
        arrayList.add(this.t0);
        C0482x4[] c0482x4Arr = this.Q;
        int length = c0482x4Arr.length;
        for (int i2 = 0; i2 < length; i2++) {
            c0482x4Arr[i2] = this.t0;
        }
    }

    @Override // o.L4
    public final void b(C0050ba c0050ba, boolean z) {
        boolean z2;
        M4 m4 = (M4) this.T;
        if (m4 == null) {
            return;
        }
        Object i = m4.i(2);
        Object i2 = m4.i(4);
        L4 l4 = this.T;
        boolean z3 = true;
        if (l4 != null && l4.p0[0] == 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.u0 == 0) {
            i = m4.i(3);
            i2 = m4.i(5);
            L4 l42 = this.T;
            if (l42 == null || l42.p0[1] != 2) {
                z3 = false;
            }
            z2 = z3;
        }
        if (this.v0) {
            C0482x4 c0482x4 = this.t0;
            if (c0482x4.c) {
                We k = c0050ba.k(c0482x4);
                c0050ba.d(k, this.t0.d());
                if (this.r0 != -1) {
                    if (z2) {
                        c0050ba.f(c0050ba.k(i2), k, 0, 5);
                    }
                } else if (this.s0 != -1 && z2) {
                    We k2 = c0050ba.k(i2);
                    c0050ba.f(k, c0050ba.k(i), 0, 5);
                    c0050ba.f(k2, k, 0, 5);
                }
                this.v0 = false;
                return;
            }
        }
        if (this.r0 != -1) {
            We k3 = c0050ba.k(this.t0);
            c0050ba.e(k3, c0050ba.k(i), this.r0, 8);
            if (z2) {
                c0050ba.f(c0050ba.k(i2), k3, 0, 5);
                return;
            }
            return;
        }
        if (this.s0 != -1) {
            We k4 = c0050ba.k(this.t0);
            We k5 = c0050ba.k(i2);
            c0050ba.e(k4, k5, -this.s0, 8);
            if (z2) {
                c0050ba.f(k4, c0050ba.k(i), 0, 5);
                c0050ba.f(k5, k4, 0, 5);
                return;
            }
            return;
        }
        if (this.q0 != -1.0f) {
            We k6 = c0050ba.k(this.t0);
            We k7 = c0050ba.k(i2);
            float f2 = this.q0;
            F2 l = c0050ba.l();
            l.d.g(k6, -1.0f);
            l.d.g(k7, f2);
            c0050ba.c(l);
        }
    }

    @Override // o.L4
    public final boolean c() {
        return true;
    }

    @Override // o.L4
    public final C0482x4 i(int i) {
        int C = Ve.C(i);
        if (C != 1) {
            if (C != 2) {
                if (C != 3) {
                    if (C != 4) {
                        return null;
                    }
                }
            }
            if (this.u0 == 0) {
                return this.t0;
            }
            return null;
        }
        if (this.u0 == 1) {
            return this.t0;
        }
        return null;
    }
}
