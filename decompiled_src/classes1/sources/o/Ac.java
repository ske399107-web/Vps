package o;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Ac extends AbstractC0471wd {
    public RecyclerView a;
    public final Te b = new Te(this);
    public C0370rc c;
    public C0370rc d;

    public static int b(View view, AbstractC0522z6 abstractC0522z6) {
        return ((abstractC0522z6.c(view) / 2) + abstractC0522z6.e(view)) - ((abstractC0522z6.l() / 2) + abstractC0522z6.k());
    }

    public static View c(AbstractC0431ud abstractC0431ud, AbstractC0522z6 abstractC0522z6) {
        int v = abstractC0431ud.v();
        View view = null;
        if (v == 0) {
            return null;
        }
        int l = (abstractC0522z6.l() / 2) + abstractC0522z6.k();
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < v; i2++) {
            View u = abstractC0431ud.u(i2);
            int abs = Math.abs(((abstractC0522z6.c(u) / 2) + abstractC0522z6.e(u)) - l);
            if (abs < i) {
                view = u;
                i = abs;
            }
        }
        return view;
    }

    public final int[] a(AbstractC0431ud abstractC0431ud, View view) {
        int[] iArr = new int[2];
        if (abstractC0431ud.d()) {
            iArr[0] = b(view, d(abstractC0431ud));
        } else {
            iArr[0] = 0;
        }
        if (abstractC0431ud.e()) {
            iArr[1] = b(view, e(abstractC0431ud));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    public final AbstractC0522z6 d(AbstractC0431ud abstractC0431ud) {
        C0370rc c0370rc = this.d;
        if (c0370rc == null || ((AbstractC0431ud) c0370rc.b) != abstractC0431ud) {
            this.d = new C0370rc(abstractC0431ud, 0);
        }
        return this.d;
    }

    public final AbstractC0522z6 e(AbstractC0431ud abstractC0431ud) {
        C0370rc c0370rc = this.c;
        if (c0370rc == null || ((AbstractC0431ud) c0370rc.b) != abstractC0431ud) {
            this.c = new C0370rc(abstractC0431ud, 1);
        }
        return this.c;
    }

    public final void f() {
        AbstractC0431ud layoutManager;
        View view;
        RecyclerView recyclerView = this.a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return;
        }
        if (layoutManager.e()) {
            view = c(layoutManager, e(layoutManager));
        } else if (layoutManager.d()) {
            view = c(layoutManager, d(layoutManager));
        } else {
            view = null;
        }
        if (view == null) {
            return;
        }
        int[] a = a(layoutManager, view);
        int i = a[0];
        if (i != 0 || a[1] != 0) {
            this.a.Z(i, a[1], false);
        }
    }
}
