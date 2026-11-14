package o;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* renamed from: o.qd, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0352qd {
    public C0252ld a;
    public ArrayList b;
    public long c;
    public long d;
    public long e;

    /* renamed from: f, reason: collision with root package name */
    public long f268f;

    public static void b(Id id) {
        RecyclerView recyclerView;
        int i = id.j;
        if (!id.g() && (i & 4) == 0 && (recyclerView = id.r) != null) {
            recyclerView.F(id);
        }
    }

    public abstract boolean a(Id id, Id id2, Wb wb, Wb wb2);

    public final void c(Id id) {
        C0252ld c0252ld = this.a;
        if (c0252ld != null) {
            boolean z = true;
            id.o(true);
            if (id.h != null && id.i == null) {
                id.h = null;
            }
            id.i = null;
            if ((id.j & 16) == 0) {
                RecyclerView recyclerView = c0252ld.a;
                recyclerView.a0();
                C0380s2 c0380s2 = recyclerView.e;
                C0252ld c0252ld2 = (C0252ld) c0380s2.b;
                RecyclerView recyclerView2 = c0252ld2.a;
                View view = id.a;
                int indexOfChild = recyclerView2.indexOfChild(view);
                if (indexOfChild == -1) {
                    c0380s2.C(view);
                } else {
                    L3 l3 = (L3) c0380s2.c;
                    if (l3.d(indexOfChild)) {
                        l3.f(indexOfChild);
                        c0380s2.C(view);
                        c0252ld2.h(indexOfChild);
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    Id I = RecyclerView.I(view);
                    Ad ad = recyclerView.b;
                    ad.j(I);
                    ad.g(I);
                }
                recyclerView.b0(!z);
                if (!z && id.k()) {
                    recyclerView.removeDetachedView(view, false);
                }
            }
        }
    }

    public abstract void d(Id id);

    public abstract void e();

    public abstract boolean f();
}
