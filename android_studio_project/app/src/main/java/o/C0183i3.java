package o;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* renamed from: o.i3, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0183i3 extends Ng {
    public final /* synthetic */ int e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ W4 f227f;

    public /* synthetic */ C0183i3(W4 w4, int i) {
        this.e = i;
        this.f227f = w4;
    }

    @Override // o.Ng
    public final boolean A(View view, int i) {
        View view2;
        WeakReference weakReference;
        switch (this.e) {
            case 0:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f227f;
                int i2 = bottomSheetBehavior.L;
                if (i2 == 1 || bottomSheetBehavior.a0) {
                    return false;
                }
                if (i2 == 3 && bottomSheetBehavior.Y == i) {
                    WeakReference weakReference2 = bottomSheetBehavior.V;
                    if (weakReference2 != null) {
                        view2 = (View) weakReference2.get();
                    } else {
                        view2 = null;
                    }
                    if (view2 != null && view2.canScrollVertically(-1)) {
                        return false;
                    }
                }
                System.currentTimeMillis();
                WeakReference weakReference3 = bottomSheetBehavior.U;
                if (weakReference3 == null || weakReference3.get() != view) {
                    return false;
                }
                return true;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f227f;
                if (sideSheetBehavior.h == 1 || (weakReference = sideSheetBehavior.p) == null || weakReference.get() != view) {
                    return false;
                }
                return true;
        }
    }

    @Override // o.Ng
    public final int d(View view, int i) {
        switch (this.e) {
            case 0:
                return view.getLeft();
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f227f;
                return Ha.i(i, sideSheetBehavior.a.M(), sideSheetBehavior.a.L());
        }
    }

    @Override // o.Ng
    public final int e(View view, int i) {
        switch (this.e) {
            case 0:
                return Ha.i(i, ((BottomSheetBehavior) this.f227f).x(), j());
            default:
                return view.getTop();
        }
    }

    @Override // o.Ng
    public int i(View view) {
        switch (this.e) {
            case 1:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f227f;
                return sideSheetBehavior.l + sideSheetBehavior.f56o;
            default:
                return super.i(view);
        }
    }

    @Override // o.Ng
    public int j() {
        switch (this.e) {
            case 0:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f227f;
                if (bottomSheetBehavior.I) {
                    return bottomSheetBehavior.T;
                }
                return bottomSheetBehavior.G;
            default:
                return super.j();
        }
    }

    @Override // o.Ng
    public final void o(int i) {
        switch (this.e) {
            case 0:
                if (i == 1) {
                    BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f227f;
                    if (bottomSheetBehavior.K) {
                        bottomSheetBehavior.C(1);
                        return;
                    }
                    return;
                }
                return;
            default:
                if (i == 1) {
                    SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f227f;
                    if (sideSheetBehavior.g) {
                        sideSheetBehavior.r(1);
                        return;
                    }
                    return;
                }
                return;
        }
    }

    @Override // o.Ng
    public final void p(View view, int i, int i2) {
        View view2;
        ViewGroup.MarginLayoutParams marginLayoutParams;
        switch (this.e) {
            case 0:
                ((BottomSheetBehavior) this.f227f).u(i2);
                return;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f227f;
                WeakReference weakReference = sideSheetBehavior.q;
                if (weakReference != null) {
                    view2 = (View) weakReference.get();
                } else {
                    view2 = null;
                }
                if (view2 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) != null) {
                    sideSheetBehavior.a.B0(marginLayoutParams, view.getLeft(), view.getRight());
                    view2.setLayoutParams(marginLayoutParams);
                }
                LinkedHashSet linkedHashSet = sideSheetBehavior.u;
                if (!linkedHashSet.isEmpty()) {
                    sideSheetBehavior.a.c(i);
                    Iterator it = linkedHashSet.iterator();
                    if (it.hasNext()) {
                        it.next().getClass();
                        throw new ClassCastException();
                    }
                    return;
                }
                return;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002a, code lost:
    
        if (r0.a.c0(r6) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005b, code lost:
    
        if (java.lang.Math.abs(r7 - r0.a.I()) < java.lang.Math.abs(r7 - r0.a.J())) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0080, code lost:
    
        if (r7 > r4.E) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d0, code lost:
    
        if (java.lang.Math.abs(r6.getTop() - r4.x()) < java.lang.Math.abs(r6.getTop() - r4.E)) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x011b, code lost:
    
        if (java.lang.Math.abs(r7 - r4.D) < java.lang.Math.abs(r7 - r4.G)) goto L27;
     */
    @Override // o.Ng
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q(android.view.View r6, float r7, float r8) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.C0183i3.q(android.view.View, float, float):void");
    }
}
