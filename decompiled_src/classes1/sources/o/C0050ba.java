package o;

import java.util.Arrays;

/* renamed from: o.ba, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0050ba {
    public static boolean q;
    public final Qc d;
    public final C0380s2 m;
    public F2 p;
    public int a = 1000;
    public boolean b = false;
    public int c = 0;
    public int e = 32;

    /* renamed from: f, reason: collision with root package name */
    public int f184f = 32;
    public boolean h = false;
    public boolean[] i = new boolean[32];
    public int j = 1;
    public int k = 0;
    public int l = 32;
    public We[] n = new We[1000];

    /* renamed from: o, reason: collision with root package name */
    public int f185o = 0;
    public F2[] g = new F2[32];

    /* JADX WARN: Type inference failed for: r2v2, types: [o.Qc, o.F2] */
    public C0050ba() {
        s();
        C0380s2 c0380s2 = new C0380s2();
        c0380s2.b = new Jc();
        c0380s2.c = new Jc();
        c0380s2.d = new We[32];
        this.m = c0380s2;
        ?? f2 = new F2(c0380s2);
        f2.f138f = new We[128];
        f2.g = new We[128];
        f2.h = 0;
        f2.i = new H1((Qc) f2);
        this.d = f2;
        this.p = new F2(c0380s2);
    }

    public static int n(Object obj) {
        We we = ((C0482x4) obj).i;
        if (we != null) {
            return (int) (we.e + 0.5f);
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r4v0 */
    public final We a(int i) {
        Jc jc = (Jc) this.m.c;
        int i2 = jc.b;
        We we = null;
        if (i2 > 0) {
            int i3 = i2 - 1;
            ?? r3 = jc.a;
            ?? r4 = r3[i3];
            r3[i3] = 0;
            jc.b = i3;
            we = r4;
        }
        We we2 = we;
        if (we2 == null) {
            we2 = new We(i);
            we2.l = i;
        } else {
            we2.c();
            we2.l = i;
        }
        int i4 = this.f185o;
        int i5 = this.a;
        if (i4 >= i5) {
            int i6 = i5 * 2;
            this.a = i6;
            this.n = (We[]) Arrays.copyOf(this.n, i6);
        }
        We[] weArr = this.n;
        int i7 = this.f185o;
        this.f185o = i7 + 1;
        weArr[i7] = we2;
        return we2;
    }

    public final void b(We we, We we2, int i, float f2, We we3, We we4, int i2, int i3) {
        F2 l = l();
        if (we2 == we3) {
            l.d.g(we, 1.0f);
            l.d.g(we4, 1.0f);
            l.d.g(we2, -2.0f);
        } else if (f2 == 0.5f) {
            l.d.g(we, 1.0f);
            l.d.g(we2, -1.0f);
            l.d.g(we3, -1.0f);
            l.d.g(we4, 1.0f);
            if (i > 0 || i2 > 0) {
                l.b = (-i) + i2;
            }
        } else if (f2 <= 0.0f) {
            l.d.g(we, -1.0f);
            l.d.g(we2, 1.0f);
            l.b = i;
        } else if (f2 >= 1.0f) {
            l.d.g(we4, -1.0f);
            l.d.g(we3, 1.0f);
            l.b = -i2;
        } else {
            float f3 = 1.0f - f2;
            l.d.g(we, f3 * 1.0f);
            l.d.g(we2, f3 * (-1.0f));
            l.d.g(we3, (-1.0f) * f2);
            l.d.g(we4, 1.0f * f2);
            if (i > 0 || i2 > 0) {
                l.b = (i2 * f2) + ((-i) * f3);
            }
        }
        if (i3 != 8) {
            l.a(this, i3);
        }
        c(l);
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x00d0, code lost:
    
        if (r4.k <= 1) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00d3, code lost:
    
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00dd, code lost:
    
        if (r4.k <= 1) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x00f2, code lost:
    
        if (r4.k <= 1) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x00f5, code lost:
    
        r14 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x00ff, code lost:
    
        if (r4.k <= 1) goto L87;
     */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01b9 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(o.F2 r17) {
        /*
            Method dump skipped, instructions count: 449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.C0050ba.c(o.F2):void");
    }

    public final void d(We we, int i) {
        int i2 = we.c;
        if (i2 == -1) {
            we.d(this, i);
            for (int i3 = 0; i3 < this.c + 1; i3++) {
                We we2 = ((We[]) this.m.d)[i3];
            }
            return;
        }
        if (i2 != -1) {
            F2 f2 = this.g[i2];
            if (f2.e) {
                f2.b = i;
                return;
            }
            if (f2.d.d() == 0) {
                f2.e = true;
                f2.b = i;
                return;
            }
            F2 l = l();
            if (i < 0) {
                l.b = i * (-1);
                l.d.g(we, 1.0f);
            } else {
                l.b = i;
                l.d.g(we, -1.0f);
            }
            c(l);
            return;
        }
        F2 l2 = l();
        l2.a = we;
        float f3 = i;
        we.e = f3;
        l2.b = f3;
        l2.e = true;
        c(l2);
    }

    public final void e(We we, We we2, int i, int i2) {
        if (i2 == 8 && we2.f162f && we.c == -1) {
            we.d(this, we2.e + i);
            return;
        }
        F2 l = l();
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            l.b = i;
        }
        if (!z) {
            l.d.g(we, -1.0f);
            l.d.g(we2, 1.0f);
        } else {
            l.d.g(we, 1.0f);
            l.d.g(we2, -1.0f);
        }
        if (i2 != 8) {
            l.a(this, i2);
        }
        c(l);
    }

    public final void f(We we, We we2, int i, int i2) {
        F2 l = l();
        We m = m();
        m.d = 0;
        l.b(we, we2, m, i);
        if (i2 != 8) {
            l.d.g(j(i2), (int) (l.d.c(m) * (-1.0f)));
        }
        c(l);
    }

    public final void g(We we, We we2, int i, int i2) {
        F2 l = l();
        We m = m();
        m.d = 0;
        l.c(we, we2, m, i);
        if (i2 != 8) {
            l.d.g(j(i2), (int) (l.d.c(m) * (-1.0f)));
        }
        c(l);
    }

    public final void h(F2 f2) {
        int i;
        if (f2.e) {
            f2.a.d(this, f2.b);
        } else {
            F2[] f2Arr = this.g;
            int i2 = this.k;
            f2Arr[i2] = f2;
            We we = f2.a;
            we.c = i2;
            this.k = i2 + 1;
            we.e(this, f2);
        }
        if (this.b) {
            int i3 = 0;
            while (i3 < this.k) {
                if (this.g[i3] == null) {
                    System.out.println("WTF");
                }
                F2 f22 = this.g[i3];
                if (f22 != null && f22.e) {
                    f22.a.d(this, f22.b);
                    ((Jc) this.m.b).b(f22);
                    this.g[i3] = null;
                    int i4 = i3 + 1;
                    int i5 = i4;
                    while (true) {
                        i = this.k;
                        if (i4 >= i) {
                            break;
                        }
                        F2[] f2Arr2 = this.g;
                        int i6 = i4 - 1;
                        F2 f23 = f2Arr2[i4];
                        f2Arr2[i6] = f23;
                        We we2 = f23.a;
                        if (we2.c == i4) {
                            we2.c = i6;
                        }
                        i5 = i4;
                        i4++;
                    }
                    if (i5 < i) {
                        this.g[i5] = null;
                    }
                    this.k = i - 1;
                    i3--;
                }
                i3++;
            }
            this.b = false;
        }
    }

    public final void i() {
        for (int i = 0; i < this.k; i++) {
            F2 f2 = this.g[i];
            f2.a.e = f2.b;
        }
    }

    public final We j(int i) {
        if (this.j + 1 >= this.f184f) {
            o();
        }
        We a = a(4);
        int i2 = this.c + 1;
        this.c = i2;
        this.j++;
        a.b = i2;
        a.d = i;
        ((We[]) this.m.d)[i2] = a;
        Qc qc = this.d;
        qc.i.b = a;
        float[] fArr = a.h;
        Arrays.fill(fArr, 0.0f);
        fArr[a.d] = 1.0f;
        qc.j(a);
        return a;
    }

    public final We k(Object obj) {
        We we = null;
        if (obj == null) {
            return null;
        }
        if (this.j + 1 >= this.f184f) {
            o();
        }
        if (obj instanceof C0482x4) {
            C0482x4 c0482x4 = (C0482x4) obj;
            we = c0482x4.i;
            if (we == null) {
                c0482x4.k();
                we = c0482x4.i;
            }
            int i = we.b;
            C0380s2 c0380s2 = this.m;
            if (i == -1 || i > this.c || ((We[]) c0380s2.d)[i] == null) {
                if (i != -1) {
                    we.c();
                }
                int i2 = this.c + 1;
                this.c = i2;
                this.j++;
                we.b = i2;
                we.l = 1;
                ((We[]) c0380s2.d)[i2] = we;
            }
        }
        return we;
    }

    public final F2 l() {
        Object obj;
        C0380s2 c0380s2 = this.m;
        Jc jc = (Jc) c0380s2.b;
        int i = jc.b;
        if (i > 0) {
            int i2 = i - 1;
            Object[] objArr = jc.a;
            obj = objArr[i2];
            objArr[i2] = null;
            jc.b = i2;
        } else {
            obj = null;
        }
        F2 f2 = (F2) obj;
        if (f2 == null) {
            return new F2(c0380s2);
        }
        f2.a = null;
        f2.d.b();
        f2.b = 0.0f;
        f2.e = false;
        return f2;
    }

    public final We m() {
        if (this.j + 1 >= this.f184f) {
            o();
        }
        We a = a(3);
        int i = this.c + 1;
        this.c = i;
        this.j++;
        a.b = i;
        ((We[]) this.m.d)[i] = a;
        return a;
    }

    public final void o() {
        int i = this.e * 2;
        this.e = i;
        this.g = (F2[]) Arrays.copyOf(this.g, i);
        C0380s2 c0380s2 = this.m;
        c0380s2.d = (We[]) Arrays.copyOf((We[]) c0380s2.d, this.e);
        int i2 = this.e;
        this.i = new boolean[i2];
        this.f184f = i2;
        this.l = i2;
    }

    public final void p() {
        Qc qc = this.d;
        if (qc.e()) {
            i();
            return;
        }
        if (this.h) {
            for (int i = 0; i < this.k; i++) {
                if (!this.g[i].e) {
                    q(qc);
                    return;
                }
            }
            i();
            return;
        }
        q(qc);
    }

    public final void q(Qc qc) {
        int i = 0;
        while (true) {
            if (i >= this.k) {
                break;
            }
            F2 f2 = this.g[i];
            int i2 = 1;
            if (f2.a.l != 1) {
                float f3 = 0.0f;
                if (f2.b < 0.0f) {
                    boolean z = false;
                    int i3 = 0;
                    while (!z) {
                        i3 += i2;
                        float f4 = Float.MAX_VALUE;
                        int i4 = -1;
                        int i5 = -1;
                        int i6 = 0;
                        int i7 = 0;
                        while (i6 < this.k) {
                            F2 f22 = this.g[i6];
                            if (f22.a.l != i2 && !f22.e && f22.b < f3) {
                                int d = f22.d.d();
                                int i8 = 0;
                                while (i8 < d) {
                                    We e = f22.d.e(i8);
                                    float c = f22.d.c(e);
                                    if (c > f3) {
                                        for (int i9 = 0; i9 < 9; i9++) {
                                            float f5 = e.g[i9] / c;
                                            if ((f5 < f4 && i9 == i7) || i9 > i7) {
                                                i7 = i9;
                                                i5 = e.b;
                                                i4 = i6;
                                                f4 = f5;
                                            }
                                        }
                                    }
                                    i8++;
                                    f3 = 0.0f;
                                }
                            }
                            i6++;
                            f3 = 0.0f;
                            i2 = 1;
                        }
                        if (i4 != -1) {
                            F2 f23 = this.g[i4];
                            f23.a.c = -1;
                            f23.g(((We[]) this.m.d)[i5]);
                            We we = f23.a;
                            we.c = i4;
                            we.e(this, f23);
                        } else {
                            z = true;
                        }
                        if (i3 > this.j / 2) {
                            z = true;
                        }
                        f3 = 0.0f;
                        i2 = 1;
                    }
                }
            }
            i++;
        }
        r(qc);
        i();
    }

    public final void r(F2 f2) {
        boolean z;
        int i = 0;
        for (int i2 = 0; i2 < this.j; i2++) {
            this.i[i2] = false;
        }
        boolean z2 = false;
        int i3 = 0;
        while (!z2) {
            int i4 = 1;
            i3++;
            if (i3 >= this.j * 2) {
                return;
            }
            We we = f2.a;
            if (we != null) {
                this.i[we.b] = true;
            }
            We d = f2.d(this.i);
            if (d != null) {
                boolean[] zArr = this.i;
                int i5 = d.b;
                if (zArr[i5]) {
                    return;
                } else {
                    zArr[i5] = true;
                }
            }
            if (d != null) {
                float f3 = Float.MAX_VALUE;
                int i6 = i;
                int i7 = -1;
                while (i6 < this.k) {
                    F2 f22 = this.g[i6];
                    if (f22.a.l != i4 && !f22.e) {
                        C0499y2 c0499y2 = f22.d;
                        int i8 = c0499y2.h;
                        if (i8 != -1) {
                            for (int i9 = 0; i8 != -1 && i9 < c0499y2.a; i9++) {
                                if (c0499y2.e[i8] == d.b) {
                                    z = true;
                                    break;
                                }
                                i8 = c0499y2.f299f[i8];
                            }
                        }
                        z = false;
                        if (z) {
                            float c = f22.d.c(d);
                            if (c < 0.0f) {
                                float f4 = (-f22.b) / c;
                                if (f4 < f3) {
                                    f3 = f4;
                                    i7 = i6;
                                }
                            }
                        }
                    }
                    i6++;
                    i4 = 1;
                }
                if (i7 > -1) {
                    F2 f23 = this.g[i7];
                    f23.a.c = -1;
                    f23.g(d);
                    We we2 = f23.a;
                    we2.c = i7;
                    we2.e(this, f23);
                }
            } else {
                z2 = true;
            }
            i = 0;
        }
    }

    public final void s() {
        for (int i = 0; i < this.k; i++) {
            F2 f2 = this.g[i];
            if (f2 != null) {
                ((Jc) this.m.b).b(f2);
            }
            this.g[i] = null;
        }
    }

    public final void t() {
        C0380s2 c0380s2;
        int i = 0;
        while (true) {
            c0380s2 = this.m;
            We[] weArr = (We[]) c0380s2.d;
            if (i >= weArr.length) {
                break;
            }
            We we = weArr[i];
            if (we != null) {
                we.c();
            }
            i++;
        }
        Jc jc = (Jc) c0380s2.c;
        We[] weArr2 = this.n;
        int i2 = this.f185o;
        jc.getClass();
        if (i2 > weArr2.length) {
            i2 = weArr2.length;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            We we2 = weArr2[i3];
            int i4 = jc.b;
            Object[] objArr = jc.a;
            if (i4 < objArr.length) {
                objArr[i4] = we2;
                jc.b = i4 + 1;
            }
        }
        this.f185o = 0;
        Arrays.fill((We[]) c0380s2.d, (Object) null);
        this.c = 0;
        Qc qc = this.d;
        qc.h = 0;
        qc.b = 0.0f;
        this.j = 1;
        for (int i5 = 0; i5 < this.k; i5++) {
            F2 f2 = this.g[i5];
        }
        s();
        this.k = 0;
        this.p = new F2(c0380s2);
    }
}
