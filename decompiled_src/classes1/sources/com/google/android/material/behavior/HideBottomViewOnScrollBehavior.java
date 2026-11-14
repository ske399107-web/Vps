package com.google.android.material.behavior;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.Iterator;
import java.util.LinkedHashSet;
import o.Ha;
import o.Q;
import o.Q0;
import o.W4;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends W4 {
    public int b;
    public int c;
    public TimeInterpolator d;
    public TimeInterpolator e;
    public ViewPropertyAnimator h;
    public final LinkedHashSet a = new LinkedHashSet();

    /* renamed from: f, reason: collision with root package name */
    public int f45f = 0;
    public int g = 2;

    public HideBottomViewOnScrollBehavior() {
    }

    @Override // o.W4
    public boolean g(CoordinatorLayout coordinatorLayout, View view, int i) {
        this.f45f = view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
        this.b = Ha.o0(view.getContext(), 2130903853, 225);
        this.c = Ha.o0(view.getContext(), 2130903859, 175);
        this.d = Ha.p0(view.getContext(), 2130903869, Q0.d);
        this.e = Ha.p0(view.getContext(), 2130903869, Q0.c);
        return false;
    }

    @Override // o.W4
    public final void k(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
        LinkedHashSet linkedHashSet = this.a;
        if (i > 0) {
            if (this.g != 1) {
                ViewPropertyAnimator viewPropertyAnimator = this.h;
                if (viewPropertyAnimator != null) {
                    viewPropertyAnimator.cancel();
                    view.clearAnimation();
                }
                this.g = 1;
                Iterator it = linkedHashSet.iterator();
                if (!it.hasNext()) {
                    this.h = view.animate().translationY(this.f45f).setInterpolator(this.e).setDuration(this.c).setListener(new Q(4, this));
                    return;
                }
                it.next().getClass();
                throw new ClassCastException();
            }
            return;
        }
        if (i < 0 && this.g != 2) {
            ViewPropertyAnimator viewPropertyAnimator2 = this.h;
            if (viewPropertyAnimator2 != null) {
                viewPropertyAnimator2.cancel();
                view.clearAnimation();
            }
            this.g = 2;
            Iterator it2 = linkedHashSet.iterator();
            if (!it2.hasNext()) {
                this.h = view.animate().translationY(0).setInterpolator(this.d).setDuration(this.b).setListener(new Q(4, this));
                return;
            }
            it2.next().getClass();
            throw new ClassCastException();
        }
    }

    @Override // o.W4
    public boolean o(View view, int i, int i2) {
        if (i == 2) {
            return true;
        }
        return false;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
    }
}
