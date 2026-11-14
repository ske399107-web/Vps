package o;

import java.util.Arrays;
import org.conscrypt.BuildConfig;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class We implements Comparable {
    public boolean a;
    public float e;
    public int l;
    public int b = -1;
    public int c = -1;
    public int d = 0;

    /* renamed from: f, reason: collision with root package name */
    public boolean f162f = false;
    public final float[] g = new float[9];
    public final float[] h = new float[9];
    public F2[] i = new F2[16];
    public int j = 0;
    public int k = 0;

    public We(int i) {
        this.l = i;
    }

    public final void a(F2 f2) {
        int i = 0;
        while (true) {
            int i2 = this.j;
            if (i < i2) {
                if (this.i[i] == f2) {
                    return;
                } else {
                    i++;
                }
            } else {
                F2[] f2Arr = this.i;
                if (i2 >= f2Arr.length) {
                    this.i = (F2[]) Arrays.copyOf(f2Arr, f2Arr.length * 2);
                }
                F2[] f2Arr2 = this.i;
                int i3 = this.j;
                f2Arr2[i3] = f2;
                this.j = i3 + 1;
                return;
            }
        }
    }

    public final void b(F2 f2) {
        int i = this.j;
        int i2 = 0;
        while (i2 < i) {
            if (this.i[i2] == f2) {
                while (i2 < i - 1) {
                    F2[] f2Arr = this.i;
                    int i3 = i2 + 1;
                    f2Arr[i2] = f2Arr[i3];
                    i2 = i3;
                }
                this.j--;
                return;
            }
            i2++;
        }
    }

    public final void c() {
        this.l = 5;
        this.d = 0;
        this.b = -1;
        this.c = -1;
        this.e = 0.0f;
        this.f162f = false;
        int i = this.j;
        for (int i2 = 0; i2 < i; i2++) {
            this.i[i2] = null;
        }
        this.j = 0;
        this.k = 0;
        this.a = false;
        Arrays.fill(this.h, 0.0f);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.b - ((We) obj).b;
    }

    public final void d(C0050ba c0050ba, float f2) {
        this.e = f2;
        this.f162f = true;
        int i = this.j;
        this.c = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.i[i2].h(c0050ba, this, false);
        }
        this.j = 0;
    }

    public final void e(C0050ba c0050ba, F2 f2) {
        int i = this.j;
        for (int i2 = 0; i2 < i; i2++) {
            this.i[i2].i(c0050ba, f2, false);
        }
        this.j = 0;
    }

    public final String toString() {
        return BuildConfig.FLAVOR + this.b;
    }
}
