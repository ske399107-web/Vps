package o;

/* renamed from: o.mi, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0277mi implements N5 {
    public int a;
    public L4 b;
    public C0174he c;
    public int d;
    public final C0026a6 e = new C0026a6(this);

    /* renamed from: f, reason: collision with root package name */
    public int f257f = 0;
    public boolean g = false;
    public final P5 h = new P5(this);
    public final P5 i = new P5(this);
    public int j = 1;

    public AbstractC0277mi(L4 l4) {
        this.b = l4;
    }

    public static void b(P5 p5, P5 p52, int i) {
        p5.l.add(p52);
        p5.f136f = i;
        p52.k.add(p5);
    }

    public static P5 h(C0482x4 c0482x4) {
        C0482x4 c0482x42 = c0482x4.f293f;
        if (c0482x42 == null) {
            return null;
        }
        int C = Ve.C(c0482x42.e);
        L4 l4 = c0482x42.d;
        if (C != 1) {
            if (C != 2) {
                if (C != 3) {
                    if (C != 4) {
                        if (C != 5) {
                            return null;
                        }
                        return l4.e.k;
                    }
                    return l4.e.i;
                }
                return l4.d.i;
            }
            return l4.e.h;
        }
        return l4.d.h;
    }

    public static P5 i(C0482x4 c0482x4, int i) {
        AbstractC0277mi abstractC0277mi;
        C0482x4 c0482x42 = c0482x4.f293f;
        if (c0482x42 == null) {
            return null;
        }
        L4 l4 = c0482x42.d;
        if (i == 0) {
            abstractC0277mi = l4.d;
        } else {
            abstractC0277mi = l4.e;
        }
        int C = Ve.C(c0482x42.e);
        if (C != 1 && C != 2) {
            if (C != 3 && C != 4) {
                return null;
            }
            return abstractC0277mi.i;
        }
        return abstractC0277mi.h;
    }

    public final void c(P5 p5, P5 p52, int i, C0026a6 c0026a6) {
        p5.l.add(p52);
        p5.l.add(this.e);
        p5.h = i;
        p5.i = c0026a6;
        p52.k.add(p5);
        c0026a6.k.add(p5);
    }

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public final int g(int i, int i2) {
        int max;
        if (i2 == 0) {
            L4 l4 = this.b;
            int i3 = l4.v;
            max = Math.max(l4.u, i);
            if (i3 > 0) {
                max = Math.min(i3, i);
            }
            if (max == i) {
                return i;
            }
        } else {
            L4 l42 = this.b;
            int i4 = l42.y;
            max = Math.max(l42.x, i);
            if (i4 > 0) {
                max = Math.min(i4, i);
            }
            if (max == i) {
                return i;
            }
        }
        return max;
    }

    public long j() {
        if (this.e.j) {
            return r0.g;
        }
        return 0L;
    }

    public abstract boolean k();

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0051, code lost:
    
        if (r9.a == 3) goto L50;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l(o.C0482x4 r12, o.C0482x4 r13, int r14) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.AbstractC0277mi.l(o.x4, o.x4, int):void");
    }
}
