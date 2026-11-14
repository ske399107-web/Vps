package o;

import java.util.ArrayList;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class F2 {
    public final C0499y2 d;
    public We a = null;
    public float b = 0.0f;
    public final ArrayList c = new ArrayList();
    public boolean e = false;

    public F2(C0380s2 c0380s2) {
        this.d = new C0499y2(this, c0380s2);
    }

    public final void a(C0050ba c0050ba, int i) {
        this.d.g(c0050ba.j(i), 1.0f);
        this.d.g(c0050ba.j(i), -1.0f);
    }

    public final void b(We we, We we2, We we3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        if (!z) {
            this.d.g(we, -1.0f);
            this.d.g(we2, 1.0f);
            this.d.g(we3, 1.0f);
        } else {
            this.d.g(we, 1.0f);
            this.d.g(we2, -1.0f);
            this.d.g(we3, -1.0f);
        }
    }

    public final void c(We we, We we2, We we3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        if (!z) {
            this.d.g(we, -1.0f);
            this.d.g(we2, 1.0f);
            this.d.g(we3, -1.0f);
        } else {
            this.d.g(we, 1.0f);
            this.d.g(we2, -1.0f);
            this.d.g(we3, 1.0f);
        }
    }

    public We d(boolean[] zArr) {
        return f(zArr, null);
    }

    public boolean e() {
        if (this.a == null && this.b == 0.0f && this.d.d() == 0) {
            return true;
        }
        return false;
    }

    public final We f(boolean[] zArr, We we) {
        int i;
        int d = this.d.d();
        We we2 = null;
        float f2 = 0.0f;
        for (int i2 = 0; i2 < d; i2++) {
            float f3 = this.d.f(i2);
            if (f3 < 0.0f) {
                We e = this.d.e(i2);
                if ((zArr == null || !zArr[e.b]) && e != we && (((i = e.l) == 3 || i == 4) && f3 < f2)) {
                    f2 = f3;
                    we2 = e;
                }
            }
        }
        return we2;
    }

    public final void g(We we) {
        We we2 = this.a;
        if (we2 != null) {
            this.d.g(we2, -1.0f);
            this.a.c = -1;
            this.a = null;
        }
        float h = this.d.h(we, true) * (-1.0f);
        this.a = we;
        if (h == 1.0f) {
            return;
        }
        this.b /= h;
        C0499y2 c0499y2 = this.d;
        int i = c0499y2.h;
        for (int i2 = 0; i != -1 && i2 < c0499y2.a; i2++) {
            float[] fArr = c0499y2.g;
            fArr[i] = fArr[i] / h;
            i = c0499y2.f299f[i];
        }
    }

    public final void h(C0050ba c0050ba, We we, boolean z) {
        if (we != null && we.f162f) {
            float c = this.d.c(we);
            this.b = (we.e * c) + this.b;
            this.d.h(we, z);
            if (z) {
                we.b(this);
            }
            if (this.d.d() == 0) {
                this.e = true;
                c0050ba.b = true;
            }
        }
    }

    public void i(C0050ba c0050ba, F2 f2, boolean z) {
        C0499y2 c0499y2 = this.d;
        c0499y2.getClass();
        float c = c0499y2.c(f2.a);
        c0499y2.h(f2.a, z);
        C0499y2 c0499y22 = f2.d;
        int d = c0499y22.d();
        for (int i = 0; i < d; i++) {
            We e = c0499y22.e(i);
            c0499y2.a(e, c0499y22.c(e) * c, z);
        }
        this.b = (f2.b * c) + this.b;
        if (z) {
            f2.a.b(this);
        }
        if (this.a != null && this.d.d() == 0) {
            this.e = true;
            c0050ba.b = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r10 = this;
            o.We r0 = r10.a
            if (r0 != 0) goto L7
            java.lang.String r0 = "0"
            goto L17
        L7:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = ""
            r0.<init>(r1)
            o.We r1 = r10.a
            r0.append(r1)
            java.lang.String r0 = r0.toString()
        L17:
            java.lang.String r1 = " = "
            java.lang.String r0 = o.Ve.h(r0, r1)
            float r1 = r10.b
            r2 = 0
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L35
            java.lang.StringBuilder r0 = o.Ve.o(r0)
            float r1 = r10.b
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r1 = r3
            goto L36
        L35:
            r1 = r4
        L36:
            o.y2 r5 = r10.d
            int r5 = r5.d()
        L3c:
            if (r4 >= r5) goto L9c
            o.y2 r6 = r10.d
            o.We r6 = r6.e(r4)
            if (r6 != 0) goto L47
            goto L99
        L47:
            o.y2 r7 = r10.d
            float r7 = r7.f(r4)
            int r8 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r8 != 0) goto L52
            goto L99
        L52:
            java.lang.String r6 = r6.toString()
            r9 = -1082130432(0xffffffffbf800000, float:-1.0)
            if (r1 != 0) goto L66
            int r1 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r1 >= 0) goto L76
            java.lang.String r1 = "- "
            java.lang.String r0 = o.Ve.h(r0, r1)
        L64:
            float r7 = r7 * r9
            goto L76
        L66:
            if (r8 <= 0) goto L6f
            java.lang.String r1 = " + "
            java.lang.String r0 = o.Ve.h(r0, r1)
            goto L76
        L6f:
            java.lang.String r1 = " - "
            java.lang.String r0 = o.Ve.h(r0, r1)
            goto L64
        L76:
            r1 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r1 != 0) goto L81
            java.lang.String r0 = o.Ve.h(r0, r6)
            goto L98
        L81:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            r1.append(r7)
            java.lang.String r0 = " "
            r1.append(r0)
            r1.append(r6)
            java.lang.String r0 = r1.toString()
        L98:
            r1 = r3
        L99:
            int r4 = r4 + 1
            goto L3c
        L9c:
            if (r1 != 0) goto La4
            java.lang.String r1 = "0.0"
            java.lang.String r0 = o.Ve.h(r0, r1)
        La4:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: o.F2.toString():java.lang.String");
    }
}
