package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import o.AbstractC0114ee;
import o.AbstractC0119f;
import o.AbstractC0133fd;
import o.AbstractC0487x9;
import o.Ae;
import o.C;
import o.C0139g;
import o.C0530ze;
import o.Dh;
import o.Ha;
import o.L1;
import o.Le;
import o.Ma;
import o.Na;
import o.Ng;
import o.Oa;
import o.X0;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class MaterialButton extends X0 implements Checkable, Le {
    public static final int[] r = {R.attr.state_checkable};
    public static final int[] s = {R.attr.state_checked};
    public final Oa d;
    public final LinkedHashSet e;

    /* renamed from: f, reason: collision with root package name */
    public Ma f49f;
    public PorterDuff.Mode g;
    public ColorStateList h;
    public Drawable i;
    public String j;
    public int k;
    public int l;
    public int m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f50o;
    public boolean p;
    public int q;

    public MaterialButton(Context context, AttributeSet attributeSet) {
        super(AbstractC0487x9.j0(context, attributeSet, 2130903781, 2131690495), attributeSet, 2130903781);
        this.e = new LinkedHashSet();
        this.f50o = false;
        this.p = false;
        Context context2 = getContext();
        TypedArray H = AbstractC0487x9.H(context2, attributeSet, AbstractC0133fd.j, 2130903781, 2131690495, new int[0]);
        this.n = H.getDimensionPixelSize(12, 0);
        int i = H.getInt(15, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.g = Ng.r(i, mode);
        this.h = Ha.F(getContext(), H, 14);
        this.i = Ha.H(getContext(), H, 10);
        this.q = H.getInteger(11, 1);
        this.k = H.getDimensionPixelSize(13, 0);
        Oa oa = new Oa(this, Ae.b(context2, attributeSet, 2130903781, 2131690495).a());
        this.d = oa;
        oa.c = H.getDimensionPixelOffset(1, 0);
        oa.d = H.getDimensionPixelOffset(2, 0);
        oa.e = H.getDimensionPixelOffset(3, 0);
        oa.f132f = H.getDimensionPixelOffset(4, 0);
        if (H.hasValue(8)) {
            int dimensionPixelSize = H.getDimensionPixelSize(8, -1);
            oa.g = dimensionPixelSize;
            float f2 = dimensionPixelSize;
            C0530ze e = oa.b.e();
            e.e = new C0139g(f2);
            e.f308f = new C0139g(f2);
            e.g = new C0139g(f2);
            e.h = new C0139g(f2);
            oa.c(e.a());
            oa.p = true;
        }
        oa.h = H.getDimensionPixelSize(20, 0);
        oa.i = Ng.r(H.getInt(7, -1), mode);
        oa.j = Ha.F(getContext(), H, 6);
        oa.k = Ha.F(getContext(), H, 19);
        oa.l = Ha.F(getContext(), H, 16);
        oa.q = H.getBoolean(5, false);
        oa.t = H.getDimensionPixelSize(9, 0);
        oa.r = H.getBoolean(21, true);
        WeakHashMap weakHashMap = Dh.a;
        int paddingStart = getPaddingStart();
        int paddingTop = getPaddingTop();
        int paddingEnd = getPaddingEnd();
        int paddingBottom = getPaddingBottom();
        if (H.hasValue(0)) {
            oa.f133o = true;
            setSupportBackgroundTintList(oa.j);
            setSupportBackgroundTintMode(oa.i);
        } else {
            oa.e();
        }
        setPaddingRelative(paddingStart + oa.c, paddingTop + oa.e, paddingEnd + oa.d, paddingBottom + oa.f132f);
        H.recycle();
        setCompoundDrawablePadding(this.n);
        d(this.i != null);
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        if (textAlignment != 1) {
            if (textAlignment != 6 && textAlignment != 3) {
                if (textAlignment != 4) {
                    return Layout.Alignment.ALIGN_NORMAL;
                }
                return Layout.Alignment.ALIGN_CENTER;
            }
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return getGravityTextAlignment();
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & 8388615;
        if (gravity != 1) {
            if (gravity != 5 && gravity != 8388613) {
                return Layout.Alignment.ALIGN_NORMAL;
            }
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return Layout.Alignment.ALIGN_CENTER;
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        if (getTransformationMethod() != null) {
            charSequence = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(charSequence, 0, charSequence.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float f2 = 0.0f;
        for (int i = 0; i < lineCount; i++) {
            f2 = Math.max(f2, getLayout().getLineWidth(i));
        }
        return (int) Math.ceil(f2);
    }

    public final boolean a() {
        Oa oa = this.d;
        if (oa != null && oa.q) {
            return true;
        }
        return false;
    }

    public final boolean b() {
        Oa oa = this.d;
        if (oa != null && !oa.f133o) {
            return true;
        }
        return false;
    }

    public final void c() {
        int i = this.q;
        boolean z = true;
        if (i != 1 && i != 2) {
            z = false;
        }
        if (z) {
            setCompoundDrawablesRelative(this.i, null, null, null);
            return;
        }
        if (i != 3 && i != 4) {
            if (i == 16 || i == 32) {
                setCompoundDrawablesRelative(null, this.i, null, null);
                return;
            }
            return;
        }
        setCompoundDrawablesRelative(null, null, this.i, null);
    }

    public final void d(boolean z) {
        Drawable drawable = this.i;
        if (drawable != null) {
            Drawable mutate = drawable.mutate();
            this.i = mutate;
            mutate.setTintList(this.h);
            PorterDuff.Mode mode = this.g;
            if (mode != null) {
                this.i.setTintMode(mode);
            }
            int i = this.k;
            if (i == 0) {
                i = this.i.getIntrinsicWidth();
            }
            int i2 = this.k;
            if (i2 == 0) {
                i2 = this.i.getIntrinsicHeight();
            }
            Drawable drawable2 = this.i;
            int i3 = this.l;
            int i4 = this.m;
            drawable2.setBounds(i3, i4, i + i3, i2 + i4);
            this.i.setVisible(true, z);
        }
        if (z) {
            c();
            return;
        }
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        int i5 = this.q;
        if (((i5 == 1 || i5 == 2) && drawable3 != this.i) || (((i5 == 3 || i5 == 4) && drawable5 != this.i) || ((i5 == 16 || i5 == 32) && drawable4 != this.i))) {
            c();
        }
    }

    public final void e(int i, int i2) {
        boolean z;
        boolean z2;
        if (this.i != null && getLayout() != null) {
            int i3 = this.q;
            boolean z3 = true;
            if (i3 != 1 && i3 != 2) {
                z = false;
            } else {
                z = true;
            }
            if (!z && i3 != 3 && i3 != 4) {
                if (i3 == 16 || i3 == 32) {
                    this.l = 0;
                    if (i3 == 16) {
                        this.m = 0;
                        d(false);
                        return;
                    }
                    int i4 = this.k;
                    if (i4 == 0) {
                        i4 = this.i.getIntrinsicHeight();
                    }
                    int max = Math.max(0, (((((i2 - getTextHeight()) - getPaddingTop()) - i4) - this.n) - getPaddingBottom()) / 2);
                    if (this.m != max) {
                        this.m = max;
                        d(false);
                        return;
                    }
                    return;
                }
                return;
            }
            this.m = 0;
            Layout.Alignment actualTextAlignment = getActualTextAlignment();
            int i5 = this.q;
            if (i5 != 1 && i5 != 3 && ((i5 != 2 || actualTextAlignment != Layout.Alignment.ALIGN_NORMAL) && (i5 != 4 || actualTextAlignment != Layout.Alignment.ALIGN_OPPOSITE))) {
                int i6 = this.k;
                if (i6 == 0) {
                    i6 = this.i.getIntrinsicWidth();
                }
                int textLayoutWidth = i - getTextLayoutWidth();
                WeakHashMap weakHashMap = Dh.a;
                int paddingEnd = (((textLayoutWidth - getPaddingEnd()) - i6) - this.n) - getPaddingStart();
                if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
                    paddingEnd /= 2;
                }
                if (getLayoutDirection() == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (this.q != 4) {
                    z3 = false;
                }
                if (z2 != z3) {
                    paddingEnd = -paddingEnd;
                }
                if (this.l != paddingEnd) {
                    this.l = paddingEnd;
                    d(false);
                    return;
                }
                return;
            }
            this.l = 0;
            d(false);
        }
    }

    public String getA11yClassName() {
        Class cls;
        if (!TextUtils.isEmpty(this.j)) {
            return this.j;
        }
        if (a()) {
            cls = CompoundButton.class;
        } else {
            cls = Button.class;
        }
        return cls.getName();
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (b()) {
            return this.d.g;
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.i;
    }

    public int getIconGravity() {
        return this.q;
    }

    public int getIconPadding() {
        return this.n;
    }

    public int getIconSize() {
        return this.k;
    }

    public ColorStateList getIconTint() {
        return this.h;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.g;
    }

    public int getInsetBottom() {
        return this.d.f132f;
    }

    public int getInsetTop() {
        return this.d.e;
    }

    public ColorStateList getRippleColor() {
        if (b()) {
            return this.d.l;
        }
        return null;
    }

    public Ae getShapeAppearanceModel() {
        if (b()) {
            return this.d.b;
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (b()) {
            return this.d.k;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (b()) {
            return this.d.h;
        }
        return 0;
    }

    @Override // o.X0
    public ColorStateList getSupportBackgroundTintList() {
        if (b()) {
            return this.d.j;
        }
        return super.getSupportBackgroundTintList();
    }

    @Override // o.X0
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (b()) {
            return this.d.i;
        }
        return super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f50o;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (b()) {
            Ha.v0(this, this.d.b(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (a()) {
            View.mergeDrawableStates(onCreateDrawableState, r);
        }
        if (this.f50o) {
            View.mergeDrawableStates(onCreateDrawableState, s);
        }
        return onCreateDrawableState;
    }

    @Override // o.X0, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(this.f50o);
    }

    @Override // o.X0, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(a());
        accessibilityNodeInfo.setChecked(this.f50o);
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // o.X0, android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        e(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Na)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Na na = (Na) parcelable;
        super.onRestoreInstanceState(na.a);
        setChecked(na.c);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [o.Na, android.os.Parcelable, o.f] */
    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? abstractC0119f = new AbstractC0119f(super.onSaveInstanceState());
        abstractC0119f.c = this.f50o;
        return abstractC0119f;
    }

    @Override // o.X0, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        e(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (this.d.r) {
            toggle();
        }
        return super.performClick();
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.i != null) {
            if (this.i.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    public void setA11yClassName(String str) {
        this.j = str;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (b()) {
            Oa oa = this.d;
            if (oa.b(false) != null) {
                oa.b(false).setTint(i);
                return;
            }
            return;
        }
        super.setBackgroundColor(i);
    }

    @Override // o.X0, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (b()) {
            if (drawable != getBackground()) {
                Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
                Oa oa = this.d;
                oa.f133o = true;
                ColorStateList colorStateList = oa.j;
                MaterialButton materialButton = oa.a;
                materialButton.setSupportBackgroundTintList(colorStateList);
                materialButton.setSupportBackgroundTintMode(oa.i);
                super.setBackgroundDrawable(drawable);
                return;
            }
            getBackground().setState(drawable.getState());
            return;
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // o.X0, android.view.View
    public void setBackgroundResource(int i) {
        Drawable drawable;
        if (i != 0) {
            drawable = L1.z(getContext(), i);
        } else {
            drawable = null;
        }
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z) {
        if (b()) {
            this.d.q = z;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (a() && isEnabled() && this.f50o != z) {
            this.f50o = z;
            refreshDrawableState();
            if (getParent() instanceof MaterialButtonToggleGroup) {
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) getParent();
                boolean z2 = this.f50o;
                if (!materialButtonToggleGroup.f51f) {
                    materialButtonToggleGroup.b(getId(), z2);
                }
            }
            if (this.p) {
                return;
            }
            this.p = true;
            Iterator it = this.e.iterator();
            if (!it.hasNext()) {
                this.p = false;
            } else {
                it.next().getClass();
                throw new ClassCastException();
            }
        }
    }

    public void setCornerRadius(int i) {
        if (b()) {
            Oa oa = this.d;
            if (!oa.p || oa.g != i) {
                oa.g = i;
                oa.p = true;
                float f2 = i;
                C0530ze e = oa.b.e();
                e.e = new C0139g(f2);
                e.f308f = new C0139g(f2);
                e.g = new C0139g(f2);
                e.h = new C0139g(f2);
                oa.c(e.a());
            }
        }
    }

    public void setCornerRadiusResource(int i) {
        if (b()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        super.setElevation(f2);
        if (b()) {
            this.d.b(false).j(f2);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.i != drawable) {
            this.i = drawable;
            d(true);
            e(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i) {
        if (this.q != i) {
            this.q = i;
            e(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i) {
        if (this.n != i) {
            this.n = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(int i) {
        Drawable drawable;
        if (i != 0) {
            drawable = L1.z(getContext(), i);
        } else {
            drawable = null;
        }
        setIcon(drawable);
    }

    public void setIconSize(int i) {
        if (i >= 0) {
            if (this.k != i) {
                this.k = i;
                d(true);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("iconSize cannot be less than 0");
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.h != colorStateList) {
            this.h = colorStateList;
            d(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.g != mode) {
            this.g = mode;
            d(false);
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(L1.v(getContext(), i));
    }

    public void setInsetBottom(int i) {
        Oa oa = this.d;
        oa.d(oa.e, i);
    }

    public void setInsetTop(int i) {
        Oa oa = this.d;
        oa.d(i, oa.f132f);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(Ma ma) {
        this.f49f = ma;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        Ma ma = this.f49f;
        if (ma != null) {
            ((MaterialButtonToggleGroup) ((C) ma).b).invalidate();
        }
        super.setPressed(z);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (b()) {
            Oa oa = this.d;
            if (oa.l != colorStateList) {
                oa.l = colorStateList;
                MaterialButton materialButton = oa.a;
                if (materialButton.getBackground() instanceof RippleDrawable) {
                    ((RippleDrawable) materialButton.getBackground()).setColor(AbstractC0114ee.a(colorStateList));
                }
            }
        }
    }

    public void setRippleColorResource(int i) {
        if (b()) {
            setRippleColor(L1.v(getContext(), i));
        }
    }

    @Override // o.Le
    public void setShapeAppearanceModel(Ae ae) {
        if (b()) {
            this.d.c(ae);
            return;
        }
        throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
    }

    public void setShouldDrawSurfaceColorStroke(boolean z) {
        if (b()) {
            Oa oa = this.d;
            oa.n = z;
            oa.f();
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (b()) {
            Oa oa = this.d;
            if (oa.k != colorStateList) {
                oa.k = colorStateList;
                oa.f();
            }
        }
    }

    public void setStrokeColorResource(int i) {
        if (b()) {
            setStrokeColor(L1.v(getContext(), i));
        }
    }

    public void setStrokeWidth(int i) {
        if (b()) {
            Oa oa = this.d;
            if (oa.h != i) {
                oa.h = i;
                oa.f();
            }
        }
    }

    public void setStrokeWidthResource(int i) {
        if (b()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // o.X0
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (b()) {
            Oa oa = this.d;
            if (oa.j != colorStateList) {
                oa.j = colorStateList;
                if (oa.b(false) != null) {
                    oa.b(false).setTintList(oa.j);
                    return;
                }
                return;
            }
            return;
        }
        super.setSupportBackgroundTintList(colorStateList);
    }

    @Override // o.X0
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (b()) {
            Oa oa = this.d;
            if (oa.i != mode) {
                oa.i = mode;
                if (oa.b(false) != null && oa.i != null) {
                    oa.b(false).setTintMode(oa.i);
                    return;
                }
                return;
            }
            return;
        }
        super.setSupportBackgroundTintMode(mode);
    }

    @Override // android.view.View
    public void setTextAlignment(int i) {
        super.setTextAlignment(i);
        e(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setToggleCheckedStateOnClick(boolean z) {
        this.d.r = z;
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f50o);
    }
}
