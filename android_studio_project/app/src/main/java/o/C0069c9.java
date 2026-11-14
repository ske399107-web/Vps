package o;

/* renamed from: o.c9, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0069c9 extends AbstractC0277mi {
    public static final int[] k = new int[2];

    public static void m(int[] iArr, int i, int i2, int i3, int i4, float f2, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 != 0) {
                if (i5 == 1) {
                    iArr[0] = i6;
                    iArr[1] = (int) ((i6 * f2) + 0.5f);
                    return;
                }
                return;
            }
            iArr[0] = (int) ((i7 * f2) + 0.5f);
            iArr[1] = i7;
            return;
        }
        int i8 = (int) ((i7 * f2) + 0.5f);
        int i9 = (int) ((i6 / f2) + 0.5f);
        if (i8 <= i6) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else if (i9 <= i7) {
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x0244, code lost:
    
        if (r3 != 1) goto L128;
     */
    @Override // o.N5
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(o.N5 r24) {
        /*
            Method dump skipped, instructions count: 907
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.C0069c9.a(o.N5):void");
    }

    @Override // o.AbstractC0277mi
    public final void d() {
        L4 l4;
        L4 l42;
        int i;
        L4 l43;
        L4 l44;
        int i2;
        L4 l45 = this.b;
        boolean z = l45.a;
        C0026a6 c0026a6 = this.e;
        if (z) {
            c0026a6.d(l45.q());
        }
        boolean z2 = c0026a6.j;
        P5 p5 = this.i;
        P5 p52 = this.h;
        if (!z2) {
            L4 l46 = this.b;
            int i3 = l46.p0[0];
            this.d = i3;
            if (i3 != 3) {
                if (i3 == 4 && (l44 = l46.T) != null && ((i2 = l44.p0[0]) == 1 || i2 == 4)) {
                    int q = (l44.q() - this.b.I.e()) - this.b.K.e();
                    AbstractC0277mi.b(p52, l44.d.h, this.b.I.e());
                    AbstractC0277mi.b(p5, l44.d.i, -this.b.K.e());
                    c0026a6.d(q);
                    return;
                }
                if (i3 == 1) {
                    c0026a6.d(l46.q());
                }
            }
        } else if (this.d == 4 && (l42 = (l4 = this.b).T) != null && ((i = l42.p0[0]) == 1 || i == 4)) {
            AbstractC0277mi.b(p52, l42.d.h, l4.I.e());
            AbstractC0277mi.b(p5, l42.d.i, -this.b.K.e());
            return;
        }
        if (c0026a6.j) {
            L4 l47 = this.b;
            if (l47.a) {
                C0482x4[] c0482x4Arr = l47.Q;
                C0482x4 c0482x4 = c0482x4Arr[0];
                C0482x4 c0482x42 = c0482x4.f293f;
                if (c0482x42 != null && c0482x4Arr[1].f293f != null) {
                    if (l47.x()) {
                        p52.f136f = this.b.Q[0].e();
                        p5.f136f = -this.b.Q[1].e();
                        return;
                    }
                    P5 h = AbstractC0277mi.h(this.b.Q[0]);
                    if (h != null) {
                        AbstractC0277mi.b(p52, h, this.b.Q[0].e());
                    }
                    P5 h2 = AbstractC0277mi.h(this.b.Q[1]);
                    if (h2 != null) {
                        AbstractC0277mi.b(p5, h2, -this.b.Q[1].e());
                    }
                    p52.b = true;
                    p5.b = true;
                    return;
                }
                if (c0482x42 != null) {
                    P5 h3 = AbstractC0277mi.h(c0482x4);
                    if (h3 != null) {
                        AbstractC0277mi.b(p52, h3, this.b.Q[0].e());
                        AbstractC0277mi.b(p5, p52, c0026a6.g);
                        return;
                    }
                    return;
                }
                C0482x4 c0482x43 = c0482x4Arr[1];
                if (c0482x43.f293f != null) {
                    P5 h4 = AbstractC0277mi.h(c0482x43);
                    if (h4 != null) {
                        AbstractC0277mi.b(p5, h4, -this.b.Q[1].e());
                        AbstractC0277mi.b(p52, p5, -c0026a6.g);
                        return;
                    }
                    return;
                }
                if (!(l47 instanceof AbstractC0049b9) && l47.T != null && l47.i(7).f293f == null) {
                    L4 l48 = this.b;
                    AbstractC0277mi.b(p52, l48.T.d.h, l48.r());
                    AbstractC0277mi.b(p5, p52, c0026a6.g);
                    return;
                }
                return;
            }
        }
        if (this.d == 3) {
            L4 l49 = this.b;
            int i4 = l49.r;
            if (i4 != 2) {
                if (i4 == 3) {
                    if (l49.s == 3) {
                        p52.a = this;
                        p5.a = this;
                        C0316oh c0316oh = l49.e;
                        c0316oh.h.a = this;
                        c0316oh.i.a = this;
                        c0026a6.a = this;
                        if (l49.y()) {
                            c0026a6.l.add(this.b.e.e);
                            this.b.e.e.k.add(c0026a6);
                            C0316oh c0316oh2 = this.b.e;
                            c0316oh2.e.a = this;
                            c0026a6.l.add(c0316oh2.h);
                            c0026a6.l.add(this.b.e.i);
                            this.b.e.h.k.add(c0026a6);
                            this.b.e.i.k.add(c0026a6);
                        } else if (this.b.x()) {
                            this.b.e.e.l.add(c0026a6);
                            c0026a6.k.add(this.b.e.e);
                        } else {
                            this.b.e.e.l.add(c0026a6);
                        }
                    } else {
                        C0026a6 c0026a62 = l49.e.e;
                        c0026a6.l.add(c0026a62);
                        c0026a62.k.add(c0026a6);
                        this.b.e.h.k.add(c0026a6);
                        this.b.e.i.k.add(c0026a6);
                        c0026a6.b = true;
                        c0026a6.k.add(p52);
                        c0026a6.k.add(p5);
                        p52.l.add(c0026a6);
                        p5.l.add(c0026a6);
                    }
                }
            } else {
                L4 l410 = l49.T;
                if (l410 != null) {
                    C0026a6 c0026a63 = l410.e.e;
                    c0026a6.l.add(c0026a63);
                    c0026a63.k.add(c0026a6);
                    c0026a6.b = true;
                    c0026a6.k.add(p52);
                    c0026a6.k.add(p5);
                }
            }
        }
        L4 l411 = this.b;
        C0482x4[] c0482x4Arr2 = l411.Q;
        C0482x4 c0482x44 = c0482x4Arr2[0];
        C0482x4 c0482x45 = c0482x44.f293f;
        if (c0482x45 != null && c0482x4Arr2[1].f293f != null) {
            if (l411.x()) {
                p52.f136f = this.b.Q[0].e();
                p5.f136f = -this.b.Q[1].e();
                return;
            }
            P5 h5 = AbstractC0277mi.h(this.b.Q[0]);
            P5 h6 = AbstractC0277mi.h(this.b.Q[1]);
            if (h5 != null) {
                h5.b(this);
            }
            if (h6 != null) {
                h6.b(this);
            }
            this.j = 4;
            return;
        }
        if (c0482x45 != null) {
            P5 h7 = AbstractC0277mi.h(c0482x44);
            if (h7 != null) {
                AbstractC0277mi.b(p52, h7, this.b.Q[0].e());
                c(p5, p52, 1, c0026a6);
                return;
            }
            return;
        }
        C0482x4 c0482x46 = c0482x4Arr2[1];
        if (c0482x46.f293f != null) {
            P5 h8 = AbstractC0277mi.h(c0482x46);
            if (h8 != null) {
                AbstractC0277mi.b(p5, h8, -this.b.Q[1].e());
                c(p52, p5, -1, c0026a6);
                return;
            }
            return;
        }
        if (!(l411 instanceof AbstractC0049b9) && (l43 = l411.T) != null) {
            AbstractC0277mi.b(p52, l43.d.h, l411.r());
            c(p5, p52, 1, c0026a6);
        }
    }

    @Override // o.AbstractC0277mi
    public final void e() {
        P5 p5 = this.h;
        if (p5.j) {
            this.b.Y = p5.g;
        }
    }

    @Override // o.AbstractC0277mi
    public final void f() {
        this.c = null;
        this.h.c();
        this.i.c();
        this.e.c();
        this.g = false;
    }

    @Override // o.AbstractC0277mi
    public final boolean k() {
        if (this.d != 3 || this.b.r == 0) {
            return true;
        }
        return false;
    }

    public final void n() {
        this.g = false;
        P5 p5 = this.h;
        p5.c();
        p5.j = false;
        P5 p52 = this.i;
        p52.c();
        p52.j = false;
        this.e.j = false;
    }

    public final String toString() {
        return "HorizontalRun " + this.b.h0;
    }
}
