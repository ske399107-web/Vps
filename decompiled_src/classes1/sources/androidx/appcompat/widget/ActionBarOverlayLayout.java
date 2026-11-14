package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import java.util.WeakHashMap;
import o.AbstractC0415th;
import o.AbstractC0455vh;
import o.Ai;
import o.C0080d0;
import o.C0096dg;
import o.C0195ig;
import o.C0396si;
import o.C0407t9;
import o.Ci;
import o.Dh;
import o.Di;
import o.Ei;
import o.InterfaceC0363r5;
import o.InterfaceC0383s5;
import o.InterfaceC0527zb;
import o.Ki;
import o.L1;
import o.MenuC0230kb;
import o.Mi;
import o.Q;
import o.Qh;
import o.S;
import o.T;
import o.U;
import o.Ub;
import o.V;
import o.Vb;
import o.Wb;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

@SuppressLint({"UnknownNullness"})
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements InterfaceC0363r5, Ub, Vb {
    public static final int[] C = {2130903045, R.attr.windowContentOverlay};
    public static final Mi D;
    public static final Rect E;
    public final Wb A;
    public final V B;
    public int a;
    public int b;
    public ContentFrameLayout c;
    public ActionBarContainer d;
    public InterfaceC0383s5 e;

    /* renamed from: f, reason: collision with root package name */
    public Drawable f25f;
    public boolean g;
    public boolean h;
    public boolean i;
    public boolean j;
    public int k;
    public int l;
    public final Rect m;
    public final Rect n;

    /* renamed from: o, reason: collision with root package name */
    public final Rect f26o;
    public final Rect p;
    public Mi q;
    public Mi r;
    public Mi s;
    public Mi t;
    public T u;
    public OverScroller v;
    public ViewPropertyAnimator w;
    public final Q x;
    public final S y;
    public final S z;

    static {
        Ei ai;
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            ai = new Di();
        } else if (i >= 29) {
            ai = new Ci();
        } else {
            ai = new Ai();
        }
        ai.g(C0407t9.b(0, 1, 0, 1));
        D = ai.b();
        E = new Rect();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v14, types: [o.Wb, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v15, types: [o.V, android.view.View] */
    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
        this.m = new Rect();
        this.n = new Rect();
        this.f26o = new Rect();
        this.p = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        Mi mi = Mi.b;
        this.q = mi;
        this.r = mi;
        this.s = mi;
        this.t = mi;
        this.x = new Q(0, this);
        this.y = new S(this, 0);
        this.z = new S(this, 1);
        i(context);
        this.A = new Object();
        ?? view = new View(context);
        view.setWillNotDraw(true);
        this.B = view;
        addView(view);
    }

    public static boolean g(View view, Rect rect, boolean z) {
        boolean z2;
        U u = (U) view.getLayoutParams();
        int i = ((ViewGroup.MarginLayoutParams) u).leftMargin;
        int i2 = rect.left;
        if (i != i2) {
            ((ViewGroup.MarginLayoutParams) u).leftMargin = i2;
            z2 = true;
        } else {
            z2 = false;
        }
        int i3 = ((ViewGroup.MarginLayoutParams) u).topMargin;
        int i4 = rect.top;
        if (i3 != i4) {
            ((ViewGroup.MarginLayoutParams) u).topMargin = i4;
            z2 = true;
        }
        int i5 = ((ViewGroup.MarginLayoutParams) u).rightMargin;
        int i6 = rect.right;
        if (i5 != i6) {
            ((ViewGroup.MarginLayoutParams) u).rightMargin = i6;
            z2 = true;
        }
        if (z) {
            int i7 = ((ViewGroup.MarginLayoutParams) u).bottomMargin;
            int i8 = rect.bottom;
            if (i7 != i8) {
                ((ViewGroup.MarginLayoutParams) u).bottomMargin = i8;
                return true;
            }
        }
        return z2;
    }

    @Override // o.Ub
    public final void a(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // o.Ub
    public final void b(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // o.Ub
    public final void c(View view, int i, int i2, int[] iArr, int i3) {
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof U;
    }

    @Override // o.Vb
    public final void d(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        e(view, i, i2, i3, i4, i5);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        super.draw(canvas);
        if (this.f25f != null) {
            if (this.d.getVisibility() == 0) {
                i = (int) (this.d.getTranslationY() + this.d.getBottom() + 0.5f);
            } else {
                i = 0;
            }
            this.f25f.setBounds(0, i, getWidth(), this.f25f.getIntrinsicHeight() + i);
            this.f25f.draw(canvas);
        }
    }

    @Override // o.Ub
    public final void e(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // o.Ub
    public final boolean f(View view, View view2, int i, int i2) {
        if (i2 == 0 && onStartNestedScroll(view, view2, i)) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.d;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        Wb wb = this.A;
        return wb.b | wb.a;
    }

    public CharSequence getTitle() {
        k();
        return ((C0195ig) this.e).a.getTitle();
    }

    public final void h() {
        removeCallbacks(this.y);
        removeCallbacks(this.z);
        ViewPropertyAnimator viewPropertyAnimator = this.w;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public final void i(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(C);
        boolean z = false;
        this.a = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f25f = drawable;
        if (drawable == null) {
            z = true;
        }
        setWillNotDraw(z);
        obtainStyledAttributes.recycle();
        this.v = new OverScroller(context);
    }

    public final void j(int i) {
        k();
        if (i != 2) {
            if (i != 5) {
                if (i == 109) {
                    setOverlayMode(true);
                    return;
                }
                return;
            } else {
                ((C0195ig) this.e).getClass();
                Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
                return;
            }
        }
        ((C0195ig) this.e).getClass();
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    public final void k() {
        InterfaceC0383s5 wrapper;
        if (this.c == null) {
            this.c = (ContentFrameLayout) findViewById(2131230773);
            this.d = (ActionBarContainer) findViewById(2131230774);
            KeyEvent.Callback findViewById = findViewById(2131230772);
            if (findViewById instanceof InterfaceC0383s5) {
                wrapper = (InterfaceC0383s5) findViewById;
            } else if (findViewById instanceof Toolbar) {
                wrapper = ((Toolbar) findViewById).getWrapper();
            } else {
                throw new IllegalStateException("Can't make a decor toolbar out of ".concat(findViewById.getClass().getSimpleName()));
            }
            this.e = wrapper;
        }
    }

    public final void l(MenuC0230kb menuC0230kb, InterfaceC0527zb interfaceC0527zb) {
        k();
        C0195ig c0195ig = (C0195ig) this.e;
        C0080d0 c0080d0 = c0195ig.m;
        Toolbar toolbar = c0195ig.a;
        if (c0080d0 == null) {
            c0195ig.m = new C0080d0(toolbar.getContext());
        }
        C0080d0 c0080d02 = c0195ig.m;
        c0080d02.e = interfaceC0527zb;
        if (menuC0230kb != null || toolbar.a != null) {
            toolbar.f();
            MenuC0230kb menuC0230kb2 = toolbar.a.p;
            if (menuC0230kb2 != menuC0230kb) {
                if (menuC0230kb2 != null) {
                    menuC0230kb2.r(toolbar.K);
                    menuC0230kb2.r(toolbar.L);
                }
                if (toolbar.L == null) {
                    toolbar.L = new C0096dg(toolbar);
                }
                c0080d02.q = true;
                if (menuC0230kb != null) {
                    menuC0230kb.b(c0080d02, toolbar.j);
                    menuC0230kb.b(toolbar.L, toolbar.j);
                } else {
                    c0080d02.d(toolbar.j, null);
                    toolbar.L.d(toolbar.j, null);
                    c0080d02.g();
                    toolbar.L.g();
                }
                toolbar.a.setPopupTheme(toolbar.k);
                toolbar.a.setPresenter(c0080d02);
                toolbar.K = c0080d02;
                toolbar.u();
            }
        }
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        k();
        Mi g = Mi.g(this, windowInsets);
        boolean g2 = g(this.d, new Rect(g.b(), g.d(), g.c(), g.a()), false);
        WeakHashMap weakHashMap = Dh.a;
        Rect rect = this.m;
        AbstractC0455vh.b(this, g, rect);
        int i = rect.left;
        int i2 = rect.top;
        int i3 = rect.right;
        int i4 = rect.bottom;
        Ki ki = g.a;
        Mi l = ki.l(i, i2, i3, i4);
        this.q = l;
        boolean z = true;
        if (!this.r.equals(l)) {
            this.r = this.q;
            g2 = true;
        }
        Rect rect2 = this.n;
        if (!rect2.equals(rect)) {
            rect2.set(rect);
        } else {
            z = g2;
        }
        if (z) {
            requestLayout();
        }
        return ki.a().a.c().a.b().f();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        i(getContext());
        WeakHashMap weakHashMap = Dh.a;
        AbstractC0415th.c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                U u = (U) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) u).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) u).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00fc  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r13, int r14) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f2, float f3, boolean z) {
        if (this.i && z) {
            this.v.fling(0, 0, 0, (int) f3, 0, 0, PKIFailureInfo.systemUnavail, Integer.MAX_VALUE);
            if (this.v.getFinalY() > this.d.getHeight()) {
                h();
                this.z.run();
            } else {
                h();
                this.y.run();
            }
            this.j = true;
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.k + i2;
        this.k = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        C0396si c0396si;
        Qh qh;
        this.A.a = i;
        this.k = getActionBarHideOffset();
        h();
        T t = this.u;
        if (t != null && (qh = (c0396si = (C0396si) t).m0) != null) {
            qh.a();
            c0396si.m0 = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) != 0 && this.d.getVisibility() == 0) {
            return this.i;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (this.i && !this.j) {
            if (this.k <= this.d.getHeight()) {
                h();
                postDelayed(this.y, 600L);
            } else {
                h();
                postDelayed(this.z, 600L);
            }
        }
    }

    @Override // android.view.View
    public final void onWindowSystemUiVisibilityChanged(int i) {
        boolean z;
        boolean z2;
        super.onWindowSystemUiVisibilityChanged(i);
        k();
        int i2 = this.l ^ i;
        this.l = i;
        if ((i & 4) == 0) {
            z = true;
        } else {
            z = false;
        }
        if ((i & 256) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        T t = this.u;
        if (t != null) {
            C0396si c0396si = (C0396si) t;
            c0396si.i0 = !z2;
            if (!z && z2) {
                if (!c0396si.j0) {
                    c0396si.j0 = true;
                    c0396si.v0(true);
                }
            } else if (c0396si.j0) {
                c0396si.j0 = false;
                c0396si.v0(true);
            }
        }
        if ((i2 & 256) != 0 && this.u != null) {
            WeakHashMap weakHashMap = Dh.a;
            AbstractC0415th.c(this);
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.b = i;
        T t = this.u;
        if (t != null) {
            ((C0396si) t).h0 = i;
        }
    }

    public void setActionBarHideOffset(int i) {
        h();
        this.d.setTranslationY(-Math.max(0, Math.min(i, this.d.getHeight())));
    }

    public void setActionBarVisibilityCallback(T t) {
        this.u = t;
        if (getWindowToken() != null) {
            ((C0396si) this.u).h0 = this.b;
            int i = this.l;
            if (i != 0) {
                onWindowSystemUiVisibilityChanged(i);
                WeakHashMap weakHashMap = Dh.a;
                AbstractC0415th.c(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.h = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.i) {
            this.i = z;
            if (!z) {
                h();
                setActionBarHideOffset(0);
            }
        }
    }

    public void setIcon(int i) {
        k();
        C0195ig c0195ig = (C0195ig) this.e;
        c0195ig.d = i != 0 ? L1.z(c0195ig.a.getContext(), i) : null;
        c0195ig.c();
    }

    public void setLogo(int i) {
        Drawable drawable;
        k();
        C0195ig c0195ig = (C0195ig) this.e;
        if (i != 0) {
            drawable = L1.z(c0195ig.a.getContext(), i);
        } else {
            drawable = null;
        }
        c0195ig.e = drawable;
        c0195ig.c();
    }

    public void setOverlayMode(boolean z) {
        this.g = z;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // o.InterfaceC0363r5
    public void setWindowCallback(Window.Callback callback) {
        k();
        ((C0195ig) this.e).k = callback;
    }

    @Override // o.InterfaceC0363r5
    public void setWindowTitle(CharSequence charSequence) {
        k();
        C0195ig c0195ig = (C0195ig) this.e;
        if (!c0195ig.g) {
            c0195ig.h = charSequence;
            if ((c0195ig.b & 8) != 0) {
                Toolbar toolbar = c0195ig.a;
                toolbar.setTitle(charSequence);
                if (c0195ig.g) {
                    Dh.m(toolbar.getRootView(), charSequence);
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        k();
        C0195ig c0195ig = (C0195ig) this.e;
        c0195ig.d = drawable;
        c0195ig.c();
    }
}
