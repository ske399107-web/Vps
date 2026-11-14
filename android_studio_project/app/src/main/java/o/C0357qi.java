package o;

import android.view.View;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import java.util.WeakHashMap;

/* renamed from: o.qi, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0357qi extends Ng {
    public final /* synthetic */ int e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ C0396si f269f;

    public /* synthetic */ C0357qi(C0396si c0396si, int i) {
        this.e = i;
        this.f269f = c0396si;
    }

    @Override // o.Rh
    public final void a() {
        View view;
        C0396si c0396si = this.f269f;
        switch (this.e) {
            case 0:
                if (c0396si.i0 && (view = c0396si.a0) != null) {
                    view.setTranslationY(0.0f);
                    c0396si.X.setTranslationY(0.0f);
                }
                c0396si.X.setVisibility(8);
                c0396si.X.setTransitioning(false);
                c0396si.m0 = null;
                H1 h1 = c0396si.e0;
                if (h1 != null) {
                    h1.F(c0396si.d0);
                    c0396si.d0 = null;
                    c0396si.e0 = null;
                }
                ActionBarOverlayLayout actionBarOverlayLayout = c0396si.W;
                if (actionBarOverlayLayout != null) {
                    WeakHashMap weakHashMap = Dh.a;
                    AbstractC0415th.c(actionBarOverlayLayout);
                    return;
                }
                return;
            default:
                c0396si.m0 = null;
                c0396si.X.requestLayout();
                return;
        }
    }
}
