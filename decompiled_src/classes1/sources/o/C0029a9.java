package o;

import java.util.Iterator;

/* renamed from: o.a9, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0029a9 extends AbstractC0277mi {
    @Override // o.N5
    public final void a(N5 n5) {
        Q2 q2 = (Q2) this.b;
        int i = q2.s0;
        P5 p5 = this.h;
        Iterator it = p5.l.iterator();
        int i2 = 0;
        int i3 = -1;
        while (it.hasNext()) {
            int i4 = ((P5) it.next()).g;
            if (i3 == -1 || i4 < i3) {
                i3 = i4;
            }
            if (i2 < i4) {
                i2 = i4;
            }
        }
        if (i != 0 && i != 2) {
            p5.d(i2 + q2.u0);
        } else {
            p5.d(i3 + q2.u0);
        }
    }

    @Override // o.AbstractC0277mi
    public final void d() {
        L4 l4 = this.b;
        if (l4 instanceof Q2) {
            P5 p5 = this.h;
            p5.b = true;
            Q2 q2 = (Q2) l4;
            int i = q2.s0;
            boolean z = q2.t0;
            int i2 = 0;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3) {
                            p5.e = 7;
                            while (i2 < q2.r0) {
                                L4 l42 = q2.q0[i2];
                                if (z || l42.g0 != 8) {
                                    P5 p52 = l42.e.i;
                                    p52.k.add(p5);
                                    p5.l.add(p52);
                                }
                                i2++;
                            }
                            m(this.b.e.h);
                            m(this.b.e.i);
                            return;
                        }
                        return;
                    }
                    p5.e = 6;
                    while (i2 < q2.r0) {
                        L4 l43 = q2.q0[i2];
                        if (z || l43.g0 != 8) {
                            P5 p53 = l43.e.h;
                            p53.k.add(p5);
                            p5.l.add(p53);
                        }
                        i2++;
                    }
                    m(this.b.e.h);
                    m(this.b.e.i);
                    return;
                }
                p5.e = 5;
                while (i2 < q2.r0) {
                    L4 l44 = q2.q0[i2];
                    if (z || l44.g0 != 8) {
                        P5 p54 = l44.d.i;
                        p54.k.add(p5);
                        p5.l.add(p54);
                    }
                    i2++;
                }
                m(this.b.d.h);
                m(this.b.d.i);
                return;
            }
            p5.e = 4;
            while (i2 < q2.r0) {
                L4 l45 = q2.q0[i2];
                if (z || l45.g0 != 8) {
                    P5 p55 = l45.d.h;
                    p55.k.add(p5);
                    p5.l.add(p55);
                }
                i2++;
            }
            m(this.b.d.h);
            m(this.b.d.i);
        }
    }

    @Override // o.AbstractC0277mi
    public final void e() {
        L4 l4 = this.b;
        if (l4 instanceof Q2) {
            int i = ((Q2) l4).s0;
            P5 p5 = this.h;
            if (i != 0 && i != 1) {
                l4.Z = p5.g;
            } else {
                l4.Y = p5.g;
            }
        }
    }

    @Override // o.AbstractC0277mi
    public final void f() {
        this.c = null;
        this.h.c();
    }

    @Override // o.AbstractC0277mi
    public final boolean k() {
        return false;
    }

    public final void m(P5 p5) {
        P5 p52 = this.h;
        p52.k.add(p5);
        p5.l.add(p52);
    }
}
