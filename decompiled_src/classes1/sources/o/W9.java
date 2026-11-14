package o;

import android.view.View;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class W9 {
    public AbstractC0522z6 a;
    public int b;
    public int c;
    public boolean d;
    public boolean e;

    public W9() {
        d();
    }

    public final void a() {
        int k;
        if (this.d) {
            k = this.a.g();
        } else {
            k = this.a.k();
        }
        this.c = k;
    }

    public final void b(View view, int i) {
        if (this.d) {
            this.c = this.a.m() + this.a.b(view);
        } else {
            this.c = this.a.e(view);
        }
        this.b = i;
    }

    public final void c(View view, int i) {
        int m = this.a.m();
        if (m >= 0) {
            b(view, i);
            return;
        }
        this.b = i;
        if (this.d) {
            int g = (this.a.g() - m) - this.a.b(view);
            this.c = this.a.g() - g;
            if (g > 0) {
                int c = this.c - this.a.c(view);
                int k = this.a.k();
                int min = c - (Math.min(this.a.e(view) - k, 0) + k);
                if (min < 0) {
                    this.c = Math.min(g, -min) + this.c;
                    return;
                }
                return;
            }
            return;
        }
        int e = this.a.e(view);
        int k2 = e - this.a.k();
        this.c = e;
        if (k2 > 0) {
            int g2 = (this.a.g() - Math.min(0, (this.a.g() - m) - this.a.b(view))) - (this.a.c(view) + e);
            if (g2 < 0) {
                this.c -= Math.min(k2, -g2);
            }
        }
    }

    public final void d() {
        this.b = -1;
        this.c = PKIFailureInfo.systemUnavail;
        this.d = false;
        this.e = false;
    }

    public final String toString() {
        return "AnchorInfo{mPosition=" + this.b + ", mCoordinate=" + this.c + ", mLayoutFromEnd=" + this.d + ", mValid=" + this.e + '}';
    }
}
