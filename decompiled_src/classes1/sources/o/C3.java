package o;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C3 extends AbstractC0277mi {
    public final ArrayList k;
    public int l;

    public C3(L4 l4, int i) {
        super(l4);
        L4 l42;
        N5 n5;
        int i2;
        N5 n52;
        this.k = new ArrayList();
        this.f257f = i;
        L4 l43 = this.b;
        L4 m = l43.m(i);
        while (true) {
            L4 l44 = m;
            l42 = l43;
            l43 = l44;
            if (l43 == null) {
                break;
            } else {
                m = l43.m(this.f257f);
            }
        }
        this.b = l42;
        int i3 = this.f257f;
        if (i3 == 0) {
            n5 = l42.d;
        } else if (i3 == 1) {
            n5 = l42.e;
        } else {
            n5 = null;
        }
        ArrayList arrayList = this.k;
        arrayList.add(n5);
        L4 l = l42.l(this.f257f);
        while (l != null) {
            int i4 = this.f257f;
            if (i4 == 0) {
                n52 = l.d;
            } else if (i4 == 1) {
                n52 = l.e;
            } else {
                n52 = null;
            }
            arrayList.add(n52);
            l = l.l(this.f257f);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            AbstractC0277mi abstractC0277mi = (AbstractC0277mi) it.next();
            int i5 = this.f257f;
            if (i5 == 0) {
                abstractC0277mi.b.b = this;
            } else if (i5 == 1) {
                abstractC0277mi.b.c = this;
            }
        }
        if (this.f257f == 0 && ((M4) this.b.T).v0 && arrayList.size() > 1) {
            this.b = ((AbstractC0277mi) arrayList.get(arrayList.size() - 1)).b;
        }
        if (this.f257f == 0) {
            i2 = this.b.i0;
        } else {
            i2 = this.b.j0;
        }
        this.l = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:291:0x03aa, code lost:
    
        r2 = r2 - r12;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00da  */
    @Override // o.N5
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(o.N5 r27) {
        /*
            Method dump skipped, instructions count: 969
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.C3.a(o.N5):void");
    }

    @Override // o.AbstractC0277mi
    public final void d() {
        ArrayList arrayList = this.k;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((AbstractC0277mi) it.next()).d();
        }
        int size = arrayList.size();
        if (size < 1) {
            return;
        }
        L4 l4 = ((AbstractC0277mi) arrayList.get(0)).b;
        L4 l42 = ((AbstractC0277mi) arrayList.get(size - 1)).b;
        int i = this.f257f;
        P5 p5 = this.i;
        P5 p52 = this.h;
        if (i == 0) {
            C0482x4 c0482x4 = l4.I;
            C0482x4 c0482x42 = l42.K;
            P5 i2 = AbstractC0277mi.i(c0482x4, 0);
            int e = c0482x4.e();
            L4 m = m();
            if (m != null) {
                e = m.I.e();
            }
            if (i2 != null) {
                AbstractC0277mi.b(p52, i2, e);
            }
            P5 i3 = AbstractC0277mi.i(c0482x42, 0);
            int e2 = c0482x42.e();
            L4 n = n();
            if (n != null) {
                e2 = n.K.e();
            }
            if (i3 != null) {
                AbstractC0277mi.b(p5, i3, -e2);
            }
        } else {
            C0482x4 c0482x43 = l4.J;
            C0482x4 c0482x44 = l42.L;
            P5 i4 = AbstractC0277mi.i(c0482x43, 1);
            int e3 = c0482x43.e();
            L4 m2 = m();
            if (m2 != null) {
                e3 = m2.J.e();
            }
            if (i4 != null) {
                AbstractC0277mi.b(p52, i4, e3);
            }
            P5 i5 = AbstractC0277mi.i(c0482x44, 1);
            int e4 = c0482x44.e();
            L4 n2 = n();
            if (n2 != null) {
                e4 = n2.L.e();
            }
            if (i5 != null) {
                AbstractC0277mi.b(p5, i5, -e4);
            }
        }
        p52.a = this;
        p5.a = this;
    }

    @Override // o.AbstractC0277mi
    public final void e() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.k;
            if (i < arrayList.size()) {
                ((AbstractC0277mi) arrayList.get(i)).e();
                i++;
            } else {
                return;
            }
        }
    }

    @Override // o.AbstractC0277mi
    public final void f() {
        this.c = null;
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            ((AbstractC0277mi) it.next()).f();
        }
    }

    @Override // o.AbstractC0277mi
    public final long j() {
        ArrayList arrayList = this.k;
        int size = arrayList.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            j = r5.i.f136f + ((AbstractC0277mi) arrayList.get(i)).j() + j + r5.h.f136f;
        }
        return j;
    }

    @Override // o.AbstractC0277mi
    public final boolean k() {
        ArrayList arrayList = this.k;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (!((AbstractC0277mi) arrayList.get(i)).k()) {
                return false;
            }
        }
        return true;
    }

    public final L4 m() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.k;
            if (i < arrayList.size()) {
                L4 l4 = ((AbstractC0277mi) arrayList.get(i)).b;
                if (l4.g0 != 8) {
                    return l4;
                }
                i++;
            } else {
                return null;
            }
        }
    }

    public final L4 n() {
        ArrayList arrayList = this.k;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            L4 l4 = ((AbstractC0277mi) arrayList.get(size)).b;
            if (l4.g0 != 8) {
                return l4;
            }
        }
        return null;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("ChainRun ");
        if (this.f257f == 0) {
            str = "horizontal : ";
        } else {
            str = "vertical : ";
        }
        sb.append(str);
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            AbstractC0277mi abstractC0277mi = (AbstractC0277mi) it.next();
            sb.append("<");
            sb.append(abstractC0277mi);
            sb.append("> ");
        }
        return sb.toString();
    }
}
