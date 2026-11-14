package o;

import android.view.ViewGroup;

/* renamed from: o.i1, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class RunnableC0181i1 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ LayoutInflaterFactory2C0439v1 b;

    public /* synthetic */ RunnableC0181i1(LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1, int i) {
        this.a = i;
        this.b = layoutInflaterFactory2C0439v1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        ViewGroup viewGroup;
        switch (this.a) {
            case 0:
                LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = this.b;
                if ((layoutInflaterFactory2C0439v1.Z & 1) != 0) {
                    layoutInflaterFactory2C0439v1.t(0);
                }
                if ((layoutInflaterFactory2C0439v1.Z & 4096) != 0) {
                    layoutInflaterFactory2C0439v1.t(108);
                }
                layoutInflaterFactory2C0439v1.Y = false;
                layoutInflaterFactory2C0439v1.Z = 0;
                return;
            default:
                LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v12 = this.b;
                layoutInflaterFactory2C0439v12.w.showAtLocation(layoutInflaterFactory2C0439v12.v, 55, 0, 0);
                Ph ph = layoutInflaterFactory2C0439v12.y;
                if (ph != null) {
                    ph.b();
                }
                if (layoutInflaterFactory2C0439v12.z && (viewGroup = layoutInflaterFactory2C0439v12.A) != null && viewGroup.isLaidOut()) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    layoutInflaterFactory2C0439v12.v.setAlpha(0.0f);
                    Ph a = Dh.a(layoutInflaterFactory2C0439v12.v);
                    a.a(1.0f);
                    layoutInflaterFactory2C0439v12.y = a;
                    a.d(new C0220k1(0, this));
                    return;
                }
                layoutInflaterFactory2C0439v12.v.setAlpha(1.0f);
                layoutInflaterFactory2C0439v12.v.setVisibility(0);
                return;
        }
    }
}
