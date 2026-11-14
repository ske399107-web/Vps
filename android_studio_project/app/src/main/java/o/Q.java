package o;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.res.ColorStateList;
import android.view.View;
import android.view.ViewOverlay;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Q extends AnimatorListenerAdapter {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ Q(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.a) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.b;
                actionBarOverlayLayout.w = null;
                actionBarOverlayLayout.j = false;
                return;
            case 6:
                ((Rh) this.b).b();
                return;
            default:
                super.onAnimationCancel(animator);
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.a) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.b;
                actionBarOverlayLayout.w = null;
                actionBarOverlayLayout.j = false;
                return;
            case 1:
                P0 p0 = (P0) this.b;
                ArrayList arrayList = new ArrayList(p0.e);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ColorStateList colorStateList = ((Wa) arrayList.get(i)).b.f169o;
                    if (colorStateList != null) {
                        p0.setTintList(colorStateList);
                    }
                }
                return;
            case 2:
                super.onAnimationEnd(animator);
                W2 w2 = (W2) this.b;
                Oh g = Ng.g(w2);
                Iterator it = w2.l.iterator();
                while (it.hasNext()) {
                    ((ViewOverlay) g.a).remove((C0275mg) it.next());
                }
                return;
            case 3:
                C0364r6 c0364r6 = (C0364r6) this.b;
                c0364r6.q();
                c0364r6.r.start();
                return;
            case 4:
                ((HideBottomViewOnScrollBehavior) this.b).h = null;
                return;
            case 5:
                ((AbstractC0434ug) this.b).m();
                animator.removeListener(this);
                return;
            default:
                ((Rh) this.b).a();
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.a) {
            case 1:
                P0 p0 = (P0) this.b;
                ArrayList arrayList = new ArrayList(p0.e);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    Ya ya = ((Wa) arrayList.get(i)).b;
                    ColorStateList colorStateList = ya.f169o;
                    if (colorStateList != null) {
                        p0.setTint(colorStateList.getColorForState(ya.s, colorStateList.getDefaultColor()));
                    }
                }
                return;
            case 6:
                ((Rh) this.b).c();
                return;
            default:
                super.onAnimationStart(animator);
                return;
        }
    }

    public Q(Rh rh, View view) {
        this.a = 6;
        this.b = rh;
    }
}
