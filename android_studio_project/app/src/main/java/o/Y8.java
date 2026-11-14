package o;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Y8 extends AbstractC0277mi {
    @Override // o.N5
    public final void a(N5 n5) {
        P5 p5 = this.h;
        if (!p5.c || p5.j) {
            return;
        }
        p5.d((int) ((((P5) p5.l.get(0)).g * ((X8) this.b).q0) + 0.5f));
    }

    @Override // o.AbstractC0277mi
    public final void d() {
        L4 l4 = this.b;
        X8 x8 = (X8) l4;
        int i = x8.r0;
        int i2 = x8.s0;
        int i3 = x8.u0;
        P5 p5 = this.h;
        if (i3 == 1) {
            if (i != -1) {
                p5.l.add(l4.T.d.h);
                this.b.T.d.h.k.add(p5);
                p5.f136f = i;
            } else if (i2 != -1) {
                p5.l.add(l4.T.d.i);
                this.b.T.d.i.k.add(p5);
                p5.f136f = -i2;
            } else {
                p5.b = true;
                p5.l.add(l4.T.d.i);
                this.b.T.d.i.k.add(p5);
            }
            m(this.b.d.h);
            m(this.b.d.i);
            return;
        }
        if (i != -1) {
            p5.l.add(l4.T.e.h);
            this.b.T.e.h.k.add(p5);
            p5.f136f = i;
        } else if (i2 != -1) {
            p5.l.add(l4.T.e.i);
            this.b.T.e.i.k.add(p5);
            p5.f136f = -i2;
        } else {
            p5.b = true;
            p5.l.add(l4.T.e.i);
            this.b.T.e.i.k.add(p5);
        }
        m(this.b.e.h);
        m(this.b.e.i);
    }

    @Override // o.AbstractC0277mi
    public final void e() {
        L4 l4 = this.b;
        int i = ((X8) l4).u0;
        P5 p5 = this.h;
        if (i == 1) {
            l4.Y = p5.g;
        } else {
            l4.Z = p5.g;
        }
    }

    @Override // o.AbstractC0277mi
    public final void f() {
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
