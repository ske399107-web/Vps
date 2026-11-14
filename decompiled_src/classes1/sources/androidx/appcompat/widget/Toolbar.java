package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import o.AbstractC0076cg;
import o.AbstractC0119f;
import o.AbstractC0153gd;
import o.C0056bg;
import o.C0068c8;
import o.C0080d0;
import o.C0096dg;
import o.C0116eg;
import o.C0154ge;
import o.C0156gg;
import o.C0195ig;
import o.C0201j2;
import o.C0290nb;
import o.C0380s2;
import o.C0531zf;
import o.C1;
import o.Dh;
import o.E1;
import o.Ha;
import o.InterfaceC0136fg;
import o.InterfaceC0383s5;
import o.J2;
import o.L1;
import o.MenuC0230kb;
import o.P;
import o.Qa;
import o.RunnableC0036ag;
import o.Xh;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Toolbar extends ViewGroup {
    public ColorStateList A;
    public boolean B;
    public boolean C;
    public final ArrayList D;
    public final ArrayList E;
    public final int[] F;
    public final C0380s2 G;
    public ArrayList H;
    public final C0056bg I;
    public C0195ig J;
    public C0080d0 K;
    public C0096dg L;
    public boolean M;
    public OnBackInvokedCallback N;
    public OnBackInvokedDispatcher O;
    public boolean P;
    public final J2 Q;
    public ActionMenuView a;
    public C0201j2 b;
    public C0201j2 c;
    public C1 d;
    public E1 e;

    /* renamed from: f, reason: collision with root package name */
    public final Drawable f29f;
    public final CharSequence g;
    public C1 h;
    public View i;
    public Context j;
    public int k;
    public int l;
    public int m;
    public final int n;

    /* renamed from: o, reason: collision with root package name */
    public final int f30o;
    public int p;
    public int q;
    public int r;
    public int s;
    public C0154ge t;
    public int u;
    public int v;
    public final int w;
    public CharSequence x;
    public CharSequence y;
    public ColorStateList z;

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i = 0; i < menu.size(); i++) {
            arrayList.add(menu.getItem(i));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new C0531zf(getContext());
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [o.eg, android.view.ViewGroup$MarginLayoutParams] */
    public static C0116eg h() {
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        marginLayoutParams.b = 0;
        marginLayoutParams.a = 8388627;
        return marginLayoutParams;
    }

    public static C0116eg i(ViewGroup.LayoutParams layoutParams) {
        boolean z = layoutParams instanceof C0116eg;
        if (z) {
            C0116eg c0116eg = (C0116eg) layoutParams;
            C0116eg c0116eg2 = new C0116eg(c0116eg);
            c0116eg2.b = 0;
            c0116eg2.b = c0116eg.b;
            return c0116eg2;
        }
        if (z) {
            C0116eg c0116eg3 = new C0116eg((C0116eg) layoutParams);
            c0116eg3.b = 0;
            return c0116eg3;
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            C0116eg c0116eg4 = new C0116eg(marginLayoutParams);
            c0116eg4.b = 0;
            ((ViewGroup.MarginLayoutParams) c0116eg4).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) c0116eg4).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) c0116eg4).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) c0116eg4).bottomMargin = marginLayoutParams.bottomMargin;
            return c0116eg4;
        }
        C0116eg c0116eg5 = new C0116eg(layoutParams);
        c0116eg5.b = 0;
        return c0116eg5;
    }

    public static int k(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginEnd() + marginLayoutParams.getMarginStart();
    }

    public static int l(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final void a(ArrayList arrayList, int i) {
        boolean z;
        if (getLayoutDirection() == 1) {
            z = true;
        } else {
            z = false;
        }
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection());
        arrayList.clear();
        if (z) {
            for (int i2 = childCount - 1; i2 >= 0; i2--) {
                View childAt = getChildAt(i2);
                C0116eg c0116eg = (C0116eg) childAt.getLayoutParams();
                if (c0116eg.b == 0 && t(childAt)) {
                    int i3 = c0116eg.a;
                    int layoutDirection = getLayoutDirection();
                    int absoluteGravity2 = Gravity.getAbsoluteGravity(i3, layoutDirection) & 7;
                    if (absoluteGravity2 != 1 && absoluteGravity2 != 3 && absoluteGravity2 != 5) {
                        absoluteGravity2 = layoutDirection == 1 ? 5 : 3;
                    }
                    if (absoluteGravity2 == absoluteGravity) {
                        arrayList.add(childAt);
                    }
                }
            }
            return;
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt2 = getChildAt(i4);
            C0116eg c0116eg2 = (C0116eg) childAt2.getLayoutParams();
            if (c0116eg2.b == 0 && t(childAt2)) {
                int i5 = c0116eg2.a;
                int layoutDirection2 = getLayoutDirection();
                int absoluteGravity3 = Gravity.getAbsoluteGravity(i5, layoutDirection2) & 7;
                if (absoluteGravity3 != 1 && absoluteGravity3 != 3 && absoluteGravity3 != 5) {
                    absoluteGravity3 = layoutDirection2 == 1 ? 5 : 3;
                }
                if (absoluteGravity3 == absoluteGravity) {
                    arrayList.add(childAt2);
                }
            }
        }
    }

    public final void b(View view, boolean z) {
        C0116eg c0116eg;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            c0116eg = h();
        } else if (!checkLayoutParams(layoutParams)) {
            c0116eg = i(layoutParams);
        } else {
            c0116eg = (C0116eg) layoutParams;
        }
        c0116eg.b = 1;
        if (z && this.i != null) {
            view.setLayoutParams(c0116eg);
            this.E.add(view);
        } else {
            addView(view, c0116eg);
        }
    }

    public final void c() {
        if (this.h == null) {
            C1 c1 = new C1(getContext(), null, 2130904232);
            this.h = c1;
            c1.setImageDrawable(this.f29f);
            this.h.setContentDescription(this.g);
            C0116eg h = h();
            h.a = (this.n & 112) | 8388611;
            h.b = 2;
            this.h.setLayoutParams(h);
            this.h.setOnClickListener(new P(3, this));
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (super.checkLayoutParams(layoutParams) && (layoutParams instanceof C0116eg)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, o.ge] */
    public final void d() {
        if (this.t == null) {
            ?? obj = new Object();
            obj.a = 0;
            obj.b = 0;
            obj.c = PKIFailureInfo.systemUnavail;
            obj.d = PKIFailureInfo.systemUnavail;
            obj.e = 0;
            obj.f218f = 0;
            obj.g = false;
            obj.h = false;
            this.t = obj;
        }
    }

    public final void e() {
        f();
        ActionMenuView actionMenuView = this.a;
        if (actionMenuView.p == null) {
            MenuC0230kb menuC0230kb = (MenuC0230kb) actionMenuView.getMenu();
            if (this.L == null) {
                this.L = new C0096dg(this);
            }
            this.a.setExpandedActionViewsExclusive(true);
            menuC0230kb.b(this.L, this.j);
            u();
        }
    }

    public final void f() {
        if (this.a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.a = actionMenuView;
            actionMenuView.setPopupTheme(this.k);
            this.a.setOnMenuItemClickListener(this.I);
            ActionMenuView actionMenuView2 = this.a;
            C0056bg c0056bg = new C0056bg(this);
            actionMenuView2.getClass();
            actionMenuView2.u = c0056bg;
            C0116eg h = h();
            h.a = (this.n & 112) | 8388613;
            this.a.setLayoutParams(h);
            b(this.a, false);
        }
    }

    public final void g() {
        if (this.d == null) {
            this.d = new C1(getContext(), null, 2130904232);
            C0116eg h = h();
            h.a = (this.n & 112) | 8388611;
            this.d.setLayoutParams(h);
        }
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return h();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return i(layoutParams);
    }

    public CharSequence getCollapseContentDescription() {
        C1 c1 = this.h;
        if (c1 != null) {
            return c1.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        C1 c1 = this.h;
        if (c1 != null) {
            return c1.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        C0154ge c0154ge = this.t;
        if (c0154ge != null) {
            if (c0154ge.g) {
                return c0154ge.a;
            }
            return c0154ge.b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.v;
        if (i == Integer.MIN_VALUE) {
            return getContentInsetEnd();
        }
        return i;
    }

    public int getContentInsetLeft() {
        C0154ge c0154ge = this.t;
        if (c0154ge != null) {
            return c0154ge.a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        C0154ge c0154ge = this.t;
        if (c0154ge != null) {
            return c0154ge.b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        C0154ge c0154ge = this.t;
        if (c0154ge != null) {
            if (c0154ge.g) {
                return c0154ge.b;
            }
            return c0154ge.a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.u;
        if (i == Integer.MIN_VALUE) {
            return getContentInsetStart();
        }
        return i;
    }

    public int getCurrentContentInsetEnd() {
        MenuC0230kb menuC0230kb;
        ActionMenuView actionMenuView = this.a;
        if (actionMenuView != null && (menuC0230kb = actionMenuView.p) != null && menuC0230kb.hasVisibleItems()) {
            return Math.max(getContentInsetEnd(), Math.max(this.v, 0));
        }
        return getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        if (getLayoutDirection() == 1) {
            return getCurrentContentInsetEnd();
        }
        return getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        if (getLayoutDirection() == 1) {
            return getCurrentContentInsetStart();
        }
        return getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        if (getNavigationIcon() != null) {
            return Math.max(getContentInsetStart(), Math.max(this.u, 0));
        }
        return getContentInsetStart();
    }

    public Drawable getLogo() {
        E1 e1 = this.e;
        if (e1 != null) {
            return e1.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        E1 e1 = this.e;
        if (e1 != null) {
            return e1.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        e();
        return this.a.getMenu();
    }

    public View getNavButtonView() {
        return this.d;
    }

    public CharSequence getNavigationContentDescription() {
        C1 c1 = this.d;
        if (c1 != null) {
            return c1.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        C1 c1 = this.d;
        if (c1 != null) {
            return c1.getDrawable();
        }
        return null;
    }

    public C0080d0 getOuterActionMenuPresenter() {
        return this.K;
    }

    public Drawable getOverflowIcon() {
        e();
        return this.a.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.j;
    }

    public int getPopupTheme() {
        return this.k;
    }

    public CharSequence getSubtitle() {
        return this.y;
    }

    public final TextView getSubtitleTextView() {
        return this.c;
    }

    public CharSequence getTitle() {
        return this.x;
    }

    public int getTitleMarginBottom() {
        return this.s;
    }

    public int getTitleMarginEnd() {
        return this.q;
    }

    public int getTitleMarginStart() {
        return this.p;
    }

    public int getTitleMarginTop() {
        return this.r;
    }

    public final TextView getTitleTextView() {
        return this.b;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, o.ig] */
    public InterfaceC0383s5 getWrapper() {
        boolean z;
        Drawable drawable;
        if (this.J == null) {
            ?? obj = new Object();
            obj.n = 0;
            obj.a = this;
            obj.h = getTitle();
            obj.i = getSubtitle();
            if (obj.h != null) {
                z = true;
            } else {
                z = false;
            }
            obj.g = z;
            obj.f234f = getNavigationIcon();
            String str = null;
            C0380s2 y = C0380s2.y(getContext(), null, AbstractC0153gd.a, 2130903047);
            obj.f235o = y.o(15);
            TypedArray typedArray = (TypedArray) y.b;
            CharSequence text = typedArray.getText(27);
            if (!TextUtils.isEmpty(text)) {
                obj.g = true;
                obj.h = text;
                if ((obj.b & 8) != 0) {
                    Toolbar toolbar = obj.a;
                    toolbar.setTitle(text);
                    if (obj.g) {
                        Dh.m(toolbar.getRootView(), text);
                    }
                }
            }
            CharSequence text2 = typedArray.getText(25);
            if (!TextUtils.isEmpty(text2)) {
                obj.i = text2;
                if ((obj.b & 8) != 0) {
                    setSubtitle(text2);
                }
            }
            Drawable o2 = y.o(20);
            if (o2 != null) {
                obj.e = o2;
                obj.c();
            }
            Drawable o3 = y.o(17);
            if (o3 != null) {
                obj.d = o3;
                obj.c();
            }
            if (obj.f234f == null && (drawable = obj.f235o) != null) {
                obj.f234f = drawable;
                int i = obj.b & 4;
                Toolbar toolbar2 = obj.a;
                if (i != 0) {
                    toolbar2.setNavigationIcon(drawable);
                } else {
                    toolbar2.setNavigationIcon((Drawable) null);
                }
            }
            obj.a(typedArray.getInt(10, 0));
            int resourceId = typedArray.getResourceId(9, 0);
            if (resourceId != 0) {
                View inflate = LayoutInflater.from(getContext()).inflate(resourceId, (ViewGroup) this, false);
                View view = obj.c;
                if (view != null && (obj.b & 16) != 0) {
                    removeView(view);
                }
                obj.c = inflate;
                if (inflate != null && (obj.b & 16) != 0) {
                    addView(inflate);
                }
                obj.a(obj.b | 16);
            }
            int layoutDimension = typedArray.getLayoutDimension(13, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                layoutParams.height = layoutDimension;
                setLayoutParams(layoutParams);
            }
            int dimensionPixelOffset = typedArray.getDimensionPixelOffset(7, -1);
            int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(3, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                int max = Math.max(dimensionPixelOffset, 0);
                int max2 = Math.max(dimensionPixelOffset2, 0);
                d();
                this.t.a(max, max2);
            }
            int resourceId2 = typedArray.getResourceId(28, 0);
            if (resourceId2 != 0) {
                Context context = getContext();
                this.l = resourceId2;
                C0201j2 c0201j2 = this.b;
                if (c0201j2 != null) {
                    c0201j2.setTextAppearance(context, resourceId2);
                }
            }
            int resourceId3 = typedArray.getResourceId(26, 0);
            if (resourceId3 != 0) {
                Context context2 = getContext();
                this.m = resourceId3;
                C0201j2 c0201j22 = this.c;
                if (c0201j22 != null) {
                    c0201j22.setTextAppearance(context2, resourceId3);
                }
            }
            int resourceId4 = typedArray.getResourceId(22, 0);
            if (resourceId4 != 0) {
                setPopupTheme(resourceId4);
            }
            y.A();
            if (2131623937 != obj.n) {
                obj.n = 2131623937;
                if (TextUtils.isEmpty(getNavigationContentDescription())) {
                    int i2 = obj.n;
                    if (i2 != 0) {
                        str = getContext().getString(i2);
                    }
                    obj.j = str;
                    obj.b();
                }
            }
            obj.j = getNavigationContentDescription();
            setNavigationOnClickListener(new Qa(obj));
            this.J = obj;
        }
        return this.J;
    }

    public final int j(View view, int i) {
        int i2;
        C0116eg c0116eg = (C0116eg) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        if (i > 0) {
            i2 = (measuredHeight - i) / 2;
        } else {
            i2 = 0;
        }
        int i3 = c0116eg.a & 112;
        if (i3 != 16 && i3 != 48 && i3 != 80) {
            i3 = this.w & 112;
        }
        if (i3 != 48) {
            if (i3 != 80) {
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int height = getHeight();
                int i4 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
                int i5 = ((ViewGroup.MarginLayoutParams) c0116eg).topMargin;
                if (i4 < i5) {
                    i4 = i5;
                } else {
                    int i6 = (((height - paddingBottom) - measuredHeight) - i4) - paddingTop;
                    int i7 = ((ViewGroup.MarginLayoutParams) c0116eg).bottomMargin;
                    if (i6 < i7) {
                        i4 = Math.max(0, i4 - (i7 - i6));
                    }
                }
                return paddingTop + i4;
            }
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) c0116eg).bottomMargin) - i2;
        }
        return getPaddingTop() - i2;
    }

    public void m(int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    public final void n() {
        Iterator it = this.H.iterator();
        while (it.hasNext()) {
            getMenu().removeItem(((MenuItem) it.next()).getItemId());
        }
        getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        getMenuInflater();
        Iterator it2 = ((CopyOnWriteArrayList) this.G.d).iterator();
        while (it2.hasNext()) {
            ((C0068c8) it2.next()).a.k();
        }
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.H = currentMenuItems2;
    }

    public final boolean o(View view) {
        if (view.getParent() != this && !this.E.contains(view)) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        u();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.Q);
        u();
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.C = false;
        }
        if (!this.C) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.C = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.C = false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0298 A[LOOP:0: B:40:0x0296->B:41:0x0298, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x02b5 A[LOOP:1: B:44:0x02b3->B:45:0x02b5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02d3 A[LOOP:2: B:48:0x02d1->B:49:0x02d3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0321 A[LOOP:3: B:57:0x031f->B:58:0x0321, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0221  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 818
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        char c;
        char c2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z = Xh.a;
        int i10 = 0;
        if (getLayoutDirection() == 1) {
            c2 = 1;
            c = 0;
        } else {
            c = 1;
            c2 = 0;
        }
        if (t(this.d)) {
            s(this.d, i, 0, i2, this.f30o);
            i3 = k(this.d) + this.d.getMeasuredWidth();
            i4 = Math.max(0, l(this.d) + this.d.getMeasuredHeight());
            i5 = View.combineMeasuredStates(0, this.d.getMeasuredState());
        } else {
            i3 = 0;
            i4 = 0;
            i5 = 0;
        }
        if (t(this.h)) {
            s(this.h, i, 0, i2, this.f30o);
            i3 = k(this.h) + this.h.getMeasuredWidth();
            i4 = Math.max(i4, l(this.h) + this.h.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.h.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = Math.max(currentContentInsetStart, i3);
        int max2 = Math.max(0, currentContentInsetStart - i3);
        int[] iArr = this.F;
        iArr[c2] = max2;
        if (t(this.a)) {
            s(this.a, i, max, i2, this.f30o);
            i6 = k(this.a) + this.a.getMeasuredWidth();
            i4 = Math.max(i4, l(this.a) + this.a.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.a.getMeasuredState());
        } else {
            i6 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max3 = max + Math.max(currentContentInsetEnd, i6);
        iArr[c] = Math.max(0, currentContentInsetEnd - i6);
        if (t(this.i)) {
            max3 += r(this.i, i, max3, i2, 0, iArr);
            i4 = Math.max(i4, l(this.i) + this.i.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.i.getMeasuredState());
        }
        if (t(this.e)) {
            max3 += r(this.e, i, max3, i2, 0, iArr);
            i4 = Math.max(i4, l(this.e) + this.e.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.e.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (((C0116eg) childAt.getLayoutParams()).b == 0 && t(childAt)) {
                max3 += r(childAt, i, max3, i2, 0, iArr);
                i4 = Math.max(i4, l(childAt) + childAt.getMeasuredHeight());
                i5 = View.combineMeasuredStates(i5, childAt.getMeasuredState());
            }
        }
        int i12 = this.r + this.s;
        int i13 = this.p + this.q;
        if (t(this.b)) {
            r(this.b, i, max3 + i13, i2, i12, iArr);
            int k = k(this.b) + this.b.getMeasuredWidth();
            i7 = l(this.b) + this.b.getMeasuredHeight();
            i8 = View.combineMeasuredStates(i5, this.b.getMeasuredState());
            i9 = k;
        } else {
            i7 = 0;
            i8 = i5;
            i9 = 0;
        }
        if (t(this.c)) {
            i9 = Math.max(i9, r(this.c, i, max3 + i13, i2, i7 + i12, iArr));
            i7 = l(this.c) + this.c.getMeasuredHeight() + i7;
            i8 = View.combineMeasuredStates(i8, this.c.getMeasuredState());
        }
        int max4 = Math.max(i4, i7);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop() + max4;
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight + max3 + i9, getSuggestedMinimumWidth()), i, (-16777216) & i8);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i2, i8 << 16);
        if (this.M) {
            int childCount2 = getChildCount();
            for (int i14 = 0; i14 < childCount2; i14++) {
                View childAt2 = getChildAt(i14);
                if (!t(childAt2) || childAt2.getMeasuredWidth() <= 0 || childAt2.getMeasuredHeight() <= 0) {
                }
            }
            setMeasuredDimension(resolveSizeAndState, i10);
        }
        i10 = resolveSizeAndState2;
        setMeasuredDimension(resolveSizeAndState, i10);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        MenuC0230kb menuC0230kb;
        MenuItem findItem;
        if (!(parcelable instanceof C0156gg)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0156gg c0156gg = (C0156gg) parcelable;
        super.onRestoreInstanceState(c0156gg.a);
        ActionMenuView actionMenuView = this.a;
        if (actionMenuView != null) {
            menuC0230kb = actionMenuView.p;
        } else {
            menuC0230kb = null;
        }
        int i = c0156gg.c;
        if (i != 0 && this.L != null && menuC0230kb != null && (findItem = menuC0230kb.findItem(i)) != null) {
            findItem.expandActionView();
        }
        if (c0156gg.d) {
            J2 j2 = this.Q;
            removeCallbacks(j2);
            post(j2);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        d();
        C0154ge c0154ge = this.t;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (z != c0154ge.g) {
            c0154ge.g = z;
            if (c0154ge.h) {
                if (z) {
                    int i2 = c0154ge.d;
                    if (i2 == Integer.MIN_VALUE) {
                        i2 = c0154ge.e;
                    }
                    c0154ge.a = i2;
                    int i3 = c0154ge.c;
                    if (i3 == Integer.MIN_VALUE) {
                        i3 = c0154ge.f218f;
                    }
                    c0154ge.b = i3;
                    return;
                }
                int i4 = c0154ge.c;
                if (i4 == Integer.MIN_VALUE) {
                    i4 = c0154ge.e;
                }
                c0154ge.a = i4;
                int i5 = c0154ge.d;
                if (i5 == Integer.MIN_VALUE) {
                    i5 = c0154ge.f218f;
                }
                c0154ge.b = i5;
                return;
            }
            c0154ge.a = c0154ge.e;
            c0154ge.b = c0154ge.f218f;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.os.Parcelable, o.f, o.gg] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        boolean z;
        C0080d0 c0080d0;
        C0290nb c0290nb;
        ?? abstractC0119f = new AbstractC0119f(super.onSaveInstanceState());
        C0096dg c0096dg = this.L;
        if (c0096dg != null && (c0290nb = c0096dg.b) != null) {
            abstractC0119f.c = c0290nb.a;
        }
        ActionMenuView actionMenuView = this.a;
        if (actionMenuView != null && (c0080d0 = actionMenuView.t) != null && c0080d0.j()) {
            z = true;
        } else {
            z = false;
        }
        abstractC0119f.d = z;
        return abstractC0119f;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.B = false;
        }
        if (!this.B) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.B = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.B = false;
        }
        return true;
    }

    public final int p(View view, int i, int i2, int[] iArr) {
        C0116eg c0116eg = (C0116eg) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c0116eg).leftMargin - iArr[0];
        int max = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int j = j(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, j, max + measuredWidth, view.getMeasuredHeight() + j);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) c0116eg).rightMargin + max;
    }

    public final int q(View view, int i, int i2, int[] iArr) {
        C0116eg c0116eg = (C0116eg) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c0116eg).rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int j = j(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, j, max, view.getMeasuredHeight() + j);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) c0116eg).leftMargin);
    }

    public final int r(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i6) + Math.max(0, i5);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + max + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    public final void s(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i4 >= 0) {
            if (mode != 0) {
                i4 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i4);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public void setBackInvokedCallbackEnabled(boolean z) {
        if (this.P != z) {
            this.P = z;
            u();
        }
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(L1.z(getContext(), i));
    }

    public void setCollapsible(boolean z) {
        this.M = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = PKIFailureInfo.systemUnavail;
        }
        if (i != this.v) {
            this.v = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = PKIFailureInfo.systemUnavail;
        }
        if (i != this.u) {
            this.u = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i) {
        setLogo(L1.z(getContext(), i));
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(L1.z(getContext(), i));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        g();
        this.d.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(InterfaceC0136fg interfaceC0136fg) {
    }

    public void setOverflowIcon(Drawable drawable) {
        e();
        this.a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.k != i) {
            this.k = i;
            if (i == 0) {
                this.j = getContext();
            } else {
                this.j = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitleMarginBottom(int i) {
        this.s = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.q = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.p = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.r = i;
        requestLayout();
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public final boolean t(View view) {
        if (view != null && view.getParent() == this && view.getVisibility() != 8) {
            return true;
        }
        return false;
    }

    public final void u() {
        boolean z;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher a = AbstractC0076cg.a(this);
            C0096dg c0096dg = this.L;
            if (c0096dg != null && c0096dg.b != null && a != null && isAttachedToWindow() && this.P) {
                z = true;
            } else {
                z = false;
            }
            if (z && this.O == null) {
                if (this.N == null) {
                    this.N = AbstractC0076cg.b(new RunnableC0036ag(this, 0));
                }
                AbstractC0076cg.c(a, this.N);
                this.O = a;
                return;
            }
            if (!z && (onBackInvokedDispatcher = this.O) != null) {
                AbstractC0076cg.d(onBackInvokedDispatcher, this.N);
                this.O = null;
            }
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, 2130904233);
        this.w = 8388627;
        this.D = new ArrayList();
        this.E = new ArrayList();
        this.F = new int[2];
        this.G = new C0380s2(new RunnableC0036ag(this, 1));
        this.H = new ArrayList();
        this.I = new C0056bg(this);
        this.Q = new J2(12, this);
        Context context2 = getContext();
        int[] iArr = AbstractC0153gd.x;
        C0380s2 y = C0380s2.y(context2, attributeSet, iArr, 2130904233);
        Dh.k(this, context, iArr, attributeSet, (TypedArray) y.b, 2130904233);
        TypedArray typedArray = (TypedArray) y.b;
        this.l = typedArray.getResourceId(28, 0);
        this.m = typedArray.getResourceId(19, 0);
        this.w = typedArray.getInteger(0, 8388627);
        this.n = typedArray.getInteger(2, 48);
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(22, 0);
        dimensionPixelOffset = typedArray.hasValue(27) ? typedArray.getDimensionPixelOffset(27, dimensionPixelOffset) : dimensionPixelOffset;
        this.s = dimensionPixelOffset;
        this.r = dimensionPixelOffset;
        this.q = dimensionPixelOffset;
        this.p = dimensionPixelOffset;
        int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(25, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.p = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = typedArray.getDimensionPixelOffset(24, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.q = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = typedArray.getDimensionPixelOffset(26, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.r = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = typedArray.getDimensionPixelOffset(23, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.s = dimensionPixelOffset5;
        }
        this.f30o = typedArray.getDimensionPixelSize(13, -1);
        int dimensionPixelOffset6 = typedArray.getDimensionPixelOffset(9, PKIFailureInfo.systemUnavail);
        int dimensionPixelOffset7 = typedArray.getDimensionPixelOffset(5, PKIFailureInfo.systemUnavail);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(7, 0);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(8, 0);
        d();
        C0154ge c0154ge = this.t;
        c0154ge.h = false;
        if (dimensionPixelSize != Integer.MIN_VALUE) {
            c0154ge.e = dimensionPixelSize;
            c0154ge.a = dimensionPixelSize;
        }
        if (dimensionPixelSize2 != Integer.MIN_VALUE) {
            c0154ge.f218f = dimensionPixelSize2;
            c0154ge.b = dimensionPixelSize2;
        }
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            c0154ge.a(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.u = typedArray.getDimensionPixelOffset(10, PKIFailureInfo.systemUnavail);
        this.v = typedArray.getDimensionPixelOffset(6, PKIFailureInfo.systemUnavail);
        this.f29f = y.o(4);
        this.g = typedArray.getText(3);
        CharSequence text = typedArray.getText(21);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = typedArray.getText(18);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.j = getContext();
        setPopupTheme(typedArray.getResourceId(17, 0));
        Drawable o2 = y.o(16);
        if (o2 != null) {
            setNavigationIcon(o2);
        }
        CharSequence text3 = typedArray.getText(15);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable o3 = y.o(11);
        if (o3 != null) {
            setLogo(o3);
        }
        CharSequence text4 = typedArray.getText(12);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (typedArray.hasValue(29)) {
            setTitleTextColor(y.n(29));
        }
        if (typedArray.hasValue(20)) {
            setSubtitleTextColor(y.n(20));
        }
        if (typedArray.hasValue(14)) {
            m(typedArray.getResourceId(14, 0));
        }
        y.A();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [o.eg, android.view.ViewGroup$LayoutParams, android.view.ViewGroup$MarginLayoutParams] */
    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(context, attributeSet);
        marginLayoutParams.a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0153gd.b);
        marginLayoutParams.a = obtainStyledAttributes.getInt(0, 0);
        obtainStyledAttributes.recycle();
        marginLayoutParams.b = 0;
        return marginLayoutParams;
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        C1 c1 = this.h;
        if (c1 != null) {
            c1.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            c();
            this.h.setImageDrawable(drawable);
        } else {
            C1 c1 = this.h;
            if (c1 != null) {
                c1.setImageDrawable(this.f29f);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.e == null) {
                this.e = new E1(getContext(), null, 0);
            }
            if (!o(this.e)) {
                b(this.e, true);
            }
        } else {
            E1 e1 = this.e;
            if (e1 != null && o(e1)) {
                removeView(this.e);
                this.E.remove(this.e);
            }
        }
        E1 e12 = this.e;
        if (e12 != null) {
            e12.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.e == null) {
            this.e = new E1(getContext(), null, 0);
        }
        E1 e1 = this.e;
        if (e1 != null) {
            e1.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        C1 c1 = this.d;
        if (c1 != null) {
            c1.setContentDescription(charSequence);
            Ha.w0(this.d, charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            if (!o(this.d)) {
                b(this.d, true);
            }
        } else {
            C1 c1 = this.d;
            if (c1 != null && o(c1)) {
                removeView(this.d);
                this.E.remove(this.d);
            }
        }
        C1 c12 = this.d;
        if (c12 != null) {
            c12.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.c == null) {
                Context context = getContext();
                C0201j2 c0201j2 = new C0201j2(context, null);
                this.c = c0201j2;
                c0201j2.setSingleLine();
                this.c.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.m;
                if (i != 0) {
                    this.c.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.A;
                if (colorStateList != null) {
                    this.c.setTextColor(colorStateList);
                }
            }
            if (!o(this.c)) {
                b(this.c, true);
            }
        } else {
            C0201j2 c0201j22 = this.c;
            if (c0201j22 != null && o(c0201j22)) {
                removeView(this.c);
                this.E.remove(this.c);
            }
        }
        C0201j2 c0201j23 = this.c;
        if (c0201j23 != null) {
            c0201j23.setText(charSequence);
        }
        this.y = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.A = colorStateList;
        C0201j2 c0201j2 = this.c;
        if (c0201j2 != null) {
            c0201j2.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.b == null) {
                Context context = getContext();
                C0201j2 c0201j2 = new C0201j2(context, null);
                this.b = c0201j2;
                c0201j2.setSingleLine();
                this.b.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.l;
                if (i != 0) {
                    this.b.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.z;
                if (colorStateList != null) {
                    this.b.setTextColor(colorStateList);
                }
            }
            if (!o(this.b)) {
                b(this.b, true);
            }
        } else {
            C0201j2 c0201j22 = this.b;
            if (c0201j22 != null && o(c0201j22)) {
                removeView(this.b);
                this.E.remove(this.b);
            }
        }
        C0201j2 c0201j23 = this.b;
        if (c0201j23 != null) {
            c0201j23.setText(charSequence);
        }
        this.x = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.z = colorStateList;
        C0201j2 c0201j2 = this.b;
        if (c0201j2 != null) {
            c0201j2.setTextColor(colorStateList);
        }
    }
}
