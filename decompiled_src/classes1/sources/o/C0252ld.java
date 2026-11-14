package o;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* renamed from: o.ld, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0252ld {
    public final /* synthetic */ RecyclerView a;

    public /* synthetic */ C0252ld(RecyclerView recyclerView) {
        this.a = recyclerView;
    }

    public void a(C0319p0 c0319p0) {
        int i = c0319p0.a;
        RecyclerView recyclerView = this.a;
        if (i != 1) {
            if (i != 2) {
                if (i != 4) {
                    if (i == 8) {
                        recyclerView.l.Y(c0319p0.b, c0319p0.c);
                        return;
                    }
                    return;
                }
                recyclerView.l.a0(c0319p0.b, c0319p0.c);
                return;
            }
            recyclerView.l.Z(c0319p0.b, c0319p0.c);
            return;
        }
        recyclerView.l.W(c0319p0.b, c0319p0.c);
    }

    public Id b(int i) {
        RecyclerView recyclerView = this.a;
        int u = recyclerView.e.u();
        int i2 = 0;
        Id id = null;
        while (true) {
            if (i2 >= u) {
                break;
            }
            Id I = RecyclerView.I(recyclerView.e.t(i2));
            if (I != null && !I.i() && I.c == i) {
                if (((ArrayList) recyclerView.e.d).contains(I.a)) {
                    id = I;
                } else {
                    id = I;
                    break;
                }
            }
            i2++;
        }
        if (id == null || ((ArrayList) recyclerView.e.d).contains(id.a)) {
            return null;
        }
        return id;
    }

    public void c(int i, int i2) {
        int i3;
        int i4;
        RecyclerView recyclerView = this.a;
        int u = recyclerView.e.u();
        int i5 = i2 + i;
        for (int i6 = 0; i6 < u; i6++) {
            View t = recyclerView.e.t(i6);
            Id I = RecyclerView.I(t);
            if (I != null && !I.p() && (i4 = I.c) >= i && i4 < i5) {
                I.a(2);
                I.a(1024);
                ((C0451vd) t.getLayoutParams()).c = true;
            }
        }
        Ad ad = recyclerView.b;
        ArrayList arrayList = ad.c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Id id = (Id) arrayList.get(size);
            if (id != null && (i3 = id.c) >= i && i3 < i5) {
                id.a(2);
                ad.e(size);
            }
        }
        recyclerView.g0 = true;
    }

    public void d(int i, int i2) {
        RecyclerView recyclerView = this.a;
        int u = recyclerView.e.u();
        for (int i3 = 0; i3 < u; i3++) {
            Id I = RecyclerView.I(recyclerView.e.t(i3));
            if (I != null && !I.p() && I.c >= i) {
                I.m(i2, false);
                recyclerView.c0.f87f = true;
            }
        }
        ArrayList arrayList = recyclerView.b.c;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            Id id = (Id) arrayList.get(i4);
            if (id != null && id.c >= i) {
                id.m(i2, true);
            }
        }
        recyclerView.requestLayout();
        recyclerView.f0 = true;
    }

    public void e(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        RecyclerView recyclerView = this.a;
        int u = recyclerView.e.u();
        int i10 = -1;
        if (i < i2) {
            i4 = i;
            i3 = i2;
            i5 = -1;
        } else {
            i3 = i;
            i4 = i2;
            i5 = 1;
        }
        for (int i11 = 0; i11 < u; i11++) {
            Id I = RecyclerView.I(recyclerView.e.t(i11));
            if (I != null && (i9 = I.c) >= i4 && i9 <= i3) {
                if (i9 == i) {
                    I.m(i2 - i, false);
                } else {
                    I.m(i5, false);
                }
                recyclerView.c0.f87f = true;
            }
        }
        Ad ad = recyclerView.b;
        ad.getClass();
        if (i < i2) {
            i7 = i;
            i6 = i2;
        } else {
            i6 = i;
            i7 = i2;
            i10 = 1;
        }
        ArrayList arrayList = ad.c;
        int size = arrayList.size();
        for (int i12 = 0; i12 < size; i12++) {
            Id id = (Id) arrayList.get(i12);
            if (id != null && (i8 = id.c) >= i7 && i8 <= i6) {
                if (i8 == i) {
                    id.m(i2 - i, false);
                } else {
                    id.m(i10, false);
                }
            }
        }
        recyclerView.requestLayout();
        recyclerView.f0 = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void f(o.Id r9, o.Wb r10, o.Wb r11) {
        /*
            r8 = this;
            androidx.recyclerview.widget.RecyclerView r0 = r8.a
            r0.getClass()
            r1 = 0
            r9.o(r1)
            o.qd r1 = r0.H
            r2 = r1
            o.B5 r2 = (o.B5) r2
            if (r10 == 0) goto L29
            r2.getClass()
            int r4 = r10.a
            int r6 = r11.a
            if (r4 != r6) goto L1f
            int r1 = r10.b
            int r3 = r11.b
            if (r1 == r3) goto L29
        L1f:
            int r5 = r10.b
            int r7 = r11.b
            r3 = r9
            boolean r9 = r2.g(r3, r4, r5, r6, r7)
            goto L38
        L29:
            r2.l(r9)
            android.view.View r10 = r9.a
            r11 = 0
            r10.setAlpha(r11)
            java.util.ArrayList r10 = r2.i
            r10.add(r9)
            r9 = 1
        L38:
            if (r9 == 0) goto L3d
            r0.S()
        L3d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: o.C0252ld.f(o.Id, o.Wb, o.Wb):void");
    }

    public void g(Id id, Wb wb, Wb wb2) {
        int i;
        int i2;
        boolean z;
        RecyclerView recyclerView = this.a;
        recyclerView.b.j(id);
        recyclerView.f(id);
        id.o(false);
        B5 b5 = (B5) recyclerView.H;
        b5.getClass();
        int i3 = wb.a;
        int i4 = wb.b;
        View view = id.a;
        if (wb2 == null) {
            i = view.getLeft();
        } else {
            i = wb2.a;
        }
        int i5 = i;
        if (wb2 == null) {
            i2 = view.getTop();
        } else {
            i2 = wb2.b;
        }
        int i6 = i2;
        if (!id.i() && (i3 != i5 || i4 != i6)) {
            view.layout(i5, i6, view.getWidth() + i5, view.getHeight() + i6);
            z = b5.g(id, i3, i4, i5, i6);
        } else {
            b5.l(id);
            b5.h.add(id);
            z = true;
        }
        if (z) {
            recyclerView.S();
        }
    }

    public void h(int i) {
        RecyclerView recyclerView = this.a;
        View childAt = recyclerView.getChildAt(i);
        if (childAt != null) {
            RecyclerView.I(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeViewAt(i);
    }
}
