package o;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Q2 extends AbstractC0049b9 {
    public int s0;
    public boolean t0;
    public int u0;
    public boolean v0;

    @Override // o.L4
    public final boolean A() {
        return this.v0;
    }

    @Override // o.L4
    public final boolean B() {
        return this.v0;
    }

    public final boolean T() {
        int i;
        int i2;
        int i3;
        boolean z = true;
        int i4 = 0;
        while (true) {
            i = this.r0;
            if (i4 >= i) {
                break;
            }
            L4 l4 = this.q0[i4];
            if ((this.t0 || l4.c()) && ((((i2 = this.s0) == 0 || i2 == 1) && !l4.A()) || (((i3 = this.s0) == 2 || i3 == 3) && !l4.B()))) {
                z = false;
            }
            i4++;
        }
        if (!z || i <= 0) {
            return false;
        }
        int i5 = 0;
        boolean z2 = false;
        for (int i6 = 0; i6 < this.r0; i6++) {
            L4 l42 = this.q0[i6];
            if (this.t0 || l42.c()) {
                if (!z2) {
                    int i7 = this.s0;
                    if (i7 == 0) {
                        i5 = l42.i(2).d();
                    } else if (i7 == 1) {
                        i5 = l42.i(4).d();
                    } else if (i7 == 2) {
                        i5 = l42.i(3).d();
                    } else if (i7 == 3) {
                        i5 = l42.i(5).d();
                    }
                    z2 = true;
                }
                int i8 = this.s0;
                if (i8 == 0) {
                    i5 = Math.min(i5, l42.i(2).d());
                } else if (i8 == 1) {
                    i5 = Math.max(i5, l42.i(4).d());
                } else if (i8 == 2) {
                    i5 = Math.min(i5, l42.i(3).d());
                } else if (i8 == 3) {
                    i5 = Math.max(i5, l42.i(5).d());
                }
            }
        }
        int i9 = i5 + this.u0;
        int i10 = this.s0;
        if (i10 != 0 && i10 != 1) {
            K(i9, i9);
        } else {
            J(i9, i9);
        }
        this.v0 = true;
        return true;
    }

    public final int U() {
        int i = this.s0;
        if (i != 0 && i != 1) {
            if (i == 2 || i == 3) {
                return 1;
            }
            return -1;
        }
        return 0;
    }

    @Override // o.L4
    public final void b(C0050ba c0050ba, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        int i;
        int i2;
        int i3;
        int i4;
        C0482x4[] c0482x4Arr = this.Q;
        C0482x4 c0482x4 = this.I;
        c0482x4Arr[0] = c0482x4;
        C0482x4 c0482x42 = this.J;
        int i5 = 2;
        c0482x4Arr[2] = c0482x42;
        C0482x4 c0482x43 = this.K;
        c0482x4Arr[1] = c0482x43;
        C0482x4 c0482x44 = this.L;
        c0482x4Arr[3] = c0482x44;
        for (C0482x4 c0482x45 : c0482x4Arr) {
            c0482x45.i = c0050ba.k(c0482x45);
        }
        int i6 = this.s0;
        if (i6 >= 0 && i6 < 4) {
            C0482x4 c0482x46 = c0482x4Arr[i6];
            if (!this.v0) {
                T();
            }
            if (this.v0) {
                this.v0 = false;
                int i7 = this.s0;
                if (i7 != 0 && i7 != 1) {
                    if (i7 == 2 || i7 == 3) {
                        c0050ba.d(c0482x42.i, this.Z);
                        c0050ba.d(c0482x44.i, this.Z);
                        return;
                    }
                    return;
                }
                c0050ba.d(c0482x4.i, this.Y);
                c0050ba.d(c0482x43.i, this.Y);
                return;
            }
            for (int i8 = 0; i8 < this.r0; i8++) {
                L4 l4 = this.q0[i8];
                if ((this.t0 || l4.c()) && ((((i4 = this.s0) == 0 || i4 == 1) && l4.p0[0] == 3 && l4.I.f293f != null && l4.K.f293f != null) || ((i4 == 2 || i4 == 3) && l4.p0[1] == 3 && l4.J.f293f != null && l4.L.f293f != null))) {
                    z2 = true;
                    break;
                }
            }
            z2 = false;
            if (!c0482x4.g() && !c0482x43.g()) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (!c0482x42.g() && !c0482x44.g()) {
                z4 = false;
            } else {
                z4 = true;
            }
            if (!z2 && (((i3 = this.s0) == 0 && z3) || ((i3 == 2 && z4) || ((i3 == 1 && z3) || (i3 == 3 && z4))))) {
                i = 5;
            } else {
                i = 4;
            }
            int i9 = 0;
            while (i9 < this.r0) {
                L4 l42 = this.q0[i9];
                if (this.t0 || l42.c()) {
                    We k = c0050ba.k(l42.Q[this.s0]);
                    int i10 = this.s0;
                    C0482x4 c0482x47 = l42.Q[i10];
                    c0482x47.i = k;
                    C0482x4 c0482x48 = c0482x47.f293f;
                    if (c0482x48 != null && c0482x48.d == this) {
                        i2 = c0482x47.g;
                    } else {
                        i2 = 0;
                    }
                    if (i10 != 0 && i10 != i5) {
                        We we = c0482x46.i;
                        int i11 = this.u0 + i2;
                        F2 l = c0050ba.l();
                        We m = c0050ba.m();
                        m.d = 0;
                        l.b(we, k, m, i11);
                        c0050ba.c(l);
                    } else {
                        We we2 = c0482x46.i;
                        int i12 = this.u0 - i2;
                        F2 l2 = c0050ba.l();
                        We m2 = c0050ba.m();
                        m2.d = 0;
                        l2.c(we2, k, m2, i12);
                        c0050ba.c(l2);
                    }
                    c0050ba.e(c0482x46.i, k, this.u0 + i2, i);
                }
                i9++;
                i5 = 2;
            }
            int i13 = this.s0;
            if (i13 == 0) {
                c0050ba.e(c0482x43.i, c0482x4.i, 0, 8);
                c0050ba.e(c0482x4.i, this.T.K.i, 0, 4);
                c0050ba.e(c0482x4.i, this.T.I.i, 0, 0);
                return;
            }
            if (i13 == 1) {
                c0050ba.e(c0482x4.i, c0482x43.i, 0, 8);
                c0050ba.e(c0482x4.i, this.T.I.i, 0, 4);
                c0050ba.e(c0482x4.i, this.T.K.i, 0, 0);
            } else if (i13 == 2) {
                c0050ba.e(c0482x44.i, c0482x42.i, 0, 8);
                c0050ba.e(c0482x42.i, this.T.L.i, 0, 4);
                c0050ba.e(c0482x42.i, this.T.J.i, 0, 0);
            } else if (i13 == 3) {
                c0050ba.e(c0482x42.i, c0482x44.i, 0, 8);
                c0050ba.e(c0482x42.i, this.T.J.i, 0, 4);
                c0050ba.e(c0482x42.i, this.T.L.i, 0, 0);
            }
        }
    }

    @Override // o.L4
    public final boolean c() {
        return true;
    }

    @Override // o.L4
    public final String toString() {
        String k = Ve.k(new StringBuilder("[Barrier] "), this.h0, " {");
        for (int i = 0; i < this.r0; i++) {
            L4 l4 = this.q0[i];
            if (i > 0) {
                k = Ve.h(k, ", ");
            }
            StringBuilder o2 = Ve.o(k);
            o2.append(l4.h0);
            k = o2.toString();
        }
        return Ve.h(k, "}");
    }
}
