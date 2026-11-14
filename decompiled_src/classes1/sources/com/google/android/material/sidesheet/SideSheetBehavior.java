package com.google.android.material.sidesheet;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.PathInterpolator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import o.AbstractC0133fd;
import o.AbstractC0304o5;
import o.AbstractC0455vh;
import o.Ae;
import o.C0111eb;
import o.C0139g;
import o.C0183i3;
import o.C0222k3;
import o.C0496y;
import o.C0530ze;
import o.Dh;
import o.Fh;
import o.H9;
import o.Ha;
import o.N;
import o.Pe;
import o.W4;
import o.Z4;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class SideSheetBehavior<V extends View> extends W4 {
    public Ha a;
    public final C0111eb b;
    public final ColorStateList c;
    public final Ae d;
    public final C0222k3 e;

    /* renamed from: f, reason: collision with root package name */
    public final float f55f;
    public final boolean g;
    public int h;
    public Fh i;
    public boolean j;
    public final float k;
    public int l;
    public int m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f56o;
    public WeakReference p;
    public WeakReference q;
    public final int r;
    public VelocityTracker s;
    public int t;
    public final LinkedHashSet u;
    public final C0183i3 v;

    public SideSheetBehavior() {
        this.e = new C0222k3(this);
        this.g = true;
        this.h = 5;
        this.k = 0.1f;
        this.r = -1;
        this.u = new LinkedHashSet();
        this.v = new C0183i3(this, 1);
    }

    @Override // o.W4
    public final void c(Z4 z4) {
        this.p = null;
        this.i = null;
    }

    @Override // o.W4
    public final void e() {
        this.p = null;
        this.i = null;
    }

    @Override // o.W4
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        Fh fh;
        VelocityTracker velocityTracker;
        if ((view.isShown() || Dh.d(view) != null) && this.g) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0 && (velocityTracker = this.s) != null) {
                velocityTracker.recycle();
                this.s = null;
            }
            if (this.s == null) {
                this.s = VelocityTracker.obtain();
            }
            this.s.addMovement(motionEvent);
            if (actionMasked != 0) {
                if ((actionMasked == 1 || actionMasked == 3) && this.j) {
                    this.j = false;
                    return false;
                }
            } else {
                this.t = (int) motionEvent.getX();
            }
            if (!this.j && (fh = this.i) != null && fh.p(motionEvent)) {
                return true;
            }
            return false;
        }
        this.j = true;
        return false;
    }

    @Override // o.W4
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, int i) {
        int i2;
        View view2;
        View view3;
        int i3;
        int i4;
        View findViewById;
        int i5;
        int i6 = 0;
        int i7 = 1;
        C0111eb c0111eb = this.b;
        WeakHashMap weakHashMap = Dh.a;
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        if (this.p == null) {
            this.p = new WeakReference(view);
            Context context = view.getContext();
            Ha.p0(context, 2130903874, new PathInterpolator(0.0f, 0.0f, 0.0f, 1.0f));
            Ha.o0(context, 2130903857, 300);
            Ha.o0(context, 2130903862, 150);
            Ha.o0(context, 2130903861, 100);
            Resources resources = view.getResources();
            resources.getDimension(2131099825);
            resources.getDimension(2131099824);
            resources.getDimension(2131099826);
            if (c0111eb != null) {
                view.setBackground(c0111eb);
                float f2 = this.f55f;
                if (f2 == -1.0f) {
                    f2 = AbstractC0455vh.e(view);
                }
                c0111eb.j(f2);
            } else {
                ColorStateList colorStateList = this.c;
                if (colorStateList != null) {
                    AbstractC0455vh.i(view, colorStateList);
                }
            }
            if (this.h == 5) {
                i5 = 4;
            } else {
                i5 = 0;
            }
            if (view.getVisibility() != i5) {
                view.setVisibility(i5);
            }
            u();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
            if (Dh.d(view) == null) {
                Dh.m(view, view.getResources().getString(2131624110));
            }
        }
        if (Gravity.getAbsoluteGravity(((Z4) view.getLayoutParams()).c, i) == 3) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        Ha ha = this.a;
        if (ha == null || ha.T() != i2) {
            Ae ae = this.d;
            Z4 z4 = null;
            if (i2 == 0) {
                this.a = new H9(this, i7);
                if (ae != null) {
                    WeakReference weakReference = this.p;
                    if (weakReference != null && (view3 = (View) weakReference.get()) != null && (view3.getLayoutParams() instanceof Z4)) {
                        z4 = (Z4) view3.getLayoutParams();
                    }
                    if (z4 == null || ((ViewGroup.MarginLayoutParams) z4).rightMargin <= 0) {
                        C0530ze e = ae.e();
                        e.f308f = new C0139g(0.0f);
                        e.g = new C0139g(0.0f);
                        Ae a = e.a();
                        if (c0111eb != null) {
                            c0111eb.setShapeAppearanceModel(a);
                        }
                    }
                }
            } else if (i2 == 1) {
                this.a = new H9(this, i6);
                if (ae != null) {
                    WeakReference weakReference2 = this.p;
                    if (weakReference2 != null && (view2 = (View) weakReference2.get()) != null && (view2.getLayoutParams() instanceof Z4)) {
                        z4 = (Z4) view2.getLayoutParams();
                    }
                    if (z4 == null || ((ViewGroup.MarginLayoutParams) z4).leftMargin <= 0) {
                        C0530ze e2 = ae.e();
                        e2.e = new C0139g(0.0f);
                        e2.h = new C0139g(0.0f);
                        Ae a2 = e2.a();
                        if (c0111eb != null) {
                            c0111eb.setShapeAppearanceModel(a2);
                        }
                    }
                }
            } else {
                throw new IllegalArgumentException(AbstractC0304o5.e("Invalid sheet edge position value: ", i2, ". Must be 0 or 1."));
            }
        }
        if (this.i == null) {
            this.i = new Fh(coordinatorLayout.getContext(), coordinatorLayout, this.v);
        }
        int O = this.a.O(view);
        coordinatorLayout.q(view, i);
        this.m = coordinatorLayout.getWidth();
        this.n = this.a.S(coordinatorLayout);
        this.l = view.getWidth();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        if (marginLayoutParams != null) {
            i3 = this.a.b(marginLayoutParams);
        } else {
            i3 = 0;
        }
        this.f56o = i3;
        int i8 = this.h;
        if (i8 != 1 && i8 != 2) {
            if (i8 != 3) {
                if (i8 == 5) {
                    i6 = this.a.J();
                } else {
                    throw new IllegalStateException("Unexpected value: " + this.h);
                }
            }
        } else {
            i6 = O - this.a.O(view);
        }
        view.offsetLeftAndRight(i6);
        if (this.q == null && (i4 = this.r) != -1 && (findViewById = coordinatorLayout.findViewById(i4)) != null) {
            this.q = new WeakReference(findViewById);
        }
        Iterator it = this.u.iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
        }
        return true;
    }

    @Override // o.W4
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height));
        return true;
    }

    @Override // o.W4
    public final void m(View view, Parcelable parcelable) {
        int i = ((Pe) parcelable).c;
        if (i == 1 || i == 2) {
            i = 5;
        }
        this.h = i;
    }

    @Override // o.W4
    public final Parcelable n(View view) {
        return new Pe(View.BaseSavedState.EMPTY_STATE, this);
    }

    @Override // o.W4
    public final boolean q(View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.h == 1 && actionMasked == 0) {
            return true;
        }
        if (s()) {
            this.i.j(motionEvent);
        }
        if (actionMasked == 0 && (velocityTracker = this.s) != null) {
            velocityTracker.recycle();
            this.s = null;
        }
        if (this.s == null) {
            this.s = VelocityTracker.obtain();
        }
        this.s.addMovement(motionEvent);
        if (s() && actionMasked == 2 && !this.j && s()) {
            float abs = Math.abs(this.t - motionEvent.getX());
            Fh fh = this.i;
            if (abs > fh.b) {
                fh.b(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.j;
    }

    public final void r(int i) {
        View view;
        int i2;
        if (this.h == i) {
            return;
        }
        this.h = i;
        WeakReference weakReference = this.p;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        if (this.h == 5) {
            i2 = 4;
        } else {
            i2 = 0;
        }
        if (view.getVisibility() != i2) {
            view.setVisibility(i2);
        }
        Iterator it = this.u.iterator();
        if (!it.hasNext()) {
            u();
        } else {
            it.next().getClass();
            throw new ClassCastException();
        }
    }

    public final boolean s() {
        if (this.i != null && (this.g || this.h == 1)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002d, code lost:
    
        if (r1.o(r0, r3.getTop()) != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004d, code lost:
    
        r(2);
        r2.e.a(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004b, code lost:
    
        if (r3 != false) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void t(android.view.View r3, int r4, boolean r5) {
        /*
            r2 = this;
            r0 = 3
            if (r4 == r0) goto L19
            r0 = 5
            if (r4 != r0) goto Ld
            o.Ha r0 = r2.a
            int r0 = r0.J()
            goto L1f
        Ld:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r5 = "Invalid state to get outer edge offset: "
            java.lang.String r4 = o.AbstractC0214jf.a(r4, r5)
            r3.<init>(r4)
            throw r3
        L19:
            o.Ha r0 = r2.a
            int r0 = r0.I()
        L1f:
            o.Fh r1 = r2.i
            if (r1 == 0) goto L57
            if (r5 == 0) goto L30
            int r3 = r3.getTop()
            boolean r3 = r1.o(r0, r3)
            if (r3 == 0) goto L57
            goto L4d
        L30:
            int r5 = r3.getTop()
            r1.r = r3
            r3 = -1
            r1.c = r3
            r3 = 0
            boolean r3 = r1.h(r0, r5, r3, r3)
            if (r3 != 0) goto L4b
            int r5 = r1.a
            if (r5 != 0) goto L4b
            android.view.View r5 = r1.r
            if (r5 == 0) goto L4b
            r5 = 0
            r1.r = r5
        L4b:
            if (r3 == 0) goto L57
        L4d:
            r3 = 2
            r2.r(r3)
            o.k3 r3 = r2.e
            r3.a(r4)
            goto L5a
        L57:
            r2.r(r4)
        L5a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.sidesheet.SideSheetBehavior.t(android.view.View, int, boolean):void");
    }

    public final void u() {
        View view;
        WeakReference weakReference = this.p;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        Dh.i(view, 262144);
        Dh.g(view, 0);
        Dh.i(view, 1048576);
        Dh.g(view, 0);
        final int i = 5;
        if (this.h != 5) {
            Dh.j(view, C0496y.j, new N() { // from class: o.Oe
                @Override // o.N
                public final boolean d(View view2) {
                    String str;
                    int i2 = 1;
                    SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                    sideSheetBehavior.getClass();
                    int i3 = i;
                    if (i3 != 1 && i3 != 2) {
                        WeakReference weakReference2 = sideSheetBehavior.p;
                        if (weakReference2 != null && weakReference2.get() != null) {
                            View view3 = (View) sideSheetBehavior.p.get();
                            RunnableC0034ae runnableC0034ae = new RunnableC0034ae(sideSheetBehavior, i3, i2);
                            ViewParent parent = view3.getParent();
                            if (parent != null && parent.isLayoutRequested()) {
                                WeakHashMap weakHashMap = Dh.a;
                                if (view3.isAttachedToWindow()) {
                                    view3.post(runnableC0034ae);
                                }
                            }
                            runnableC0034ae.run();
                        } else {
                            sideSheetBehavior.r(i3);
                        }
                        return true;
                    }
                    StringBuilder sb = new StringBuilder("STATE_");
                    if (i3 == 1) {
                        str = "DRAGGING";
                    } else {
                        str = "SETTLING";
                    }
                    throw new IllegalArgumentException(Ve.k(sb, str, " should not be set externally."));
                }
            });
        }
        final int i2 = 3;
        if (this.h != 3) {
            Dh.j(view, C0496y.h, new N() { // from class: o.Oe
                @Override // o.N
                public final boolean d(View view2) {
                    String str;
                    int i22 = 1;
                    SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
                    sideSheetBehavior.getClass();
                    int i3 = i2;
                    if (i3 != 1 && i3 != 2) {
                        WeakReference weakReference2 = sideSheetBehavior.p;
                        if (weakReference2 != null && weakReference2.get() != null) {
                            View view3 = (View) sideSheetBehavior.p.get();
                            RunnableC0034ae runnableC0034ae = new RunnableC0034ae(sideSheetBehavior, i3, i22);
                            ViewParent parent = view3.getParent();
                            if (parent != null && parent.isLayoutRequested()) {
                                WeakHashMap weakHashMap = Dh.a;
                                if (view3.isAttachedToWindow()) {
                                    view3.post(runnableC0034ae);
                                }
                            }
                            runnableC0034ae.run();
                        } else {
                            sideSheetBehavior.r(i3);
                        }
                        return true;
                    }
                    StringBuilder sb = new StringBuilder("STATE_");
                    if (i3 == 1) {
                        str = "DRAGGING";
                    } else {
                        str = "SETTLING";
                    }
                    throw new IllegalArgumentException(Ve.k(sb, str, " should not be set externally."));
                }
            });
        }
    }

    public SideSheetBehavior(Context context, AttributeSet attributeSet) {
        this.e = new C0222k3(this);
        this.g = true;
        this.h = 5;
        this.k = 0.1f;
        this.r = -1;
        this.u = new LinkedHashSet();
        this.v = new C0183i3(this, 1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0133fd.w);
        if (obtainStyledAttributes.hasValue(3)) {
            this.c = Ha.F(context, obtainStyledAttributes, 3);
        }
        if (obtainStyledAttributes.hasValue(6)) {
            this.d = Ae.b(context, attributeSet, 0, 2131690444).a();
        }
        if (obtainStyledAttributes.hasValue(5)) {
            int resourceId = obtainStyledAttributes.getResourceId(5, -1);
            this.r = resourceId;
            WeakReference weakReference = this.q;
            if (weakReference != null) {
                weakReference.clear();
            }
            this.q = null;
            WeakReference weakReference2 = this.p;
            if (weakReference2 != null) {
                View view = (View) weakReference2.get();
                if (resourceId != -1) {
                    WeakHashMap weakHashMap = Dh.a;
                    if (view.isLaidOut()) {
                        view.requestLayout();
                    }
                }
            }
        }
        Ae ae = this.d;
        if (ae != null) {
            C0111eb c0111eb = new C0111eb(ae);
            this.b = c0111eb;
            c0111eb.i(context);
            ColorStateList colorStateList = this.c;
            if (colorStateList != null) {
                this.b.k(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
                this.b.setTint(typedValue.data);
            }
        }
        this.f55f = obtainStyledAttributes.getDimension(2, -1.0f);
        this.g = obtainStyledAttributes.getBoolean(4, true);
        obtainStyledAttributes.recycle();
        ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
