package o;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* renamed from: o.rg, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0374rg extends AnimatorListenerAdapter {
    public final /* synthetic */ int a = 0;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public C0374rg(zi ziVar, View view) {
        this.b = ziVar;
        this.c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.a) {
            case 0:
                ((E2) this.b).remove(animator);
                ((AbstractC0434ug) this.c).n.remove(animator);
                return;
            default:
                ((zi) this.b).a.d(1.0f);
                C0456vi.e((View) this.c);
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.a) {
            case 0:
                ((AbstractC0434ug) this.c).n.add(animator);
                return;
            default:
                super.onAnimationStart(animator);
                return;
        }
    }

    public C0374rg(AbstractC0434ug abstractC0434ug, E2 e2) {
        this.c = abstractC0434ug;
        this.b = e2;
    }
}
