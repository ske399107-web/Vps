package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.WeakHashMap;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* renamed from: o.ud, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0431ud {
    public C0380s2 a;
    public RecyclerView b;
    public final H1 c;
    public final H1 d;
    public C0030aa e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f284f;
    public boolean g;
    public final boolean h;
    public final boolean i;
    public int j;
    public boolean k;
    public int l;
    public int m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f285o;

    public AbstractC0431ud() {
        C0391sd c0391sd = new C0391sd(this, 0);
        C0391sd c0391sd2 = new C0391sd(this, 1);
        this.c = new H1(c0391sd);
        this.d = new H1(c0391sd2);
        this.f284f = false;
        this.g = false;
        this.h = true;
        this.i = true;
    }

    public static int A(View view) {
        Rect rect = ((C0451vd) view.getLayoutParams()).b;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    public static int H(View view) {
        return ((C0451vd) view.getLayoutParams()).a.b();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, o.td] */
    public static C0411td I(Context context, AttributeSet attributeSet, int i, int i2) {
        ?? obj = new Object();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0113ed.a, i, i2);
        obj.a = obtainStyledAttributes.getInt(0, 1);
        obj.b = obtainStyledAttributes.getInt(10, 1);
        obj.c = obtainStyledAttributes.getBoolean(9, false);
        obj.d = obtainStyledAttributes.getBoolean(11, false);
        obtainStyledAttributes.recycle();
        return obj;
    }

    public static boolean M(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (i3 > 0 && i != i3) {
            return false;
        }
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                return true;
            }
            if (mode != 1073741824 || size != i) {
                return false;
            }
            return true;
        }
        if (size < i) {
            return false;
        }
        return true;
    }

    public static void N(View view, int i, int i2, int i3, int i4) {
        C0451vd c0451vd = (C0451vd) view.getLayoutParams();
        Rect rect = c0451vd.b;
        view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) c0451vd).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) c0451vd).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) c0451vd).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) c0451vd).bottomMargin);
    }

    public static int g(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 1073741824) {
                return Math.max(i2, i3);
            }
            return size;
        }
        return Math.min(size, Math.max(i2, i3));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0018, code lost:
    
        if (r6 == 1073741824) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int w(boolean r4, int r5, int r6, int r7, int r8) {
        /*
            int r5 = r5 - r7
            r7 = 0
            int r5 = java.lang.Math.max(r7, r5)
            r0 = -2
            r1 = -1
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = 1073741824(0x40000000, float:2.0)
            if (r4 == 0) goto L1d
            if (r8 < 0) goto L12
        L10:
            r6 = r3
            goto L30
        L12:
            if (r8 != r1) goto L1a
            if (r6 == r2) goto L22
            if (r6 == 0) goto L1a
            if (r6 == r3) goto L22
        L1a:
            r6 = r7
            r8 = r6
            goto L30
        L1d:
            if (r8 < 0) goto L20
            goto L10
        L20:
            if (r8 != r1) goto L24
        L22:
            r8 = r5
            goto L30
        L24:
            if (r8 != r0) goto L1a
            if (r6 == r2) goto L2e
            if (r6 != r3) goto L2b
            goto L2e
        L2b:
            r8 = r5
            r6 = r7
            goto L30
        L2e:
            r8 = r5
            r6 = r2
        L30:
            int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r8, r6)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: o.AbstractC0431ud.w(boolean, int, int, int, int):int");
    }

    public static int z(View view) {
        Rect rect = ((C0451vd) view.getLayoutParams()).b;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    public final int B() {
        AbstractC0272md abstractC0272md;
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            abstractC0272md = recyclerView.getAdapter();
        } else {
            abstractC0272md = null;
        }
        if (abstractC0272md != null) {
            return abstractC0272md.a();
        }
        return 0;
    }

    public final int C() {
        RecyclerView recyclerView = this.b;
        WeakHashMap weakHashMap = Dh.a;
        return recyclerView.getLayoutDirection();
    }

    public final int D() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingBottom();
        }
        return 0;
    }

    public final int E() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }

    public final int F() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingRight();
        }
        return 0;
    }

    public final int G() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    public int J(Ad ad, Fd fd) {
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || recyclerView.k == null || !e()) {
            return 1;
        }
        return this.b.k.a();
    }

    public final void K(View view, Rect rect) {
        Matrix matrix;
        Rect rect2 = ((C0451vd) view.getLayoutParams()).b;
        rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        if (this.b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.b.j;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public abstract boolean L();

    public void O(int i) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            int m = recyclerView.e.m();
            for (int i2 = 0; i2 < m; i2++) {
                recyclerView.e.l(i2).offsetLeftAndRight(i);
            }
        }
    }

    public void P(int i) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            int m = recyclerView.e.m();
            for (int i2 = 0; i2 < m; i2++) {
                recyclerView.e.l(i2).offsetTopAndBottom(i);
            }
        }
    }

    public void Q(RecyclerView recyclerView) {
    }

    public abstract void R(RecyclerView recyclerView);

    public abstract View S(View view, int i, Ad ad, Fd fd);

    public void T(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.b;
        Ad ad = recyclerView.b;
        Fd fd = recyclerView.c0;
        if (recyclerView != null && accessibilityEvent != null) {
            boolean z = true;
            if (!recyclerView.canScrollVertically(1) && !this.b.canScrollVertically(-1) && !this.b.canScrollHorizontally(-1) && !this.b.canScrollHorizontally(1)) {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            AbstractC0272md abstractC0272md = this.b.k;
            if (abstractC0272md != null) {
                accessibilityEvent.setItemCount(abstractC0272md.a());
            }
        }
    }

    public final void U(View view, D d) {
        Id I = RecyclerView.I(view);
        if (I != null && !I.i() && !((ArrayList) this.a.d).contains(I.a)) {
            RecyclerView recyclerView = this.b;
            V(recyclerView.b, recyclerView.c0, view, d);
        }
    }

    public void V(Ad ad, Fd fd, View view, D d) {
        int i;
        int i2;
        if (e()) {
            i = H(view);
        } else {
            i = 0;
        }
        if (d()) {
            i2 = H(view);
        } else {
            i2 = 0;
        }
        d.j(C.B(false, i, 1, i2, 1));
    }

    public void W(int i, int i2) {
    }

    public void X() {
    }

    public void Y(int i, int i2) {
    }

    public void Z(int i, int i2) {
    }

    public void a0(int i, int i2) {
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(android.view.View r9, int r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.AbstractC0431ud.b(android.view.View, int, boolean):void");
    }

    public abstract void b0(Ad ad, Fd fd);

    public void c(String str) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            recyclerView.i(str);
        }
    }

    public abstract void c0(Fd fd);

    public abstract boolean d();

    public void d0(Parcelable parcelable) {
    }

    public abstract boolean e();

    public Parcelable e0() {
        return null;
    }

    public boolean f(C0451vd c0451vd) {
        if (c0451vd != null) {
            return true;
        }
        return false;
    }

    public void f0(int i) {
    }

    public final void g0(Ad ad) {
        for (int v = v() - 1; v >= 0; v--) {
            if (!RecyclerView.I(u(v)).p()) {
                View u = u(v);
                j0(v);
                ad.f(u);
            }
        }
    }

    public void h(int i, int i2, Fd fd, R8 r8) {
    }

    public final void h0(Ad ad) {
        ArrayList arrayList;
        int size = ad.a.size();
        int i = size - 1;
        while (true) {
            arrayList = ad.a;
            if (i < 0) {
                break;
            }
            View view = ((Id) arrayList.get(i)).a;
            Id I = RecyclerView.I(view);
            if (!I.p()) {
                I.o(false);
                if (I.k()) {
                    this.b.removeDetachedView(view, false);
                }
                AbstractC0352qd abstractC0352qd = this.b.H;
                if (abstractC0352qd != null) {
                    abstractC0352qd.d(I);
                }
                I.o(true);
                Id I2 = RecyclerView.I(view);
                I2.n = null;
                I2.f108o = false;
                I2.j &= -33;
                ad.g(I2);
            }
            i--;
        }
        arrayList.clear();
        ArrayList arrayList2 = ad.b;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        if (size > 0) {
            this.b.invalidate();
        }
    }

    public void i(int i, R8 r8) {
    }

    public final void i0(View view, Ad ad) {
        C0380s2 c0380s2 = this.a;
        C0252ld c0252ld = (C0252ld) c0380s2.b;
        int indexOfChild = c0252ld.a.indexOfChild(view);
        if (indexOfChild >= 0) {
            if (((L3) c0380s2.c).f(indexOfChild)) {
                c0380s2.C(view);
            }
            c0252ld.h(indexOfChild);
        }
        ad.f(view);
    }

    public abstract int j(Fd fd);

    public final void j0(int i) {
        if (u(i) != null) {
            C0380s2 c0380s2 = this.a;
            int s = c0380s2.s(i);
            C0252ld c0252ld = (C0252ld) c0380s2.b;
            View childAt = c0252ld.a.getChildAt(s);
            if (childAt != null) {
                if (((L3) c0380s2.c).f(s)) {
                    c0380s2.C(childAt);
                }
                c0252ld.h(s);
            }
        }
    }

    public abstract int k(Fd fd);

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00ab, code lost:
    
        if ((r5.bottom - r10) > r2) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean k0(androidx.recyclerview.widget.RecyclerView r9, android.view.View r10, android.graphics.Rect r11, boolean r12, boolean r13) {
        /*
            r8 = this;
            int r0 = r8.E()
            int r1 = r8.G()
            int r2 = r8.n
            int r3 = r8.F()
            int r2 = r2 - r3
            int r3 = r8.f285o
            int r4 = r8.D()
            int r3 = r3 - r4
            int r4 = r10.getLeft()
            int r5 = r11.left
            int r4 = r4 + r5
            int r5 = r10.getScrollX()
            int r4 = r4 - r5
            int r5 = r10.getTop()
            int r6 = r11.top
            int r5 = r5 + r6
            int r10 = r10.getScrollY()
            int r5 = r5 - r10
            int r10 = r11.width()
            int r10 = r10 + r4
            int r11 = r11.height()
            int r11 = r11 + r5
            int r4 = r4 - r0
            r0 = 0
            int r6 = java.lang.Math.min(r0, r4)
            int r5 = r5 - r1
            int r1 = java.lang.Math.min(r0, r5)
            int r10 = r10 - r2
            int r2 = java.lang.Math.max(r0, r10)
            int r11 = r11 - r3
            int r11 = java.lang.Math.max(r0, r11)
            int r3 = r8.C()
            r7 = 1
            if (r3 != r7) goto L5c
            if (r2 == 0) goto L57
            goto L64
        L57:
            int r2 = java.lang.Math.max(r6, r10)
            goto L64
        L5c:
            if (r6 == 0) goto L5f
            goto L63
        L5f:
            int r6 = java.lang.Math.min(r4, r2)
        L63:
            r2 = r6
        L64:
            if (r1 == 0) goto L67
            goto L6b
        L67:
            int r1 = java.lang.Math.min(r5, r11)
        L6b:
            int[] r10 = new int[]{r2, r1}
            r11 = r10[r0]
            r10 = r10[r7]
            if (r13 == 0) goto Lae
            android.view.View r13 = r9.getFocusedChild()
            if (r13 != 0) goto L7c
            goto Lb3
        L7c:
            int r1 = r8.E()
            int r2 = r8.G()
            int r3 = r8.n
            int r4 = r8.F()
            int r3 = r3 - r4
            int r4 = r8.f285o
            int r5 = r8.D()
            int r4 = r4 - r5
            androidx.recyclerview.widget.RecyclerView r5 = r8.b
            android.graphics.Rect r5 = r5.h
            r8.y(r13, r5)
            int r13 = r5.left
            int r13 = r13 - r11
            if (r13 >= r3) goto Lb3
            int r13 = r5.right
            int r13 = r13 - r11
            if (r13 <= r1) goto Lb3
            int r13 = r5.top
            int r13 = r13 - r10
            if (r13 >= r4) goto Lb3
            int r13 = r5.bottom
            int r13 = r13 - r10
            if (r13 > r2) goto Lae
            goto Lb3
        Lae:
            if (r11 != 0) goto Lb4
            if (r10 == 0) goto Lb3
            goto Lb4
        Lb3:
            return r0
        Lb4:
            if (r12 == 0) goto Lba
            r9.scrollBy(r11, r10)
            goto Lbd
        Lba:
            r9.Z(r11, r10, r0)
        Lbd:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: o.AbstractC0431ud.k0(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
    }

    public abstract int l(Fd fd);

    public final void l0() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    public abstract int m(Fd fd);

    public abstract int m0(int i, Ad ad, Fd fd);

    public abstract int n(Fd fd);

    public abstract void n0(int i);

    public abstract int o(Fd fd);

    public abstract int o0(int i, Ad ad, Fd fd);

    public final void p(Ad ad) {
        for (int v = v() - 1; v >= 0; v--) {
            View u = u(v);
            Id I = RecyclerView.I(u);
            if (!I.p()) {
                if (I.g() && !I.i() && !this.b.k.b) {
                    j0(v);
                    ad.g(I);
                } else {
                    u(v);
                    this.a.i(v);
                    ad.h(u);
                    this.b.f41f.K(I);
                }
            }
        }
    }

    public final void p0(RecyclerView recyclerView) {
        q0(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
    }

    public View q(int i) {
        int v = v();
        for (int i2 = 0; i2 < v; i2++) {
            View u = u(i2);
            Id I = RecyclerView.I(u);
            if (I != null && I.b() == i && !I.p() && (this.b.c0.g || !I.i())) {
                return u;
            }
        }
        return null;
    }

    public final void q0(int i, int i2) {
        this.n = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        this.l = mode;
        if (mode == 0) {
            int[] iArr = RecyclerView.s0;
        }
        this.f285o = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        this.m = mode2;
        if (mode2 == 0) {
            int[] iArr2 = RecyclerView.s0;
        }
    }

    public abstract C0451vd r();

    public void r0(Rect rect, int i, int i2) {
        int F = F() + E() + rect.width();
        int D = D() + G() + rect.height();
        RecyclerView recyclerView = this.b;
        WeakHashMap weakHashMap = Dh.a;
        this.b.setMeasuredDimension(g(i, F, recyclerView.getMinimumWidth()), g(i2, D, this.b.getMinimumHeight()));
    }

    public C0451vd s(Context context, AttributeSet attributeSet) {
        return new C0451vd(context, attributeSet);
    }

    public final void s0(int i, int i2) {
        int v = v();
        if (v == 0) {
            this.b.n(i, i2);
            return;
        }
        int i3 = PKIFailureInfo.systemUnavail;
        int i4 = Integer.MAX_VALUE;
        int i5 = Integer.MIN_VALUE;
        int i6 = Integer.MAX_VALUE;
        for (int i7 = 0; i7 < v; i7++) {
            View u = u(i7);
            Rect rect = this.b.h;
            y(u, rect);
            int i8 = rect.left;
            if (i8 < i6) {
                i6 = i8;
            }
            int i9 = rect.right;
            if (i9 > i3) {
                i3 = i9;
            }
            int i10 = rect.top;
            if (i10 < i4) {
                i4 = i10;
            }
            int i11 = rect.bottom;
            if (i11 > i5) {
                i5 = i11;
            }
        }
        this.b.h.set(i6, i4, i3, i5);
        r0(this.b.h, i, i2);
    }

    public C0451vd t(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof C0451vd) {
            return new C0451vd((C0451vd) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new C0451vd((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new C0451vd(layoutParams);
    }

    public final void t0(RecyclerView recyclerView) {
        if (recyclerView == null) {
            this.b = null;
            this.a = null;
            this.n = 0;
            this.f285o = 0;
        } else {
            this.b = recyclerView;
            this.a = recyclerView.e;
            this.n = recyclerView.getWidth();
            this.f285o = recyclerView.getHeight();
        }
        this.l = 1073741824;
        this.m = 1073741824;
    }

    public final View u(int i) {
        C0380s2 c0380s2 = this.a;
        if (c0380s2 != null) {
            return c0380s2.l(i);
        }
        return null;
    }

    public final boolean u0(View view, int i, int i2, C0451vd c0451vd) {
        if (!view.isLayoutRequested() && this.h && M(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) c0451vd).width) && M(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) c0451vd).height)) {
            return false;
        }
        return true;
    }

    public final int v() {
        C0380s2 c0380s2 = this.a;
        if (c0380s2 != null) {
            return c0380s2.m();
        }
        return 0;
    }

    public boolean v0() {
        return false;
    }

    public final boolean w0(View view, int i, int i2, C0451vd c0451vd) {
        if (this.h && M(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) c0451vd).width) && M(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) c0451vd).height)) {
            return false;
        }
        return true;
    }

    public int x(Ad ad, Fd fd) {
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || recyclerView.k == null || !d()) {
            return 1;
        }
        return this.b.k.a();
    }

    public abstract void x0(RecyclerView recyclerView, int i);

    public void y(View view, Rect rect) {
        int[] iArr = RecyclerView.s0;
        C0451vd c0451vd = (C0451vd) view.getLayoutParams();
        Rect rect2 = c0451vd.b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) c0451vd).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) c0451vd).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) c0451vd).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) c0451vd).bottomMargin);
    }

    public final void y0(C0030aa c0030aa) {
        C0030aa c0030aa2 = this.e;
        if (c0030aa2 != null && c0030aa != c0030aa2 && c0030aa2.e) {
            c0030aa2.i();
        }
        this.e = c0030aa;
        RecyclerView recyclerView = this.b;
        Hd hd = recyclerView.W;
        hd.g.removeCallbacks(hd);
        hd.c.abortAnimation();
        if (c0030aa.h) {
            Log.w("RecyclerView", "An instance of " + c0030aa.getClass().getSimpleName() + " was started more than once. Each instance of" + c0030aa.getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
        }
        c0030aa.b = recyclerView;
        c0030aa.c = this;
        int i = c0030aa.a;
        if (i != -1) {
            recyclerView.c0.a = i;
            c0030aa.e = true;
            c0030aa.d = true;
            c0030aa.f177f = recyclerView.l.q(i);
            c0030aa.b.W.a();
            c0030aa.h = true;
            return;
        }
        throw new IllegalArgumentException("Invalid target position");
    }

    public boolean z0() {
        return false;
    }
}
