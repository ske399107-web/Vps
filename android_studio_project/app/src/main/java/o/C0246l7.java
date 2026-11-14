package o;

import android.animation.ObjectAnimator;
import android.view.View;
import java.util.HashMap;

/* renamed from: o.l7, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0246l7 extends AbstractC0434ug {
    public static final String[] B = {"android:visibility:visibility", "android:visibility:parent"};
    public final int A;

    public C0246l7(int i) {
        this();
        this.A = i;
    }

    public static void I(Cg cg) {
        int visibility = cg.b.getVisibility();
        HashMap hashMap = cg.a;
        hashMap.put("android:visibility:visibility", Integer.valueOf(visibility));
        View view = cg.b;
        hashMap.put("android:visibility:parent", view.getParent());
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        hashMap.put("android:visibility:screenLocation", iArr);
    }

    public static float K(Cg cg, float f2) {
        Float f3;
        if (cg != null && (f3 = (Float) cg.a.get("android:fade:transitionAlpha")) != null) {
            return f3.floatValue();
        }
        return f2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0059 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0035  */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, o.ii] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static o.C0197ii L(o.Cg r8, o.Cg r9) {
        /*
            o.ii r0 = new o.ii
            r0.<init>()
            r1 = 0
            r0.a = r1
            r0.b = r1
            r2 = 0
            r3 = -1
            java.lang.String r4 = "android:visibility:parent"
            java.lang.String r5 = "android:visibility:visibility"
            if (r8 == 0) goto L2f
            java.util.HashMap r6 = r8.a
            boolean r7 = r6.containsKey(r5)
            if (r7 == 0) goto L2f
            java.lang.Object r7 = r6.get(r5)
            java.lang.Integer r7 = (java.lang.Integer) r7
            int r7 = r7.intValue()
            r0.c = r7
            java.lang.Object r6 = r6.get(r4)
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
            r0.e = r6
            goto L33
        L2f:
            r0.c = r3
            r0.e = r2
        L33:
            if (r9 == 0) goto L52
            java.util.HashMap r6 = r9.a
            boolean r7 = r6.containsKey(r5)
            if (r7 == 0) goto L52
            java.lang.Object r2 = r6.get(r5)
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r2 = r2.intValue()
            r0.d = r2
            java.lang.Object r2 = r6.get(r4)
            android.view.ViewGroup r2 = (android.view.ViewGroup) r2
            r0.f236f = r2
            goto L56
        L52:
            r0.d = r3
            r0.f236f = r2
        L56:
            r2 = 1
            if (r8 == 0) goto L8a
            if (r9 == 0) goto L8a
            int r8 = r0.c
            int r9 = r0.d
            if (r8 != r9) goto L68
            android.view.ViewGroup r3 = r0.e
            android.view.ViewGroup r4 = r0.f236f
            if (r3 != r4) goto L68
            return r0
        L68:
            if (r8 == r9) goto L78
            if (r8 != 0) goto L71
            r0.b = r1
            r0.a = r2
            goto L9f
        L71:
            if (r9 != 0) goto L9f
            r0.b = r2
            r0.a = r2
            goto L9f
        L78:
            android.view.ViewGroup r8 = r0.f236f
            if (r8 != 0) goto L81
            r0.b = r1
            r0.a = r2
            goto L9f
        L81:
            android.view.ViewGroup r8 = r0.e
            if (r8 != 0) goto L9f
            r0.b = r2
            r0.a = r2
            goto L9f
        L8a:
            if (r8 != 0) goto L95
            int r8 = r0.d
            if (r8 != 0) goto L95
            r0.b = r2
            r0.a = r2
            goto L9f
        L95:
            if (r9 != 0) goto L9f
            int r8 = r0.c
            if (r8 != 0) goto L9f
            r0.b = r1
            r0.a = r2
        L9f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: o.C0246l7.L(o.Cg, o.Cg):o.ii");
    }

    public final ObjectAnimator J(View view, float f2, float f3) {
        if (f2 == f3) {
            return null;
        }
        Wh.a.x(view, f2);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, Wh.b, f3);
        C0226k7 c0226k7 = new C0226k7(view);
        ofFloat.addListener(c0226k7);
        o().a(c0226k7);
        return ofFloat;
    }

    @Override // o.AbstractC0434ug
    public final void d(Cg cg) {
        I(cg);
    }

    @Override // o.AbstractC0434ug
    public final void g(Cg cg) {
        I(cg);
        View view = cg.b;
        Float f2 = (Float) view.getTag(2131231211);
        if (f2 == null) {
            if (view.getVisibility() == 0) {
                f2 = Float.valueOf(Wh.a.h(view));
            } else {
                f2 = Float.valueOf(0.0f);
            }
        }
        cg.a.put("android:fade:transitionAlpha", f2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
    
        if (L(n(r3, false), r(r3, false)).a != false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:63:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01d1  */
    @Override // o.AbstractC0434ug
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator k(android.widget.FrameLayout r21, o.Cg r22, o.Cg r23) {
        /*
            Method dump skipped, instructions count: 710
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.C0246l7.k(android.widget.FrameLayout, o.Cg, o.Cg):android.animation.Animator");
    }

    @Override // o.AbstractC0434ug
    public final String[] q() {
        return B;
    }

    @Override // o.AbstractC0434ug
    public final boolean s(Cg cg, Cg cg2) {
        if (cg == null && cg2 == null) {
            return false;
        }
        if (cg != null && cg2 != null && cg2.a.containsKey("android:visibility:visibility") != cg.a.containsKey("android:visibility:visibility")) {
            return false;
        }
        C0197ii L = L(cg, cg2);
        if (!L.a) {
            return false;
        }
        if (L.c != 0 && L.d != 0) {
            return false;
        }
        return true;
    }

    public C0246l7() {
        this.A = 3;
    }
}
