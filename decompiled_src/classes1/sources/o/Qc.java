package o;

import java.util.Arrays;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Qc extends F2 {

    /* renamed from: f, reason: collision with root package name */
    public We[] f138f;
    public We[] g;
    public int h;
    public H1 i;

    @Override // o.F2
    public final We d(boolean[] zArr) {
        int i = -1;
        for (int i2 = 0; i2 < this.h; i2++) {
            We[] weArr = this.f138f;
            We we = weArr[i2];
            if (!zArr[we.b]) {
                H1 h1 = this.i;
                h1.b = we;
                int i3 = 8;
                if (i == -1) {
                    while (i3 >= 0) {
                        float f2 = ((We) h1.b).h[i3];
                        if (f2 <= 0.0f) {
                            if (f2 < 0.0f) {
                                i = i2;
                                break;
                            }
                            i3--;
                        }
                    }
                } else {
                    We we2 = weArr[i];
                    while (true) {
                        if (i3 >= 0) {
                            float f3 = we2.h[i3];
                            float f4 = ((We) h1.b).h[i3];
                            if (f4 == f3) {
                                i3--;
                            } else if (f4 >= f3) {
                            }
                        }
                    }
                }
            }
        }
        if (i == -1) {
            return null;
        }
        return this.f138f[i];
    }

    @Override // o.F2
    public final boolean e() {
        if (this.h == 0) {
            return true;
        }
        return false;
    }

    @Override // o.F2
    public final void i(C0050ba c0050ba, F2 f2, boolean z) {
        We we = f2.a;
        if (we == null) {
            return;
        }
        C0499y2 c0499y2 = f2.d;
        int d = c0499y2.d();
        for (int i = 0; i < d; i++) {
            We e = c0499y2.e(i);
            float f3 = c0499y2.f(i);
            H1 h1 = this.i;
            h1.b = e;
            boolean z2 = e.a;
            float[] fArr = we.h;
            if (z2) {
                boolean z3 = true;
                for (int i2 = 0; i2 < 9; i2++) {
                    float[] fArr2 = ((We) h1.b).h;
                    float f4 = (fArr[i2] * f3) + fArr2[i2];
                    fArr2[i2] = f4;
                    if (Math.abs(f4) < 1.0E-4f) {
                        ((We) h1.b).h[i2] = 0.0f;
                    } else {
                        z3 = false;
                    }
                }
                if (z3) {
                    ((Qc) h1.c).k((We) h1.b);
                }
            } else {
                for (int i3 = 0; i3 < 9; i3++) {
                    float f5 = fArr[i3];
                    if (f5 != 0.0f) {
                        float f6 = f5 * f3;
                        if (Math.abs(f6) < 1.0E-4f) {
                            f6 = 0.0f;
                        }
                        ((We) h1.b).h[i3] = f6;
                    } else {
                        ((We) h1.b).h[i3] = 0.0f;
                    }
                }
                j(e);
            }
            this.b = (f2.b * f3) + this.b;
        }
        k(we);
    }

    public final void j(We we) {
        int i;
        int i2 = this.h + 1;
        We[] weArr = this.f138f;
        if (i2 > weArr.length) {
            We[] weArr2 = (We[]) Arrays.copyOf(weArr, weArr.length * 2);
            this.f138f = weArr2;
            this.g = (We[]) Arrays.copyOf(weArr2, weArr2.length * 2);
        }
        We[] weArr3 = this.f138f;
        int i3 = this.h;
        weArr3[i3] = we;
        int i4 = i3 + 1;
        this.h = i4;
        if (i4 > 1 && weArr3[i3].b > we.b) {
            int i5 = 0;
            while (true) {
                i = this.h;
                if (i5 >= i) {
                    break;
                }
                this.g[i5] = this.f138f[i5];
                i5++;
            }
            Arrays.sort(this.g, 0, i, new C0065c5(4));
            for (int i6 = 0; i6 < this.h; i6++) {
                this.f138f[i6] = this.g[i6];
            }
        }
        we.a = true;
        we.a(this);
    }

    public final void k(We we) {
        int i = 0;
        while (i < this.h) {
            if (this.f138f[i] == we) {
                while (true) {
                    int i2 = this.h;
                    if (i < i2 - 1) {
                        We[] weArr = this.f138f;
                        int i3 = i + 1;
                        weArr[i] = weArr[i3];
                        i = i3;
                    } else {
                        this.h = i2 - 1;
                        we.a = false;
                        return;
                    }
                }
            } else {
                i++;
            }
        }
    }

    @Override // o.F2
    public final String toString() {
        String str = " goal -> (" + this.b + ") : ";
        for (int i = 0; i < this.h; i++) {
            We we = this.f138f[i];
            H1 h1 = this.i;
            h1.b = we;
            str = str + h1 + " ";
        }
        return str;
    }
}
