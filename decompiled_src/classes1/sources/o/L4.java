package o;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.conscrypt.BuildConfig;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class L4 {
    public int A;
    public float B;
    public final int[] C;
    public float D;
    public boolean E;
    public boolean F;
    public int G;
    public int H;
    public final C0482x4 I;
    public final C0482x4 J;
    public final C0482x4 K;
    public final C0482x4 L;
    public final C0482x4 M;
    public final C0482x4 N;
    public final C0482x4 O;
    public final C0482x4 P;
    public final C0482x4[] Q;
    public final ArrayList R;
    public final boolean[] S;
    public L4 T;
    public int U;
    public int V;
    public float W;
    public int X;
    public int Y;
    public int Z;
    public int a0;
    public C3 b;
    public int b0;
    public C3 c;
    public int c0;
    public float d0;
    public float e0;
    public View f0;
    public int g0;
    public String h0;
    public int i0;
    public String j;
    public int j0;
    public boolean k;
    public final float[] k0;
    public boolean l;
    public final L4[] l0;
    public boolean m;
    public final L4[] m0;
    public boolean n;
    public int n0;

    /* renamed from: o, reason: collision with root package name */
    public int f119o;
    public int o0;
    public int p;
    public final int[] p0;
    public int q;
    public int r;
    public int s;
    public final int[] t;
    public int u;
    public int v;
    public float w;
    public int x;
    public int y;
    public float z;
    public boolean a = false;
    public C0069c9 d = null;
    public C0316oh e = null;

    /* renamed from: f, reason: collision with root package name */
    public final boolean[] f118f = {true, true};
    public boolean g = true;
    public int h = -1;
    public int i = -1;

    public L4() {
        new HashMap();
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = false;
        this.f119o = -1;
        this.p = -1;
        this.q = 0;
        this.r = 0;
        this.s = 0;
        this.t = new int[2];
        this.u = 0;
        this.v = 0;
        this.w = 1.0f;
        this.x = 0;
        this.y = 0;
        this.z = 1.0f;
        this.A = -1;
        this.B = 1.0f;
        this.C = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.D = Float.NaN;
        this.E = false;
        this.F = false;
        this.G = 0;
        this.H = 0;
        C0482x4 c0482x4 = new C0482x4(this, 2);
        this.I = c0482x4;
        C0482x4 c0482x42 = new C0482x4(this, 3);
        this.J = c0482x42;
        C0482x4 c0482x43 = new C0482x4(this, 4);
        this.K = c0482x43;
        C0482x4 c0482x44 = new C0482x4(this, 5);
        this.L = c0482x44;
        C0482x4 c0482x45 = new C0482x4(this, 6);
        this.M = c0482x45;
        C0482x4 c0482x46 = new C0482x4(this, 8);
        this.N = c0482x46;
        C0482x4 c0482x47 = new C0482x4(this, 9);
        this.O = c0482x47;
        C0482x4 c0482x48 = new C0482x4(this, 7);
        this.P = c0482x48;
        this.Q = new C0482x4[]{c0482x4, c0482x43, c0482x42, c0482x44, c0482x45, c0482x48};
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        this.S = new boolean[2];
        this.p0 = new int[]{1, 1};
        this.T = null;
        this.U = 0;
        this.V = 0;
        this.W = 0.0f;
        this.X = -1;
        this.Y = 0;
        this.Z = 0;
        this.a0 = 0;
        this.d0 = 0.5f;
        this.e0 = 0.5f;
        this.g0 = 0;
        this.h0 = null;
        this.i0 = 0;
        this.j0 = 0;
        this.k0 = new float[]{-1.0f, -1.0f};
        this.l0 = new L4[]{null, null};
        this.m0 = new L4[]{null, null};
        this.n0 = -1;
        this.o0 = -1;
        arrayList.add(c0482x4);
        arrayList.add(c0482x42);
        arrayList.add(c0482x43);
        arrayList.add(c0482x44);
        arrayList.add(c0482x46);
        arrayList.add(c0482x47);
        arrayList.add(c0482x48);
        arrayList.add(c0482x45);
    }

    public static void G(int i, int i2, String str, StringBuilder sb) {
        if (i == i2) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(i);
        sb.append(",\n");
    }

    public static void H(StringBuilder sb, String str, float f2, float f3) {
        if (f2 == f3) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(f2);
        sb.append(",\n");
    }

    public static void o(StringBuilder sb, String str, int i, int i2, int i3, int i4, int i5, float f2, int i6) {
        String str2;
        sb.append(str);
        sb.append(" :  {\n");
        if (i6 == 1) {
            str2 = "FIXED";
        } else if (i6 == 2) {
            str2 = "WRAP_CONTENT";
        } else if (i6 == 3) {
            str2 = "MATCH_CONSTRAINT";
        } else {
            if (i6 != 4) {
                throw null;
            }
            str2 = "MATCH_PARENT";
        }
        if (!"FIXED".equals(str2)) {
            sb.append("      behavior");
            sb.append(" :   ");
            sb.append(str2);
            sb.append(",\n");
        }
        G(i, 0, "      size", sb);
        G(i2, 0, "      min", sb);
        G(i3, Integer.MAX_VALUE, "      max", sb);
        G(i4, 0, "      matchMin", sb);
        G(i5, 0, "      matchDef", sb);
        H(sb, "      matchPercent", f2, 1.0f);
        sb.append("    },\n");
    }

    public static void p(StringBuilder sb, String str, C0482x4 c0482x4) {
        if (c0482x4.f293f == null) {
            return;
        }
        sb.append("    ");
        sb.append(str);
        sb.append(" : [ '");
        sb.append(c0482x4.f293f);
        sb.append("'");
        if (c0482x4.h != Integer.MIN_VALUE || c0482x4.g != 0) {
            sb.append(",");
            sb.append(c0482x4.g);
            if (c0482x4.h != Integer.MIN_VALUE) {
                sb.append(",");
                sb.append(c0482x4.h);
                sb.append(",");
            }
        }
        sb.append(" ] ,\n");
    }

    public boolean A() {
        if (!this.k && (!this.I.c || !this.K.c)) {
            return false;
        }
        return true;
    }

    public boolean B() {
        if (!this.l && (!this.J.c || !this.L.c)) {
            return false;
        }
        return true;
    }

    public void C() {
        this.I.j();
        this.J.j();
        this.K.j();
        this.L.j();
        this.M.j();
        this.N.j();
        this.O.j();
        this.P.j();
        this.T = null;
        this.D = Float.NaN;
        this.U = 0;
        this.V = 0;
        this.W = 0.0f;
        this.X = -1;
        this.Y = 0;
        this.Z = 0;
        this.a0 = 0;
        this.b0 = 0;
        this.c0 = 0;
        this.d0 = 0.5f;
        this.e0 = 0.5f;
        int[] iArr = this.p0;
        iArr[0] = 1;
        iArr[1] = 1;
        this.f0 = null;
        this.g0 = 0;
        this.i0 = 0;
        this.j0 = 0;
        float[] fArr = this.k0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f119o = -1;
        this.p = -1;
        int[] iArr2 = this.C;
        iArr2[0] = Integer.MAX_VALUE;
        iArr2[1] = Integer.MAX_VALUE;
        this.r = 0;
        this.s = 0;
        this.w = 1.0f;
        this.z = 1.0f;
        this.v = Integer.MAX_VALUE;
        this.y = Integer.MAX_VALUE;
        this.u = 0;
        this.x = 0;
        this.A = -1;
        this.B = 1.0f;
        boolean[] zArr = this.f118f;
        zArr[0] = true;
        zArr[1] = true;
        this.F = false;
        boolean[] zArr2 = this.S;
        zArr2[0] = false;
        zArr2[1] = false;
        this.g = true;
        int[] iArr3 = this.t;
        iArr3[0] = 0;
        iArr3[1] = 0;
        this.h = -1;
        this.i = -1;
    }

    public final void D() {
        L4 l4 = this.T;
        if (l4 != null && (l4 instanceof M4)) {
            ((M4) l4).getClass();
        }
        ArrayList arrayList = this.R;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((C0482x4) arrayList.get(i)).j();
        }
    }

    public final void E() {
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = false;
        ArrayList arrayList = this.R;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C0482x4 c0482x4 = (C0482x4) arrayList.get(i);
            c0482x4.c = false;
            c0482x4.b = 0;
        }
    }

    public void F(C0380s2 c0380s2) {
        this.I.k();
        this.J.k();
        this.K.k();
        this.L.k();
        this.M.k();
        this.P.k();
        this.N.k();
        this.O.k();
    }

    public final void I(int i) {
        boolean z;
        this.a0 = i;
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        this.E = z;
    }

    public final void J(int i, int i2) {
        if (this.k) {
            return;
        }
        this.I.l(i);
        this.K.l(i2);
        this.Y = i;
        this.U = i2 - i;
        this.k = true;
    }

    public final void K(int i, int i2) {
        if (this.l) {
            return;
        }
        this.J.l(i);
        this.L.l(i2);
        this.Z = i;
        this.V = i2 - i;
        if (this.E) {
            this.M.l(i + this.a0);
        }
        this.l = true;
    }

    public final void L(int i) {
        this.V = i;
        int i2 = this.c0;
        if (i < i2) {
            this.V = i2;
        }
    }

    public final void M(int i) {
        this.p0[0] = i;
    }

    public final void N(int i) {
        this.p0[1] = i;
    }

    public final void O(int i) {
        this.U = i;
        int i2 = this.b0;
        if (i < i2) {
            this.U = i2;
        }
    }

    public void P(boolean z, boolean z2) {
        int i;
        int i2;
        C0069c9 c0069c9 = this.d;
        boolean z3 = z & c0069c9.g;
        C0316oh c0316oh = this.e;
        boolean z4 = z2 & c0316oh.g;
        int i3 = c0069c9.h.g;
        int i4 = c0316oh.h.g;
        int i5 = c0069c9.i.g;
        int i6 = c0316oh.i.g;
        int i7 = i6 - i4;
        if (i5 - i3 < 0 || i7 < 0 || i3 == Integer.MIN_VALUE || i3 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE || i4 == Integer.MAX_VALUE || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE || i6 == Integer.MAX_VALUE) {
            i5 = 0;
            i6 = 0;
            i3 = 0;
            i4 = 0;
        }
        int i8 = i5 - i3;
        int i9 = i6 - i4;
        if (z3) {
            this.Y = i3;
        }
        if (z4) {
            this.Z = i4;
        }
        if (this.g0 == 8) {
            this.U = 0;
            this.V = 0;
            return;
        }
        int[] iArr = this.p0;
        if (z3) {
            if (iArr[0] == 1 && i8 < (i2 = this.U)) {
                i8 = i2;
            }
            this.U = i8;
            int i10 = this.b0;
            if (i8 < i10) {
                this.U = i10;
            }
        }
        if (z4) {
            if (iArr[1] == 1 && i9 < (i = this.V)) {
                i9 = i;
            }
            this.V = i9;
            int i11 = this.c0;
            if (i9 < i11) {
                this.V = i11;
            }
        }
    }

    public void Q(C0050ba c0050ba, boolean z) {
        int i;
        int i2;
        C0316oh c0316oh;
        C0069c9 c0069c9;
        C0482x4 c0482x4 = this.I;
        c0050ba.getClass();
        int n = C0050ba.n(c0482x4);
        int n2 = C0050ba.n(this.J);
        int n3 = C0050ba.n(this.K);
        int n4 = C0050ba.n(this.L);
        if (z && (c0069c9 = this.d) != null) {
            P5 p5 = c0069c9.h;
            if (p5.j) {
                P5 p52 = c0069c9.i;
                if (p52.j) {
                    n = p5.g;
                    n3 = p52.g;
                }
            }
        }
        if (z && (c0316oh = this.e) != null) {
            P5 p53 = c0316oh.h;
            if (p53.j) {
                P5 p54 = c0316oh.i;
                if (p54.j) {
                    n2 = p53.g;
                    n4 = p54.g;
                }
            }
        }
        int i3 = n4 - n2;
        if (n3 - n < 0 || i3 < 0 || n == Integer.MIN_VALUE || n == Integer.MAX_VALUE || n2 == Integer.MIN_VALUE || n2 == Integer.MAX_VALUE || n3 == Integer.MIN_VALUE || n3 == Integer.MAX_VALUE || n4 == Integer.MIN_VALUE || n4 == Integer.MAX_VALUE) {
            n = 0;
            n2 = 0;
            n3 = 0;
            n4 = 0;
        }
        int i4 = n3 - n;
        int i5 = n4 - n2;
        this.Y = n;
        this.Z = n2;
        if (this.g0 == 8) {
            this.U = 0;
            this.V = 0;
            return;
        }
        int[] iArr = this.p0;
        int i6 = iArr[0];
        if (i6 == 1 && i4 < (i2 = this.U)) {
            i4 = i2;
        }
        if (iArr[1] == 1 && i5 < (i = this.V)) {
            i5 = i;
        }
        this.U = i4;
        this.V = i5;
        int i7 = this.c0;
        if (i5 < i7) {
            this.V = i7;
        }
        int i8 = this.b0;
        if (i4 < i8) {
            this.U = i8;
        }
        int i9 = this.v;
        if (i9 > 0 && i6 == 3) {
            this.U = Math.min(this.U, i9);
        }
        int i10 = this.y;
        if (i10 > 0 && iArr[1] == 3) {
            this.V = Math.min(this.V, i10);
        }
        int i11 = this.U;
        if (i4 != i11) {
            this.h = i11;
        }
        int i12 = this.V;
        if (i5 != i12) {
            this.i = i12;
        }
    }

    public final void a(M4 m4, C0050ba c0050ba, HashSet hashSet, int i, boolean z) {
        if (z) {
            if (!hashSet.contains(this)) {
                return;
            }
            AbstractC0487x9.k(m4, c0050ba, this);
            hashSet.remove(this);
            b(c0050ba, m4.W(64));
        }
        if (i == 0) {
            HashSet hashSet2 = this.I.a;
            if (hashSet2 != null) {
                Iterator it = hashSet2.iterator();
                while (it.hasNext()) {
                    ((C0482x4) it.next()).d.a(m4, c0050ba, hashSet, i, true);
                }
            }
            HashSet hashSet3 = this.K.a;
            if (hashSet3 != null) {
                Iterator it2 = hashSet3.iterator();
                while (it2.hasNext()) {
                    ((C0482x4) it2.next()).d.a(m4, c0050ba, hashSet, i, true);
                }
                return;
            }
            return;
        }
        HashSet hashSet4 = this.J.a;
        if (hashSet4 != null) {
            Iterator it3 = hashSet4.iterator();
            while (it3.hasNext()) {
                ((C0482x4) it3.next()).d.a(m4, c0050ba, hashSet, i, true);
            }
        }
        HashSet hashSet5 = this.L.a;
        if (hashSet5 != null) {
            Iterator it4 = hashSet5.iterator();
            while (it4.hasNext()) {
                ((C0482x4) it4.next()).d.a(m4, c0050ba, hashSet, i, true);
            }
        }
        HashSet hashSet6 = this.M.a;
        if (hashSet6 != null) {
            Iterator it5 = hashSet6.iterator();
            while (it5.hasNext()) {
                ((C0482x4) it5.next()).d.a(m4, c0050ba, hashSet, i, true);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0402  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0411  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0469  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x055b  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x05d1  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x05d7  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0654  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x06ad  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0712  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x070a  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0657  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x05d3  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x05bd  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x04b0  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x04c7  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x04d6  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x04f8  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x04fb  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x04e0  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x04d0  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x020e  */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v27 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(o.C0050ba r59, boolean r60) {
        /*
            Method dump skipped, instructions count: 1994
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.L4.b(o.ba, boolean):void");
    }

    public boolean c() {
        if (this.g0 != 8) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x03ac A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0455 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x046f  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x04bc  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x04cf A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0451  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0402  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0506  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x04f0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:92:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(o.C0050ba r31, boolean r32, boolean r33, boolean r34, boolean r35, o.We r36, o.We r37, int r38, boolean r39, o.C0482x4 r40, o.C0482x4 r41, int r42, int r43, int r44, int r45, float r46, boolean r47, boolean r48, boolean r49, boolean r50, boolean r51, int r52, int r53, int r54, int r55, float r56, boolean r57) {
        /*
            Method dump skipped, instructions count: 1364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.L4.d(o.ba, boolean, boolean, boolean, boolean, o.We, o.We, int, boolean, o.x4, o.x4, int, int, int, int, float, boolean, boolean, boolean, boolean, boolean, int, int, int, int, float, boolean):void");
    }

    public final void e(int i, L4 l4, int i2, int i3) {
        boolean z;
        if (i == 7) {
            if (i2 == 7) {
                C0482x4 i4 = i(2);
                C0482x4 i5 = i(4);
                C0482x4 i6 = i(3);
                C0482x4 i7 = i(5);
                boolean z2 = true;
                if ((i4 != null && i4.h()) || (i5 != null && i5.h())) {
                    z = false;
                } else {
                    e(2, l4, 2, 0);
                    e(4, l4, 4, 0);
                    z = true;
                }
                if ((i6 != null && i6.h()) || (i7 != null && i7.h())) {
                    z2 = false;
                } else {
                    e(3, l4, 3, 0);
                    e(5, l4, 5, 0);
                }
                if (z && z2) {
                    i(7).a(l4.i(7), 0);
                    return;
                } else if (z) {
                    i(8).a(l4.i(8), 0);
                    return;
                } else {
                    if (z2) {
                        i(9).a(l4.i(9), 0);
                        return;
                    }
                    return;
                }
            }
            if (i2 != 2 && i2 != 4) {
                if (i2 == 3 || i2 == 5) {
                    e(3, l4, i2, 0);
                    e(5, l4, i2, 0);
                    i(7).a(l4.i(i2), 0);
                    return;
                }
                return;
            }
            e(2, l4, i2, 0);
            e(4, l4, i2, 0);
            i(7).a(l4.i(i2), 0);
            return;
        }
        if (i == 8 && (i2 == 2 || i2 == 4)) {
            C0482x4 i8 = i(2);
            C0482x4 i9 = l4.i(i2);
            C0482x4 i10 = i(4);
            i8.a(i9, 0);
            i10.a(i9, 0);
            i(8).a(i9, 0);
            return;
        }
        if (i == 9 && (i2 == 3 || i2 == 5)) {
            C0482x4 i11 = l4.i(i2);
            i(3).a(i11, 0);
            i(5).a(i11, 0);
            i(9).a(i11, 0);
            return;
        }
        if (i == 8 && i2 == 8) {
            i(2).a(l4.i(2), 0);
            i(4).a(l4.i(4), 0);
            i(8).a(l4.i(i2), 0);
            return;
        }
        if (i == 9 && i2 == 9) {
            i(3).a(l4.i(3), 0);
            i(5).a(l4.i(5), 0);
            i(9).a(l4.i(i2), 0);
            return;
        }
        C0482x4 i12 = i(i);
        C0482x4 i13 = l4.i(i2);
        if (i12.i(i13)) {
            if (i == 6) {
                C0482x4 i14 = i(3);
                C0482x4 i15 = i(5);
                if (i14 != null) {
                    i14.j();
                }
                if (i15 != null) {
                    i15.j();
                }
            } else if (i != 3 && i != 5) {
                if (i == 2 || i == 4) {
                    C0482x4 i16 = i(7);
                    if (i16.f293f != i13) {
                        i16.j();
                    }
                    C0482x4 f2 = i(i).f();
                    C0482x4 i17 = i(8);
                    if (i17.h()) {
                        f2.j();
                        i17.j();
                    }
                }
            } else {
                C0482x4 i18 = i(6);
                if (i18 != null) {
                    i18.j();
                }
                C0482x4 i19 = i(7);
                if (i19.f293f != i13) {
                    i19.j();
                }
                C0482x4 f3 = i(i).f();
                C0482x4 i20 = i(9);
                if (i20.h()) {
                    f3.j();
                    i20.j();
                }
            }
            i12.a(i13, i3);
        }
    }

    public final void f(C0482x4 c0482x4, C0482x4 c0482x42, int i) {
        if (c0482x4.d == this) {
            e(c0482x4.e, c0482x42.d, c0482x42.e, i);
        }
    }

    public final void g(C0050ba c0050ba) {
        c0050ba.k(this.I);
        c0050ba.k(this.J);
        c0050ba.k(this.K);
        c0050ba.k(this.L);
        if (this.a0 > 0) {
            c0050ba.k(this.M);
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [o.mi, o.oh] */
    /* JADX WARN: Type inference failed for: r0v3, types: [o.c9, o.mi] */
    public final void h() {
        if (this.d == null) {
            ?? abstractC0277mi = new AbstractC0277mi(this);
            abstractC0277mi.h.e = 4;
            abstractC0277mi.i.e = 5;
            abstractC0277mi.f257f = 0;
            this.d = abstractC0277mi;
        }
        if (this.e == null) {
            ?? abstractC0277mi2 = new AbstractC0277mi(this);
            P5 p5 = new P5(abstractC0277mi2);
            abstractC0277mi2.k = p5;
            abstractC0277mi2.l = null;
            abstractC0277mi2.h.e = 6;
            abstractC0277mi2.i.e = 7;
            p5.e = 8;
            abstractC0277mi2.f257f = 1;
            this.e = abstractC0277mi2;
        }
    }

    public C0482x4 i(int i) {
        switch (Ve.C(i)) {
            case 0:
                return null;
            case 1:
                return this.I;
            case 2:
                return this.J;
            case 3:
                return this.K;
            case 4:
                return this.L;
            case 5:
                return this.M;
            case 6:
                return this.P;
            case 7:
                return this.N;
            case 8:
                return this.O;
            default:
                throw new AssertionError(Ve.B(i));
        }
    }

    public final int j(int i) {
        int[] iArr = this.p0;
        if (i == 0) {
            return iArr[0];
        }
        if (i != 1) {
            return 0;
        }
        return iArr[1];
    }

    public final int k() {
        if (this.g0 == 8) {
            return 0;
        }
        return this.V;
    }

    public final L4 l(int i) {
        C0482x4 c0482x4;
        C0482x4 c0482x42;
        if (i == 0) {
            C0482x4 c0482x43 = this.K;
            C0482x4 c0482x44 = c0482x43.f293f;
            if (c0482x44 != null && c0482x44.f293f == c0482x43) {
                return c0482x44.d;
            }
            return null;
        }
        if (i == 1 && (c0482x42 = (c0482x4 = this.L).f293f) != null && c0482x42.f293f == c0482x4) {
            return c0482x42.d;
        }
        return null;
    }

    public final L4 m(int i) {
        C0482x4 c0482x4;
        C0482x4 c0482x42;
        if (i == 0) {
            C0482x4 c0482x43 = this.I;
            C0482x4 c0482x44 = c0482x43.f293f;
            if (c0482x44 != null && c0482x44.f293f == c0482x43) {
                return c0482x44.d;
            }
            return null;
        }
        if (i == 1 && (c0482x42 = (c0482x4 = this.J).f293f) != null && c0482x42.f293f == c0482x4) {
            return c0482x42.d;
        }
        return null;
    }

    public void n(StringBuilder sb) {
        sb.append("  " + this.j + ":{\n");
        StringBuilder sb2 = new StringBuilder("    actualWidth:");
        sb2.append(this.U);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("    actualHeight:" + this.V);
        sb.append("\n");
        sb.append("    actualLeft:" + this.Y);
        sb.append("\n");
        sb.append("    actualTop:" + this.Z);
        sb.append("\n");
        p(sb, "left", this.I);
        p(sb, "top", this.J);
        p(sb, "right", this.K);
        p(sb, "bottom", this.L);
        p(sb, "baseline", this.M);
        p(sb, "centerX", this.N);
        p(sb, "centerY", this.O);
        int i = this.U;
        int i2 = this.b0;
        int[] iArr = this.C;
        int i3 = iArr[0];
        int i4 = this.u;
        int i5 = this.r;
        float f2 = this.w;
        int[] iArr2 = this.p0;
        int i6 = iArr2[0];
        float[] fArr = this.k0;
        float f3 = fArr[0];
        o(sb, "    width", i, i2, i3, i4, i5, f2, i6);
        int i7 = this.V;
        int i8 = this.c0;
        int i9 = iArr[1];
        int i10 = this.x;
        int i11 = this.s;
        float f4 = this.z;
        int i12 = iArr2[1];
        float f5 = fArr[1];
        o(sb, "    height", i7, i8, i9, i10, i11, f4, i12);
        float f6 = this.W;
        int i13 = this.X;
        if (f6 != 0.0f) {
            sb.append("    dimensionRatio");
            sb.append(" :  [");
            sb.append(f6);
            sb.append(",");
            sb.append(i13);
            sb.append(BuildConfig.FLAVOR);
            sb.append("],\n");
        }
        H(sb, "    horizontalBias", this.d0, 0.5f);
        H(sb, "    verticalBias", this.e0, 0.5f);
        G(this.i0, 0, "    horizontalChainStyle", sb);
        G(this.j0, 0, "    verticalChainStyle", sb);
        sb.append("  }");
    }

    public final int q() {
        if (this.g0 == 8) {
            return 0;
        }
        return this.U;
    }

    public final int r() {
        L4 l4 = this.T;
        if (l4 != null && (l4 instanceof M4)) {
            return ((M4) l4).x0 + this.Y;
        }
        return this.Y;
    }

    public final int s() {
        L4 l4 = this.T;
        if (l4 != null && (l4 instanceof M4)) {
            return ((M4) l4).y0 + this.Z;
        }
        return this.Z;
    }

    public final boolean t(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (i == 0) {
            if (this.I.f293f != null) {
                i5 = 1;
            } else {
                i5 = 0;
            }
            if (this.K.f293f != null) {
                i6 = 1;
            } else {
                i6 = 0;
            }
            if (i5 + i6 >= 2) {
                return false;
            }
            return true;
        }
        if (this.J.f293f != null) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (this.L.f293f != null) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        int i7 = i2 + i3;
        if (this.M.f293f != null) {
            i4 = 1;
        } else {
            i4 = 0;
        }
        if (i7 + i4 >= 2) {
            return false;
        }
        return true;
    }

    public String toString() {
        String str = BuildConfig.FLAVOR;
        StringBuilder o2 = Ve.o(BuildConfig.FLAVOR);
        if (this.h0 != null) {
            str = Ve.k(new StringBuilder("id: "), this.h0, " ");
        }
        o2.append(str);
        o2.append("(");
        o2.append(this.Y);
        o2.append(", ");
        o2.append(this.Z);
        o2.append(") - (");
        o2.append(this.U);
        o2.append(" x ");
        return Ve.j(o2, this.V, ")");
    }

    public final boolean u(int i, int i2) {
        C0482x4 c0482x4;
        C0482x4 c0482x42;
        C0482x4 c0482x43;
        C0482x4 c0482x44;
        if (i == 0) {
            C0482x4 c0482x45 = this.I;
            C0482x4 c0482x46 = c0482x45.f293f;
            if (c0482x46 != null && c0482x46.c && (c0482x44 = (c0482x43 = this.K).f293f) != null && c0482x44.c) {
                if ((c0482x44.d() - c0482x43.e()) - (c0482x45.e() + c0482x45.f293f.d()) >= i2) {
                    return true;
                }
                return false;
            }
        } else {
            C0482x4 c0482x47 = this.J;
            C0482x4 c0482x48 = c0482x47.f293f;
            if (c0482x48 != null && c0482x48.c && (c0482x42 = (c0482x4 = this.L).f293f) != null && c0482x42.c) {
                if ((c0482x42.d() - c0482x4.e()) - (c0482x47.e() + c0482x47.f293f.d()) >= i2) {
                    return true;
                }
                return false;
            }
        }
        return false;
    }

    public final void v(int i, int i2, int i3, int i4, L4 l4) {
        i(i).b(l4.i(i2), i3, i4, true);
    }

    public final boolean w(int i) {
        C0482x4 c0482x4;
        C0482x4 c0482x42;
        int i2 = i * 2;
        C0482x4[] c0482x4Arr = this.Q;
        C0482x4 c0482x43 = c0482x4Arr[i2];
        C0482x4 c0482x44 = c0482x43.f293f;
        if (c0482x44 != null && c0482x44.f293f != c0482x43 && (c0482x42 = (c0482x4 = c0482x4Arr[i2 + 1]).f293f) != null && c0482x42.f293f == c0482x4) {
            return true;
        }
        return false;
    }

    public final boolean x() {
        C0482x4 c0482x4 = this.I;
        C0482x4 c0482x42 = c0482x4.f293f;
        if (c0482x42 == null || c0482x42.f293f != c0482x4) {
            C0482x4 c0482x43 = this.K;
            C0482x4 c0482x44 = c0482x43.f293f;
            if (c0482x44 != null && c0482x44.f293f == c0482x43) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final boolean y() {
        C0482x4 c0482x4 = this.J;
        C0482x4 c0482x42 = c0482x4.f293f;
        if (c0482x42 == null || c0482x42.f293f != c0482x4) {
            C0482x4 c0482x43 = this.L;
            C0482x4 c0482x44 = c0482x43.f293f;
            if (c0482x44 != null && c0482x44.f293f == c0482x43) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final boolean z() {
        if (this.g && this.g0 != 8) {
            return true;
        }
        return false;
    }
}
