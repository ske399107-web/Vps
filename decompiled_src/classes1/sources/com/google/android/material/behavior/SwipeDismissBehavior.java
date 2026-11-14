package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.WeakHashMap;
import o.Bf;
import o.C;
import o.C0496y;
import o.Dh;
import o.Fh;
import o.W4;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class SwipeDismissBehavior<V extends View> extends W4 {
    public Fh a;
    public boolean b;
    public boolean c;
    public int d = 2;
    public float e = 0.0f;

    /* renamed from: f, reason: collision with root package name */
    public float f46f = 0.5f;
    public final Bf g = new Bf(this);

    @Override // o.W4
    public boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z = this.b;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                this.b = false;
            }
        } else {
            z = coordinatorLayout.o(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.b = z;
        }
        if (!z) {
            return false;
        }
        if (this.a == null) {
            this.a = new Fh(coordinatorLayout.getContext(), coordinatorLayout, this.g);
        }
        if (!this.c && this.a.p(motionEvent)) {
            return true;
        }
        return false;
    }

    @Override // o.W4
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, int i) {
        WeakHashMap weakHashMap = Dh.a;
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
            Dh.i(view, 1048576);
            Dh.g(view, 0);
            if (r(view)) {
                Dh.j(view, C0496y.j, new C(28, this));
            }
        }
        return false;
    }

    @Override // o.W4
    public final boolean q(View view, MotionEvent motionEvent) {
        if (this.a != null) {
            if (!this.c || motionEvent.getActionMasked() != 3) {
                this.a.j(motionEvent);
                return true;
            }
            return true;
        }
        return false;
    }

    public boolean r(View view) {
        return true;
    }
}
