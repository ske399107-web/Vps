package o;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: o.gi, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0158gi extends AnimatorListenerAdapter implements InterfaceC0414tg {
    public final View a;
    public final int b;
    public final ViewGroup c;
    public boolean e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f220f = false;
    public final boolean d = true;

    public C0158gi(View view, int i) {
        this.a = view;
        this.b = i;
        this.c = (ViewGroup) view.getParent();
        g(true);
    }

    @Override // o.InterfaceC0414tg
    public final void a(AbstractC0434ug abstractC0434ug) {
        abstractC0434ug.x(this);
    }

    @Override // o.InterfaceC0414tg
    public final void b(AbstractC0434ug abstractC0434ug) {
    }

    @Override // o.InterfaceC0414tg
    public final void c(AbstractC0434ug abstractC0434ug) {
    }

    @Override // o.InterfaceC0414tg
    public final void d() {
        g(false);
        if (!this.f220f) {
            Wh.b(this.a, this.b);
        }
    }

    @Override // o.InterfaceC0414tg
    public final void e() {
        g(true);
        if (!this.f220f) {
            Wh.b(this.a, 0);
        }
    }

    public final void g(boolean z) {
        ViewGroup viewGroup;
        if (this.d && this.e != z && (viewGroup = this.c) != null) {
            this.e = z;
            Ng.z(viewGroup, z);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f220f = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (!this.f220f) {
            Wh.b(this.a, this.b);
            ViewGroup viewGroup = this.c;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        g(false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator, boolean z) {
        if (z) {
            Wh.b(this.a, 0);
            ViewGroup viewGroup = this.c;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator, boolean z) {
        if (z) {
            return;
        }
        if (!this.f220f) {
            Wh.b(this.a, this.b);
            ViewGroup viewGroup = this.c;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        g(false);
    }
}
