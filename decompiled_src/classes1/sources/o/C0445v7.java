package o;

import java.util.ArrayList;

/* renamed from: o.v7, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0445v7 extends AbstractC0049b9 {
    public int A0;
    public C0063c3 B0;
    public C4 C0;
    public int D0;
    public int E0;
    public int F0;
    public int G0;
    public int H0;
    public int I0;
    public float J0;
    public float K0;
    public float L0;
    public float M0;
    public float N0;
    public float O0;
    public int P0;
    public int Q0;
    public int R0;
    public int S0;
    public int T0;
    public int U0;
    public int V0;
    public ArrayList W0;
    public L4[] X0;
    public L4[] Y0;
    public int[] Z0;
    public L4[] a1;
    public int b1;
    public int s0;
    public int t0;
    public int u0;
    public int v0;
    public int w0;
    public int x0;
    public boolean y0;
    public int z0;

    @Override // o.AbstractC0049b9
    public final void S() {
        for (int i = 0; i < this.r0; i++) {
            L4 l4 = this.q0[i];
            if (l4 != null) {
                l4.F = true;
            }
        }
    }

    public final int T(L4 l4, int i) {
        if (l4 == null) {
            return 0;
        }
        int[] iArr = l4.p0;
        if (iArr[1] == 3) {
            int i2 = l4.s;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (l4.z * i);
                if (i3 != l4.k()) {
                    l4.g = true;
                    V(iArr[0], l4.q(), 1, i3, l4);
                }
                return i3;
            }
            if (i2 == 1) {
                return l4.k();
            }
            if (i2 == 3) {
                return (int) ((l4.q() * l4.W) + 0.5f);
            }
        }
        return l4.k();
    }

    public final int U(L4 l4, int i) {
        if (l4 == null) {
            return 0;
        }
        int[] iArr = l4.p0;
        if (iArr[0] == 3) {
            int i2 = l4.r;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (l4.w * i);
                if (i3 != l4.q()) {
                    l4.g = true;
                    V(1, i3, iArr[1], l4.k(), l4);
                }
                return i3;
            }
            if (i2 == 1) {
                return l4.q();
            }
            if (i2 == 3) {
                return (int) ((l4.k() * l4.W) + 0.5f);
            }
        }
        return l4.q();
    }

    public final void V(int i, int i2, int i3, int i4, L4 l4) {
        C4 c4;
        L4 l42;
        while (true) {
            c4 = this.C0;
            if (c4 != null || (l42 = this.T) == null) {
                break;
            } else {
                this.C0 = ((M4) l42).u0;
            }
        }
        C0063c3 c0063c3 = this.B0;
        c0063c3.a = i;
        c0063c3.b = i3;
        c0063c3.c = i2;
        c0063c3.d = i4;
        c4.b(l4, c0063c3);
        l4.O(c0063c3.e);
        l4.L(c0063c3.f188f);
        l4.E = c0063c3.h;
        l4.I(c0063c3.g);
    }

    @Override // o.L4
    public final void b(C0050ba c0050ba, boolean z) {
        boolean z2;
        boolean z3;
        L4 l4;
        float f2;
        int i;
        boolean z4;
        super.b(c0050ba, z);
        L4 l42 = this.T;
        if (l42 != null && ((M4) l42).v0) {
            z2 = true;
        } else {
            z2 = false;
        }
        int i2 = this.T0;
        ArrayList arrayList = this.W0;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        int size = arrayList.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            C0425u7 c0425u7 = (C0425u7) arrayList.get(i3);
                            if (i3 == size - 1) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            c0425u7.b(i3, z2, z4);
                        }
                    }
                } else if (this.Z0 != null && this.Y0 != null && this.X0 != null) {
                    for (int i4 = 0; i4 < this.b1; i4++) {
                        this.a1[i4].D();
                    }
                    int[] iArr = this.Z0;
                    int i5 = iArr[0];
                    int i6 = iArr[1];
                    float f3 = this.J0;
                    L4 l43 = null;
                    int i7 = 0;
                    while (i7 < i5) {
                        if (z2) {
                            i = (i5 - i7) - 1;
                            f2 = 1.0f - this.J0;
                        } else {
                            f2 = f3;
                            i = i7;
                        }
                        L4 l44 = this.Y0[i];
                        if (l44 != null && l44.g0 != 8) {
                            C0482x4 c0482x4 = l44.I;
                            if (i7 == 0) {
                                l44.f(c0482x4, this.I, this.w0);
                                l44.i0 = this.D0;
                                l44.d0 = f2;
                            }
                            if (i7 == i5 - 1) {
                                l44.f(l44.K, this.K, this.x0);
                            }
                            if (i7 > 0 && l43 != null) {
                                int i8 = this.P0;
                                C0482x4 c0482x42 = l43.K;
                                l44.f(c0482x4, c0482x42, i8);
                                l43.f(c0482x42, c0482x4, 0);
                            }
                            l43 = l44;
                        }
                        i7++;
                        f3 = f2;
                    }
                    for (int i9 = 0; i9 < i6; i9++) {
                        L4 l45 = this.X0[i9];
                        if (l45 != null && l45.g0 != 8) {
                            C0482x4 c0482x43 = l45.J;
                            if (i9 == 0) {
                                l45.f(c0482x43, this.J, this.s0);
                                l45.j0 = this.E0;
                                l45.e0 = this.K0;
                            }
                            if (i9 == i6 - 1) {
                                l45.f(l45.L, this.L, this.t0);
                            }
                            if (i9 > 0 && l43 != null) {
                                int i10 = this.Q0;
                                C0482x4 c0482x44 = l43.L;
                                l45.f(c0482x43, c0482x44, i10);
                                l43.f(c0482x44, c0482x43, 0);
                            }
                            l43 = l45;
                        }
                    }
                    for (int i11 = 0; i11 < i5; i11++) {
                        for (int i12 = 0; i12 < i6; i12++) {
                            int i13 = (i12 * i5) + i11;
                            if (this.V0 == 1) {
                                i13 = (i11 * i6) + i12;
                            }
                            L4[] l4Arr = this.a1;
                            if (i13 < l4Arr.length && (l4 = l4Arr[i13]) != null && l4.g0 != 8) {
                                L4 l46 = this.Y0[i11];
                                L4 l47 = this.X0[i12];
                                if (l4 != l46) {
                                    l4.f(l4.I, l46.I, 0);
                                    l4.f(l4.K, l46.K, 0);
                                }
                                if (l4 != l47) {
                                    l4.f(l4.J, l47.J, 0);
                                    l4.f(l4.L, l47.L, 0);
                                }
                            }
                        }
                    }
                }
            } else {
                int size2 = arrayList.size();
                for (int i14 = 0; i14 < size2; i14++) {
                    C0425u7 c0425u72 = (C0425u7) arrayList.get(i14);
                    if (i14 == size2 - 1) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    c0425u72.b(i14, z2, z3);
                }
            }
        } else if (arrayList.size() > 0) {
            ((C0425u7) arrayList.get(0)).b(0, z2, true);
        }
        this.y0 = false;
    }
}
