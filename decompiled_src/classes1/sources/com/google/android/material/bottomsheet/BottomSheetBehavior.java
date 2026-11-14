package com.google.android.material.bottomsheet;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.PathInterpolator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.WeakHashMap;
import o.AbstractC0133fd;
import o.AbstractC0214jf;
import o.AbstractC0415th;
import o.AbstractC0455vh;
import o.Ae;
import o.C0091db;
import o.C0111eb;
import o.C0163h3;
import o.C0183i3;
import o.C0202j3;
import o.C0222k3;
import o.C0338q;
import o.C0456vi;
import o.C0476wi;
import o.C0496y;
import o.Dh;
import o.Fh;
import o.H1;
import o.Ha;
import o.I0;
import o.R4;
import o.RunnableC0042b2;
import o.S2;
import o.Ve;
import o.ViewOnApplyWindowInsetsListenerC0436ui;
import o.W4;
import o.Z4;
import o.r;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class BottomSheetBehavior<V extends View> extends W4 {
    public final C0222k3 A;
    public final ValueAnimator B;
    public final int C;
    public int D;
    public int E;
    public final float F;
    public int G;
    public final float H;
    public boolean I;
    public boolean J;
    public final boolean K;
    public int L;
    public Fh M;
    public boolean N;
    public int O;
    public boolean P;
    public final float Q;
    public int R;
    public int S;
    public int T;
    public WeakReference U;
    public WeakReference V;
    public final ArrayList W;
    public VelocityTracker X;
    public int Y;
    public int Z;
    public final int a;
    public boolean a0;
    public boolean b;
    public HashMap b0;
    public final float c;
    public final SparseIntArray c0;
    public final int d;
    public final C0183i3 d0;
    public int e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f47f;
    public int g;
    public final int h;
    public final C0111eb i;
    public final ColorStateList j;
    public final int k;
    public final int l;
    public int m;
    public final boolean n;

    /* renamed from: o, reason: collision with root package name */
    public final boolean f48o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final boolean s;
    public final boolean t;
    public final boolean u;
    public int v;
    public int w;
    public final boolean x;
    public final Ae y;
    public boolean z;

    public BottomSheetBehavior() {
        this.a = 0;
        this.b = true;
        this.k = -1;
        this.l = -1;
        this.A = new C0222k3(this);
        this.F = 0.5f;
        this.H = -1.0f;
        this.K = true;
        this.L = 4;
        this.Q = 0.1f;
        this.W = new ArrayList();
        this.Z = -1;
        this.c0 = new SparseIntArray();
        this.d0 = new C0183i3(this, 0);
    }

    public static View v(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        WeakHashMap weakHashMap = Dh.a;
        if (AbstractC0455vh.h(view)) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View v = v(viewGroup.getChildAt(i));
                if (v != null) {
                    return v;
                }
            }
        }
        return null;
    }

    public static int w(int i, int i2, int i3, int i4) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, i2, i4);
        if (i3 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode != 1073741824) {
            if (size != 0) {
                i3 = Math.min(size, i3);
            }
            return View.MeasureSpec.makeMeasureSpec(i3, PKIFailureInfo.systemUnavail);
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(size, i3), 1073741824);
    }

    public final void A(int i) {
        if (i == -1) {
            if (!this.f47f) {
                this.f47f = true;
            } else {
                return;
            }
        } else if (this.f47f || this.e != i) {
            this.f47f = false;
            this.e = Math.max(0, i);
        } else {
            return;
        }
        I();
    }

    public final void B(int i) {
        String str;
        int i2;
        if (i != 1 && i != 2) {
            if (!this.I && i == 5) {
                Log.w("BottomSheetBehavior", "Cannot set state: " + i);
                return;
            }
            if (i == 6 && this.b && y(i) <= this.D) {
                i2 = 3;
            } else {
                i2 = i;
            }
            WeakReference weakReference = this.U;
            if (weakReference != null && weakReference.get() != null) {
                View view = (View) this.U.get();
                RunnableC0042b2 runnableC0042b2 = new RunnableC0042b2(this, view, i2);
                ViewParent parent = view.getParent();
                if (parent != null && parent.isLayoutRequested()) {
                    WeakHashMap weakHashMap = Dh.a;
                    if (view.isAttachedToWindow()) {
                        view.post(runnableC0042b2);
                        return;
                    }
                }
                runnableC0042b2.run();
                return;
            }
            C(i);
            return;
        }
        StringBuilder sb = new StringBuilder("STATE_");
        if (i == 1) {
            str = "DRAGGING";
        } else {
            str = "SETTLING";
        }
        throw new IllegalArgumentException(Ve.k(sb, str, " should not be set externally."));
    }

    public final void C(int i) {
        if (this.L == i) {
            return;
        }
        this.L = i;
        if (i != 4 && i != 3 && i != 6) {
            boolean z = this.I;
        }
        WeakReference weakReference = this.U;
        if (weakReference == null || ((View) weakReference.get()) == null) {
            return;
        }
        if (i == 3) {
            H(true);
        } else if (i == 6 || i == 5 || i == 4) {
            H(false);
        }
        G(i, true);
        ArrayList arrayList = this.W;
        if (arrayList.size() <= 0) {
            F();
        } else {
            arrayList.get(0).getClass();
            throw new ClassCastException();
        }
    }

    public final boolean D(View view, float f2) {
        if (this.J) {
            return true;
        }
        if (view.getTop() < this.G) {
            return false;
        }
        if (Math.abs(((f2 * this.Q) + view.getTop()) - this.G) / t() > 0.5f) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
    
        if (r3 != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
    
        if (r1.o(r3.getLeft(), r0) != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0032, code lost:
    
        C(2);
        G(r4, true);
        r2.A.a(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void E(android.view.View r3, int r4, boolean r5) {
        /*
            r2 = this;
            int r0 = r2.y(r4)
            o.Fh r1 = r2.M
            if (r1 == 0) goto L40
            if (r5 == 0) goto L15
            int r3 = r3.getLeft()
            boolean r3 = r1.o(r3, r0)
            if (r3 == 0) goto L40
            goto L32
        L15:
            int r5 = r3.getLeft()
            r1.r = r3
            r3 = -1
            r1.c = r3
            r3 = 0
            boolean r3 = r1.h(r5, r0, r3, r3)
            if (r3 != 0) goto L30
            int r5 = r1.a
            if (r5 != 0) goto L30
            android.view.View r5 = r1.r
            if (r5 == 0) goto L30
            r5 = 0
            r1.r = r5
        L30:
            if (r3 == 0) goto L40
        L32:
            r3 = 2
            r2.C(r3)
            r3 = 1
            r2.G(r4, r3)
            o.k3 r3 = r2.A
            r3.a(r4)
            goto L43
        L40:
            r2.C(r4)
        L43:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.E(android.view.View, int, boolean):void");
    }

    public final void F() {
        View view;
        int i;
        boolean z;
        r rVar;
        WeakReference weakReference = this.U;
        if (weakReference != null && (view = (View) weakReference.get()) != null) {
            Dh.i(view, PKIFailureInfo.signerNotTrusted);
            Dh.g(view, 0);
            Dh.i(view, 262144);
            Dh.g(view, 0);
            Dh.i(view, 1048576);
            Dh.g(view, 0);
            SparseIntArray sparseIntArray = this.c0;
            int i2 = sparseIntArray.get(0, -1);
            if (i2 != -1) {
                Dh.i(view, i2);
                Dh.g(view, 0);
                sparseIntArray.delete(0);
            }
            int i3 = 6;
            if (!this.b && this.L != 6) {
                String string = view.getResources().getString(2131623970);
                I0 i0 = new I0(this, 6);
                ArrayList e = Dh.e(view);
                int i4 = 0;
                while (true) {
                    if (i4 < e.size()) {
                        if (TextUtils.equals(string, ((AccessibilityNodeInfo.AccessibilityAction) ((C0496y) e.get(i4)).a).getLabel())) {
                            i = ((C0496y) e.get(i4)).a();
                            break;
                        }
                        i4++;
                    } else {
                        int i5 = -1;
                        for (int i6 = 0; i6 < 32 && i5 == -1; i6++) {
                            int i7 = Dh.d[i6];
                            boolean z2 = true;
                            for (int i8 = 0; i8 < e.size(); i8++) {
                                if (((C0496y) e.get(i8)).a() != i7) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                z2 &= z;
                            }
                            if (z2) {
                                i5 = i7;
                            }
                        }
                        i = i5;
                    }
                }
                if (i != -1) {
                    C0496y c0496y = new C0496y(null, i, string, i0, null);
                    View.AccessibilityDelegate c = Dh.c(view);
                    if (c == null) {
                        rVar = null;
                    } else if (c instanceof C0338q) {
                        rVar = ((C0338q) c).a;
                    } else {
                        rVar = new r(c);
                    }
                    if (rVar == null) {
                        rVar = new r();
                    }
                    Dh.l(view, rVar);
                    Dh.i(view, c0496y.a());
                    Dh.e(view).add(c0496y);
                    Dh.g(view, 0);
                }
                sparseIntArray.put(0, i);
            }
            if (this.I && this.L != 5) {
                Dh.j(view, C0496y.j, new I0(this, 5));
            }
            int i9 = this.L;
            if (i9 != 3) {
                if (i9 != 4) {
                    if (i9 == 6) {
                        Dh.j(view, C0496y.i, new I0(this, 4));
                        Dh.j(view, C0496y.h, new I0(this, 3));
                        return;
                    }
                    return;
                }
                if (this.b) {
                    i3 = 3;
                }
                Dh.j(view, C0496y.h, new I0(this, i3));
                return;
            }
            if (this.b) {
                i3 = 4;
            }
            Dh.j(view, C0496y.i, new I0(this, i3));
        }
    }

    public final void G(int i, boolean z) {
        boolean z2;
        C0111eb c0111eb = this.i;
        ValueAnimator valueAnimator = this.B;
        if (i == 2) {
            return;
        }
        if (this.L == 3 && (this.x || z())) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.z != z2 && c0111eb != null) {
            this.z = z2;
            float f2 = 1.0f;
            if (z && valueAnimator != null) {
                if (valueAnimator.isRunning()) {
                    valueAnimator.reverse();
                    return;
                }
                float f3 = c0111eb.a.i;
                if (z2) {
                    f2 = s();
                }
                valueAnimator.setFloatValues(f3, f2);
                valueAnimator.start();
                return;
            }
            if (valueAnimator != null && valueAnimator.isRunning()) {
                valueAnimator.cancel();
            }
            if (this.z) {
                f2 = s();
            }
            C0091db c0091db = c0111eb.a;
            if (c0091db.i != f2) {
                c0091db.i = f2;
                c0111eb.e = true;
                c0111eb.invalidateSelf();
            }
        }
    }

    public final void H(boolean z) {
        WeakReference weakReference = this.U;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (!(parent instanceof CoordinatorLayout)) {
            return;
        }
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
        int childCount = coordinatorLayout.getChildCount();
        if (z) {
            if (this.b0 == null) {
                this.b0 = new HashMap(childCount);
            } else {
                return;
            }
        }
        for (int i = 0; i < childCount; i++) {
            View childAt = coordinatorLayout.getChildAt(i);
            if (childAt != this.U.get() && z) {
                this.b0.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
            }
        }
        if (!z) {
            this.b0 = null;
        }
    }

    public final void I() {
        View view;
        if (this.U != null) {
            r();
            if (this.L == 4 && (view = (View) this.U.get()) != null) {
                view.requestLayout();
            }
        }
    }

    @Override // o.W4
    public final void c(Z4 z4) {
        this.U = null;
        this.M = null;
    }

    @Override // o.W4
    public final void e() {
        this.U = null;
        this.M = null;
    }

    @Override // o.W4
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z;
        View view2;
        int i;
        Fh fh;
        if (view.isShown() && this.K) {
            int actionMasked = motionEvent.getActionMasked();
            View view3 = null;
            if (actionMasked == 0) {
                this.Y = -1;
                this.Z = -1;
                VelocityTracker velocityTracker = this.X;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.X = null;
                }
            }
            if (this.X == null) {
                this.X = VelocityTracker.obtain();
            }
            this.X.addMovement(motionEvent);
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    this.a0 = false;
                    this.Y = -1;
                    if (this.N) {
                        this.N = false;
                        return false;
                    }
                }
            } else {
                int x = (int) motionEvent.getX();
                this.Z = (int) motionEvent.getY();
                if (this.L != 2) {
                    WeakReference weakReference = this.V;
                    if (weakReference != null) {
                        view2 = (View) weakReference.get();
                    } else {
                        view2 = null;
                    }
                    if (view2 != null && coordinatorLayout.o(view2, x, this.Z)) {
                        this.Y = motionEvent.getPointerId(motionEvent.getActionIndex());
                        this.a0 = true;
                    }
                }
                if (this.Y == -1 && !coordinatorLayout.o(view, x, this.Z)) {
                    z = true;
                } else {
                    z = false;
                }
                this.N = z;
            }
            if (!this.N && (fh = this.M) != null && fh.p(motionEvent)) {
                return true;
            }
            WeakReference weakReference2 = this.V;
            if (weakReference2 != null) {
                view3 = (View) weakReference2.get();
            }
            if (actionMasked != 2 || view3 == null || this.N || this.L == 1 || coordinatorLayout.o(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.M == null || (i = this.Z) == -1 || Math.abs(i - motionEvent.getY()) <= this.M.b) {
                return false;
            }
            return true;
        }
        this.N = true;
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v6, types: [o.Vh, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.lang.Object, android.view.View$OnAttachStateChangeListener] */
    @Override // o.W4
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, int i) {
        boolean z;
        int i2 = this.l;
        C0111eb c0111eb = this.i;
        boolean z2 = false;
        WeakHashMap weakHashMap = Dh.a;
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        if (this.U == null) {
            this.g = coordinatorLayout.getResources().getDimensionPixelSize(2131099757);
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 29 && !this.n && !this.f47f) {
                z = true;
            } else {
                z = false;
            }
            if (this.f48o || this.p || this.q || this.s || this.t || this.u || z) {
                C0163h3 c0163h3 = new C0163h3(this, z);
                int paddingStart = view.getPaddingStart();
                view.getPaddingTop();
                int paddingEnd = view.getPaddingEnd();
                int paddingBottom = view.getPaddingBottom();
                ?? obj = new Object();
                obj.a = paddingStart;
                obj.b = paddingEnd;
                obj.c = paddingBottom;
                AbstractC0455vh.l(view, new H1(c0163h3, obj, 22, z2));
                if (view.isAttachedToWindow()) {
                    AbstractC0415th.c(view);
                } else {
                    view.addOnAttachStateChangeListener(new Object());
                }
            }
            R4 r4 = new R4(view);
            if (i3 >= 30) {
                view.setWindowInsetsAnimationCallback(new C0476wi(r4));
            } else {
                PathInterpolator pathInterpolator = C0456vi.e;
                Object tag = view.getTag(2131231172);
                ViewOnApplyWindowInsetsListenerC0436ui viewOnApplyWindowInsetsListenerC0436ui = new ViewOnApplyWindowInsetsListenerC0436ui(view, r4);
                view.setTag(2131231180, viewOnApplyWindowInsetsListenerC0436ui);
                if (tag == null) {
                    view.setOnApplyWindowInsetsListener(viewOnApplyWindowInsetsListenerC0436ui);
                }
            }
            this.U = new WeakReference(view);
            Context context = view.getContext();
            Ha.p0(context, 2130903874, new PathInterpolator(0.0f, 0.0f, 0.0f, 1.0f));
            Ha.o0(context, 2130903857, 300);
            Ha.o0(context, 2130903862, 150);
            Ha.o0(context, 2130903861, 100);
            Resources resources = view.getResources();
            resources.getDimension(2131099820);
            resources.getDimension(2131099821);
            if (c0111eb != null) {
                view.setBackground(c0111eb);
                float f2 = this.H;
                if (f2 == -1.0f) {
                    f2 = AbstractC0455vh.e(view);
                }
                c0111eb.j(f2);
            } else {
                ColorStateList colorStateList = this.j;
                if (colorStateList != null) {
                    AbstractC0455vh.i(view, colorStateList);
                }
            }
            F();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
        }
        if (this.M == null) {
            this.M = new Fh(coordinatorLayout.getContext(), coordinatorLayout, this.d0);
        }
        int top = view.getTop();
        coordinatorLayout.q(view, i);
        this.S = coordinatorLayout.getWidth();
        this.T = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.R = height;
        int i4 = this.T;
        int i5 = i4 - height;
        int i6 = this.w;
        if (i5 < i6) {
            if (this.r) {
                if (i2 != -1) {
                    i4 = Math.min(i4, i2);
                }
                this.R = i4;
            } else {
                int i7 = i4 - i6;
                if (i2 != -1) {
                    i7 = Math.min(i7, i2);
                }
                this.R = i7;
            }
        }
        this.D = Math.max(0, this.T - this.R);
        this.E = (int) ((1.0f - this.F) * this.T);
        r();
        int i8 = this.L;
        if (i8 == 3) {
            view.offsetTopAndBottom(x());
        } else if (i8 == 6) {
            view.offsetTopAndBottom(this.E);
        } else if (this.I && i8 == 5) {
            view.offsetTopAndBottom(this.T);
        } else if (i8 == 4) {
            view.offsetTopAndBottom(this.G);
        } else if (i8 == 1 || i8 == 2) {
            view.offsetTopAndBottom(top - view.getTop());
        }
        G(this.L, false);
        this.V = new WeakReference(v(view));
        ArrayList arrayList = this.W;
        if (arrayList.size() <= 0) {
            return true;
        }
        arrayList.get(0).getClass();
        throw new ClassCastException();
    }

    @Override // o.W4
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(w(i, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, this.k, marginLayoutParams.width), w(i3, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, this.l, marginLayoutParams.height));
        return true;
    }

    @Override // o.W4
    public final boolean i(View view) {
        WeakReference weakReference = this.V;
        if (weakReference == null || view != weakReference.get() || this.L == 3) {
            return false;
        }
        return true;
    }

    @Override // o.W4
    public final void j(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
        View view3;
        boolean z = this.K;
        if (i3 == 1) {
            return;
        }
        WeakReference weakReference = this.V;
        if (weakReference != null) {
            view3 = (View) weakReference.get();
        } else {
            view3 = null;
        }
        if (view2 != view3) {
            return;
        }
        int top = view.getTop();
        int i4 = top - i2;
        if (i2 > 0) {
            if (i4 < x()) {
                int x = top - x();
                iArr[1] = x;
                WeakHashMap weakHashMap = Dh.a;
                view.offsetTopAndBottom(-x);
                C(3);
            } else {
                if (!z) {
                    return;
                }
                iArr[1] = i2;
                WeakHashMap weakHashMap2 = Dh.a;
                view.offsetTopAndBottom(-i2);
                C(1);
            }
        } else if (i2 < 0 && !view2.canScrollVertically(-1)) {
            int i5 = this.G;
            if (i4 > i5 && !this.I) {
                int i6 = top - i5;
                iArr[1] = i6;
                WeakHashMap weakHashMap3 = Dh.a;
                view.offsetTopAndBottom(-i6);
                C(4);
            } else {
                if (!z) {
                    return;
                }
                iArr[1] = i2;
                WeakHashMap weakHashMap4 = Dh.a;
                view.offsetTopAndBottom(-i2);
                C(1);
            }
        }
        u(view.getTop());
        this.O = i2;
        this.P = true;
    }

    @Override // o.W4
    public final void k(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
    }

    @Override // o.W4
    public final void m(View view, Parcelable parcelable) {
        C0202j3 c0202j3 = (C0202j3) parcelable;
        int i = this.a;
        if (i != 0) {
            if (i == -1 || (i & 1) == 1) {
                this.e = c0202j3.d;
            }
            if (i == -1 || (i & 2) == 2) {
                this.b = c0202j3.e;
            }
            if (i == -1 || (i & 4) == 4) {
                this.I = c0202j3.f239f;
            }
            if (i == -1 || (i & 8) == 8) {
                this.J = c0202j3.g;
            }
        }
        int i2 = c0202j3.c;
        if (i2 != 1 && i2 != 2) {
            this.L = i2;
        } else {
            this.L = 4;
        }
    }

    @Override // o.W4
    public final Parcelable n(View view) {
        return new C0202j3(View.BaseSavedState.EMPTY_STATE, this);
    }

    @Override // o.W4
    public final boolean o(View view, int i, int i2) {
        this.O = 0;
        this.P = false;
        if ((i & 2) == 0) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0030, code lost:
    
        if (r4.getTop() <= r3.E) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0071, code lost:
    
        if (java.lang.Math.abs(r5 - r3.D) < java.lang.Math.abs(r5 - r3.G)) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0080, code lost:
    
        if (r5 < java.lang.Math.abs(r5 - r3.G)) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0090, code lost:
    
        if (java.lang.Math.abs(r5 - r2) < java.lang.Math.abs(r5 - r3.G)) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ac, code lost:
    
        if (java.lang.Math.abs(r5 - r3.E) < java.lang.Math.abs(r5 - r3.G)) goto L50;
     */
    @Override // o.W4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void p(android.view.View r4, android.view.View r5, int r6) {
        /*
            r3 = this;
            int r6 = r4.getTop()
            int r0 = r3.x()
            r1 = 3
            if (r6 != r0) goto Lf
            r3.C(r1)
            return
        Lf:
            java.lang.ref.WeakReference r6 = r3.V
            if (r6 == 0) goto Lb5
            java.lang.Object r6 = r6.get()
            if (r5 != r6) goto Lb5
            boolean r5 = r3.P
            if (r5 != 0) goto L1f
            goto Lb5
        L1f:
            int r5 = r3.O
            r6 = 6
            if (r5 <= 0) goto L34
            boolean r5 = r3.b
            if (r5 == 0) goto L2a
            goto Laf
        L2a:
            int r5 = r4.getTop()
            int r0 = r3.E
            if (r5 <= r0) goto Laf
            goto Lae
        L34:
            boolean r5 = r3.I
            if (r5 == 0) goto L55
            android.view.VelocityTracker r5 = r3.X
            if (r5 != 0) goto L3e
            r5 = 0
            goto L4d
        L3e:
            r0 = 1000(0x3e8, float:1.401E-42)
            float r2 = r3.c
            r5.computeCurrentVelocity(r0, r2)
            android.view.VelocityTracker r5 = r3.X
            int r0 = r3.Y
            float r5 = r5.getYVelocity(r0)
        L4d:
            boolean r5 = r3.D(r4, r5)
            if (r5 == 0) goto L55
            r1 = 5
            goto Laf
        L55:
            int r5 = r3.O
            r0 = 4
            if (r5 != 0) goto L93
            int r5 = r4.getTop()
            boolean r2 = r3.b
            if (r2 == 0) goto L74
            int r6 = r3.D
            int r6 = r5 - r6
            int r6 = java.lang.Math.abs(r6)
            int r2 = r3.G
            int r5 = r5 - r2
            int r5 = java.lang.Math.abs(r5)
            if (r6 >= r5) goto L97
            goto Laf
        L74:
            int r2 = r3.E
            if (r5 >= r2) goto L83
            int r0 = r3.G
            int r0 = r5 - r0
            int r0 = java.lang.Math.abs(r0)
            if (r5 >= r0) goto Lae
            goto Laf
        L83:
            int r1 = r5 - r2
            int r1 = java.lang.Math.abs(r1)
            int r2 = r3.G
            int r5 = r5 - r2
            int r5 = java.lang.Math.abs(r5)
            if (r1 >= r5) goto L97
            goto Lae
        L93:
            boolean r5 = r3.b
            if (r5 == 0) goto L99
        L97:
            r1 = r0
            goto Laf
        L99:
            int r5 = r4.getTop()
            int r1 = r3.E
            int r1 = r5 - r1
            int r1 = java.lang.Math.abs(r1)
            int r2 = r3.G
            int r5 = r5 - r2
            int r5 = java.lang.Math.abs(r5)
            if (r1 >= r5) goto L97
        Lae:
            r1 = r6
        Laf:
            r5 = 0
            r3.E(r4, r1, r5)
            r3.P = r5
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.p(android.view.View, android.view.View, int):void");
    }

    @Override // o.W4
    public final boolean q(View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i = this.L;
        if (i == 1 && actionMasked == 0) {
            return true;
        }
        Fh fh = this.M;
        if (fh != null && (this.K || i == 1)) {
            fh.j(motionEvent);
        }
        if (actionMasked == 0) {
            this.Y = -1;
            this.Z = -1;
            VelocityTracker velocityTracker = this.X;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.X = null;
            }
        }
        if (this.X == null) {
            this.X = VelocityTracker.obtain();
        }
        this.X.addMovement(motionEvent);
        if (this.M != null && ((this.K || this.L == 1) && actionMasked == 2 && !this.N)) {
            float abs = Math.abs(this.Z - motionEvent.getY());
            Fh fh2 = this.M;
            if (abs > fh2.b) {
                fh2.b(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.N;
    }

    public final void r() {
        int t = t();
        if (this.b) {
            this.G = Math.max(this.T - t, this.D);
        } else {
            this.G = this.T - t;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float s() {
        /*
            r5 = this;
            o.eb r0 = r5.i
            r1 = 0
            if (r0 == 0) goto L79
            java.lang.ref.WeakReference r0 = r5.U
            if (r0 == 0) goto L79
            java.lang.Object r0 = r0.get()
            if (r0 == 0) goto L79
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 31
            if (r0 < r2) goto L79
            java.lang.ref.WeakReference r0 = r5.U
            java.lang.Object r0 = r0.get()
            android.view.View r0 = (android.view.View) r0
            boolean r2 = r5.z()
            if (r2 == 0) goto L79
            android.view.WindowInsets r0 = r0.getRootWindowInsets()
            if (r0 == 0) goto L79
            o.eb r2 = r5.i
            o.db r3 = r2.a
            o.Ae r3 = r3.a
            o.d5 r3 = r3.e
            android.graphics.RectF r2 = r2.g()
            float r2 = r3.a(r2)
            android.view.RoundedCorner r3 = o.AbstractC0143g3.h(r0)
            if (r3 == 0) goto L4e
            int r3 = o.AbstractC0143g3.c(r3)
            float r3 = (float) r3
            int r4 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r4 <= 0) goto L4e
            int r4 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r4 <= 0) goto L4e
            float r3 = r3 / r2
            goto L4f
        L4e:
            r3 = r1
        L4f:
            o.eb r2 = r5.i
            o.db r4 = r2.a
            o.Ae r4 = r4.a
            o.d5 r4 = r4.f65f
            android.graphics.RectF r2 = r2.g()
            float r2 = r4.a(r2)
            android.view.RoundedCorner r0 = o.AbstractC0143g3.m(r0)
            if (r0 == 0) goto L74
            int r0 = o.AbstractC0143g3.c(r0)
            float r0 = (float) r0
            int r4 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r4 <= 0) goto L74
            int r4 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r4 <= 0) goto L74
            float r1 = r0 / r2
        L74:
            float r0 = java.lang.Math.max(r3, r1)
            return r0
        L79:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.s():float");
    }

    public final int t() {
        int i;
        if (this.f47f) {
            return Math.min(Math.max(this.g, this.T - ((this.S * 9) / 16)), this.R) + this.v;
        }
        if (!this.n && !this.f48o && (i = this.m) > 0) {
            return Math.max(this.e, i + this.h);
        }
        return this.e + this.v;
    }

    public final void u(int i) {
        if (((View) this.U.get()) != null) {
            ArrayList arrayList = this.W;
            if (!arrayList.isEmpty()) {
                int i2 = this.G;
                if (i <= i2 && i2 != x()) {
                    x();
                }
                if (arrayList.size() > 0) {
                    arrayList.get(0).getClass();
                    throw new ClassCastException();
                }
            }
        }
    }

    public final int x() {
        int i;
        if (this.b) {
            return this.D;
        }
        int i2 = this.C;
        if (this.r) {
            i = 0;
        } else {
            i = this.w;
        }
        return Math.max(i2, i);
    }

    public final int y(int i) {
        if (i != 3) {
            if (i != 4) {
                if (i != 5) {
                    if (i == 6) {
                        return this.E;
                    }
                    throw new IllegalArgumentException(AbstractC0214jf.a(i, "Invalid state to get top offset: "));
                }
                return this.T;
            }
            return this.G;
        }
        return x();
    }

    public final boolean z() {
        WeakReference weakReference = this.U;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        int[] iArr = new int[2];
        ((View) this.U.get()).getLocationOnScreen(iArr);
        if (iArr[1] != 0) {
            return false;
        }
        return true;
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i;
        int i2 = 1;
        this.a = 0;
        this.b = true;
        this.k = -1;
        this.l = -1;
        this.A = new C0222k3(this);
        this.F = 0.5f;
        this.H = -1.0f;
        this.K = true;
        this.L = 4;
        this.Q = 0.1f;
        this.W = new ArrayList();
        this.Z = -1;
        this.c0 = new SparseIntArray();
        this.d0 = new C0183i3(this, 0);
        this.h = context.getResources().getDimensionPixelSize(2131100354);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0133fd.a);
        if (obtainStyledAttributes.hasValue(3)) {
            this.j = Ha.F(context, obtainStyledAttributes, 3);
        }
        if (obtainStyledAttributes.hasValue(21)) {
            this.y = Ae.b(context, attributeSet, 2130903165, 2131690294).a();
        }
        Ae ae = this.y;
        if (ae != null) {
            C0111eb c0111eb = new C0111eb(ae);
            this.i = c0111eb;
            c0111eb.i(context);
            ColorStateList colorStateList = this.j;
            if (colorStateList != null) {
                this.i.k(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
                this.i.setTint(typedValue.data);
            }
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(s(), 1.0f);
        this.B = ofFloat;
        ofFloat.setDuration(500L);
        this.B.addUpdateListener(new S2(i2, this));
        this.H = obtainStyledAttributes.getDimension(2, -1.0f);
        if (obtainStyledAttributes.hasValue(0)) {
            this.k = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        }
        if (obtainStyledAttributes.hasValue(1)) {
            this.l = obtainStyledAttributes.getDimensionPixelSize(1, -1);
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(9);
        if (peekValue != null && (i = peekValue.data) == -1) {
            A(i);
        } else {
            A(obtainStyledAttributes.getDimensionPixelSize(9, -1));
        }
        boolean z = obtainStyledAttributes.getBoolean(8, false);
        if (this.I != z) {
            this.I = z;
            if (!z && this.L == 5) {
                B(4);
            }
            F();
        }
        this.n = obtainStyledAttributes.getBoolean(13, false);
        boolean z2 = obtainStyledAttributes.getBoolean(6, true);
        if (this.b != z2) {
            this.b = z2;
            if (this.U != null) {
                r();
            }
            C((this.b && this.L == 6) ? 3 : this.L);
            G(this.L, true);
            F();
        }
        this.J = obtainStyledAttributes.getBoolean(12, false);
        this.K = obtainStyledAttributes.getBoolean(4, true);
        this.a = obtainStyledAttributes.getInt(10, 0);
        float f2 = obtainStyledAttributes.getFloat(7, 0.5f);
        if (f2 > 0.0f && f2 < 1.0f) {
            this.F = f2;
            if (this.U != null) {
                this.E = (int) ((1.0f - f2) * this.T);
            }
            TypedValue peekValue2 = obtainStyledAttributes.peekValue(5);
            if (peekValue2 != null && peekValue2.type == 16) {
                int i3 = peekValue2.data;
                if (i3 >= 0) {
                    this.C = i3;
                    G(this.L, true);
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            } else {
                int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(5, 0);
                if (dimensionPixelOffset >= 0) {
                    this.C = dimensionPixelOffset;
                    G(this.L, true);
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            }
            this.d = obtainStyledAttributes.getInt(11, 500);
            this.f48o = obtainStyledAttributes.getBoolean(17, false);
            this.p = obtainStyledAttributes.getBoolean(18, false);
            this.q = obtainStyledAttributes.getBoolean(19, false);
            this.r = obtainStyledAttributes.getBoolean(20, true);
            this.s = obtainStyledAttributes.getBoolean(14, false);
            this.t = obtainStyledAttributes.getBoolean(15, false);
            this.u = obtainStyledAttributes.getBoolean(16, false);
            this.x = obtainStyledAttributes.getBoolean(23, true);
            obtainStyledAttributes.recycle();
            this.c = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
            return;
        }
        throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
    }
}
