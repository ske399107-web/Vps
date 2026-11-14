package o;

import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import java.util.WeakHashMap;

/* renamed from: o.k1, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0220k1 extends Ng {
    public final /* synthetic */ int e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f242f;

    public /* synthetic */ C0220k1(int i, Object obj) {
        this.e = i;
        this.f242f = obj;
    }

    @Override // o.Rh
    public final void a() {
        Object obj = this.f242f;
        switch (this.e) {
            case 0:
                LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = ((RunnableC0181i1) obj).b;
                layoutInflaterFactory2C0439v1.v.setAlpha(1.0f);
                layoutInflaterFactory2C0439v1.y.d(null);
                layoutInflaterFactory2C0439v1.y = null;
                return;
            case 1:
                LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v12 = (LayoutInflaterFactory2C0439v1) obj;
                layoutInflaterFactory2C0439v12.v.setAlpha(1.0f);
                layoutInflaterFactory2C0439v12.y.d(null);
                layoutInflaterFactory2C0439v12.y = null;
                return;
            default:
                H1 h1 = (H1) obj;
                ((LayoutInflaterFactory2C0439v1) h1.c).v.setVisibility(8);
                LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v13 = (LayoutInflaterFactory2C0439v1) h1.c;
                PopupWindow popupWindow = layoutInflaterFactory2C0439v13.w;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (layoutInflaterFactory2C0439v13.v.getParent() instanceof View) {
                    View view = (View) layoutInflaterFactory2C0439v13.v.getParent();
                    WeakHashMap weakHashMap = Dh.a;
                    AbstractC0415th.c(view);
                }
                layoutInflaterFactory2C0439v13.v.e();
                layoutInflaterFactory2C0439v13.y.d(null);
                layoutInflaterFactory2C0439v13.y = null;
                ViewGroup viewGroup = layoutInflaterFactory2C0439v13.A;
                WeakHashMap weakHashMap2 = Dh.a;
                AbstractC0415th.c(viewGroup);
                return;
        }
    }

    @Override // o.Ng, o.Rh
    public void c() {
        Object obj = this.f242f;
        switch (this.e) {
            case 0:
                ((RunnableC0181i1) obj).b.v.setVisibility(0);
                return;
            case 1:
                LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = (LayoutInflaterFactory2C0439v1) obj;
                layoutInflaterFactory2C0439v1.v.setVisibility(0);
                if (layoutInflaterFactory2C0439v1.v.getParent() instanceof View) {
                    View view = (View) layoutInflaterFactory2C0439v1.v.getParent();
                    WeakHashMap weakHashMap = Dh.a;
                    AbstractC0415th.c(view);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
