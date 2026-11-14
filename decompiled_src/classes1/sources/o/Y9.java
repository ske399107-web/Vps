package o;

import android.view.View;
import java.util.List;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Y9 {
    public boolean a;
    public int b;
    public int c;
    public int d;
    public int e;

    /* renamed from: f, reason: collision with root package name */
    public int f167f;
    public int g;
    public int h;
    public int i;
    public int j;
    public List k;
    public boolean l;

    public final void a(View view) {
        int b;
        int size = this.k.size();
        View view2 = null;
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < size; i2++) {
            View view3 = ((Id) this.k.get(i2)).a;
            C0451vd c0451vd = (C0451vd) view3.getLayoutParams();
            if (view3 != view && !c0451vd.a.i() && (b = (c0451vd.a.b() - this.d) * this.e) >= 0 && b < i) {
                view2 = view3;
                if (b == 0) {
                    break;
                } else {
                    i = b;
                }
            }
        }
        if (view2 == null) {
            this.d = -1;
        } else {
            this.d = ((C0451vd) view2.getLayoutParams()).a.b();
        }
    }

    public final View b(Ad ad) {
        List list = this.k;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = ((Id) this.k.get(i)).a;
                C0451vd c0451vd = (C0451vd) view.getLayoutParams();
                if (!c0451vd.a.i() && this.d == c0451vd.a.b()) {
                    a(view);
                    return view;
                }
            }
            return null;
        }
        View view2 = ad.i(this.d, Long.MAX_VALUE).a;
        this.d += this.e;
        return view2;
    }
}
