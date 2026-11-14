package o;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: o.rc, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0370rc extends AbstractC0522z6 {
    public final /* synthetic */ int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0370rc(AbstractC0431ud abstractC0431ud, int i) {
        super(abstractC0431ud);
        this.d = i;
    }

    @Override // o.AbstractC0522z6
    public final int b(View view) {
        switch (this.d) {
            case 0:
                C0451vd c0451vd = (C0451vd) view.getLayoutParams();
                ((AbstractC0431ud) this.b).getClass();
                return view.getRight() + ((C0451vd) view.getLayoutParams()).b.right + ((ViewGroup.MarginLayoutParams) c0451vd).rightMargin;
            default:
                C0451vd c0451vd2 = (C0451vd) view.getLayoutParams();
                ((AbstractC0431ud) this.b).getClass();
                return view.getBottom() + ((C0451vd) view.getLayoutParams()).b.bottom + ((ViewGroup.MarginLayoutParams) c0451vd2).bottomMargin;
        }
    }

    @Override // o.AbstractC0522z6
    public final int c(View view) {
        switch (this.d) {
            case 0:
                C0451vd c0451vd = (C0451vd) view.getLayoutParams();
                ((AbstractC0431ud) this.b).getClass();
                return AbstractC0431ud.A(view) + ((ViewGroup.MarginLayoutParams) c0451vd).leftMargin + ((ViewGroup.MarginLayoutParams) c0451vd).rightMargin;
            default:
                C0451vd c0451vd2 = (C0451vd) view.getLayoutParams();
                ((AbstractC0431ud) this.b).getClass();
                return AbstractC0431ud.z(view) + ((ViewGroup.MarginLayoutParams) c0451vd2).topMargin + ((ViewGroup.MarginLayoutParams) c0451vd2).bottomMargin;
        }
    }

    @Override // o.AbstractC0522z6
    public final int d(View view) {
        switch (this.d) {
            case 0:
                C0451vd c0451vd = (C0451vd) view.getLayoutParams();
                ((AbstractC0431ud) this.b).getClass();
                return AbstractC0431ud.z(view) + ((ViewGroup.MarginLayoutParams) c0451vd).topMargin + ((ViewGroup.MarginLayoutParams) c0451vd).bottomMargin;
            default:
                C0451vd c0451vd2 = (C0451vd) view.getLayoutParams();
                ((AbstractC0431ud) this.b).getClass();
                return AbstractC0431ud.A(view) + ((ViewGroup.MarginLayoutParams) c0451vd2).leftMargin + ((ViewGroup.MarginLayoutParams) c0451vd2).rightMargin;
        }
    }

    @Override // o.AbstractC0522z6
    public final int e(View view) {
        switch (this.d) {
            case 0:
                C0451vd c0451vd = (C0451vd) view.getLayoutParams();
                ((AbstractC0431ud) this.b).getClass();
                return (view.getLeft() - ((C0451vd) view.getLayoutParams()).b.left) - ((ViewGroup.MarginLayoutParams) c0451vd).leftMargin;
            default:
                C0451vd c0451vd2 = (C0451vd) view.getLayoutParams();
                ((AbstractC0431ud) this.b).getClass();
                return (view.getTop() - ((C0451vd) view.getLayoutParams()).b.top) - ((ViewGroup.MarginLayoutParams) c0451vd2).topMargin;
        }
    }

    @Override // o.AbstractC0522z6
    public final int f() {
        switch (this.d) {
            case 0:
                return ((AbstractC0431ud) this.b).n;
            default:
                return ((AbstractC0431ud) this.b).f285o;
        }
    }

    @Override // o.AbstractC0522z6
    public final int g() {
        switch (this.d) {
            case 0:
                AbstractC0431ud abstractC0431ud = (AbstractC0431ud) this.b;
                return abstractC0431ud.n - abstractC0431ud.F();
            default:
                AbstractC0431ud abstractC0431ud2 = (AbstractC0431ud) this.b;
                return abstractC0431ud2.f285o - abstractC0431ud2.D();
        }
    }

    @Override // o.AbstractC0522z6
    public final int h() {
        switch (this.d) {
            case 0:
                return ((AbstractC0431ud) this.b).F();
            default:
                return ((AbstractC0431ud) this.b).D();
        }
    }

    @Override // o.AbstractC0522z6
    public final int i() {
        switch (this.d) {
            case 0:
                return ((AbstractC0431ud) this.b).l;
            default:
                return ((AbstractC0431ud) this.b).m;
        }
    }

    @Override // o.AbstractC0522z6
    public final int j() {
        switch (this.d) {
            case 0:
                return ((AbstractC0431ud) this.b).m;
            default:
                return ((AbstractC0431ud) this.b).l;
        }
    }

    @Override // o.AbstractC0522z6
    public final int k() {
        switch (this.d) {
            case 0:
                return ((AbstractC0431ud) this.b).E();
            default:
                return ((AbstractC0431ud) this.b).G();
        }
    }

    @Override // o.AbstractC0522z6
    public final int l() {
        switch (this.d) {
            case 0:
                AbstractC0431ud abstractC0431ud = (AbstractC0431ud) this.b;
                return (abstractC0431ud.n - abstractC0431ud.E()) - abstractC0431ud.F();
            default:
                AbstractC0431ud abstractC0431ud2 = (AbstractC0431ud) this.b;
                return (abstractC0431ud2.f285o - abstractC0431ud2.G()) - abstractC0431ud2.D();
        }
    }

    @Override // o.AbstractC0522z6
    public final int n(View view) {
        switch (this.d) {
            case 0:
                AbstractC0431ud abstractC0431ud = (AbstractC0431ud) this.b;
                Rect rect = (Rect) this.c;
                abstractC0431ud.K(view, rect);
                return rect.right;
            default:
                AbstractC0431ud abstractC0431ud2 = (AbstractC0431ud) this.b;
                Rect rect2 = (Rect) this.c;
                abstractC0431ud2.K(view, rect2);
                return rect2.bottom;
        }
    }

    @Override // o.AbstractC0522z6
    public final int o(View view) {
        switch (this.d) {
            case 0:
                AbstractC0431ud abstractC0431ud = (AbstractC0431ud) this.b;
                Rect rect = (Rect) this.c;
                abstractC0431ud.K(view, rect);
                return rect.left;
            default:
                AbstractC0431ud abstractC0431ud2 = (AbstractC0431ud) this.b;
                Rect rect2 = (Rect) this.c;
                abstractC0431ud2.K(view, rect2);
                return rect2.top;
        }
    }

    @Override // o.AbstractC0522z6
    public final void p(int i) {
        switch (this.d) {
            case 0:
                ((AbstractC0431ud) this.b).O(i);
                return;
            default:
                ((AbstractC0431ud) this.b).P(i);
                return;
        }
    }
}
