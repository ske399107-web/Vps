package com.google.android.material.chip;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Locale;
import java.util.WeakHashMap;
import o.AbstractC0114ee;
import o.AbstractC0133fd;
import o.AbstractC0455vh;
import o.AbstractC0487x9;
import o.Ae;
import o.C0103e3;
import o.C0163h3;
import o.Da;
import o.Dh;
import o.Ha;
import o.If;
import o.Jf;
import o.L1;
import o.Lb;
import o.Le;
import o.Lf;
import o.M3;
import o.N3;
import o.O3;
import o.P3;
import o.Q3;
import o.Si;
import o.Z0;
import o.Za;
import org.conscrypt.BuildConfig;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Chip extends Z0 implements P3, Le, Checkable {
    public static final Rect w = new Rect();
    public static final int[] x = {R.attr.state_selected};
    public static final int[] y = {R.attr.state_checkable};
    public Q3 e;

    /* renamed from: f, reason: collision with root package name */
    public InsetDrawable f52f;
    public RippleDrawable g;
    public View.OnClickListener h;
    public CompoundButton.OnCheckedChangeListener i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;

    /* renamed from: o, reason: collision with root package name */
    public int f53o;
    public int p;
    public CharSequence q;
    public final O3 r;
    public boolean s;
    public final Rect t;
    public final RectF u;
    public final M3 v;

    public Chip(Context context, AttributeSet attributeSet) {
        super(AbstractC0487x9.j0(context, attributeSet, 2130903248, 2131690509), attributeSet, 2130903248);
        If r5;
        Lb lb;
        Lb lb2;
        int resourceId;
        int resourceId2;
        int resourceId3;
        this.t = new Rect();
        this.u = new RectF();
        this.v = new M3(0, this);
        Context context2 = getContext();
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
                Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") == null) {
                if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") == null) {
                    if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") == null) {
                        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") == null) {
                            if (attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) && attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) == 1 && attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) == 1 && attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) == 1) {
                                if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                                    Log.w("Chip", "Chip text must be vertically center and start aligned");
                                }
                            } else {
                                throw new UnsupportedOperationException("Chip does not support multi-line text");
                            }
                        } else {
                            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
                        }
                    } else {
                        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
                    }
                } else {
                    throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
                }
            } else {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            }
        }
        Q3 q3 = new Q3(context2, attributeSet);
        int[] iArr = AbstractC0133fd.c;
        TypedArray H = AbstractC0487x9.H(q3.e0, attributeSet, iArr, 2130903248, 2131690509, new int[0]);
        q3.E0 = H.hasValue(37);
        Context context3 = q3.e0;
        ColorStateList F = Ha.F(context3, H, 24);
        if (q3.x != F) {
            q3.x = F;
            q3.onStateChange(q3.getState());
        }
        ColorStateList F2 = Ha.F(context3, H, 11);
        if (q3.y != F2) {
            q3.y = F2;
            q3.onStateChange(q3.getState());
        }
        float dimension = H.getDimension(19, 0.0f);
        if (q3.z != dimension) {
            q3.z = dimension;
            q3.invalidateSelf();
            q3.x();
        }
        if (H.hasValue(12)) {
            q3.D(H.getDimension(12, 0.0f));
        }
        q3.I(Ha.F(context3, H, 22));
        q3.J(H.getDimension(23, 0.0f));
        q3.S(Ha.F(context3, H, 36));
        CharSequence text = H.getText(5);
        text = text == null ? BuildConfig.FLAVOR : text;
        boolean equals = TextUtils.equals(q3.E, text);
        Lf lf = q3.k0;
        if (!equals) {
            q3.E = text;
            lf.d = true;
            q3.invalidateSelf();
            q3.x();
        }
        if (H.hasValue(0) && (resourceId3 = H.getResourceId(0, 0)) != 0) {
            r5 = new If(context3, resourceId3);
        } else {
            r5 = null;
        }
        r5.k = H.getDimension(1, r5.k);
        lf.b(r5, context3);
        int i = H.getInt(3, 0);
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    q3.B0 = TextUtils.TruncateAt.END;
                }
            } else {
                q3.B0 = TextUtils.TruncateAt.MIDDLE;
            }
        } else {
            q3.B0 = TextUtils.TruncateAt.START;
        }
        q3.H(H.getBoolean(18, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            q3.H(H.getBoolean(15, false));
        }
        q3.E(Ha.H(context3, H, 14));
        if (H.hasValue(17)) {
            q3.G(Ha.F(context3, H, 17));
        }
        q3.F(H.getDimension(16, -1.0f));
        q3.P(H.getBoolean(31, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            q3.P(H.getBoolean(26, false));
        }
        q3.K(Ha.H(context3, H, 25));
        q3.O(Ha.F(context3, H, 30));
        q3.M(H.getDimension(28, 0.0f));
        q3.z(H.getBoolean(6, false));
        q3.C(H.getBoolean(10, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            q3.C(H.getBoolean(8, false));
        }
        q3.A(Ha.H(context3, H, 7));
        if (H.hasValue(9)) {
            q3.B(Ha.F(context3, H, 9));
        }
        if (H.hasValue(39) && (resourceId2 = H.getResourceId(39, 0)) != 0) {
            lb = Lb.a(context3, resourceId2);
        } else {
            lb = null;
        }
        q3.U = lb;
        if (H.hasValue(33) && (resourceId = H.getResourceId(33, 0)) != 0) {
            lb2 = Lb.a(context3, resourceId);
        } else {
            lb2 = null;
        }
        q3.V = lb2;
        float dimension2 = H.getDimension(21, 0.0f);
        if (q3.W != dimension2) {
            q3.W = dimension2;
            q3.invalidateSelf();
            q3.x();
        }
        q3.R(H.getDimension(35, 0.0f));
        q3.Q(H.getDimension(34, 0.0f));
        float dimension3 = H.getDimension(41, 0.0f);
        if (q3.Z != dimension3) {
            q3.Z = dimension3;
            q3.invalidateSelf();
            q3.x();
        }
        float dimension4 = H.getDimension(40, 0.0f);
        if (q3.a0 != dimension4) {
            q3.a0 = dimension4;
            q3.invalidateSelf();
            q3.x();
        }
        q3.N(H.getDimension(29, 0.0f));
        q3.L(H.getDimension(27, 0.0f));
        float dimension5 = H.getDimension(13, 0.0f);
        if (q3.d0 != dimension5) {
            q3.d0 = dimension5;
            q3.invalidateSelf();
            q3.x();
        }
        q3.D0 = H.getDimensionPixelSize(4, Integer.MAX_VALUE);
        H.recycle();
        AbstractC0487x9.j(context2, attributeSet, 2130903248, 2131690509);
        AbstractC0487x9.q(context2, attributeSet, iArr, 2130903248, 2131690509, new int[0]);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, 2130903248, 2131690509);
        this.n = obtainStyledAttributes.getBoolean(32, false);
        this.p = (int) Math.ceil(obtainStyledAttributes.getDimension(20, (float) Math.ceil(TypedValue.applyDimension(1, 48, getContext().getResources().getDisplayMetrics()))));
        obtainStyledAttributes.recycle();
        setChipDrawable(q3);
        q3.j(AbstractC0455vh.e(this));
        AbstractC0487x9.j(context2, attributeSet, 2130903248, 2131690509);
        AbstractC0487x9.q(context2, attributeSet, iArr, 2130903248, 2131690509, new int[0]);
        TypedArray obtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, iArr, 2130903248, 2131690509);
        boolean hasValue = obtainStyledAttributes2.hasValue(37);
        obtainStyledAttributes2.recycle();
        this.r = new O3(this, this);
        f();
        if (!hasValue) {
            setOutlineProvider(new N3(this));
        }
        setChecked(this.j);
        setText(q3.E);
        setEllipsize(q3.B0);
        i();
        if (!this.e.C0) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        h();
        if (this.n) {
            setMinHeight(this.p);
        }
        this.f53o = getLayoutDirection();
        super.setOnCheckedChangeListener(new Da(this, 3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF getCloseIconTouchBounds() {
        RectF rectF = this.u;
        rectF.setEmpty();
        if (d() && this.h != null) {
            Q3 q3 = this.e;
            Rect bounds = q3.getBounds();
            rectF.setEmpty();
            if (q3.V()) {
                float f2 = q3.d0 + q3.c0 + q3.O + q3.b0 + q3.a0;
                if (q3.getLayoutDirection() == 0) {
                    float f3 = bounds.right;
                    rectF.right = f3;
                    rectF.left = f3 - f2;
                } else {
                    float f4 = bounds.left;
                    rectF.left = f4;
                    rectF.right = f4 + f2;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
        }
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        int i = (int) closeIconTouchBounds.left;
        int i2 = (int) closeIconTouchBounds.top;
        int i3 = (int) closeIconTouchBounds.right;
        int i4 = (int) closeIconTouchBounds.bottom;
        Rect rect = this.t;
        rect.set(i, i2, i3, i4);
        return rect;
    }

    private If getTextAppearance() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.k0.f121f;
        }
        return null;
    }

    private void setCloseIconHovered(boolean z) {
        if (this.l != z) {
            this.l = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.k != z) {
            this.k = z;
            refreshDrawableState();
        }
    }

    public final void c(int i) {
        int i2;
        this.p = i;
        int i3 = 0;
        if (!this.n) {
            InsetDrawable insetDrawable = this.f52f;
            if (insetDrawable != null) {
                if (insetDrawable != null) {
                    this.f52f = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    int[] iArr = AbstractC0114ee.a;
                    g();
                    return;
                }
                return;
            }
            int[] iArr2 = AbstractC0114ee.a;
            g();
            return;
        }
        int max = Math.max(0, i - ((int) this.e.z));
        int max2 = Math.max(0, i - this.e.getIntrinsicWidth());
        if (max2 <= 0 && max <= 0) {
            InsetDrawable insetDrawable2 = this.f52f;
            if (insetDrawable2 != null) {
                if (insetDrawable2 != null) {
                    this.f52f = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    int[] iArr3 = AbstractC0114ee.a;
                    g();
                    return;
                }
                return;
            }
            int[] iArr4 = AbstractC0114ee.a;
            g();
            return;
        }
        if (max2 > 0) {
            i2 = max2 / 2;
        } else {
            i2 = 0;
        }
        if (max > 0) {
            i3 = max / 2;
        }
        int i4 = i3;
        if (this.f52f != null) {
            Rect rect = new Rect();
            this.f52f.getPadding(rect);
            if (rect.top == i4 && rect.bottom == i4 && rect.left == i2 && rect.right == i2) {
                int[] iArr5 = AbstractC0114ee.a;
                g();
                return;
            }
        }
        if (getMinHeight() != i) {
            setMinHeight(i);
        }
        if (getMinWidth() != i) {
            setMinWidth(i);
        }
        this.f52f = new InsetDrawable((Drawable) this.e, i2, i4, i2, i4);
        int[] iArr6 = AbstractC0114ee.a;
        g();
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0011 A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d() {
        /*
            r2 = this;
            o.Q3 r0 = r2.e
            if (r0 == 0) goto L13
            android.graphics.drawable.Drawable r0 = r0.L
            if (r0 == 0) goto Le
            boolean r1 = r0 instanceof o.Si
            if (r1 == 0) goto Lf
            o.Si r0 = (o.Si) r0
        Le:
            r0 = 0
        Lf:
            if (r0 == 0) goto L13
            r0 = 1
            goto L14
        L13:
            r0 = 0
        L14:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.d():boolean");
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (!this.s) {
            return super.dispatchHoverEvent(motionEvent);
        }
        if (!this.r.m(motionEvent) && !super.dispatchHoverEvent(motionEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.s) {
            return super.dispatchKeyEvent(keyEvent);
        }
        O3 o3 = this.r;
        o3.getClass();
        boolean z = false;
        int i = 0;
        z = false;
        z = false;
        z = false;
        z = false;
        z = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i2 = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode != 19) {
                                    if (keyCode != 21) {
                                        if (keyCode != 22) {
                                            i2 = 130;
                                        }
                                    } else {
                                        i2 = 17;
                                    }
                                } else {
                                    i2 = 33;
                                }
                                int repeatCount = keyEvent.getRepeatCount() + 1;
                                boolean z2 = false;
                                while (i < repeatCount && o3.q(i2, null)) {
                                    i++;
                                    z2 = true;
                                }
                                z = z2;
                                break;
                            }
                            break;
                    }
                }
                if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                    int i3 = o3.l;
                    if (i3 != Integer.MIN_VALUE) {
                        o3.s(i3, 16, null);
                    }
                    z = true;
                }
            } else if (keyEvent.hasNoModifiers()) {
                z = o3.q(2, null);
            } else if (keyEvent.hasModifiers(1)) {
                z = o3.q(1, null);
            }
        }
        if (z && o3.l != Integer.MIN_VALUE) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [int, boolean] */
    @Override // o.Z0, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        int i;
        super.drawableStateChanged();
        Q3 q3 = this.e;
        boolean z = false;
        if (q3 != null && Q3.w(q3.L)) {
            Q3 q32 = this.e;
            ?? isEnabled = isEnabled();
            int i2 = isEnabled;
            if (this.m) {
                i2 = isEnabled + 1;
            }
            int i3 = i2;
            if (this.l) {
                i3 = i2 + 1;
            }
            int i4 = i3;
            if (this.k) {
                i4 = i3 + 1;
            }
            int i5 = i4;
            if (isChecked()) {
                i5 = i4 + 1;
            }
            int[] iArr = new int[i5];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i = 1;
            } else {
                i = 0;
            }
            if (this.m) {
                iArr[i] = 16842908;
                i++;
            }
            if (this.l) {
                iArr[i] = 16843623;
                i++;
            }
            if (this.k) {
                iArr[i] = 16842919;
                i++;
            }
            if (isChecked()) {
                iArr[i] = 16842913;
            }
            if (!Arrays.equals(q32.y0, iArr)) {
                q32.y0 = iArr;
                if (q32.V()) {
                    z = q32.y(q32.getState(), iArr);
                }
            }
        }
        if (z) {
            invalidate();
        }
    }

    public final boolean e() {
        Q3 q3 = this.e;
        if (q3 != null && q3.Q) {
            return true;
        }
        return false;
    }

    public final void f() {
        Q3 q3;
        if (d() && (q3 = this.e) != null && q3.K && this.h != null) {
            Dh.l(this, this.r);
            this.s = true;
        } else {
            Dh.l(this, null);
            this.s = false;
        }
    }

    public final void g() {
        this.g = new RippleDrawable(AbstractC0114ee.a(this.e.D), getBackgroundDrawable(), null);
        this.e.getClass();
        RippleDrawable rippleDrawable = this.g;
        WeakHashMap weakHashMap = Dh.a;
        setBackground(rippleDrawable);
        h();
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.q)) {
            return this.q;
        }
        if (e()) {
            getParent();
            return "android.widget.Button";
        }
        if (isClickable()) {
            return "android.widget.Button";
        }
        return "android.view.View";
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f52f;
        if (insetDrawable == null) {
            return this.e;
        }
        return insetDrawable;
    }

    public Drawable getCheckedIcon() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.S;
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.T;
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.y;
        }
        return null;
    }

    public float getChipCornerRadius() {
        Q3 q3 = this.e;
        if (q3 == null) {
            return 0.0f;
        }
        return Math.max(0.0f, q3.u());
    }

    public Drawable getChipDrawable() {
        return this.e;
    }

    public float getChipEndPadding() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.d0;
        }
        return 0.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable getChipIcon() {
        Drawable drawable;
        Q3 q3 = this.e;
        if (q3 == null || (drawable = q3.G) == 0) {
            return null;
        }
        boolean z = drawable instanceof Si;
        Drawable drawable2 = drawable;
        if (z) {
            drawable2 = null;
        }
        return drawable2;
    }

    public float getChipIconSize() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.I;
        }
        return 0.0f;
    }

    public ColorStateList getChipIconTint() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.H;
        }
        return null;
    }

    public float getChipMinHeight() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.z;
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.W;
        }
        return 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.B;
        }
        return null;
    }

    public float getChipStrokeWidth() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.C;
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable getCloseIcon() {
        Drawable drawable;
        Q3 q3 = this.e;
        if (q3 == null || (drawable = q3.L) == 0) {
            return null;
        }
        boolean z = drawable instanceof Si;
        Drawable drawable2 = drawable;
        if (z) {
            drawable2 = null;
        }
        return drawable2;
    }

    public CharSequence getCloseIconContentDescription() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.P;
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.c0;
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.O;
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.b0;
        }
        return 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.N;
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.B0;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        if (this.s) {
            O3 o3 = this.r;
            if (o3.l == 1 || o3.k == 1) {
                rect.set(getCloseIconTouchBoundsInt());
                return;
            }
        }
        super.getFocusedRect(rect);
    }

    public Lb getHideMotionSpec() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.V;
        }
        return null;
    }

    public float getIconEndPadding() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.Y;
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.X;
        }
        return 0.0f;
    }

    public ColorStateList getRippleColor() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.D;
        }
        return null;
    }

    public Ae getShapeAppearanceModel() {
        return this.e.a.a;
    }

    public Lb getShowMotionSpec() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.U;
        }
        return null;
    }

    public float getTextEndPadding() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.a0;
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        Q3 q3 = this.e;
        if (q3 != null) {
            return q3.Z;
        }
        return 0.0f;
    }

    public final void h() {
        Q3 q3;
        if (!TextUtils.isEmpty(getText()) && (q3 = this.e) != null) {
            int t = (int) (q3.t() + q3.d0 + q3.a0);
            Q3 q32 = this.e;
            int s = (int) (q32.s() + q32.W + q32.Z);
            if (this.f52f != null) {
                Rect rect = new Rect();
                this.f52f.getPadding(rect);
                s += rect.left;
                t += rect.right;
            }
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            WeakHashMap weakHashMap = Dh.a;
            setPaddingRelative(s, paddingTop, t, paddingBottom);
        }
    }

    public final void i() {
        TextPaint paint = getPaint();
        Q3 q3 = this.e;
        if (q3 != null) {
            paint.drawableState = q3.getState();
        }
        If textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.e(getContext(), paint, this.v);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Ha.v0(this, this.e);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, x);
        }
        if (e()) {
            View.mergeDrawableStates(onCreateDrawableState, y);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (this.s) {
            O3 o3 = this.r;
            int i2 = o3.l;
            if (i2 != Integer.MIN_VALUE) {
                o3.j(i2);
            }
            if (z) {
                o3.q(i, rect);
            }
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 7) {
            if (actionMasked == 10) {
                setCloseIconHovered(false);
            }
        } else {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        accessibilityNodeInfo.setCheckable(e());
        accessibilityNodeInfo.setClickable(isClickable());
        getParent();
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        if (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return super.onResolvePointerIcon(motionEvent, i);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.f53o != i) {
            this.f53o = i;
            h();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
    
        if (r0 != 3) goto L28;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getActionMasked()
            android.graphics.RectF r1 = r5.getCloseIconTouchBounds()
            float r2 = r6.getX()
            float r3 = r6.getY()
            boolean r1 = r1.contains(r2, r3)
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L4a
            if (r0 == r3) goto L2c
            r4 = 2
            if (r0 == r4) goto L21
            r1 = 3
            if (r0 == r1) goto L45
            goto L50
        L21:
            boolean r0 = r5.k
            if (r0 == 0) goto L50
            if (r1 != 0) goto L2a
            r5.setCloseIconPressed(r2)
        L2a:
            r0 = r3
            goto L51
        L2c:
            boolean r0 = r5.k
            if (r0 == 0) goto L45
            r5.playSoundEffect(r2)
            android.view.View$OnClickListener r0 = r5.h
            if (r0 == 0) goto L3a
            r0.onClick(r5)
        L3a:
            boolean r0 = r5.s
            if (r0 == 0) goto L43
            o.O3 r0 = r5.r
            r0.x(r3, r3)
        L43:
            r0 = r3
            goto L46
        L45:
            r0 = r2
        L46:
            r5.setCloseIconPressed(r2)
            goto L51
        L4a:
            if (r1 == 0) goto L50
            r5.setCloseIconPressed(r3)
            goto L2a
        L50:
            r0 = r2
        L51:
            if (r0 != 0) goto L59
            boolean r6 = super.onTouchEvent(r6)
            if (r6 == 0) goto L5a
        L59:
            r2 = r3
        L5a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setAccessibilityClassName(CharSequence charSequence) {
        this.q = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable != getBackgroundDrawable() && drawable != this.g) {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        } else {
            super.setBackground(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // o.Z0, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != getBackgroundDrawable() && drawable != this.g) {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        } else {
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // o.Z0, android.view.View
    public void setBackgroundResource(int i) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.z(z);
        }
    }

    public void setCheckableResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.z(q3.e0.getResources().getBoolean(i));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        Q3 q3 = this.e;
        if (q3 == null) {
            this.j = z;
        } else if (q3.Q) {
            super.setChecked(z);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.A(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i) {
        setCheckedIconVisible(i);
    }

    public void setCheckedIconResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.A(L1.z(q3.e0, i));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.B(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.B(L1.v(q3.e0, i));
        }
    }

    public void setCheckedIconVisible(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.C(q3.e0.getResources().getBoolean(i));
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        Q3 q3 = this.e;
        if (q3 != null && q3.y != colorStateList) {
            q3.y = colorStateList;
            q3.onStateChange(q3.getState());
        }
    }

    public void setChipBackgroundColorResource(int i) {
        ColorStateList v;
        Q3 q3 = this.e;
        if (q3 != null && q3.y != (v = L1.v(q3.e0, i))) {
            q3.y = v;
            q3.onStateChange(q3.getState());
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f2) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.D(f2);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.D(q3.e0.getResources().getDimension(i));
        }
    }

    public void setChipDrawable(Q3 q3) {
        Q3 q32 = this.e;
        if (q32 != q3) {
            if (q32 != null) {
                q32.A0 = new WeakReference(null);
            }
            this.e = q3;
            q3.C0 = false;
            q3.A0 = new WeakReference(this);
            c(this.p);
        }
    }

    public void setChipEndPadding(float f2) {
        Q3 q3 = this.e;
        if (q3 != null && q3.d0 != f2) {
            q3.d0 = f2;
            q3.invalidateSelf();
            q3.x();
        }
    }

    public void setChipEndPaddingResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            float dimension = q3.e0.getResources().getDimension(i);
            if (q3.d0 != dimension) {
                q3.d0 = dimension;
                q3.invalidateSelf();
                q3.x();
            }
        }
    }

    public void setChipIcon(Drawable drawable) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.E(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i) {
        setChipIconVisible(i);
    }

    public void setChipIconResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.E(L1.z(q3.e0, i));
        }
    }

    public void setChipIconSize(float f2) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.F(f2);
        }
    }

    public void setChipIconSizeResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.F(q3.e0.getResources().getDimension(i));
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.G(colorStateList);
        }
    }

    public void setChipIconTintResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.G(L1.v(q3.e0, i));
        }
    }

    public void setChipIconVisible(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.H(q3.e0.getResources().getBoolean(i));
        }
    }

    public void setChipMinHeight(float f2) {
        Q3 q3 = this.e;
        if (q3 != null && q3.z != f2) {
            q3.z = f2;
            q3.invalidateSelf();
            q3.x();
        }
    }

    public void setChipMinHeightResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            float dimension = q3.e0.getResources().getDimension(i);
            if (q3.z != dimension) {
                q3.z = dimension;
                q3.invalidateSelf();
                q3.x();
            }
        }
    }

    public void setChipStartPadding(float f2) {
        Q3 q3 = this.e;
        if (q3 != null && q3.W != f2) {
            q3.W = f2;
            q3.invalidateSelf();
            q3.x();
        }
    }

    public void setChipStartPaddingResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            float dimension = q3.e0.getResources().getDimension(i);
            if (q3.W != dimension) {
                q3.W = dimension;
                q3.invalidateSelf();
                q3.x();
            }
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.I(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.I(L1.v(q3.e0, i));
        }
    }

    public void setChipStrokeWidth(float f2) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.J(f2);
        }
    }

    public void setChipStrokeWidthResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.J(q3.e0.getResources().getDimension(i));
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i) {
        setText(getResources().getString(i));
    }

    public void setCloseIcon(Drawable drawable) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.K(drawable);
        }
        f();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        C0103e3 c0103e3;
        Q3 q3 = this.e;
        if (q3 != null && q3.P != charSequence) {
            String str = C0103e3.b;
            if (TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1) {
                c0103e3 = C0103e3.e;
            } else {
                c0103e3 = C0103e3.d;
            }
            c0103e3.getClass();
            C0163h3 c0163h3 = Jf.a;
            q3.P = c0103e3.c(charSequence);
            q3.invalidateSelf();
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f2) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.L(f2);
        }
    }

    public void setCloseIconEndPaddingResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.L(q3.e0.getResources().getDimension(i));
        }
    }

    public void setCloseIconResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.K(L1.z(q3.e0, i));
        }
        f();
    }

    public void setCloseIconSize(float f2) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.M(f2);
        }
    }

    public void setCloseIconSizeResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.M(q3.e0.getResources().getDimension(i));
        }
    }

    public void setCloseIconStartPadding(float f2) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.N(f2);
        }
    }

    public void setCloseIconStartPaddingResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.N(q3.e0.getResources().getDimension(i));
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.O(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.O(L1.v(q3.e0, i));
        }
    }

    public void setCloseIconVisible(int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    @Override // o.Z0, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable == null) {
            if (drawable3 == null) {
                super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
                return;
            }
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
    }

    @Override // o.Z0, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable == null) {
            if (drawable3 == null) {
                super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
                return;
            }
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        super.setElevation(f2);
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.j(f2);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.e == null) {
            return;
        }
        if (truncateAt != TextUtils.TruncateAt.MARQUEE) {
            super.setEllipsize(truncateAt);
            Q3 q3 = this.e;
            if (q3 != null) {
                q3.B0 = truncateAt;
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        this.n = z;
        c(this.p);
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i);
        }
    }

    public void setHideMotionSpec(Lb lb) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.V = lb;
        }
    }

    public void setHideMotionSpecResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.V = Lb.a(q3.e0, i);
        }
    }

    public void setIconEndPadding(float f2) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.Q(f2);
        }
    }

    public void setIconEndPaddingResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.Q(q3.e0.getResources().getDimension(i));
        }
    }

    public void setIconStartPadding(float f2) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.R(f2);
        }
    }

    public void setIconStartPaddingResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.R(q3.e0.getResources().getDimension(i));
        }
    }

    public void setInternalOnCheckedChangeListener(Za za) {
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.e == null) {
            return;
        }
        super.setLayoutDirection(i);
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i <= 1) {
            super.setLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i <= 1) {
            super.setMaxLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i) {
        super.setMaxWidth(i);
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.D0 = i;
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i <= 1) {
            super.setMinLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.i = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.h = onClickListener;
        f();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.S(colorStateList);
        }
        this.e.getClass();
        g();
    }

    public void setRippleColorResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.S(L1.v(q3.e0, i));
            this.e.getClass();
            g();
        }
    }

    @Override // o.Le
    public void setShapeAppearanceModel(Ae ae) {
        this.e.setShapeAppearanceModel(ae);
    }

    public void setShowMotionSpec(Lb lb) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.U = lb;
        }
    }

    public void setShowMotionSpecResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.U = Lb.a(q3.e0, i);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (z) {
            super.setSingleLine(z);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        CharSequence charSequence2;
        Q3 q3 = this.e;
        if (q3 == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = BuildConfig.FLAVOR;
        }
        if (q3.C0) {
            charSequence2 = null;
        } else {
            charSequence2 = charSequence;
        }
        super.setText(charSequence2, bufferType);
        Q3 q32 = this.e;
        if (q32 != null && !TextUtils.equals(q32.E, charSequence)) {
            q32.E = charSequence;
            q32.k0.d = true;
            q32.invalidateSelf();
            q32.x();
        }
    }

    public void setTextAppearance(If r3) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.k0.b(r3, q3.e0);
        }
        i();
    }

    public void setTextAppearanceResource(int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f2) {
        Q3 q3 = this.e;
        if (q3 != null && q3.a0 != f2) {
            q3.a0 = f2;
            q3.invalidateSelf();
            q3.x();
        }
    }

    public void setTextEndPaddingResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            float dimension = q3.e0.getResources().getDimension(i);
            if (q3.a0 != dimension) {
                q3.a0 = dimension;
                q3.invalidateSelf();
                q3.x();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i, float f2) {
        super.setTextSize(i, f2);
        Q3 q3 = this.e;
        if (q3 != null) {
            float applyDimension = TypedValue.applyDimension(i, f2, getResources().getDisplayMetrics());
            Lf lf = q3.k0;
            If r1 = lf.f121f;
            if (r1 != null) {
                r1.k = applyDimension;
                lf.a.setTextSize(applyDimension);
                q3.a();
            }
        }
        i();
    }

    public void setTextStartPadding(float f2) {
        Q3 q3 = this.e;
        if (q3 != null && q3.Z != f2) {
            q3.Z = f2;
            q3.invalidateSelf();
            q3.x();
        }
    }

    public void setTextStartPaddingResource(int i) {
        Q3 q3 = this.e;
        if (q3 != null) {
            float dimension = q3.e0.getResources().getDimension(i);
            if (q3.Z != dimension) {
                q3.Z = dimension;
                q3.invalidateSelf();
                q3.x();
            }
        }
    }

    public void setCloseIconVisible(boolean z) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.P(z);
        }
        f();
    }

    public void setCheckedIconVisible(boolean z) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.C(z);
        }
    }

    public void setChipIconVisible(boolean z) {
        Q3 q3 = this.e;
        if (q3 != null) {
            q3.H(z);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        Q3 q3 = this.e;
        if (q3 != null) {
            Context context2 = q3.e0;
            q3.k0.b(new If(context2, i), context2);
        }
        i();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        Q3 q3 = this.e;
        if (q3 != null) {
            Context context = q3.e0;
            q3.k0.b(new If(context, i), context);
        }
        i();
    }
}
