package o;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class M4 extends L4 {
    public int A0;
    public B3[] B0;
    public B3[] C0;
    public int D0;
    public boolean E0;
    public boolean F0;
    public WeakReference G0;
    public WeakReference H0;
    public WeakReference I0;
    public WeakReference J0;
    public final HashSet K0;
    public final C0063c3 L0;
    public ArrayList q0 = new ArrayList();
    public final C0380s2 r0 = new C0380s2(this);
    public final O5 s0;
    public int t0;
    public C4 u0;
    public boolean v0;
    public final C0050ba w0;
    public int x0;
    public int y0;
    public int z0;

    /* JADX WARN: Type inference failed for: r0v2, types: [o.O5, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object, o.c3] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, o.c3] */
    public M4() {
        ?? obj = new Object();
        obj.b = true;
        obj.c = true;
        obj.e = new ArrayList();
        new ArrayList();
        obj.f130f = null;
        obj.g = new Object();
        obj.h = new ArrayList();
        obj.a = this;
        obj.d = this;
        this.s0 = obj;
        this.u0 = null;
        this.v0 = false;
        this.w0 = new C0050ba();
        this.z0 = 0;
        this.A0 = 0;
        this.B0 = new B3[4];
        this.C0 = new B3[4];
        this.D0 = 257;
        this.E0 = false;
        this.F0 = false;
        this.G0 = null;
        this.H0 = null;
        this.I0 = null;
        this.J0 = null;
        this.K0 = new HashSet();
        this.L0 = new Object();
    }

    public static void V(L4 l4, C4 c4, C0063c3 c0063c3) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i;
        int i2;
        if (c4 == null) {
            return;
        }
        if (l4.g0 != 8 && !(l4 instanceof X8) && !(l4 instanceof Q2)) {
            int[] iArr = l4.p0;
            c0063c3.a = iArr[0];
            c0063c3.b = iArr[1];
            c0063c3.c = l4.q();
            c0063c3.d = l4.k();
            c0063c3.i = false;
            c0063c3.j = 0;
            if (c0063c3.a == 3) {
                z = true;
            } else {
                z = false;
            }
            if (c0063c3.b == 3) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z && l4.W > 0.0f) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z2 && l4.W > 0.0f) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (z && l4.t(0) && l4.r == 0 && !z3) {
                c0063c3.a = 2;
                if (z2 && l4.s == 0) {
                    c0063c3.a = 1;
                }
                z = false;
            }
            if (z2 && l4.t(1) && l4.s == 0 && !z4) {
                c0063c3.b = 2;
                if (z && l4.r == 0) {
                    c0063c3.b = 1;
                }
                z2 = false;
            }
            if (l4.A()) {
                c0063c3.a = 1;
                z = false;
            }
            if (l4.B()) {
                c0063c3.b = 1;
                z2 = false;
            }
            int[] iArr2 = l4.t;
            if (z3) {
                if (iArr2[0] == 4) {
                    c0063c3.a = 1;
                } else if (!z2) {
                    if (c0063c3.b == 1) {
                        i2 = c0063c3.d;
                    } else {
                        c0063c3.a = 2;
                        c4.b(l4, c0063c3);
                        i2 = c0063c3.f188f;
                    }
                    c0063c3.a = 1;
                    c0063c3.c = (int) (l4.W * i2);
                }
            }
            if (z4) {
                if (iArr2[1] == 4) {
                    c0063c3.b = 1;
                } else if (!z) {
                    if (c0063c3.a == 1) {
                        i = c0063c3.c;
                    } else {
                        c0063c3.b = 2;
                        c4.b(l4, c0063c3);
                        i = c0063c3.e;
                    }
                    c0063c3.b = 1;
                    if (l4.X == -1) {
                        c0063c3.d = (int) (i / l4.W);
                    } else {
                        c0063c3.d = (int) (l4.W * i);
                    }
                }
            }
            c4.b(l4, c0063c3);
            l4.O(c0063c3.e);
            l4.L(c0063c3.f188f);
            l4.E = c0063c3.h;
            l4.I(c0063c3.g);
            c0063c3.j = 0;
            return;
        }
        c0063c3.e = 0;
        c0063c3.f188f = 0;
    }

    @Override // o.L4
    public final void C() {
        this.w0.t();
        this.x0 = 0;
        this.y0 = 0;
        this.q0.clear();
        super.C();
    }

    @Override // o.L4
    public final void F(C0380s2 c0380s2) {
        super.F(c0380s2);
        int size = this.q0.size();
        for (int i = 0; i < size; i++) {
            ((L4) this.q0.get(i)).F(c0380s2);
        }
    }

    @Override // o.L4
    public final void P(boolean z, boolean z2) {
        super.P(z, z2);
        int size = this.q0.size();
        for (int i = 0; i < size; i++) {
            ((L4) this.q0.get(i)).P(z, z2);
        }
    }

    public final void R(L4 l4, int i) {
        if (i == 0) {
            int i2 = this.z0 + 1;
            B3[] b3Arr = this.C0;
            if (i2 >= b3Arr.length) {
                this.C0 = (B3[]) Arrays.copyOf(b3Arr, b3Arr.length * 2);
            }
            B3[] b3Arr2 = this.C0;
            int i3 = this.z0;
            b3Arr2[i3] = new B3(l4, 0, this.v0);
            this.z0 = i3 + 1;
            return;
        }
        if (i == 1) {
            int i4 = this.A0 + 1;
            B3[] b3Arr3 = this.B0;
            if (i4 >= b3Arr3.length) {
                this.B0 = (B3[]) Arrays.copyOf(b3Arr3, b3Arr3.length * 2);
            }
            B3[] b3Arr4 = this.B0;
            int i5 = this.A0;
            b3Arr4[i5] = new B3(l4, 1, this.v0);
            this.A0 = i5 + 1;
        }
    }

    public final void S(C0050ba c0050ba) {
        int i;
        boolean W = W(64);
        b(c0050ba, W);
        int size = this.q0.size();
        boolean z = false;
        for (int i2 = 0; i2 < size; i2++) {
            L4 l4 = (L4) this.q0.get(i2);
            boolean[] zArr = l4.S;
            zArr[0] = false;
            zArr[1] = false;
            if (l4 instanceof Q2) {
                z = true;
            }
        }
        if (z) {
            for (int i3 = 0; i3 < size; i3++) {
                L4 l42 = (L4) this.q0.get(i3);
                if (l42 instanceof Q2) {
                    Q2 q2 = (Q2) l42;
                    for (int i4 = 0; i4 < q2.r0; i4++) {
                        L4 l43 = q2.q0[i4];
                        if (q2.t0 || l43.c()) {
                            int i5 = q2.s0;
                            if (i5 != 0 && i5 != 1) {
                                if (i5 == 2 || i5 == 3) {
                                    l43.S[1] = true;
                                }
                            } else {
                                l43.S[0] = true;
                            }
                        }
                    }
                }
            }
        }
        HashSet hashSet = this.K0;
        hashSet.clear();
        for (int i6 = 0; i6 < size; i6++) {
            L4 l44 = (L4) this.q0.get(i6);
            l44.getClass();
            boolean z2 = l44 instanceof C0445v7;
            if (z2 || (l44 instanceof X8)) {
                if (z2) {
                    hashSet.add(l44);
                } else {
                    l44.b(c0050ba, W);
                }
            }
        }
        while (hashSet.size() > 0) {
            int size2 = hashSet.size();
            Iterator it = hashSet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                C0445v7 c0445v7 = (C0445v7) ((L4) it.next());
                for (int i7 = 0; i7 < c0445v7.r0; i7++) {
                    if (hashSet.contains(c0445v7.q0[i7])) {
                        c0445v7.b(c0050ba, W);
                        hashSet.remove(c0445v7);
                        break;
                    }
                }
            }
            if (size2 == hashSet.size()) {
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    ((L4) it2.next()).b(c0050ba, W);
                }
                hashSet.clear();
            }
        }
        if (C0050ba.q) {
            HashSet hashSet2 = new HashSet();
            for (int i8 = 0; i8 < size; i8++) {
                L4 l45 = (L4) this.q0.get(i8);
                l45.getClass();
                if (!(l45 instanceof C0445v7) && !(l45 instanceof X8)) {
                    hashSet2.add(l45);
                }
            }
            if (this.p0[0] == 2) {
                i = 0;
            } else {
                i = 1;
            }
            a(this, c0050ba, hashSet2, i, false);
            Iterator it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                L4 l46 = (L4) it3.next();
                AbstractC0487x9.k(this, c0050ba, l46);
                l46.b(c0050ba, W);
            }
        } else {
            for (int i9 = 0; i9 < size; i9++) {
                L4 l47 = (L4) this.q0.get(i9);
                if (l47 instanceof M4) {
                    int[] iArr = l47.p0;
                    int i10 = iArr[0];
                    int i11 = iArr[1];
                    if (i10 == 2) {
                        l47.M(1);
                    }
                    if (i11 == 2) {
                        l47.N(1);
                    }
                    l47.b(c0050ba, W);
                    if (i10 == 2) {
                        l47.M(i10);
                    }
                    if (i11 == 2) {
                        l47.N(i11);
                    }
                } else {
                    AbstractC0487x9.k(this, c0050ba, l47);
                    if (!(l47 instanceof C0445v7) && !(l47 instanceof X8)) {
                        l47.b(c0050ba, W);
                    }
                }
            }
        }
        if (this.z0 > 0) {
            L1.f(this, c0050ba, null, 0);
        }
        if (this.A0 > 0) {
            L1.f(this, c0050ba, null, 1);
        }
    }

    public final boolean T(int i, boolean z) {
        boolean z2;
        O5 o5 = this.s0;
        M4 m4 = o5.a;
        boolean z3 = false;
        int j = m4.j(0);
        int j2 = m4.j(1);
        int r = m4.r();
        int s = m4.s();
        ArrayList arrayList = o5.e;
        if (z && (j == 2 || j2 == 2)) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                AbstractC0277mi abstractC0277mi = (AbstractC0277mi) it.next();
                if (abstractC0277mi.f257f == i && !abstractC0277mi.k()) {
                    z = false;
                    break;
                }
            }
            if (i == 0) {
                if (z && j == 2) {
                    m4.M(1);
                    m4.O(o5.d(m4, 0));
                    m4.d.e.d(m4.q());
                }
            } else if (z && j2 == 2) {
                m4.N(1);
                m4.L(o5.d(m4, 1));
                m4.e.e.d(m4.k());
            }
        }
        int[] iArr = m4.p0;
        if (i == 0) {
            int i2 = iArr[0];
            if (i2 == 1 || i2 == 4) {
                int q = m4.q() + r;
                m4.d.i.d(q);
                m4.d.e.d(q - r);
                z2 = true;
            }
            z2 = false;
        } else {
            int i3 = iArr[1];
            if (i3 == 1 || i3 == 4) {
                int k = m4.k() + s;
                m4.e.i.d(k);
                m4.e.e.d(k - s);
                z2 = true;
            }
            z2 = false;
        }
        o5.g();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            AbstractC0277mi abstractC0277mi2 = (AbstractC0277mi) it2.next();
            if (abstractC0277mi2.f257f == i && (abstractC0277mi2.b != m4 || abstractC0277mi2.g)) {
                abstractC0277mi2.e();
            }
        }
        Iterator it3 = arrayList.iterator();
        while (true) {
            if (it3.hasNext()) {
                AbstractC0277mi abstractC0277mi3 = (AbstractC0277mi) it3.next();
                if (abstractC0277mi3.f257f == i && (z2 || abstractC0277mi3.b != m4)) {
                    if (!abstractC0277mi3.h.j) {
                        break;
                    }
                    if (!abstractC0277mi3.i.j) {
                        break;
                    }
                    if (!(abstractC0277mi3 instanceof C3) && !abstractC0277mi3.e.j) {
                        break;
                    }
                }
            } else {
                z3 = true;
                break;
            }
        }
        m4.M(j);
        m4.N(j2);
        return z3;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(31:227|228|229|(1:231)|232|233|(2:234|235)|(3:353|354|(28:356|357|358|359|360|361|362|238|239|(1:243)|244|(6:248|249|250|251|252|253)|325|(1:350)(9:329|330|331|332|333|334|335|336|337)|338|339|260|(4:262|(3:264|(2:270|271)(1:268)|269)|272|273)(4:320|(1:322)|323|324)|274|(6:279|(1:281)|282|283|(1:287)|(1:291))|292|(1:294)(1:319)|295|(1:297)(1:318)|(1:317)(4:299|(1:304)|305|(3:310|(2:312|313)(1:315)|314))|316|(0)(0)|314))|237|238|239|(2:241|243)|244|(7:246|248|249|250|251|252|253)|325|(1:327)|350|338|339|260|(0)(0)|274|(7:277|279|(0)|282|283|(2:285|287)|(2:289|291))|292|(0)(0)|295|(0)(0)|(0)(0)|316|(0)(0)|314) */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x0797, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:204:0x065f  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0675 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0683  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0694  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x06b1  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x07c0  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0818 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0824 A[LOOP:14: B:280:0x0822->B:281:0x0824, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:294:0x088a  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x08a9  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x08b6  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x08f1  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x08f2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:317:0x08ed  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x08b2  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x0896  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x07fd  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x08fe  */
    /* JADX WARN: Removed duplicated region for block: B:603:0x05db  */
    /* JADX WARN: Removed duplicated region for block: B:622:0x0609 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:625:0x061a  */
    /* JADX WARN: Removed duplicated region for block: B:632:0x0639  */
    /* JADX WARN: Removed duplicated region for block: B:639:0x064f  */
    /* JADX WARN: Removed duplicated region for block: B:641:0x0633  */
    /* JADX WARN: Type inference failed for: r5v53, types: [java.lang.Object, o.c3] */
    /* JADX WARN: Type inference failed for: r6v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void U() {
        /*
            Method dump skipped, instructions count: 2314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.M4.U():void");
    }

    public final boolean W(int i) {
        if ((this.D0 & i) == i) {
            return true;
        }
        return false;
    }

    @Override // o.L4
    public final void n(StringBuilder sb) {
        sb.append(this.j + ":{\n");
        StringBuilder sb2 = new StringBuilder("  actualWidth:");
        sb2.append(this.U);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("  actualHeight:" + this.V);
        sb.append("\n");
        Iterator it = this.q0.iterator();
        while (it.hasNext()) {
            ((L4) it.next()).n(sb);
            sb.append(",\n");
        }
        sb.append("}");
    }
}
