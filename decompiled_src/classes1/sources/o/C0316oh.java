package o;

/* renamed from: o.oh, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0316oh extends AbstractC0277mi {
    public P5 k;
    public C0043b3 l;

    @Override // o.N5
    public final void a(N5 n5) {
        float f2;
        float f3;
        float f4;
        int i;
        if (Ve.C(this.j) != 3) {
            C0026a6 c0026a6 = this.e;
            if (c0026a6.c && !c0026a6.j && this.d == 3) {
                L4 l4 = this.b;
                int i2 = l4.s;
                if (i2 != 2) {
                    if (i2 == 3) {
                        C0026a6 c0026a62 = l4.d.e;
                        if (c0026a62.j) {
                            int i3 = l4.X;
                            if (i3 != -1) {
                                if (i3 != 0) {
                                    if (i3 != 1) {
                                        i = 0;
                                        c0026a6.d(i);
                                    } else {
                                        f2 = c0026a62.g;
                                        f3 = l4.W;
                                    }
                                } else {
                                    f4 = c0026a62.g * l4.W;
                                    i = (int) (f4 + 0.5f);
                                    c0026a6.d(i);
                                }
                            } else {
                                f2 = c0026a62.g;
                                f3 = l4.W;
                            }
                            f4 = f2 / f3;
                            i = (int) (f4 + 0.5f);
                            c0026a6.d(i);
                        }
                    }
                } else {
                    L4 l42 = l4.T;
                    if (l42 != null) {
                        if (l42.e.e.j) {
                            c0026a6.d((int) ((r5.g * l4.z) + 0.5f));
                        }
                    }
                }
            }
            P5 p5 = this.h;
            if (p5.c) {
                P5 p52 = this.i;
                if (p52.c) {
                    if (p5.j && p52.j && c0026a6.j) {
                        return;
                    }
                    if (!c0026a6.j && this.d == 3) {
                        L4 l43 = this.b;
                        if (l43.r == 0 && !l43.y()) {
                            P5 p53 = (P5) p5.l.get(0);
                            P5 p54 = (P5) p52.l.get(0);
                            int i4 = p53.g + p5.f136f;
                            int i5 = p54.g + p52.f136f;
                            p5.d(i4);
                            p52.d(i5);
                            c0026a6.d(i5 - i4);
                            return;
                        }
                    }
                    if (!c0026a6.j && this.d == 3 && this.a == 1 && p5.l.size() > 0 && p52.l.size() > 0) {
                        P5 p55 = (P5) p5.l.get(0);
                        int i6 = (((P5) p52.l.get(0)).g + p52.f136f) - (p55.g + p5.f136f);
                        int i7 = c0026a6.m;
                        if (i6 < i7) {
                            c0026a6.d(i6);
                        } else {
                            c0026a6.d(i7);
                        }
                    }
                    if (c0026a6.j && p5.l.size() > 0 && p52.l.size() > 0) {
                        P5 p56 = (P5) p5.l.get(0);
                        P5 p57 = (P5) p52.l.get(0);
                        int i8 = p56.g;
                        int i9 = p5.f136f + i8;
                        int i10 = p57.g;
                        int i11 = p52.f136f + i10;
                        float f5 = this.b.e0;
                        if (p56 == p57) {
                            f5 = 0.5f;
                        } else {
                            i8 = i9;
                            i10 = i11;
                        }
                        p5.d((int) ((((i10 - i8) - c0026a6.g) * f5) + i8 + 0.5f));
                        p52.d(p5.g + c0026a6.g);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        L4 l44 = this.b;
        l(l44.J, l44.L, 1);
    }

    /* JADX WARN: Type inference failed for: r0v124, types: [o.b3, o.a6] */
    @Override // o.AbstractC0277mi
    public final void d() {
        L4 l4;
        L4 l42;
        L4 l43;
        L4 l44;
        L4 l45 = this.b;
        boolean z = l45.a;
        C0026a6 c0026a6 = this.e;
        if (z) {
            c0026a6.d(l45.k());
        }
        boolean z2 = c0026a6.j;
        P5 p5 = this.i;
        P5 p52 = this.h;
        if (!z2) {
            L4 l46 = this.b;
            this.d = l46.p0[1];
            if (l46.E) {
                this.l = new C0026a6(this);
            }
            int i = this.d;
            if (i != 3) {
                if (i == 4 && (l44 = this.b.T) != null && l44.p0[1] == 1) {
                    int k = (l44.k() - this.b.J.e()) - this.b.L.e();
                    AbstractC0277mi.b(p52, l44.e.h, this.b.J.e());
                    AbstractC0277mi.b(p5, l44.e.i, -this.b.L.e());
                    c0026a6.d(k);
                    return;
                }
                if (i == 1) {
                    c0026a6.d(this.b.k());
                }
            }
        } else if (this.d == 4 && (l42 = (l4 = this.b).T) != null && l42.p0[1] == 1) {
            AbstractC0277mi.b(p52, l42.e.h, l4.J.e());
            AbstractC0277mi.b(p5, l42.e.i, -this.b.L.e());
            return;
        }
        boolean z3 = c0026a6.j;
        P5 p53 = this.k;
        if (z3) {
            L4 l47 = this.b;
            if (l47.a) {
                C0482x4[] c0482x4Arr = l47.Q;
                C0482x4 c0482x4 = c0482x4Arr[2];
                C0482x4 c0482x42 = c0482x4.f293f;
                if (c0482x42 != null && c0482x4Arr[3].f293f != null) {
                    if (l47.y()) {
                        p52.f136f = this.b.Q[2].e();
                        p5.f136f = -this.b.Q[3].e();
                    } else {
                        P5 h = AbstractC0277mi.h(this.b.Q[2]);
                        if (h != null) {
                            AbstractC0277mi.b(p52, h, this.b.Q[2].e());
                        }
                        P5 h2 = AbstractC0277mi.h(this.b.Q[3]);
                        if (h2 != null) {
                            AbstractC0277mi.b(p5, h2, -this.b.Q[3].e());
                        }
                        p52.b = true;
                        p5.b = true;
                    }
                    L4 l48 = this.b;
                    if (l48.E) {
                        AbstractC0277mi.b(p53, p52, l48.a0);
                        return;
                    }
                    return;
                }
                if (c0482x42 != null) {
                    P5 h3 = AbstractC0277mi.h(c0482x4);
                    if (h3 != null) {
                        AbstractC0277mi.b(p52, h3, this.b.Q[2].e());
                        AbstractC0277mi.b(p5, p52, c0026a6.g);
                        L4 l49 = this.b;
                        if (l49.E) {
                            AbstractC0277mi.b(p53, p52, l49.a0);
                            return;
                        }
                        return;
                    }
                    return;
                }
                C0482x4 c0482x43 = c0482x4Arr[3];
                if (c0482x43.f293f != null) {
                    P5 h4 = AbstractC0277mi.h(c0482x43);
                    if (h4 != null) {
                        AbstractC0277mi.b(p5, h4, -this.b.Q[3].e());
                        AbstractC0277mi.b(p52, p5, -c0026a6.g);
                    }
                    L4 l410 = this.b;
                    if (l410.E) {
                        AbstractC0277mi.b(p53, p52, l410.a0);
                        return;
                    }
                    return;
                }
                C0482x4 c0482x44 = c0482x4Arr[4];
                if (c0482x44.f293f != null) {
                    P5 h5 = AbstractC0277mi.h(c0482x44);
                    if (h5 != null) {
                        AbstractC0277mi.b(p53, h5, 0);
                        AbstractC0277mi.b(p52, p53, -this.b.a0);
                        AbstractC0277mi.b(p5, p52, c0026a6.g);
                        return;
                    }
                    return;
                }
                if (!(l47 instanceof AbstractC0049b9) && l47.T != null && l47.i(7).f293f == null) {
                    L4 l411 = this.b;
                    AbstractC0277mi.b(p52, l411.T.e.h, l411.s());
                    AbstractC0277mi.b(p5, p52, c0026a6.g);
                    L4 l412 = this.b;
                    if (l412.E) {
                        AbstractC0277mi.b(p53, p52, l412.a0);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        if (!z3 && this.d == 3) {
            L4 l413 = this.b;
            int i2 = l413.s;
            if (i2 != 2) {
                if (i2 == 3 && !l413.y()) {
                    L4 l414 = this.b;
                    if (l414.r != 3) {
                        C0026a6 c0026a62 = l414.d.e;
                        c0026a6.l.add(c0026a62);
                        c0026a62.k.add(c0026a6);
                        c0026a6.b = true;
                        c0026a6.k.add(p52);
                        c0026a6.k.add(p5);
                    }
                }
            } else {
                L4 l415 = l413.T;
                if (l415 != null) {
                    C0026a6 c0026a63 = l415.e.e;
                    c0026a6.l.add(c0026a63);
                    c0026a63.k.add(c0026a6);
                    c0026a6.b = true;
                    c0026a6.k.add(p52);
                    c0026a6.k.add(p5);
                }
            }
        } else {
            c0026a6.b(this);
        }
        L4 l416 = this.b;
        C0482x4[] c0482x4Arr2 = l416.Q;
        C0482x4 c0482x45 = c0482x4Arr2[2];
        C0482x4 c0482x46 = c0482x45.f293f;
        if (c0482x46 != null && c0482x4Arr2[3].f293f != null) {
            if (l416.y()) {
                p52.f136f = this.b.Q[2].e();
                p5.f136f = -this.b.Q[3].e();
            } else {
                P5 h6 = AbstractC0277mi.h(this.b.Q[2]);
                P5 h7 = AbstractC0277mi.h(this.b.Q[3]);
                if (h6 != null) {
                    h6.b(this);
                }
                if (h7 != null) {
                    h7.b(this);
                }
                this.j = 4;
            }
            if (this.b.E) {
                c(p53, p52, 1, this.l);
            }
        } else if (c0482x46 != null) {
            P5 h8 = AbstractC0277mi.h(c0482x45);
            if (h8 != null) {
                AbstractC0277mi.b(p52, h8, this.b.Q[2].e());
                c(p5, p52, 1, c0026a6);
                if (this.b.E) {
                    c(p53, p52, 1, this.l);
                }
                if (this.d == 3) {
                    L4 l417 = this.b;
                    if (l417.W > 0.0f) {
                        C0069c9 c0069c9 = l417.d;
                        if (c0069c9.d == 3) {
                            c0069c9.e.k.add(c0026a6);
                            c0026a6.l.add(this.b.d.e);
                            c0026a6.a = this;
                        }
                    }
                }
            }
        } else {
            C0482x4 c0482x47 = c0482x4Arr2[3];
            if (c0482x47.f293f != null) {
                P5 h9 = AbstractC0277mi.h(c0482x47);
                if (h9 != null) {
                    AbstractC0277mi.b(p5, h9, -this.b.Q[3].e());
                    c(p52, p5, -1, c0026a6);
                    if (this.b.E) {
                        c(p53, p52, 1, this.l);
                    }
                }
            } else {
                C0482x4 c0482x48 = c0482x4Arr2[4];
                if (c0482x48.f293f != null) {
                    P5 h10 = AbstractC0277mi.h(c0482x48);
                    if (h10 != null) {
                        AbstractC0277mi.b(p53, h10, 0);
                        c(p52, p53, -1, this.l);
                        c(p5, p52, 1, c0026a6);
                    }
                } else if (!(l416 instanceof AbstractC0049b9) && (l43 = l416.T) != null) {
                    AbstractC0277mi.b(p52, l43.e.h, l416.s());
                    c(p5, p52, 1, c0026a6);
                    if (this.b.E) {
                        c(p53, p52, 1, this.l);
                    }
                    if (this.d == 3) {
                        L4 l418 = this.b;
                        if (l418.W > 0.0f) {
                            C0069c9 c0069c92 = l418.d;
                            if (c0069c92.d == 3) {
                                c0069c92.e.k.add(c0026a6);
                                c0026a6.l.add(this.b.d.e);
                                c0026a6.a = this;
                            }
                        }
                    }
                }
            }
        }
        if (c0026a6.l.size() == 0) {
            c0026a6.c = true;
        }
    }

    @Override // o.AbstractC0277mi
    public final void e() {
        P5 p5 = this.h;
        if (p5.j) {
            this.b.Z = p5.g;
        }
    }

    @Override // o.AbstractC0277mi
    public final void f() {
        this.c = null;
        this.h.c();
        this.i.c();
        this.k.c();
        this.e.c();
        this.g = false;
    }

    @Override // o.AbstractC0277mi
    public final boolean k() {
        if (this.d != 3 || this.b.s == 0) {
            return true;
        }
        return false;
    }

    public final void m() {
        this.g = false;
        P5 p5 = this.h;
        p5.c();
        p5.j = false;
        P5 p52 = this.i;
        p52.c();
        p52.j = false;
        P5 p53 = this.k;
        p53.c();
        p53.j = false;
        this.e.j = false;
    }

    public final String toString() {
        return "VerticalRun " + this.b.h0;
    }
}
