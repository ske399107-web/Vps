package o;

import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Ad {
    public final ArrayList a;
    public ArrayList b;
    public final ArrayList c;
    public final List d;
    public int e;

    /* renamed from: f, reason: collision with root package name */
    public int f64f;
    public C0529zd g;
    public final /* synthetic */ RecyclerView h;

    public Ad(RecyclerView recyclerView) {
        this.h = recyclerView;
        ArrayList arrayList = new ArrayList();
        this.a = arrayList;
        this.b = null;
        this.c = new ArrayList();
        this.d = Collections.unmodifiableList(arrayList);
        this.e = 2;
        this.f64f = 2;
    }

    public final void a(Id id, boolean z) {
        r rVar;
        RecyclerView.j(id);
        RecyclerView recyclerView = this.h;
        Kd kd = recyclerView.j0;
        if (kd != null) {
            Jd jd = kd.e;
            View view = id.a;
            if (jd != null) {
                rVar = (r) jd.e.remove(view);
            } else {
                rVar = null;
            }
            Dh.l(view, rVar);
        }
        if (z && recyclerView.c0 != null) {
            recyclerView.f41f.L(id);
        }
        id.r = null;
        C0529zd c = c();
        c.getClass();
        int i = id.f107f;
        ArrayList arrayList = c.a(i).a;
        if (((C0510yd) c.a.get(i)).b > arrayList.size()) {
            id.n();
            arrayList.add(id);
        }
    }

    public final int b(int i) {
        RecyclerView recyclerView = this.h;
        if (i >= 0 && i < recyclerView.c0.b()) {
            if (!recyclerView.c0.g) {
                return i;
            }
            return recyclerView.d.e(i, 0);
        }
        throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + recyclerView.c0.b() + recyclerView.y());
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, o.zd] */
    public final C0529zd c() {
        if (this.g == null) {
            ?? obj = new Object();
            obj.a = new SparseArray();
            obj.b = 0;
            this.g = obj;
        }
        return this.g;
    }

    public final void d() {
        ArrayList arrayList = this.c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            e(size);
        }
        arrayList.clear();
        int[] iArr = RecyclerView.s0;
        R8 r8 = this.h.b0;
        int[] iArr2 = r8.c;
        if (iArr2 != null) {
            Arrays.fill(iArr2, -1);
        }
        r8.d = 0;
    }

    public final void e(int i) {
        ArrayList arrayList = this.c;
        a((Id) arrayList.get(i), true);
        arrayList.remove(i);
    }

    public final void f(View view) {
        Id I = RecyclerView.I(view);
        boolean k = I.k();
        RecyclerView recyclerView = this.h;
        if (k) {
            recyclerView.removeDetachedView(view, false);
        }
        if (I.j()) {
            I.n.j(I);
        } else if (I.q()) {
            I.j &= -33;
        }
        g(I);
        if (recyclerView.H != null && !I.h()) {
            recyclerView.H.d(I);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0091, code lost:
    
        r5 = r5 - 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(o.Id r12) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Ad.g(o.Id):void");
    }

    public final void h(View view) {
        AbstractC0352qd abstractC0352qd;
        Id I = RecyclerView.I(view);
        boolean d = I.d(12);
        RecyclerView recyclerView = this.h;
        if (!d && I.l() && (abstractC0352qd = recyclerView.H) != null) {
            B5 b5 = (B5) abstractC0352qd;
            if (I.c().isEmpty() && b5.g && !I.g()) {
                if (this.b == null) {
                    this.b = new ArrayList();
                }
                I.n = this;
                I.f108o = true;
                this.b.add(I);
                return;
            }
        }
        if (I.g() && !I.i() && !recyclerView.k.b) {
            throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + recyclerView.y());
        }
        I.n = this;
        I.f108o = false;
        this.a.add(I);
    }

    /* JADX WARN: Code restructure failed: missing block: B:248:0x0416, code lost:
    
        if (r11.g() == false) goto L239;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x043e, code lost:
    
        if ((r14 + r12) >= r27) goto L239;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01cb, code lost:
    
        if (r11.f107f != 0) goto L110;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x04fa  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x051b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0504  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0407  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x046a  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x047b  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0497  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x04b3  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x04f1  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x04ec  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x013f  */
    /* JADX WARN: Type inference failed for: r2v41, types: [o.Wb, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final o.Id i(int r26, long r27) {
        /*
            Method dump skipped, instructions count: 1364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Ad.i(int, long):o.Id");
    }

    public final void j(Id id) {
        if (id.f108o) {
            this.b.remove(id);
        } else {
            this.a.remove(id);
        }
        id.n = null;
        id.f108o = false;
        id.j &= -33;
    }

    public final void k() {
        int i;
        AbstractC0431ud abstractC0431ud = this.h.l;
        if (abstractC0431ud != null) {
            i = abstractC0431ud.j;
        } else {
            i = 0;
        }
        this.f64f = this.e + i;
        ArrayList arrayList = this.c;
        for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.f64f; size--) {
            e(size);
        }
    }
}
