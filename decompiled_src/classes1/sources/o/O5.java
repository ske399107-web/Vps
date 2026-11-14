package o;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class O5 {
    public M4 a;
    public boolean b;
    public boolean c;
    public M4 d;
    public ArrayList e;

    /* renamed from: f, reason: collision with root package name */
    public C4 f130f;
    public C0063c3 g;
    public ArrayList h;

    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Object, o.he] */
    public final void a(P5 p5, int i, ArrayList arrayList, C0174he c0174he) {
        AbstractC0277mi abstractC0277mi = p5.d;
        if (abstractC0277mi.c == null) {
            M4 m4 = this.a;
            if (abstractC0277mi != m4.d) {
                C0174he c0174he2 = c0174he;
                if (abstractC0277mi != m4.e) {
                    if (c0174he == null) {
                        ?? obj = new Object();
                        obj.a = null;
                        obj.b = new ArrayList();
                        obj.a = abstractC0277mi;
                        arrayList.add(obj);
                        c0174he2 = obj;
                    }
                    abstractC0277mi.c = c0174he2;
                    c0174he2.b.add(abstractC0277mi);
                    P5 p52 = abstractC0277mi.h;
                    Iterator it = p52.k.iterator();
                    while (it.hasNext()) {
                        N5 n5 = (N5) it.next();
                        if (n5 instanceof P5) {
                            a((P5) n5, i, arrayList, c0174he2);
                        }
                    }
                    P5 p53 = abstractC0277mi.i;
                    Iterator it2 = p53.k.iterator();
                    while (it2.hasNext()) {
                        N5 n52 = (N5) it2.next();
                        if (n52 instanceof P5) {
                            a((P5) n52, i, arrayList, c0174he2);
                        }
                    }
                    if (i == 1 && (abstractC0277mi instanceof C0316oh)) {
                        Iterator it3 = ((C0316oh) abstractC0277mi).k.k.iterator();
                        while (it3.hasNext()) {
                            N5 n53 = (N5) it3.next();
                            if (n53 instanceof P5) {
                                a((P5) n53, i, arrayList, c0174he2);
                            }
                        }
                    }
                    Iterator it4 = p52.l.iterator();
                    while (it4.hasNext()) {
                        a((P5) it4.next(), i, arrayList, c0174he2);
                    }
                    Iterator it5 = p53.l.iterator();
                    while (it5.hasNext()) {
                        a((P5) it5.next(), i, arrayList, c0174he2);
                    }
                    if (i == 1 && (abstractC0277mi instanceof C0316oh)) {
                        Iterator it6 = ((C0316oh) abstractC0277mi).k.l.iterator();
                        while (it6.hasNext()) {
                            a((P5) it6.next(), i, arrayList, c0174he2);
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x0260 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0008 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(o.M4 r17) {
        /*
            Method dump skipped, instructions count: 791
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.O5.b(o.M4):void");
    }

    public final void c() {
        ArrayList arrayList = this.e;
        arrayList.clear();
        M4 m4 = this.d;
        m4.d.f();
        m4.e.f();
        arrayList.add(m4.d);
        arrayList.add(m4.e);
        Iterator it = m4.q0.iterator();
        HashSet hashSet = null;
        while (it.hasNext()) {
            L4 l4 = (L4) it.next();
            if (l4 instanceof X8) {
                AbstractC0277mi abstractC0277mi = new AbstractC0277mi(l4);
                l4.d.f();
                l4.e.f();
                abstractC0277mi.f257f = ((X8) l4).u0;
                arrayList.add(abstractC0277mi);
            } else {
                if (l4.x()) {
                    if (l4.b == null) {
                        l4.b = new C3(l4, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(l4.b);
                } else {
                    arrayList.add(l4.d);
                }
                if (l4.y()) {
                    if (l4.c == null) {
                        l4.c = new C3(l4, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(l4.c);
                } else {
                    arrayList.add(l4.e);
                }
                if (l4 instanceof AbstractC0049b9) {
                    arrayList.add(new AbstractC0277mi(l4));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((AbstractC0277mi) it2.next()).f();
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            AbstractC0277mi abstractC0277mi2 = (AbstractC0277mi) it3.next();
            if (abstractC0277mi2.b != m4) {
                abstractC0277mi2.d();
            }
        }
        ArrayList arrayList2 = this.h;
        arrayList2.clear();
        M4 m42 = this.a;
        e(m42.d, 0, arrayList2);
        e(m42.e, 1, arrayList2);
        this.b = false;
    }

    public final int d(M4 m4, int i) {
        AbstractC0277mi abstractC0277mi;
        AbstractC0277mi abstractC0277mi2;
        ArrayList arrayList;
        int i2;
        int i3;
        long j;
        float f2;
        long j2;
        M4 m42 = m4;
        ArrayList arrayList2 = this.h;
        int size = arrayList2.size();
        int i4 = 0;
        long j3 = 0;
        while (i4 < size) {
            AbstractC0277mi abstractC0277mi3 = ((C0174he) arrayList2.get(i4)).a;
            if (!(abstractC0277mi3 instanceof C3) ? !(i != 0 ? (abstractC0277mi3 instanceof C0316oh) : (abstractC0277mi3 instanceof C0069c9)) : ((C3) abstractC0277mi3).f257f != i) {
                arrayList = arrayList2;
                i2 = size;
                i3 = i4;
                j = 0;
            } else {
                if (i == 0) {
                    abstractC0277mi = m42.d;
                } else {
                    abstractC0277mi = m42.e;
                }
                P5 p5 = abstractC0277mi.h;
                if (i == 0) {
                    abstractC0277mi2 = m42.d;
                } else {
                    abstractC0277mi2 = m42.e;
                }
                P5 p52 = abstractC0277mi2.i;
                boolean contains = abstractC0277mi3.h.l.contains(p5);
                P5 p53 = abstractC0277mi3.i;
                boolean contains2 = p53.l.contains(p52);
                long j4 = abstractC0277mi3.j();
                P5 p54 = abstractC0277mi3.h;
                if (contains && contains2) {
                    long b = C0174he.b(p54, 0L);
                    ArrayList arrayList3 = arrayList2;
                    i2 = size;
                    long a = C0174he.a(p53, 0L);
                    long j5 = b - j4;
                    int i5 = p53.f136f;
                    arrayList = arrayList3;
                    i3 = i4;
                    if (j5 >= (-i5)) {
                        j5 += i5;
                    }
                    long j6 = (-a) - j4;
                    long j7 = p54.f136f;
                    long j8 = j6 - j7;
                    if (j8 >= j7) {
                        j8 -= j7;
                    }
                    L4 l4 = abstractC0277mi3.b;
                    if (i == 0) {
                        f2 = l4.d0;
                    } else if (i == 1) {
                        f2 = l4.e0;
                    } else {
                        l4.getClass();
                        f2 = -1.0f;
                    }
                    if (f2 > 0.0f) {
                        j2 = (((float) j5) / (1.0f - f2)) + (((float) j8) / f2);
                    } else {
                        j2 = 0;
                    }
                    float f3 = (float) j2;
                    j = (p54.f136f + ((((f3 * f2) + 0.5f) + j4) + (((1.0f - f2) * f3) + 0.5f))) - p53.f136f;
                } else {
                    arrayList = arrayList2;
                    i2 = size;
                    i3 = i4;
                    if (contains) {
                        j = Math.max(C0174he.b(p54, p54.f136f), p54.f136f + j4);
                    } else if (contains2) {
                        j = Math.max(-C0174he.a(p53, p53.f136f), (-p53.f136f) + j4);
                    } else {
                        j = (abstractC0277mi3.j() + p54.f136f) - p53.f136f;
                    }
                }
            }
            j3 = Math.max(j3, j);
            i4 = i3 + 1;
            m42 = m4;
            size = i2;
            arrayList2 = arrayList;
        }
        return (int) j3;
    }

    public final void e(AbstractC0277mi abstractC0277mi, int i, ArrayList arrayList) {
        P5 p5;
        Iterator it = abstractC0277mi.h.k.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            p5 = abstractC0277mi.i;
            if (!hasNext) {
                break;
            }
            N5 n5 = (N5) it.next();
            if (n5 instanceof P5) {
                a((P5) n5, i, arrayList, null);
            } else if (n5 instanceof AbstractC0277mi) {
                a(((AbstractC0277mi) n5).h, i, arrayList, null);
            }
        }
        Iterator it2 = p5.k.iterator();
        while (it2.hasNext()) {
            N5 n52 = (N5) it2.next();
            if (n52 instanceof P5) {
                a((P5) n52, i, arrayList, null);
            } else if (n52 instanceof AbstractC0277mi) {
                a(((AbstractC0277mi) n52).i, i, arrayList, null);
            }
        }
        if (i == 1) {
            Iterator it3 = ((C0316oh) abstractC0277mi).k.k.iterator();
            while (it3.hasNext()) {
                N5 n53 = (N5) it3.next();
                if (n53 instanceof P5) {
                    a((P5) n53, i, arrayList, null);
                }
            }
        }
    }

    public final void f(int i, int i2, int i3, int i4, L4 l4) {
        C0063c3 c0063c3 = this.g;
        c0063c3.a = i;
        c0063c3.b = i3;
        c0063c3.c = i2;
        c0063c3.d = i4;
        this.f130f.b(l4, c0063c3);
        l4.O(c0063c3.e);
        l4.L(c0063c3.f188f);
        l4.E = c0063c3.h;
        l4.I(c0063c3.g);
    }

    public final void g() {
        boolean z;
        C0043b3 c0043b3;
        Iterator it = this.a.q0.iterator();
        while (it.hasNext()) {
            L4 l4 = (L4) it.next();
            if (!l4.a) {
                int[] iArr = l4.p0;
                boolean z2 = false;
                int i = iArr[0];
                int i2 = iArr[1];
                int i3 = l4.r;
                int i4 = l4.s;
                if (i != 2 && (i != 3 || i3 != 1)) {
                    z = false;
                } else {
                    z = true;
                }
                if (i2 == 2 || (i2 == 3 && i4 == 1)) {
                    z2 = true;
                }
                C0026a6 c0026a6 = l4.d.e;
                boolean z3 = c0026a6.j;
                C0026a6 c0026a62 = l4.e.e;
                boolean z4 = c0026a62.j;
                if (z3 && z4) {
                    f(1, c0026a6.g, 1, c0026a62.g, l4);
                    l4.a = true;
                } else if (z3 && z2) {
                    f(1, c0026a6.g, 2, c0026a62.g, l4);
                    if (i2 == 3) {
                        l4.e.e.m = l4.k();
                    } else {
                        l4.e.e.d(l4.k());
                        l4.a = true;
                    }
                } else if (z4 && z) {
                    f(2, c0026a6.g, 1, c0026a62.g, l4);
                    if (i == 3) {
                        l4.d.e.m = l4.q();
                    } else {
                        l4.d.e.d(l4.q());
                        l4.a = true;
                    }
                }
                if (l4.a && (c0043b3 = l4.e.l) != null) {
                    c0043b3.d(l4.a0);
                }
            }
        }
    }
}
