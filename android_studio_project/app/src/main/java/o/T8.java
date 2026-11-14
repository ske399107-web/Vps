package o;

import android.os.Trace;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.TimeUnit;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class T8 implements Runnable {
    public static final ThreadLocal e = new ThreadLocal();

    /* renamed from: f, reason: collision with root package name */
    public static final C0065c5 f148f = new C0065c5(1);
    public ArrayList a;
    public long b;
    public long c;
    public ArrayList d;

    public static Id c(RecyclerView recyclerView, int i, long j) {
        int u = recyclerView.e.u();
        for (int i2 = 0; i2 < u; i2++) {
            Id I = RecyclerView.I(recyclerView.e.t(i2));
            if (I.c == i && !I.g()) {
                return null;
            }
        }
        Ad ad = recyclerView.b;
        try {
            recyclerView.P();
            Id i3 = ad.i(i, j);
            if (i3 != null) {
                if (i3.f() && !i3.g()) {
                    ad.f(i3.a);
                } else {
                    ad.a(i3, false);
                }
            }
            recyclerView.Q(false);
            return i3;
        } catch (Throwable th) {
            recyclerView.Q(false);
            throw th;
        }
    }

    public final void a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.p && this.b == 0) {
            this.b = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        R8 r8 = recyclerView.b0;
        r8.a = i;
        r8.b = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(long j) {
        S8 s8;
        RecyclerView recyclerView;
        long j2;
        RecyclerView recyclerView2;
        S8 s82;
        boolean z;
        ArrayList arrayList = this.a;
        int size = arrayList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView3 = (RecyclerView) arrayList.get(i2);
            if (recyclerView3.getWindowVisibility() == 0) {
                R8 r8 = recyclerView3.b0;
                r8.b(recyclerView3, false);
                i += r8.d;
            }
        }
        ArrayList arrayList2 = this.d;
        arrayList2.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView4 = (RecyclerView) arrayList.get(i4);
            if (recyclerView4.getWindowVisibility() == 0) {
                R8 r82 = recyclerView4.b0;
                int abs = Math.abs(r82.b) + Math.abs(r82.a);
                for (int i5 = 0; i5 < r82.d * 2; i5 += 2) {
                    if (i3 >= arrayList2.size()) {
                        Object obj = new Object();
                        arrayList2.add(obj);
                        s82 = obj;
                    } else {
                        s82 = (S8) arrayList2.get(i3);
                    }
                    int[] iArr = r82.c;
                    int i6 = iArr[i5 + 1];
                    if (i6 <= abs) {
                        z = true;
                    } else {
                        z = false;
                    }
                    s82.a = z;
                    s82.b = abs;
                    s82.c = i6;
                    s82.d = recyclerView4;
                    s82.e = iArr[i5];
                    i3++;
                }
            }
        }
        Collections.sort(arrayList2, f148f);
        for (int i7 = 0; i7 < arrayList2.size() && (recyclerView = (s8 = (S8) arrayList2.get(i7)).d) != null; i7++) {
            if (s8.a) {
                j2 = Long.MAX_VALUE;
            } else {
                j2 = j;
            }
            Id c = c(recyclerView, s8.e, j2);
            if (c != null && c.b != null && c.f() && !c.g() && (recyclerView2 = (RecyclerView) c.b.get()) != null) {
                if (recyclerView2.y && recyclerView2.e.u() != 0) {
                    AbstractC0352qd abstractC0352qd = recyclerView2.H;
                    if (abstractC0352qd != null) {
                        abstractC0352qd.e();
                    }
                    AbstractC0431ud abstractC0431ud = recyclerView2.l;
                    Ad ad = recyclerView2.b;
                    if (abstractC0431ud != null) {
                        abstractC0431ud.g0(ad);
                        recyclerView2.l.h0(ad);
                    }
                    ad.a.clear();
                    ad.d();
                }
                R8 r83 = recyclerView2.b0;
                r83.b(recyclerView2, true);
                if (r83.d != 0) {
                    try {
                        int i8 = AbstractC0335pg.a;
                        Trace.beginSection("RV Nested Prefetch");
                        Fd fd = recyclerView2.c0;
                        AbstractC0272md abstractC0272md = recyclerView2.k;
                        fd.d = 1;
                        fd.e = abstractC0272md.a();
                        fd.g = false;
                        fd.h = false;
                        fd.i = false;
                        for (int i9 = 0; i9 < r83.d * 2; i9 += 2) {
                            c(recyclerView2, r83.c[i9], j);
                        }
                        Trace.endSection();
                        s8.a = false;
                        s8.b = 0;
                        s8.c = 0;
                        s8.d = null;
                        s8.e = 0;
                    } catch (Throwable th) {
                        int i10 = AbstractC0335pg.a;
                        Trace.endSection();
                        throw th;
                    }
                }
            }
            s8.a = false;
            s8.b = 0;
            s8.c = 0;
            s8.d = null;
            s8.e = 0;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            int i = AbstractC0335pg.a;
            Trace.beginSection("RV Prefetch");
            ArrayList arrayList = this.a;
            if (arrayList.isEmpty()) {
                this.b = 0L;
                Trace.endSection();
                return;
            }
            int size = arrayList.size();
            long j = 0;
            for (int i2 = 0; i2 < size; i2++) {
                RecyclerView recyclerView = (RecyclerView) arrayList.get(i2);
                if (recyclerView.getWindowVisibility() == 0) {
                    j = Math.max(recyclerView.getDrawingTime(), j);
                }
            }
            if (j == 0) {
                this.b = 0L;
                Trace.endSection();
            } else {
                b(TimeUnit.MILLISECONDS.toNanos(j) + this.c);
                this.b = 0L;
                Trace.endSection();
            }
        } catch (Throwable th) {
            this.b = 0L;
            int i3 = AbstractC0335pg.a;
            Trace.endSection();
            throw th;
        }
    }
}
