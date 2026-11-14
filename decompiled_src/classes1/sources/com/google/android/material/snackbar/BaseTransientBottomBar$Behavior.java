package com.google.android.material.snackbar;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import o.C;
import o.C0424u6;
import o.Z2;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {
    public final C0424u6 h;

    public BaseTransientBottomBar$Behavior() {
        C0424u6 c0424u6 = new C0424u6(7);
        this.e = Math.min(Math.max(0.0f, 0.1f), 1.0f);
        this.f46f = Math.min(Math.max(0.0f, 0.6f), 1.0f);
        this.d = 0;
        this.h = c0424u6;
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, o.W4
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        this.h.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                if (C.c == null) {
                    C.c = new C(26);
                }
                synchronized (C.c.b) {
                }
            }
        } else if (coordinatorLayout.o(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            if (C.c == null) {
                C.c = new C(26);
            }
            synchronized (C.c.b) {
            }
        }
        return super.f(coordinatorLayout, view, motionEvent);
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    public final boolean r(View view) {
        this.h.getClass();
        return view instanceof Z2;
    }
}
