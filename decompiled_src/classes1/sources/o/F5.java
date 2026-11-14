package o;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class F5 extends AnimatorListenerAdapter {
    public final /* synthetic */ ViewGroup a;
    public final /* synthetic */ View b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ C0055bf d;
    public final /* synthetic */ I5 e;

    public F5(ViewGroup viewGroup, View view, boolean z, C0055bf c0055bf, I5 i5) {
        this.a = viewGroup;
        this.b = view;
        this.c = z;
        this.d = c0055bf;
        this.e = i5;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        ViewGroup viewGroup = this.a;
        View view = this.b;
        viewGroup.endViewTransition(view);
        C0055bf c0055bf = this.d;
        if (this.c) {
            AbstractC0304o5.a(view, c0055bf.a);
        }
        this.e.d();
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Animator from operation " + c0055bf + " has ended.");
        }
    }
}
