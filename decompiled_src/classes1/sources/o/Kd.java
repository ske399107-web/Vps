package o;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Kd extends r {
    public final RecyclerView d;
    public final Jd e;

    public Kd(RecyclerView recyclerView) {
        this.d = recyclerView;
        Jd jd = this.e;
        if (jd != null) {
            this.e = jd;
        } else {
            this.e = new Jd(this);
        }
    }

    @Override // o.r
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        super.c(view, accessibilityEvent);
        if ((view instanceof RecyclerView) && !this.d.K()) {
            RecyclerView recyclerView = (RecyclerView) view;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().T(accessibilityEvent);
            }
        }
    }

    @Override // o.r
    public final void d(View view, D d) {
        View.AccessibilityDelegate accessibilityDelegate = this.a;
        AccessibilityNodeInfo accessibilityNodeInfo = d.a;
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        RecyclerView recyclerView = this.d;
        if (!recyclerView.K() && recyclerView.getLayoutManager() != null) {
            AbstractC0431ud layoutManager = recyclerView.getLayoutManager();
            RecyclerView recyclerView2 = layoutManager.b;
            Ad ad = recyclerView2.b;
            if (recyclerView2.canScrollVertically(-1) || layoutManager.b.canScrollHorizontally(-1)) {
                d.a(8192);
                accessibilityNodeInfo.setScrollable(true);
            }
            if (layoutManager.b.canScrollVertically(1) || layoutManager.b.canScrollHorizontally(1)) {
                d.a(4096);
                accessibilityNodeInfo.setScrollable(true);
            }
            Fd fd = recyclerView2.c0;
            accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(layoutManager.J(ad, fd), layoutManager.x(ad, fd), false, 0));
        }
    }

    @Override // o.r
    public final boolean g(View view, int i, Bundle bundle) {
        int i2;
        int E;
        if (super.g(view, i, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.d;
        if (recyclerView.K() || recyclerView.getLayoutManager() == null) {
            return false;
        }
        AbstractC0431ud layoutManager = recyclerView.getLayoutManager();
        RecyclerView recyclerView2 = layoutManager.b;
        Ad ad = recyclerView2.b;
        if (i != 4096) {
            if (i != 8192) {
                E = 0;
                i2 = 0;
            } else {
                if (recyclerView2.canScrollVertically(-1)) {
                    i2 = -((layoutManager.f285o - layoutManager.G()) - layoutManager.D());
                } else {
                    i2 = 0;
                }
                if (layoutManager.b.canScrollHorizontally(-1)) {
                    E = -((layoutManager.n - layoutManager.E()) - layoutManager.F());
                }
                E = 0;
            }
        } else {
            if (recyclerView2.canScrollVertically(1)) {
                i2 = (layoutManager.f285o - layoutManager.G()) - layoutManager.D();
            } else {
                i2 = 0;
            }
            if (layoutManager.b.canScrollHorizontally(1)) {
                E = (layoutManager.n - layoutManager.E()) - layoutManager.F();
            }
            E = 0;
        }
        if (i2 == 0 && E == 0) {
            return false;
        }
        layoutManager.b.Z(E, i2, true);
        return true;
    }
}
