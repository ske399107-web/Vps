package o;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Jd extends r {
    public final Kd d;
    public final WeakHashMap e = new WeakHashMap();

    public Jd(Kd kd) {
        this.d = kd;
    }

    @Override // o.r
    public final boolean a(View view, AccessibilityEvent accessibilityEvent) {
        r rVar = (r) this.e.get(view);
        if (rVar != null) {
            return rVar.a(view, accessibilityEvent);
        }
        return this.a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // o.r
    public final C b(View view) {
        r rVar = (r) this.e.get(view);
        if (rVar != null) {
            return rVar.b(view);
        }
        return super.b(view);
    }

    @Override // o.r
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        r rVar = (r) this.e.get(view);
        if (rVar != null) {
            rVar.c(view, accessibilityEvent);
        } else {
            super.c(view, accessibilityEvent);
        }
    }

    @Override // o.r
    public final void d(View view, D d) {
        Kd kd = this.d;
        boolean K = kd.d.K();
        View.AccessibilityDelegate accessibilityDelegate = this.a;
        AccessibilityNodeInfo accessibilityNodeInfo = d.a;
        if (!K) {
            RecyclerView recyclerView = kd.d;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().U(view, d);
                r rVar = (r) this.e.get(view);
                if (rVar != null) {
                    rVar.d(view, d);
                    return;
                } else {
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                    return;
                }
            }
        }
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
    }

    @Override // o.r
    public final void e(View view, AccessibilityEvent accessibilityEvent) {
        r rVar = (r) this.e.get(view);
        if (rVar != null) {
            rVar.e(view, accessibilityEvent);
        } else {
            super.e(view, accessibilityEvent);
        }
    }

    @Override // o.r
    public final boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        r rVar = (r) this.e.get(viewGroup);
        if (rVar != null) {
            return rVar.f(viewGroup, view, accessibilityEvent);
        }
        return this.a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // o.r
    public final boolean g(View view, int i, Bundle bundle) {
        Kd kd = this.d;
        if (!kd.d.K()) {
            RecyclerView recyclerView = kd.d;
            if (recyclerView.getLayoutManager() != null) {
                r rVar = (r) this.e.get(view);
                if (rVar != null) {
                    if (rVar.g(view, i, bundle)) {
                        return true;
                    }
                } else if (super.g(view, i, bundle)) {
                    return true;
                }
                Ad ad = recyclerView.getLayoutManager().b.b;
                return false;
            }
        }
        return super.g(view, i, bundle);
    }

    @Override // o.r
    public final void h(View view, int i) {
        r rVar = (r) this.e.get(view);
        if (rVar != null) {
            rVar.h(view, i);
        } else {
            super.h(view, i);
        }
    }

    @Override // o.r
    public final void i(View view, AccessibilityEvent accessibilityEvent) {
        r rVar = (r) this.e.get(view);
        if (rVar != null) {
            rVar.i(view, accessibilityEvent);
        } else {
            super.i(view, accessibilityEvent);
        }
    }
}
