package o;

import android.view.View;
import android.view.ViewParent;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.util.WeakHashMap;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Bf extends Ng {
    public int e;

    /* renamed from: f, reason: collision with root package name */
    public int f74f = -1;
    public final /* synthetic */ SwipeDismissBehavior g;

    public Bf(SwipeDismissBehavior swipeDismissBehavior) {
        this.g = swipeDismissBehavior;
    }

    @Override // o.Ng
    public final boolean A(View view, int i) {
        int i2 = this.f74f;
        if ((i2 == -1 || i2 == i) && this.g.r(view)) {
            return true;
        }
        return false;
    }

    @Override // o.Ng
    public final int d(View view, int i) {
        boolean z;
        int width;
        int width2;
        int width3;
        WeakHashMap weakHashMap = Dh.a;
        if (view.getLayoutDirection() == 1) {
            z = true;
        } else {
            z = false;
        }
        int i2 = this.g.d;
        if (i2 == 0) {
            if (z) {
                width = this.e - view.getWidth();
                width2 = this.e;
            } else {
                width = this.e;
                width3 = view.getWidth();
                width2 = width3 + width;
            }
        } else if (i2 == 1) {
            if (z) {
                width = this.e;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.e - view.getWidth();
                width2 = this.e;
            }
        } else {
            width = this.e - view.getWidth();
            width2 = view.getWidth() + this.e;
        }
        return Math.min(Math.max(width, i), width2);
    }

    @Override // o.Ng
    public final int e(View view, int i) {
        return view.getTop();
    }

    @Override // o.Ng
    public final int i(View view) {
        return view.getWidth();
    }

    @Override // o.Ng
    public final void n(View view, int i) {
        this.f74f = i;
        this.e = view.getLeft();
        ViewParent parent = view.getParent();
        if (parent != null) {
            SwipeDismissBehavior swipeDismissBehavior = this.g;
            swipeDismissBehavior.c = true;
            parent.requestDisallowInterceptTouchEvent(true);
            swipeDismissBehavior.c = false;
        }
    }

    @Override // o.Ng
    public final void o(int i) {
    }

    @Override // o.Ng
    public final void p(View view, int i, int i2) {
        float width = view.getWidth();
        SwipeDismissBehavior swipeDismissBehavior = this.g;
        float f2 = width * swipeDismissBehavior.e;
        float width2 = view.getWidth() * swipeDismissBehavior.f46f;
        float abs = Math.abs(i - this.e);
        if (abs <= f2) {
            view.setAlpha(1.0f);
        } else if (abs >= width2) {
            view.setAlpha(0.0f);
        } else {
            view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((abs - f2) / (width2 - f2))), 1.0f));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0050, code lost:
    
        if (java.lang.Math.abs(r9.getLeft() - r8.e) >= java.lang.Math.round(r9.getWidth() * 0.5f)) goto L27;
     */
    @Override // o.Ng
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q(android.view.View r9, float r10, float r11) {
        /*
            r8 = this;
            r11 = -1
            r8.f74f = r11
            int r11 = r9.getWidth()
            r0 = 0
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            com.google.android.material.behavior.SwipeDismissBehavior r2 = r8.g
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L39
            java.util.WeakHashMap r5 = o.Dh.a
            int r5 = r9.getLayoutDirection()
            if (r5 != r3) goto L1a
            r5 = r3
            goto L1b
        L1a:
            r5 = r4
        L1b:
            int r6 = r2.d
            r7 = 2
            if (r6 != r7) goto L21
            goto L52
        L21:
            if (r6 != 0) goto L2d
            if (r5 == 0) goto L2a
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 >= 0) goto L66
            goto L52
        L2a:
            if (r1 <= 0) goto L66
            goto L52
        L2d:
            if (r6 != r3) goto L66
            if (r5 == 0) goto L34
            if (r1 <= 0) goto L66
            goto L52
        L34:
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 >= 0) goto L66
            goto L52
        L39:
            int r1 = r9.getLeft()
            int r5 = r8.e
            int r1 = r1 - r5
            int r5 = r9.getWidth()
            float r5 = (float) r5
            r6 = 1056964608(0x3f000000, float:0.5)
            float r5 = r5 * r6
            int r5 = java.lang.Math.round(r5)
            int r1 = java.lang.Math.abs(r1)
            if (r1 < r5) goto L66
        L52:
            int r10 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r10 < 0) goto L61
            int r10 = r9.getLeft()
            int r0 = r8.e
            if (r10 >= r0) goto L5f
            goto L61
        L5f:
            int r0 = r0 + r11
            goto L69
        L61:
            int r10 = r8.e
            int r0 = r10 - r11
            goto L69
        L66:
            int r0 = r8.e
            r3 = r4
        L69:
            o.Fh r10 = r2.a
            int r11 = r9.getTop()
            boolean r10 = r10.o(r0, r11)
            if (r10 == 0) goto L7f
            o.b0 r10 = new o.b0
            r10.<init>(r2, r9, r3)
            java.util.WeakHashMap r11 = o.Dh.a
            r9.postOnAnimation(r10)
        L7f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Bf.q(android.view.View, float, float):void");
    }
}
