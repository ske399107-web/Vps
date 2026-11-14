package o;

import android.view.View;
import android.view.ViewGroup;

/* renamed from: o.sd, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0391sd {
    public final /* synthetic */ int a;
    public final /* synthetic */ AbstractC0431ud b;

    public /* synthetic */ C0391sd(AbstractC0431ud abstractC0431ud, int i) {
        this.a = i;
        this.b = abstractC0431ud;
    }

    public final int a(View view) {
        switch (this.a) {
            case 0:
                C0451vd c0451vd = (C0451vd) view.getLayoutParams();
                this.b.getClass();
                return view.getRight() + ((C0451vd) view.getLayoutParams()).b.right + ((ViewGroup.MarginLayoutParams) c0451vd).rightMargin;
            default:
                C0451vd c0451vd2 = (C0451vd) view.getLayoutParams();
                this.b.getClass();
                return view.getBottom() + ((C0451vd) view.getLayoutParams()).b.bottom + ((ViewGroup.MarginLayoutParams) c0451vd2).bottomMargin;
        }
    }

    public final int b(View view) {
        switch (this.a) {
            case 0:
                C0451vd c0451vd = (C0451vd) view.getLayoutParams();
                this.b.getClass();
                return (view.getLeft() - ((C0451vd) view.getLayoutParams()).b.left) - ((ViewGroup.MarginLayoutParams) c0451vd).leftMargin;
            default:
                C0451vd c0451vd2 = (C0451vd) view.getLayoutParams();
                this.b.getClass();
                return (view.getTop() - ((C0451vd) view.getLayoutParams()).b.top) - ((ViewGroup.MarginLayoutParams) c0451vd2).topMargin;
        }
    }

    public final int c() {
        switch (this.a) {
            case 0:
                AbstractC0431ud abstractC0431ud = this.b;
                return abstractC0431ud.n - abstractC0431ud.F();
            default:
                AbstractC0431ud abstractC0431ud2 = this.b;
                return abstractC0431ud2.f285o - abstractC0431ud2.D();
        }
    }

    public final int d() {
        switch (this.a) {
            case 0:
                return this.b.E();
            default:
                return this.b.G();
        }
    }
}
