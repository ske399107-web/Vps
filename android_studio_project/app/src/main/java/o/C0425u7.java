package o;

/* renamed from: o.u7, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0425u7 {
    public int a;
    public C0482x4 d;
    public C0482x4 e;

    /* renamed from: f, reason: collision with root package name */
    public C0482x4 f281f;
    public C0482x4 g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int q;
    public final /* synthetic */ C0445v7 r;
    public L4 b = null;
    public int c = 0;
    public int l = 0;
    public int m = 0;
    public int n = 0;

    /* renamed from: o, reason: collision with root package name */
    public int f282o = 0;
    public int p = 0;

    public C0425u7(C0445v7 c0445v7, int i, C0482x4 c0482x4, C0482x4 c0482x42, C0482x4 c0482x43, C0482x4 c0482x44, int i2) {
        this.r = c0445v7;
        this.a = i;
        this.d = c0482x4;
        this.e = c0482x42;
        this.f281f = c0482x43;
        this.g = c0482x44;
        this.h = c0445v7.w0;
        this.i = c0445v7.s0;
        this.j = c0445v7.x0;
        this.k = c0445v7.t0;
        this.q = i2;
    }

    public final void a(L4 l4) {
        int i = this.a;
        C0445v7 c0445v7 = this.r;
        int i2 = 0;
        if (i == 0) {
            int U = c0445v7.U(l4, this.q);
            if (l4.p0[0] == 3) {
                this.p++;
                U = 0;
            }
            int i3 = c0445v7.P0;
            if (l4.g0 != 8) {
                i2 = i3;
            }
            this.l = U + i2 + this.l;
            int T = c0445v7.T(l4, this.q);
            if (this.b == null || this.c < T) {
                this.b = l4;
                this.c = T;
                this.m = T;
            }
        } else {
            int U2 = c0445v7.U(l4, this.q);
            int T2 = c0445v7.T(l4, this.q);
            if (l4.p0[1] == 3) {
                this.p++;
                T2 = 0;
            }
            int i4 = c0445v7.Q0;
            if (l4.g0 != 8) {
                i2 = i4;
            }
            this.m = T2 + i2 + this.m;
            if (this.b == null || this.c < U2) {
                this.b = l4;
                this.c = U2;
                this.l = U2;
            }
        }
        this.f282o++;
    }

    public final void b(int i, boolean z, boolean z2) {
        C0445v7 c0445v7;
        boolean z3;
        int i2;
        int i3;
        int i4;
        L4 l4;
        int i5;
        int i6;
        char c;
        int i7;
        float f2;
        float f3;
        int i8;
        float f4;
        float f5;
        int i9;
        int i10;
        int i11;
        int i12 = this.f282o;
        int i13 = 0;
        while (true) {
            c0445v7 = this.r;
            if (i13 >= i12 || (i11 = this.n + i13) >= c0445v7.b1) {
                break;
            }
            L4 l42 = c0445v7.a1[i11];
            if (l42 != null) {
                l42.D();
            }
            i13++;
        }
        if (i12 != 0 && this.b != null) {
            if (z2 && i == 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            int i14 = -1;
            int i15 = -1;
            for (int i16 = 0; i16 < i12; i16++) {
                if (z) {
                    i10 = (i12 - 1) - i16;
                } else {
                    i10 = i16;
                }
                int i17 = this.n + i10;
                if (i17 >= c0445v7.b1) {
                    break;
                }
                L4 l43 = c0445v7.a1[i17];
                if (l43 != null && l43.g0 == 0) {
                    if (i14 == -1) {
                        i14 = i16;
                    }
                    i15 = i16;
                }
            }
            if (this.a == 0) {
                L4 l44 = this.b;
                l44.j0 = c0445v7.E0;
                int i18 = this.i;
                if (i > 0) {
                    i18 += c0445v7.Q0;
                }
                C0482x4 c0482x4 = this.e;
                C0482x4 c0482x42 = l44.J;
                c0482x42.a(c0482x4, i18);
                C0482x4 c0482x43 = l44.L;
                if (z2) {
                    c0482x43.a(this.g, this.k);
                }
                if (i > 0) {
                    this.e.d.L.a(c0482x42, 0);
                }
                if (c0445v7.S0 == 3 && !l44.E) {
                    for (int i19 = 0; i19 < i12; i19++) {
                        if (z) {
                            i9 = (i12 - 1) - i19;
                        } else {
                            i9 = i19;
                        }
                        int i20 = this.n + i9;
                        if (i20 >= c0445v7.b1) {
                            break;
                        }
                        l4 = c0445v7.a1[i20];
                        if (l4.E) {
                            break;
                        }
                    }
                }
                l4 = l44;
                int i21 = 0;
                L4 l45 = null;
                while (i21 < i12) {
                    if (z) {
                        i5 = (i12 - 1) - i21;
                    } else {
                        i5 = i21;
                    }
                    int i22 = this.n + i5;
                    if (i22 < c0445v7.b1) {
                        L4 l46 = c0445v7.a1[i22];
                        if (l46 == null) {
                            i6 = i12;
                            c = 3;
                        } else {
                            C0482x4 c0482x44 = l46.I;
                            if (i21 == 0) {
                                l46.f(c0482x44, this.d, this.h);
                            }
                            if (i5 == 0) {
                                int i23 = c0445v7.D0;
                                if (z) {
                                    i7 = i23;
                                    f2 = 1.0f - c0445v7.J0;
                                } else {
                                    i7 = i23;
                                    f2 = c0445v7.J0;
                                }
                                if (this.n == 0) {
                                    int i24 = c0445v7.F0;
                                    f3 = f2;
                                    if (i24 != -1) {
                                        if (z) {
                                            f5 = 1.0f - c0445v7.L0;
                                        } else {
                                            f5 = c0445v7.L0;
                                        }
                                        f4 = f5;
                                        i8 = i24;
                                        l46.i0 = i8;
                                        l46.d0 = f4;
                                    }
                                } else {
                                    f3 = f2;
                                }
                                if (z2 && (i8 = c0445v7.H0) != -1) {
                                    if (z) {
                                        f4 = 1.0f - c0445v7.N0;
                                    } else {
                                        f4 = c0445v7.N0;
                                    }
                                } else {
                                    i8 = i7;
                                    f4 = f3;
                                }
                                l46.i0 = i8;
                                l46.d0 = f4;
                            }
                            if (i21 == i12 - 1) {
                                i6 = i12;
                                l46.f(l46.K, this.f281f, this.j);
                            } else {
                                i6 = i12;
                            }
                            if (l45 != null) {
                                int i25 = c0445v7.P0;
                                C0482x4 c0482x45 = l45.K;
                                c0482x44.a(c0482x45, i25);
                                if (i21 == i14) {
                                    int i26 = this.h;
                                    if (c0482x44.h()) {
                                        c0482x44.h = i26;
                                    }
                                }
                                c0482x45.a(c0482x44, 0);
                                if (i21 == i15 + 1) {
                                    int i27 = this.j;
                                    if (c0482x45.h()) {
                                        c0482x45.h = i27;
                                    }
                                }
                            }
                            if (l46 != l44) {
                                int i28 = c0445v7.S0;
                                c = 3;
                                if (i28 == 3 && l4.E && l46 != l4 && l46.E) {
                                    l46.M.a(l4.M, 0);
                                } else {
                                    C0482x4 c0482x46 = l46.J;
                                    if (i28 != 0) {
                                        C0482x4 c0482x47 = l46.L;
                                        if (i28 != 1) {
                                            if (z3) {
                                                c0482x46.a(this.e, this.i);
                                                c0482x47.a(this.g, this.k);
                                            } else {
                                                c0482x46.a(c0482x42, 0);
                                                c0482x47.a(c0482x43, 0);
                                            }
                                        } else {
                                            c0482x47.a(c0482x43, 0);
                                        }
                                    } else {
                                        c0482x46.a(c0482x42, 0);
                                    }
                                }
                            } else {
                                c = 3;
                            }
                            l45 = l46;
                        }
                        i21++;
                        i12 = i6;
                    } else {
                        return;
                    }
                }
                return;
            }
            L4 l47 = this.b;
            l47.i0 = c0445v7.D0;
            int i29 = this.h;
            if (i > 0) {
                i29 += c0445v7.P0;
            }
            C0482x4 c0482x48 = l47.I;
            C0482x4 c0482x49 = l47.K;
            if (z) {
                c0482x49.a(this.f281f, i29);
                if (z2) {
                    c0482x48.a(this.d, this.j);
                }
                if (i > 0) {
                    this.f281f.d.I.a(c0482x49, 0);
                }
            } else {
                c0482x48.a(this.d, i29);
                if (z2) {
                    c0482x49.a(this.f281f, this.j);
                }
                if (i > 0) {
                    this.d.d.K.a(c0482x48, 0);
                }
            }
            L4 l48 = null;
            for (int i30 = 0; i30 < i12; i30++) {
                int i31 = this.n + i30;
                if (i31 < c0445v7.b1) {
                    L4 l49 = c0445v7.a1[i31];
                    if (l49 != null) {
                        C0482x4 c0482x410 = l49.J;
                        if (i30 == 0) {
                            l49.f(c0482x410, this.e, this.i);
                            int i32 = c0445v7.E0;
                            float f6 = c0445v7.K0;
                            if (this.n == 0) {
                                i4 = c0445v7.G0;
                                i2 = i32;
                                i3 = -1;
                                if (i4 != -1) {
                                    f6 = c0445v7.M0;
                                    l49.j0 = i4;
                                    l49.e0 = f6;
                                }
                            } else {
                                i2 = i32;
                                i3 = -1;
                            }
                            if (z2 && (i4 = c0445v7.I0) != i3) {
                                f6 = c0445v7.O0;
                            } else {
                                i4 = i2;
                            }
                            l49.j0 = i4;
                            l49.e0 = f6;
                        }
                        if (i30 == i12 - 1) {
                            l49.f(l49.L, this.g, this.k);
                        }
                        if (l48 != null) {
                            int i33 = c0445v7.Q0;
                            C0482x4 c0482x411 = l48.L;
                            c0482x410.a(c0482x411, i33);
                            if (i30 == i14) {
                                int i34 = this.i;
                                if (c0482x410.h()) {
                                    c0482x410.h = i34;
                                }
                            }
                            c0482x411.a(c0482x410, 0);
                            if (i30 == i15 + 1) {
                                int i35 = this.k;
                                if (c0482x411.h()) {
                                    c0482x411.h = i35;
                                }
                            }
                        }
                        if (l49 != l47) {
                            C0482x4 c0482x412 = l49.K;
                            C0482x4 c0482x413 = l49.I;
                            if (z) {
                                int i36 = c0445v7.R0;
                                if (i36 != 0) {
                                    if (i36 != 1) {
                                        if (i36 == 2) {
                                            c0482x413.a(c0482x48, 0);
                                            c0482x412.a(c0482x49, 0);
                                        }
                                    } else {
                                        c0482x413.a(c0482x48, 0);
                                    }
                                } else {
                                    c0482x412.a(c0482x49, 0);
                                }
                            } else {
                                int i37 = c0445v7.R0;
                                if (i37 != 0) {
                                    if (i37 != 1) {
                                        if (i37 == 2) {
                                            if (z3) {
                                                c0482x413.a(this.d, this.h);
                                                c0482x412.a(this.f281f, this.j);
                                            } else {
                                                c0482x413.a(c0482x48, 0);
                                                c0482x412.a(c0482x49, 0);
                                            }
                                        }
                                    } else {
                                        c0482x412.a(c0482x49, 0);
                                    }
                                } else {
                                    c0482x413.a(c0482x48, 0);
                                }
                                l48 = l49;
                            }
                        }
                        l48 = l49;
                    }
                } else {
                    return;
                }
            }
        }
    }

    public final int c() {
        if (this.a == 1) {
            return this.m - this.r.Q0;
        }
        return this.m;
    }

    public final int d() {
        if (this.a == 0) {
            return this.l - this.r.P0;
        }
        return this.l;
    }

    public final void e(int i) {
        C0445v7 c0445v7;
        int i2;
        int i3 = this.p;
        if (i3 == 0) {
            return;
        }
        int i4 = this.f282o;
        int i5 = i / i3;
        int i6 = 0;
        while (true) {
            c0445v7 = this.r;
            if (i6 >= i4 || (i2 = this.n + i6) >= c0445v7.b1) {
                break;
            }
            L4 l4 = c0445v7.a1[i2];
            if (this.a == 0) {
                if (l4 != null) {
                    int[] iArr = l4.p0;
                    if (iArr[0] == 3 && l4.r == 0) {
                        c0445v7.V(1, i5, iArr[1], l4.k(), l4);
                    }
                }
            } else if (l4 != null) {
                int[] iArr2 = l4.p0;
                if (iArr2[1] == 3 && l4.s == 0) {
                    c0445v7.V(iArr2[0], l4.q(), 1, i5, l4);
                }
            }
            i6++;
        }
        this.l = 0;
        this.m = 0;
        this.b = null;
        this.c = 0;
        int i7 = this.f282o;
        for (int i8 = 0; i8 < i7; i8++) {
            int i9 = this.n + i8;
            if (i9 < c0445v7.b1) {
                L4 l42 = c0445v7.a1[i9];
                if (this.a == 0) {
                    int q = l42.q();
                    int i10 = c0445v7.P0;
                    if (l42.g0 == 8) {
                        i10 = 0;
                    }
                    this.l = q + i10 + this.l;
                    int T = c0445v7.T(l42, this.q);
                    if (this.b == null || this.c < T) {
                        this.b = l42;
                        this.c = T;
                        this.m = T;
                    }
                } else {
                    int U = c0445v7.U(l42, this.q);
                    int T2 = c0445v7.T(l42, this.q);
                    int i11 = c0445v7.Q0;
                    if (l42.g0 == 8) {
                        i11 = 0;
                    }
                    this.m = T2 + i11 + this.m;
                    if (this.b == null || this.c < U) {
                        this.b = l42;
                        this.c = U;
                        this.l = U;
                    }
                }
            } else {
                return;
            }
        }
    }

    public final void f(int i, C0482x4 c0482x4, C0482x4 c0482x42, C0482x4 c0482x43, C0482x4 c0482x44, int i2, int i3, int i4, int i5, int i6) {
        this.a = i;
        this.d = c0482x4;
        this.e = c0482x42;
        this.f281f = c0482x43;
        this.g = c0482x44;
        this.h = i2;
        this.i = i3;
        this.j = i4;
        this.k = i5;
        this.q = i6;
    }
}
