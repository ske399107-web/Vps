package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import o.C;
import o.C0056bg;
import o.C0060c0;
import o.C0080d0;
import o.C0120f0;
import o.C0290nb;
import o.C0424u6;
import o.Cb;
import o.InterfaceC0100e0;
import o.InterfaceC0140g0;
import o.InterfaceC0210jb;
import o.MenuC0230kb;
import o.U9;
import o.V9;
import o.Ve;
import o.Xh;
import o.Z;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class ActionMenuView extends V9 implements InterfaceC0210jb, Cb {
    public MenuC0230kb p;
    public Context q;
    public int r;
    public boolean s;
    public C0080d0 t;
    public C0056bg u;
    public boolean v;
    public int w;
    public final int x;
    public final int y;
    public InterfaceC0140g0 z;

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.x = (int) (56.0f * f2);
        this.y = (int) (f2 * 4.0f);
        this.q = context;
        this.r = 0;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.widget.LinearLayout$LayoutParams, o.f0] */
    public static C0120f0 j() {
        ?? layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.a = false;
        ((LinearLayout.LayoutParams) layoutParams).gravity = 16;
        return layoutParams;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.widget.LinearLayout$LayoutParams, o.f0] */
    public static C0120f0 k(ViewGroup.LayoutParams layoutParams) {
        C0120f0 c0120f0;
        if (layoutParams != null) {
            if (layoutParams instanceof C0120f0) {
                C0120f0 c0120f02 = (C0120f0) layoutParams;
                ?? layoutParams2 = new LinearLayout.LayoutParams((ViewGroup.LayoutParams) c0120f02);
                layoutParams2.a = c0120f02.a;
                c0120f0 = layoutParams2;
            } else {
                c0120f0 = new LinearLayout.LayoutParams(layoutParams);
            }
            if (((LinearLayout.LayoutParams) c0120f0).gravity <= 0) {
                ((LinearLayout.LayoutParams) c0120f0).gravity = 16;
            }
            return c0120f0;
        }
        return j();
    }

    @Override // o.Cb
    public final void a(MenuC0230kb menuC0230kb) {
        this.p = menuC0230kb;
    }

    @Override // o.InterfaceC0210jb
    public final boolean c(C0290nb c0290nb) {
        return this.p.q(c0290nb, null, 0);
    }

    @Override // o.V9, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0120f0;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // o.V9
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ U9 generateDefaultLayoutParams() {
        return j();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [o.U9, android.widget.LinearLayout$LayoutParams] */
    @Override // o.V9
    /* renamed from: g */
    public final U9 generateLayoutParams(AttributeSet attributeSet) {
        return new LinearLayout.LayoutParams(getContext(), attributeSet);
    }

    @Override // o.V9, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return j();
    }

    @Override // o.V9, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return k(layoutParams);
    }

    public Menu getMenu() {
        if (this.p == null) {
            Context context = getContext();
            MenuC0230kb menuC0230kb = new MenuC0230kb(context);
            this.p = menuC0230kb;
            menuC0230kb.e = new C(3, this);
            C0080d0 c0080d0 = new C0080d0(context);
            this.t = c0080d0;
            c0080d0.l = true;
            c0080d0.m = true;
            c0080d0.e = new C0424u6(5);
            this.p.b(c0080d0, this.q);
            C0080d0 c0080d02 = this.t;
            c0080d02.h = this;
            this.p = c0080d02.c;
        }
        return this.p;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        C0080d0 c0080d0 = this.t;
        C0060c0 c0060c0 = c0080d0.i;
        if (c0060c0 != null) {
            return c0060c0.getDrawable();
        }
        if (c0080d0.k) {
            return c0080d0.j;
        }
        return null;
    }

    public int getPopupTheme() {
        return this.r;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // o.V9
    /* renamed from: h */
    public final /* bridge */ /* synthetic */ U9 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return k(layoutParams);
    }

    public final boolean l(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i - 1);
        KeyEvent.Callback childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof InterfaceC0100e0)) {
            z = ((InterfaceC0100e0) childAt).a();
        }
        if (i > 0 && (childAt2 instanceof InterfaceC0100e0)) {
            return z | ((InterfaceC0100e0) childAt2).c();
        }
        return z;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0080d0 c0080d0 = this.t;
        if (c0080d0 != null) {
            c0080d0.g();
            if (this.t.j()) {
                this.t.f();
                this.t.l();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0080d0 c0080d0 = this.t;
        if (c0080d0 != null) {
            c0080d0.f();
            Z z = c0080d0.t;
            if (z != null && z.b()) {
                z.i.dismiss();
            }
        }
    }

    @Override // o.V9, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        int i5;
        int width;
        int i6;
        if (!this.v) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i7 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i8 = i3 - i;
        int paddingRight = (i8 - getPaddingRight()) - getPaddingLeft();
        boolean z3 = Xh.a;
        if (getLayoutDirection() == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                C0120f0 c0120f0 = (C0120f0) childAt.getLayoutParams();
                if (c0120f0.a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (l(i11)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (z2) {
                        i6 = getPaddingLeft() + ((LinearLayout.LayoutParams) c0120f0).leftMargin;
                        width = i6 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) c0120f0).rightMargin;
                        i6 = width - measuredWidth;
                    }
                    int i12 = i7 - (measuredHeight / 2);
                    childAt.layout(i6, i12, width, measuredHeight + i12);
                    paddingRight -= measuredWidth;
                    i9 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) c0120f0).leftMargin) + ((LinearLayout.LayoutParams) c0120f0).rightMargin;
                    l(i11);
                    i10++;
                }
            }
        }
        if (childCount == 1 && i9 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i13 = (i8 / 2) - (measuredWidth2 / 2);
            int i14 = i7 - (measuredHeight2 / 2);
            childAt2.layout(i13, i14, measuredWidth2 + i13, measuredHeight2 + i14);
            return;
        }
        int i15 = i10 - (i9 ^ 1);
        if (i15 > 0) {
            i5 = paddingRight / i15;
        } else {
            i5 = 0;
        }
        int max = Math.max(0, i5);
        if (z2) {
            int width2 = getWidth() - getPaddingRight();
            for (int i16 = 0; i16 < childCount; i16++) {
                View childAt3 = getChildAt(i16);
                C0120f0 c0120f02 = (C0120f0) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !c0120f02.a) {
                    int i17 = width2 - ((LinearLayout.LayoutParams) c0120f02).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i18 = i7 - (measuredHeight3 / 2);
                    childAt3.layout(i17 - measuredWidth3, i18, i17, measuredHeight3 + i18);
                    width2 = i17 - ((measuredWidth3 + ((LinearLayout.LayoutParams) c0120f02).leftMargin) + max);
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt4 = getChildAt(i19);
            C0120f0 c0120f03 = (C0120f0) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !c0120f03.a) {
                int i20 = paddingLeft + ((LinearLayout.LayoutParams) c0120f03).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i21 = i7 - (measuredHeight4 / 2);
                childAt4.layout(i20, i21, i20 + measuredWidth4, measuredHeight4 + i21);
                paddingLeft = Ve.x(measuredWidth4, ((LinearLayout.LayoutParams) c0120f03).rightMargin, max, i20);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v29, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v36 */
    @Override // o.V9, android.view.View
    public final void onMeasure(int i, int i2) {
        boolean z;
        int i3;
        boolean z2;
        boolean z3;
        boolean z4;
        int i4;
        boolean z5;
        int i5;
        int i6;
        int i7;
        int i8;
        ?? r4;
        boolean z6;
        int i9;
        int i10;
        int i11;
        ActionMenuItemView actionMenuItemView;
        boolean z7;
        int i12;
        boolean z8;
        MenuC0230kb menuC0230kb;
        boolean z9 = this.v;
        if (View.MeasureSpec.getMode(i) == 1073741824) {
            z = true;
        } else {
            z = false;
        }
        this.v = z;
        if (z9 != z) {
            this.w = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.v && (menuC0230kb = this.p) != null && size != this.w) {
            this.w = size;
            menuC0230kb.p(true);
        }
        int childCount = getChildCount();
        if (this.v && childCount > 0) {
            int mode = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i);
            int size3 = View.MeasureSpec.getSize(i2);
            int paddingRight = getPaddingRight() + getPaddingLeft();
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingBottom, -2);
            int i13 = size2 - paddingRight;
            int i14 = this.x;
            int i15 = i13 / i14;
            int i16 = i13 % i14;
            if (i15 == 0) {
                setMeasuredDimension(i13, 0);
                return;
            }
            int i17 = (i16 / i15) + i14;
            int childCount2 = getChildCount();
            int i18 = 0;
            int i19 = 0;
            int i20 = 0;
            int i21 = 0;
            boolean z10 = false;
            int i22 = 0;
            long j = 0;
            while (true) {
                i3 = this.y;
                if (i21 >= childCount2) {
                    break;
                }
                View childAt = getChildAt(i21);
                int i23 = size3;
                int i24 = i13;
                if (childAt.getVisibility() == 8) {
                    i10 = mode;
                    i11 = paddingBottom;
                } else {
                    boolean z11 = childAt instanceof ActionMenuItemView;
                    int i25 = i19 + 1;
                    if (z11) {
                        childAt.setPadding(i3, 0, i3, 0);
                    }
                    C0120f0 c0120f0 = (C0120f0) childAt.getLayoutParams();
                    c0120f0.f207f = false;
                    c0120f0.c = 0;
                    c0120f0.b = 0;
                    c0120f0.d = false;
                    ((LinearLayout.LayoutParams) c0120f0).leftMargin = 0;
                    ((LinearLayout.LayoutParams) c0120f0).rightMargin = 0;
                    if (z11 && !TextUtils.isEmpty(((ActionMenuItemView) childAt).getText())) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    c0120f0.e = z6;
                    if (c0120f0.a) {
                        i9 = 1;
                    } else {
                        i9 = i15;
                    }
                    C0120f0 c0120f02 = (C0120f0) childAt.getLayoutParams();
                    i10 = mode;
                    i11 = paddingBottom;
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - paddingBottom, View.MeasureSpec.getMode(childMeasureSpec));
                    if (z11) {
                        actionMenuItemView = (ActionMenuItemView) childAt;
                    } else {
                        actionMenuItemView = null;
                    }
                    if (actionMenuItemView != null && !TextUtils.isEmpty(actionMenuItemView.getText())) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    if (i9 > 0 && (!z7 || i9 >= 2)) {
                        childAt.measure(View.MeasureSpec.makeMeasureSpec(i9 * i17, PKIFailureInfo.systemUnavail), makeMeasureSpec);
                        int measuredWidth = childAt.getMeasuredWidth();
                        i12 = measuredWidth / i17;
                        if (measuredWidth % i17 != 0) {
                            i12++;
                        }
                        if (z7 && i12 < 2) {
                            i12 = 2;
                        }
                    } else {
                        i12 = 0;
                    }
                    if (!c0120f02.a && z7) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    c0120f02.d = z8;
                    c0120f02.b = i12;
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i12 * i17, 1073741824), makeMeasureSpec);
                    i20 = Math.max(i20, i12);
                    if (c0120f0.d) {
                        i22++;
                    }
                    if (c0120f0.a) {
                        z10 = true;
                    }
                    i15 -= i12;
                    i18 = Math.max(i18, childAt.getMeasuredHeight());
                    if (i12 == 1) {
                        j |= 1 << i21;
                    }
                    i19 = i25;
                }
                i21++;
                size3 = i23;
                i13 = i24;
                paddingBottom = i11;
                mode = i10;
            }
            int i26 = mode;
            int i27 = i13;
            int i28 = size3;
            if (z10 && i19 == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
            boolean z12 = false;
            while (i22 > 0 && i15 > 0) {
                int i29 = Integer.MAX_VALUE;
                int i30 = 0;
                int i31 = 0;
                long j2 = 0;
                while (i31 < childCount2) {
                    C0120f0 c0120f03 = (C0120f0) getChildAt(i31).getLayoutParams();
                    boolean z13 = z12;
                    if (c0120f03.d) {
                        int i32 = c0120f03.b;
                        if (i32 < i29) {
                            j2 = 1 << i31;
                            i29 = i32;
                            i30 = 1;
                        } else if (i32 == i29) {
                            j2 |= 1 << i31;
                            i30++;
                        }
                    }
                    i31++;
                    z12 = z13;
                }
                z3 = z12;
                j |= j2;
                if (i30 > i15) {
                    break;
                }
                int i33 = i29 + 1;
                int i34 = 0;
                while (i34 < childCount2) {
                    View childAt2 = getChildAt(i34);
                    C0120f0 c0120f04 = (C0120f0) childAt2.getLayoutParams();
                    int i35 = i18;
                    int i36 = childMeasureSpec;
                    int i37 = childCount2;
                    long j3 = 1 << i34;
                    if ((j2 & j3) == 0) {
                        if (c0120f04.b == i33) {
                            j |= j3;
                        }
                    } else {
                        if (z2 && c0120f04.e) {
                            r4 = 1;
                            r4 = 1;
                            if (i15 == 1) {
                                childAt2.setPadding(i3 + i17, 0, i3, 0);
                            }
                        } else {
                            r4 = 1;
                        }
                        c0120f04.b += r4;
                        c0120f04.f207f = r4;
                        i15--;
                    }
                    i34++;
                    childMeasureSpec = i36;
                    i18 = i35;
                    childCount2 = i37;
                }
                z12 = true;
            }
            z3 = z12;
            int i38 = i18;
            int i39 = childMeasureSpec;
            int i40 = childCount2;
            if (!z10 && i19 == 1) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (i15 <= 0 || j == 0 || (i15 >= i19 - 1 && !z4 && i20 <= 1)) {
                i4 = i40;
                z5 = z3;
            } else {
                float bitCount = Long.bitCount(j);
                if (!z4) {
                    if ((j & 1) != 0 && !((C0120f0) getChildAt(0).getLayoutParams()).e) {
                        bitCount -= 0.5f;
                    }
                    int i41 = i40 - 1;
                    if ((j & (1 << i41)) != 0 && !((C0120f0) getChildAt(i41).getLayoutParams()).e) {
                        bitCount -= 0.5f;
                    }
                }
                if (bitCount > 0.0f) {
                    i8 = (int) ((i15 * i17) / bitCount);
                } else {
                    i8 = 0;
                }
                boolean z14 = z3;
                i4 = i40;
                for (int i42 = 0; i42 < i4; i42++) {
                    if ((j & (1 << i42)) != 0) {
                        View childAt3 = getChildAt(i42);
                        C0120f0 c0120f05 = (C0120f0) childAt3.getLayoutParams();
                        if (childAt3 instanceof ActionMenuItemView) {
                            c0120f05.c = i8;
                            c0120f05.f207f = true;
                            if (i42 == 0 && !c0120f05.e) {
                                ((LinearLayout.LayoutParams) c0120f05).leftMargin = (-i8) / 2;
                            }
                            z14 = true;
                        } else {
                            if (c0120f05.a) {
                                c0120f05.c = i8;
                                c0120f05.f207f = true;
                                ((LinearLayout.LayoutParams) c0120f05).rightMargin = (-i8) / 2;
                                z14 = true;
                            } else {
                                if (i42 != 0) {
                                    ((LinearLayout.LayoutParams) c0120f05).leftMargin = i8 / 2;
                                }
                                if (i42 != i4 - 1) {
                                    ((LinearLayout.LayoutParams) c0120f05).rightMargin = i8 / 2;
                                }
                            }
                        }
                    }
                }
                z5 = z14;
            }
            if (z5) {
                int i43 = 0;
                while (i43 < i4) {
                    View childAt4 = getChildAt(i43);
                    C0120f0 c0120f06 = (C0120f0) childAt4.getLayoutParams();
                    if (!c0120f06.f207f) {
                        i7 = i39;
                    } else {
                        i7 = i39;
                        childAt4.measure(View.MeasureSpec.makeMeasureSpec((c0120f06.b * i17) + c0120f06.c, 1073741824), i7);
                    }
                    i43++;
                    i39 = i7;
                }
            }
            if (i26 != 1073741824) {
                i6 = i27;
                i5 = i38;
            } else {
                i5 = i28;
                i6 = i27;
            }
            setMeasuredDimension(i6, i5);
            return;
        }
        for (int i44 = 0; i44 < childCount; i44++) {
            C0120f0 c0120f07 = (C0120f0) getChildAt(i44).getLayoutParams();
            ((LinearLayout.LayoutParams) c0120f07).rightMargin = 0;
            ((LinearLayout.LayoutParams) c0120f07).leftMargin = 0;
        }
        super.onMeasure(i, i2);
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.t.q = z;
    }

    public void setOnMenuItemClickListener(InterfaceC0140g0 interfaceC0140g0) {
        this.z = interfaceC0140g0;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        C0080d0 c0080d0 = this.t;
        C0060c0 c0060c0 = c0080d0.i;
        if (c0060c0 != null) {
            c0060c0.setImageDrawable(drawable);
        } else {
            c0080d0.k = true;
            c0080d0.j = drawable;
        }
    }

    public void setOverflowReserved(boolean z) {
        this.s = z;
    }

    public void setPopupTheme(int i) {
        if (this.r != i) {
            this.r = i;
            if (i == 0) {
                this.q = getContext();
            } else {
                this.q = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(C0080d0 c0080d0) {
        this.t = c0080d0;
        c0080d0.h = this;
        this.p = c0080d0.c;
    }

    @Override // o.V9, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LinearLayout.LayoutParams(getContext(), attributeSet);
    }
}
