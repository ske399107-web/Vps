package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.ArrayList;
import java.util.WeakHashMap;
import o.AbstractC0133fd;
import o.Dh;
import o.Ha;
import o.Nh;
import o.W4;
import o.Z4;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class AppBarLayout$ScrollingViewBehavior extends Nh {
    public final int b;

    public AppBarLayout$ScrollingViewBehavior() {
        new Rect();
        new Rect();
    }

    public static void s(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
        }
    }

    @Override // o.W4
    public final void b(View view) {
    }

    @Override // o.W4
    public boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
        int i;
        W4 w4 = ((Z4) view2.getLayoutParams()).a;
        if (w4 instanceof AppBarLayout$BaseBehavior) {
            int bottom = view2.getBottom() - view.getTop();
            ((AppBarLayout$BaseBehavior) w4).getClass();
            int i2 = this.b;
            if (i2 == 0) {
                i = 0;
            } else {
                i = Ha.i((int) (0.0f * i2), 0, i2);
            }
            int i3 = bottom - i;
            WeakHashMap weakHashMap = Dh.a;
            view.offsetTopAndBottom(i3);
        }
        return false;
    }

    @Override // o.W4
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        int i4 = view.getLayoutParams().height;
        if (i4 == -1 || i4 == -2) {
            s(coordinatorLayout.j(view));
            return false;
        }
        return false;
    }

    @Override // o.W4
    public final void l(CoordinatorLayout coordinatorLayout, View view) {
        s(coordinatorLayout.j(view));
    }

    @Override // o.Nh
    public final void r(CoordinatorLayout coordinatorLayout, View view, int i) {
        s(coordinatorLayout.j(view));
        coordinatorLayout.q(view, i);
    }

    public AppBarLayout$ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        new Rect();
        new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0133fd.u);
        this.b = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
    }
}
