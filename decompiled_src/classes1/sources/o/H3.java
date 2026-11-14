package o;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.HashMap;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class H3 extends AbstractC0434ug {
    public static final String[] A = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    public static final D3 B = new D3(PointF.class, "topLeft", 0);
    public static final D3 C = new D3(PointF.class, "bottomRight", 1);
    public static final D3 D = new D3(PointF.class, "bottomRight", 2);
    public static final D3 E = new D3(PointF.class, "topLeft", 3);
    public static final D3 F = new D3(PointF.class, "position", 4);

    public static void I(Cg cg) {
        View view = cg.b;
        if (view.isLaidOut() || view.getWidth() != 0 || view.getHeight() != 0) {
            HashMap hashMap = cg.a;
            hashMap.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            hashMap.put("android:changeBounds:parent", cg.b.getParent());
        }
    }

    @Override // o.AbstractC0434ug
    public final void d(Cg cg) {
        I(cg);
    }

    @Override // o.AbstractC0434ug
    public final void g(Cg cg) {
        I(cg);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // o.AbstractC0434ug
    public final Animator k(FrameLayout frameLayout, Cg cg, Cg cg2) {
        int i;
        ObjectAnimator a;
        if (cg == null || cg2 == null) {
            return null;
        }
        HashMap hashMap = cg.a;
        HashMap hashMap2 = cg2.a;
        ViewGroup viewGroup = (ViewGroup) hashMap.get("android:changeBounds:parent");
        ViewGroup viewGroup2 = (ViewGroup) hashMap2.get("android:changeBounds:parent");
        if (viewGroup == null || viewGroup2 == null) {
            return null;
        }
        Rect rect = (Rect) hashMap.get("android:changeBounds:bounds");
        Rect rect2 = (Rect) hashMap2.get("android:changeBounds:bounds");
        int i2 = rect.left;
        int i3 = rect2.left;
        int i4 = rect.top;
        int i5 = rect2.top;
        int i6 = rect.right;
        int i7 = rect2.right;
        int i8 = rect.bottom;
        int i9 = rect2.bottom;
        int i10 = i6 - i2;
        int i11 = i8 - i4;
        int i12 = i7 - i3;
        int i13 = i9 - i5;
        Rect rect3 = (Rect) hashMap.get("android:changeBounds:clip");
        Rect rect4 = (Rect) hashMap2.get("android:changeBounds:clip");
        if ((i10 != 0 && i11 != 0) || (i12 != 0 && i13 != 0)) {
            if (i2 == i3 && i4 == i5) {
                i = 0;
            } else {
                i = 1;
            }
            if (i6 != i7 || i8 != i9) {
                i++;
            }
        } else {
            i = 0;
        }
        if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
            i++;
        }
        if (i > 0) {
            View view = cg2.b;
            Wh.a(view, i2, i4, i6, i8);
            if (i == 2) {
                if (i10 == i12 && i11 == i13) {
                    this.v.getClass();
                    a = AbstractC0072cc.a(view, F, C0355qg.a(i2, i4, i3, i5));
                } else {
                    G3 g3 = new G3(view);
                    this.v.getClass();
                    ObjectAnimator a2 = AbstractC0072cc.a(g3, B, C0355qg.a(i2, i4, i3, i5));
                    this.v.getClass();
                    ObjectAnimator a3 = AbstractC0072cc.a(g3, C, C0355qg.a(i6, i8, i7, i9));
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.playTogether(a2, a3);
                    animatorSet.addListener(new E3(g3));
                    a = animatorSet;
                }
            } else if (i2 == i3 && i4 == i5) {
                this.v.getClass();
                a = AbstractC0072cc.a(view, D, C0355qg.a(i6, i8, i7, i9));
            } else {
                this.v.getClass();
                a = AbstractC0072cc.a(view, E, C0355qg.a(i2, i4, i3, i5));
            }
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup3 = (ViewGroup) view.getParent();
                Ng.z(viewGroup3, true);
                o().a(new F3(viewGroup3));
            }
            return a;
        }
        return null;
    }

    @Override // o.AbstractC0434ug
    public final String[] q() {
        return A;
    }
}
