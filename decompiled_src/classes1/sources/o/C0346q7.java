package o;

import androidx.recyclerview.widget.RecyclerView;

/* renamed from: o.q7, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0346q7 extends AbstractC0491xd {
    public final /* synthetic */ C0385s7 a;

    public C0346q7(C0385s7 c0385s7) {
        this.a = c0385s7;
    }

    @Override // o.AbstractC0491xd
    public final void b(RecyclerView recyclerView, int i, int i2) {
        boolean z;
        boolean z2;
        int computeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
        int computeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        C0385s7 c0385s7 = this.a;
        int computeVerticalScrollRange = c0385s7.s.computeVerticalScrollRange();
        int i3 = c0385s7.r;
        int i4 = computeVerticalScrollRange - i3;
        int i5 = c0385s7.a;
        if (i4 > 0 && i3 >= i5) {
            z = true;
        } else {
            z = false;
        }
        c0385s7.t = z;
        int computeHorizontalScrollRange = c0385s7.s.computeHorizontalScrollRange();
        int i6 = c0385s7.q;
        if (computeHorizontalScrollRange - i6 > 0 && i6 >= i5) {
            z2 = true;
        } else {
            z2 = false;
        }
        c0385s7.u = z2;
        boolean z3 = c0385s7.t;
        if (!z3 && !z2) {
            if (c0385s7.v != 0) {
                c0385s7.f(0);
                return;
            }
            return;
        }
        if (z3) {
            float f2 = i3;
            c0385s7.l = (int) ((((f2 / 2.0f) + computeVerticalScrollOffset) * f2) / computeVerticalScrollRange);
            c0385s7.k = Math.min(i3, (i3 * i3) / computeVerticalScrollRange);
        }
        if (c0385s7.u) {
            float f3 = computeHorizontalScrollOffset;
            float f4 = i6;
            c0385s7.f277o = (int) ((((f4 / 2.0f) + f3) * f4) / computeHorizontalScrollRange);
            c0385s7.n = Math.min(i6, (i6 * i6) / computeHorizontalScrollRange);
        }
        int i7 = c0385s7.v;
        if (i7 == 0 || i7 == 1) {
            c0385s7.f(1);
        }
    }
}
