package com.google.android.material.textfield;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.WeakHashMap;
import o.AbstractC0119f;
import o.AbstractC0133fd;
import o.AbstractC0166h6;
import o.AbstractC0263m4;
import o.AbstractC0487x9;
import o.AbstractC0495xh;
import o.AbstractC0513yg;
import o.Ae;
import o.C;
import o.C0047b7;
import o.C0084d4;
import o.C0091db;
import o.C0103e3;
import o.C0111eb;
import o.C0139g;
import o.C0163h3;
import o.C0185i5;
import o.C0201j2;
import o.C0204j5;
import o.C0246l7;
import o.C0248l9;
import o.C0268m9;
import o.C0322p3;
import o.C0364r6;
import o.C0380s2;
import o.C0424u6;
import o.C0498y1;
import o.C0530ze;
import o.Cif;
import o.Dh;
import o.Ha;
import o.If;
import o.InterfaceC0085d5;
import o.J2;
import o.Jf;
import o.L1;
import o.La;
import o.Mf;
import o.Nf;
import o.Ng;
import o.Of;
import o.Pf;
import o.Q0;
import o.Q5;
import o.RunnableC0180i0;
import o.S2;
import o.Ve;
import o.Y5;
import o.Z6;
import org.bouncycastle.pqc.crypto.rainbow.GF2Field;
import org.conscrypt.BuildConfig;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class TextInputLayout extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {
    public static final int[][] C0 = {new int[]{R.attr.state_pressed}, new int[0]};
    public ColorStateList A;
    public boolean A0;
    public ColorStateList B;
    public boolean B0;
    public boolean C;
    public CharSequence D;
    public boolean E;
    public C0111eb F;
    public C0111eb G;
    public StateListDrawable H;
    public boolean I;
    public C0111eb J;
    public C0111eb K;
    public Ae L;
    public boolean M;
    public final int N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public final Rect V;
    public final Rect W;
    public final FrameLayout a;
    public final RectF a0;
    public final Cif b;
    public Typeface b0;
    public final C0047b7 c;
    public ColorDrawable c0;
    public EditText d;
    public int d0;
    public CharSequence e;
    public final LinkedHashSet e0;

    /* renamed from: f, reason: collision with root package name */
    public int f57f;
    public ColorDrawable f0;
    public int g;
    public int g0;
    public int h;
    public Drawable h0;
    public int i;
    public ColorStateList i0;
    public final C0268m9 j;
    public ColorStateList j0;
    public boolean k;
    public int k0;
    public int l;
    public int l0;
    public boolean m;
    public int m0;
    public Of n;
    public ColorStateList n0;

    /* renamed from: o, reason: collision with root package name */
    public C0201j2 f58o;
    public int o0;
    public int p;
    public int p0;
    public int q;
    public int q0;
    public CharSequence r;
    public int r0;
    public boolean s;
    public int s0;
    public C0201j2 t;
    public int t0;
    public ColorStateList u;
    public boolean u0;
    public int v;
    public final C0084d4 v0;
    public C0246l7 w;
    public boolean w0;
    public C0246l7 x;
    public boolean x0;
    public ColorStateList y;
    public ValueAnimator y0;
    public ColorStateList z;
    public boolean z0;

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        super(AbstractC0487x9.j0(context, attributeSet, 2130904175, 2131690302), attributeSet, 2130904175);
        this.f57f = -1;
        this.g = -1;
        this.h = -1;
        this.i = -1;
        this.j = new C0268m9(this);
        this.n = new Y5(3);
        this.V = new Rect();
        this.W = new Rect();
        this.a0 = new RectF();
        this.e0 = new LinkedHashSet();
        C0084d4 c0084d4 = new C0084d4(this);
        this.v0 = c0084d4;
        this.B0 = false;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.a = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        LinearInterpolator linearInterpolator = Q0.a;
        c0084d4.Q = linearInterpolator;
        c0084d4.h(false);
        c0084d4.P = linearInterpolator;
        c0084d4.h(false);
        if (c0084d4.g != 8388659) {
            c0084d4.g = 8388659;
            c0084d4.h(false);
        }
        int[] iArr = AbstractC0133fd.C;
        AbstractC0487x9.j(context2, attributeSet, 2130904175, 2131690302);
        AbstractC0487x9.q(context2, attributeSet, iArr, 2130904175, 2131690302, 22, 20, 40, 45, 49);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, 2130904175, 2131690302);
        C0380s2 c0380s2 = new C0380s2(context2, obtainStyledAttributes);
        Cif cif = new Cif(this, c0380s2);
        this.b = cif;
        this.C = obtainStyledAttributes.getBoolean(48, true);
        setHint(obtainStyledAttributes.getText(4));
        this.x0 = obtainStyledAttributes.getBoolean(47, true);
        this.w0 = obtainStyledAttributes.getBoolean(42, true);
        if (obtainStyledAttributes.hasValue(6)) {
            setMinEms(obtainStyledAttributes.getInt(6, -1));
        } else if (obtainStyledAttributes.hasValue(3)) {
            setMinWidth(obtainStyledAttributes.getDimensionPixelSize(3, -1));
        }
        if (obtainStyledAttributes.hasValue(5)) {
            setMaxEms(obtainStyledAttributes.getInt(5, -1));
        } else if (obtainStyledAttributes.hasValue(2)) {
            setMaxWidth(obtainStyledAttributes.getDimensionPixelSize(2, -1));
        }
        this.L = Ae.b(context2, attributeSet, 2130904175, 2131690302).a();
        this.N = context2.getResources().getDimensionPixelOffset(2131100414);
        this.P = obtainStyledAttributes.getDimensionPixelOffset(9, 0);
        this.R = obtainStyledAttributes.getDimensionPixelSize(16, context2.getResources().getDimensionPixelSize(2131100415));
        this.S = obtainStyledAttributes.getDimensionPixelSize(17, context2.getResources().getDimensionPixelSize(2131100416));
        this.Q = this.R;
        float dimension = obtainStyledAttributes.getDimension(13, -1.0f);
        float dimension2 = obtainStyledAttributes.getDimension(12, -1.0f);
        float dimension3 = obtainStyledAttributes.getDimension(10, -1.0f);
        float dimension4 = obtainStyledAttributes.getDimension(11, -1.0f);
        C0530ze e = this.L.e();
        if (dimension >= 0.0f) {
            e.e = new C0139g(dimension);
        }
        if (dimension2 >= 0.0f) {
            e.f308f = new C0139g(dimension2);
        }
        if (dimension3 >= 0.0f) {
            e.g = new C0139g(dimension3);
        }
        if (dimension4 >= 0.0f) {
            e.h = new C0139g(dimension4);
        }
        this.L = e.a();
        ColorStateList G = Ha.G(context2, c0380s2, 7);
        if (G != null) {
            int defaultColor = G.getDefaultColor();
            this.o0 = defaultColor;
            this.U = defaultColor;
            if (G.isStateful()) {
                this.p0 = G.getColorForState(new int[]{-16842910}, -1);
                this.q0 = G.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.r0 = G.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.q0 = this.o0;
                ColorStateList v = L1.v(context2, 2131034835);
                this.p0 = v.getColorForState(new int[]{-16842910}, -1);
                this.r0 = v.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.U = 0;
            this.o0 = 0;
            this.p0 = 0;
            this.q0 = 0;
            this.r0 = 0;
        }
        if (obtainStyledAttributes.hasValue(1)) {
            ColorStateList n = c0380s2.n(1);
            this.j0 = n;
            this.i0 = n;
        }
        ColorStateList G2 = Ha.G(context2, c0380s2, 14);
        this.m0 = obtainStyledAttributes.getColor(14, 0);
        this.k0 = context2.getColor(2131034862);
        this.s0 = context2.getColor(2131034863);
        this.l0 = context2.getColor(2131034866);
        if (G2 != null) {
            setBoxStrokeColorStateList(G2);
        }
        if (obtainStyledAttributes.hasValue(15)) {
            setBoxStrokeErrorColor(Ha.G(context2, c0380s2, 15));
        }
        if (obtainStyledAttributes.getResourceId(49, -1) != -1) {
            setHintTextAppearance(obtainStyledAttributes.getResourceId(49, 0));
        }
        this.A = c0380s2.n(24);
        this.B = c0380s2.n(25);
        int resourceId = obtainStyledAttributes.getResourceId(40, 0);
        CharSequence text = obtainStyledAttributes.getText(35);
        int i = obtainStyledAttributes.getInt(34, 1);
        boolean z = obtainStyledAttributes.getBoolean(36, false);
        int resourceId2 = obtainStyledAttributes.getResourceId(45, 0);
        boolean z2 = obtainStyledAttributes.getBoolean(44, false);
        CharSequence text2 = obtainStyledAttributes.getText(43);
        int resourceId3 = obtainStyledAttributes.getResourceId(57, 0);
        CharSequence text3 = obtainStyledAttributes.getText(56);
        boolean z3 = obtainStyledAttributes.getBoolean(18, false);
        setCounterMaxLength(obtainStyledAttributes.getInt(19, -1));
        this.q = obtainStyledAttributes.getResourceId(22, 0);
        this.p = obtainStyledAttributes.getResourceId(20, 0);
        setBoxBackgroundMode(obtainStyledAttributes.getInt(8, 0));
        setErrorContentDescription(text);
        setErrorAccessibilityLiveRegion(i);
        setCounterOverflowTextAppearance(this.p);
        setHelperTextTextAppearance(resourceId2);
        setErrorTextAppearance(resourceId);
        setCounterTextAppearance(this.q);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        if (obtainStyledAttributes.hasValue(41)) {
            setErrorTextColor(c0380s2.n(41));
        }
        if (obtainStyledAttributes.hasValue(46)) {
            setHelperTextColor(c0380s2.n(46));
        }
        if (obtainStyledAttributes.hasValue(50)) {
            setHintTextColor(c0380s2.n(50));
        }
        if (obtainStyledAttributes.hasValue(23)) {
            setCounterTextColor(c0380s2.n(23));
        }
        if (obtainStyledAttributes.hasValue(21)) {
            setCounterOverflowTextColor(c0380s2.n(21));
        }
        if (obtainStyledAttributes.hasValue(58)) {
            setPlaceholderTextColor(c0380s2.n(58));
        }
        C0047b7 c0047b7 = new C0047b7(this, c0380s2);
        this.c = c0047b7;
        boolean z4 = obtainStyledAttributes.getBoolean(0, true);
        c0380s2.A();
        setImportantForAccessibility(2);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26 && i2 >= 26) {
            AbstractC0495xh.b(this, 1);
        }
        frameLayout.addView(cif);
        frameLayout.addView(c0047b7);
        addView(frameLayout);
        setEnabled(z4);
        setHelperTextEnabled(z2);
        setErrorEnabled(z);
        setCounterEnabled(z3);
        setHelperText(text2);
    }

    private Drawable getEditTextBoxBackground() {
        int i;
        EditText editText = this.d;
        if ((editText instanceof AutoCompleteTextView) && !L1.F(editText)) {
            int E = Ha.E(this.d, 2130903288);
            int i2 = this.O;
            int[][] iArr = C0;
            if (i2 == 2) {
                Context context = getContext();
                C0111eb c0111eb = this.F;
                TypedValue q0 = Ha.q0(context, 2130903328, "TextInputLayout");
                int i3 = q0.resourceId;
                if (i3 != 0) {
                    i = context.getColor(i3);
                } else {
                    i = q0.data;
                }
                C0111eb c0111eb2 = new C0111eb(c0111eb.a.a);
                int e0 = Ha.e0(E, i, 0.1f);
                c0111eb2.k(new ColorStateList(iArr, new int[]{e0, 0}));
                c0111eb2.setTint(i);
                ColorStateList colorStateList = new ColorStateList(iArr, new int[]{e0, i});
                C0111eb c0111eb3 = new C0111eb(c0111eb.a.a);
                c0111eb3.setTint(-1);
                return new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, c0111eb2, c0111eb3), c0111eb});
            }
            if (i2 == 1) {
                C0111eb c0111eb4 = this.F;
                int i4 = this.U;
                return new RippleDrawable(new ColorStateList(iArr, new int[]{Ha.e0(E, i4, 0.1f), i4}), c0111eb4, c0111eb4);
            }
            return null;
        }
        return this.F;
    }

    private Drawable getOrCreateFilledDropDownMenuBackground() {
        if (this.H == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.H = stateListDrawable;
            stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, getOrCreateOutlinedDropDownMenuBackground());
            this.H.addState(new int[0], f(false));
        }
        return this.H;
    }

    private Drawable getOrCreateOutlinedDropDownMenuBackground() {
        if (this.G == null) {
            this.G = f(true);
        }
        return this.G;
    }

    public static void k(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                k((ViewGroup) childAt, z);
            }
        }
    }

    private void setEditText(EditText editText) {
        if (this.d == null) {
            if (getEndIconMode() != 3 && !(editText instanceof TextInputEditText)) {
                Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
            }
            this.d = editText;
            int i = this.f57f;
            if (i != -1) {
                setMinEms(i);
            } else {
                setMinWidth(this.h);
            }
            int i2 = this.g;
            if (i2 != -1) {
                setMaxEms(i2);
            } else {
                setMaxWidth(this.i);
            }
            this.I = false;
            i();
            setTextInputAccessibilityDelegate(new Nf(this));
            Typeface typeface = this.d.getTypeface();
            C0084d4 c0084d4 = this.v0;
            c0084d4.m(typeface);
            float textSize = this.d.getTextSize();
            if (c0084d4.h != textSize) {
                c0084d4.h = textSize;
                c0084d4.h(false);
            }
            int i3 = Build.VERSION.SDK_INT;
            float letterSpacing = this.d.getLetterSpacing();
            if (c0084d4.W != letterSpacing) {
                c0084d4.W = letterSpacing;
                c0084d4.h(false);
            }
            int gravity = this.d.getGravity();
            int i4 = (gravity & (-113)) | 48;
            if (c0084d4.g != i4) {
                c0084d4.g = i4;
                c0084d4.h(false);
            }
            if (c0084d4.f194f != gravity) {
                c0084d4.f194f = gravity;
                c0084d4.h(false);
            }
            WeakHashMap weakHashMap = Dh.a;
            this.t0 = editText.getMinimumHeight();
            this.d.addTextChangedListener(new Mf(this, editText));
            if (this.i0 == null) {
                this.i0 = this.d.getHintTextColors();
            }
            if (this.C) {
                if (TextUtils.isEmpty(this.D)) {
                    CharSequence hint = this.d.getHint();
                    this.e = hint;
                    setHint(hint);
                    this.d.setHint((CharSequence) null);
                }
                this.E = true;
            }
            if (i3 >= 29) {
                p();
            }
            if (this.f58o != null) {
                n(this.d.getText());
            }
            r();
            this.j.b();
            this.b.bringToFront();
            C0047b7 c0047b7 = this.c;
            c0047b7.bringToFront();
            Iterator it = this.e0.iterator();
            while (it.hasNext()) {
                ((Z6) it.next()).a(this);
            }
            c0047b7.m();
            if (!isEnabled()) {
                editText.setEnabled(false);
            }
            u(false, true);
            return;
        }
        throw new IllegalArgumentException("We already have an EditText, can only have one");
    }

    private void setHintInternal(CharSequence charSequence) {
        if (!TextUtils.equals(charSequence, this.D)) {
            this.D = charSequence;
            C0084d4 c0084d4 = this.v0;
            if (charSequence == null || !TextUtils.equals(c0084d4.A, charSequence)) {
                c0084d4.A = charSequence;
                c0084d4.B = null;
                Bitmap bitmap = c0084d4.E;
                if (bitmap != null) {
                    bitmap.recycle();
                    c0084d4.E = null;
                }
                c0084d4.h(false);
            }
            if (!this.u0) {
                j();
            }
        }
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.s == z) {
            return;
        }
        if (z) {
            C0201j2 c0201j2 = this.t;
            if (c0201j2 != null) {
                this.a.addView(c0201j2);
                this.t.setVisibility(0);
            }
        } else {
            C0201j2 c0201j22 = this.t;
            if (c0201j22 != null) {
                c0201j22.setVisibility(8);
            }
            this.t = null;
        }
        this.s = z;
    }

    public final void a(float f2) {
        C0084d4 c0084d4 = this.v0;
        if (c0084d4.b == f2) {
            return;
        }
        if (this.y0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.y0 = valueAnimator;
            valueAnimator.setInterpolator(Ha.p0(getContext(), 2130903869, Q0.b));
            this.y0.setDuration(Ha.o0(getContext(), 2130903859, 167));
            this.y0.addUpdateListener(new S2(3, this));
        }
        this.y0.setFloatValues(c0084d4.b, f2);
        this.y0.start();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
            FrameLayout frameLayout = this.a;
            frameLayout.addView(view, layoutParams2);
            frameLayout.setLayoutParams(layoutParams);
            t();
            setEditText((EditText) view);
            return;
        }
        super.addView(view, i, layoutParams);
    }

    public final void b() {
        ColorStateList valueOf;
        int i;
        int i2;
        C0111eb c0111eb = this.F;
        if (c0111eb == null) {
            return;
        }
        Ae ae = c0111eb.a.a;
        Ae ae2 = this.L;
        if (ae != ae2) {
            c0111eb.setShapeAppearanceModel(ae2);
        }
        if (this.O == 2 && (i = this.Q) > -1 && (i2 = this.T) != 0) {
            C0111eb c0111eb2 = this.F;
            c0111eb2.a.j = i;
            c0111eb2.invalidateSelf();
            c0111eb2.m(ColorStateList.valueOf(i2));
        }
        int i3 = this.U;
        if (this.O == 1) {
            i3 = AbstractC0263m4.b(this.U, Ha.D(getContext(), 2130903328, 0));
        }
        this.U = i3;
        this.F.k(ColorStateList.valueOf(i3));
        C0111eb c0111eb3 = this.J;
        if (c0111eb3 != null && this.K != null) {
            if (this.Q > -1 && this.T != 0) {
                if (this.d.isFocused()) {
                    valueOf = ColorStateList.valueOf(this.k0);
                } else {
                    valueOf = ColorStateList.valueOf(this.T);
                }
                c0111eb3.k(valueOf);
                this.K.k(ColorStateList.valueOf(this.T));
            }
            invalidate();
        }
        s();
    }

    public final int c() {
        float d;
        if (!this.C) {
            return 0;
        }
        int i = this.O;
        C0084d4 c0084d4 = this.v0;
        if (i != 0) {
            if (i != 2) {
                return 0;
            }
            d = c0084d4.d() / 2.0f;
        } else {
            d = c0084d4.d();
        }
        return (int) d;
    }

    public final C0246l7 d() {
        C0246l7 c0246l7 = new C0246l7();
        c0246l7.c = Ha.o0(getContext(), 2130903861, 87);
        c0246l7.d = Ha.p0(getContext(), 2130903871, Q0.a);
        return c0246l7;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText = this.d;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.e != null) {
            boolean z = this.E;
            this.E = false;
            CharSequence hint = editText.getHint();
            this.d.setHint(this.e);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.d.setHint(hint);
                this.E = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        FrameLayout frameLayout = this.a;
        viewStructure.setChildCount(frameLayout.getChildCount());
        for (int i2 = 0; i2 < frameLayout.getChildCount(); i2++) {
            View childAt = frameLayout.getChildAt(i2);
            ViewStructure newChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(newChild, i);
            if (childAt == this.d) {
                newChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.A0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.A0 = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        C0111eb c0111eb;
        int i;
        super.draw(canvas);
        boolean z = this.C;
        C0084d4 c0084d4 = this.v0;
        if (z) {
            c0084d4.getClass();
            int save = canvas.save();
            if (c0084d4.B != null) {
                RectF rectF = c0084d4.e;
                if (rectF.width() > 0.0f && rectF.height() > 0.0f) {
                    TextPaint textPaint = c0084d4.N;
                    textPaint.setTextSize(c0084d4.G);
                    float f2 = c0084d4.p;
                    float f3 = c0084d4.q;
                    float f4 = c0084d4.F;
                    if (f4 != 1.0f) {
                        canvas.scale(f4, f4, f2, f3);
                    }
                    if (c0084d4.d0 > 1 && !c0084d4.C) {
                        float lineStart = c0084d4.p - c0084d4.Y.getLineStart(0);
                        int alpha = textPaint.getAlpha();
                        canvas.translate(lineStart, f3);
                        float f5 = alpha;
                        textPaint.setAlpha((int) (c0084d4.b0 * f5));
                        int i2 = Build.VERSION.SDK_INT;
                        if (i2 >= 31) {
                            float f6 = c0084d4.H;
                            float f7 = c0084d4.I;
                            float f8 = c0084d4.J;
                            int i3 = c0084d4.K;
                            textPaint.setShadowLayer(f6, f7, f8, AbstractC0263m4.d(i3, (textPaint.getAlpha() * Color.alpha(i3)) / GF2Field.MASK));
                        }
                        c0084d4.Y.draw(canvas);
                        textPaint.setAlpha((int) (c0084d4.a0 * f5));
                        if (i2 >= 31) {
                            float f9 = c0084d4.H;
                            float f10 = c0084d4.I;
                            float f11 = c0084d4.J;
                            int i4 = c0084d4.K;
                            textPaint.setShadowLayer(f9, f10, f11, AbstractC0263m4.d(i4, (Color.alpha(i4) * textPaint.getAlpha()) / GF2Field.MASK));
                        }
                        int lineBaseline = c0084d4.Y.getLineBaseline(0);
                        CharSequence charSequence = c0084d4.c0;
                        float f12 = lineBaseline;
                        canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f12, textPaint);
                        if (i2 >= 31) {
                            textPaint.setShadowLayer(c0084d4.H, c0084d4.I, c0084d4.J, c0084d4.K);
                        }
                        String trim = c0084d4.c0.toString().trim();
                        if (trim.endsWith("…")) {
                            i = 0;
                            trim = trim.substring(0, trim.length() - 1);
                        } else {
                            i = 0;
                        }
                        String str = trim;
                        textPaint.setAlpha(alpha);
                        canvas.drawText(str, 0, Math.min(c0084d4.Y.getLineEnd(i), str.length()), 0.0f, f12, (Paint) textPaint);
                    } else {
                        canvas.translate(f2, f3);
                        c0084d4.Y.draw(canvas);
                    }
                    canvas.restoreToCount(save);
                }
            }
        }
        if (this.K != null && (c0111eb = this.J) != null) {
            c0111eb.draw(canvas);
            if (this.d.isFocused()) {
                Rect bounds = this.K.getBounds();
                Rect bounds2 = this.J.getBounds();
                float f13 = c0084d4.b;
                int centerX = bounds2.centerX();
                bounds.left = Q0.c(centerX, bounds2.left, f13);
                bounds.right = Q0.c(centerX, bounds2.right, f13);
                this.K.draw(canvas);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004f  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void drawableStateChanged() {
        /*
            r4 = this;
            boolean r0 = r4.z0
            if (r0 == 0) goto L5
            return
        L5:
            r0 = 1
            r4.z0 = r0
            super.drawableStateChanged()
            int[] r1 = r4.getDrawableState()
            r2 = 0
            o.d4 r3 = r4.v0
            if (r3 == 0) goto L2f
            r3.L = r1
            android.content.res.ColorStateList r1 = r3.k
            if (r1 == 0) goto L20
            boolean r1 = r1.isStateful()
            if (r1 != 0) goto L2a
        L20:
            android.content.res.ColorStateList r1 = r3.j
            if (r1 == 0) goto L2f
            boolean r1 = r1.isStateful()
            if (r1 == 0) goto L2f
        L2a:
            r3.h(r2)
            r1 = r0
            goto L30
        L2f:
            r1 = r2
        L30:
            android.widget.EditText r3 = r4.d
            if (r3 == 0) goto L47
            java.util.WeakHashMap r3 = o.Dh.a
            boolean r3 = r4.isLaidOut()
            if (r3 == 0) goto L43
            boolean r3 = r4.isEnabled()
            if (r3 == 0) goto L43
            goto L44
        L43:
            r0 = r2
        L44:
            r4.u(r0, r2)
        L47:
            r4.r()
            r4.x()
            if (r1 == 0) goto L52
            r4.invalidate()
        L52:
            r4.z0 = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.drawableStateChanged():void");
    }

    public final boolean e() {
        if (this.C && !TextUtils.isEmpty(this.D) && (this.F instanceof C0204j5)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [o.Ae, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v1, types: [o.L1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v0, types: [o.L1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0, types: [o.L1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v0, types: [o.L1, java.lang.Object] */
    public final C0111eb f(boolean z) {
        float f2;
        float dimensionPixelOffset;
        ColorStateList colorStateList;
        int i;
        int i2 = 0;
        float dimensionPixelOffset2 = getResources().getDimensionPixelOffset(2131100388);
        if (z) {
            f2 = dimensionPixelOffset2;
        } else {
            f2 = 0.0f;
        }
        EditText editText = this.d;
        if (editText instanceof La) {
            dimensionPixelOffset = ((La) editText).getPopupElevation();
        } else {
            dimensionPixelOffset = getResources().getDimensionPixelOffset(2131099981);
        }
        int dimensionPixelOffset3 = getResources().getDimensionPixelOffset(2131100325);
        ?? obj = new Object();
        ?? obj2 = new Object();
        ?? obj3 = new Object();
        ?? obj4 = new Object();
        C0424u6 c0424u6 = new C0424u6(i2);
        C0424u6 c0424u62 = new C0424u6(i2);
        C0424u6 c0424u63 = new C0424u6(i2);
        C0424u6 c0424u64 = new C0424u6(i2);
        C0139g c0139g = new C0139g(f2);
        C0139g c0139g2 = new C0139g(f2);
        C0139g c0139g3 = new C0139g(dimensionPixelOffset2);
        C0139g c0139g4 = new C0139g(dimensionPixelOffset2);
        ?? obj5 = new Object();
        obj5.a = obj;
        obj5.b = obj2;
        obj5.c = obj3;
        obj5.d = obj4;
        obj5.e = c0139g;
        obj5.f65f = c0139g2;
        obj5.g = c0139g4;
        obj5.h = c0139g3;
        obj5.i = c0424u6;
        obj5.j = c0424u62;
        obj5.k = c0424u63;
        obj5.l = c0424u64;
        EditText editText2 = this.d;
        if (editText2 instanceof La) {
            colorStateList = ((La) editText2).getDropDownBackgroundTintList();
        } else {
            colorStateList = null;
        }
        Context context = getContext();
        if (colorStateList == null) {
            Paint paint = C0111eb.w;
            TypedValue q0 = Ha.q0(context, 2130903328, C0111eb.class.getSimpleName());
            int i3 = q0.resourceId;
            if (i3 != 0) {
                i = context.getColor(i3);
            } else {
                i = q0.data;
            }
            colorStateList = ColorStateList.valueOf(i);
        }
        C0111eb c0111eb = new C0111eb();
        c0111eb.i(context);
        c0111eb.k(colorStateList);
        c0111eb.j(dimensionPixelOffset);
        c0111eb.setShapeAppearanceModel(obj5);
        C0091db c0091db = c0111eb.a;
        if (c0091db.g == null) {
            c0091db.g = new Rect();
        }
        c0111eb.a.g.set(0, dimensionPixelOffset3, 0, dimensionPixelOffset3);
        c0111eb.invalidateSelf();
        return c0111eb;
    }

    public final int g(int i, boolean z) {
        int compoundPaddingLeft;
        if (!z && getPrefixText() != null) {
            compoundPaddingLeft = this.b.a();
        } else if (z && getSuffixText() != null) {
            compoundPaddingLeft = this.c.c();
        } else {
            compoundPaddingLeft = this.d.getCompoundPaddingLeft();
        }
        return compoundPaddingLeft + i;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.d;
        if (editText != null) {
            return c() + getPaddingTop() + editText.getBaseline();
        }
        return super.getBaseline();
    }

    public C0111eb getBoxBackground() {
        int i = this.O;
        if (i != 1 && i != 2) {
            throw new IllegalStateException();
        }
        return this.F;
    }

    public int getBoxBackgroundColor() {
        return this.U;
    }

    public int getBoxBackgroundMode() {
        return this.O;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.P;
    }

    public float getBoxCornerRadiusBottomEnd() {
        boolean l = Ng.l(this);
        RectF rectF = this.a0;
        if (l) {
            return this.L.h.a(rectF);
        }
        return this.L.g.a(rectF);
    }

    public float getBoxCornerRadiusBottomStart() {
        boolean l = Ng.l(this);
        RectF rectF = this.a0;
        if (l) {
            return this.L.g.a(rectF);
        }
        return this.L.h.a(rectF);
    }

    public float getBoxCornerRadiusTopEnd() {
        boolean l = Ng.l(this);
        RectF rectF = this.a0;
        if (l) {
            return this.L.e.a(rectF);
        }
        return this.L.f65f.a(rectF);
    }

    public float getBoxCornerRadiusTopStart() {
        boolean l = Ng.l(this);
        RectF rectF = this.a0;
        if (l) {
            return this.L.f65f.a(rectF);
        }
        return this.L.e.a(rectF);
    }

    public int getBoxStrokeColor() {
        return this.m0;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.n0;
    }

    public int getBoxStrokeWidth() {
        return this.R;
    }

    public int getBoxStrokeWidthFocused() {
        return this.S;
    }

    public int getCounterMaxLength() {
        return this.l;
    }

    public CharSequence getCounterOverflowDescription() {
        C0201j2 c0201j2;
        if (this.k && this.m && (c0201j2 = this.f58o) != null) {
            return c0201j2.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.z;
    }

    public ColorStateList getCounterTextColor() {
        return this.y;
    }

    public ColorStateList getCursorColor() {
        return this.A;
    }

    public ColorStateList getCursorErrorColor() {
        return this.B;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.i0;
    }

    public EditText getEditText() {
        return this.d;
    }

    public CharSequence getEndIconContentDescription() {
        return this.c.g.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.c.g.getDrawable();
    }

    public int getEndIconMinSize() {
        return this.c.m;
    }

    public int getEndIconMode() {
        return this.c.i;
    }

    public ImageView.ScaleType getEndIconScaleType() {
        return this.c.n;
    }

    public CheckableImageButton getEndIconView() {
        return this.c.g;
    }

    public CharSequence getError() {
        C0268m9 c0268m9 = this.j;
        if (c0268m9.q) {
            return c0268m9.p;
        }
        return null;
    }

    public int getErrorAccessibilityLiveRegion() {
        return this.j.t;
    }

    public CharSequence getErrorContentDescription() {
        return this.j.s;
    }

    public int getErrorCurrentTextColors() {
        C0201j2 c0201j2 = this.j.r;
        if (c0201j2 != null) {
            return c0201j2.getCurrentTextColor();
        }
        return -1;
    }

    public Drawable getErrorIconDrawable() {
        return this.c.c.getDrawable();
    }

    public CharSequence getHelperText() {
        C0268m9 c0268m9 = this.j;
        if (c0268m9.x) {
            return c0268m9.w;
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        C0201j2 c0201j2 = this.j.y;
        if (c0201j2 != null) {
            return c0201j2.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHint() {
        if (this.C) {
            return this.D;
        }
        return null;
    }

    public final float getHintCollapsedTextHeight() {
        return this.v0.d();
    }

    public final int getHintCurrentCollapsedTextColor() {
        C0084d4 c0084d4 = this.v0;
        return c0084d4.e(c0084d4.k);
    }

    public ColorStateList getHintTextColor() {
        return this.j0;
    }

    public Of getLengthCounter() {
        return this.n;
    }

    public int getMaxEms() {
        return this.g;
    }

    public int getMaxWidth() {
        return this.i;
    }

    public int getMinEms() {
        return this.f57f;
    }

    public int getMinWidth() {
        return this.h;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.c.g.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.c.g.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.s) {
            return this.r;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.v;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.u;
    }

    public CharSequence getPrefixText() {
        return this.b.c;
    }

    public ColorStateList getPrefixTextColor() {
        return this.b.b.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.b.b;
    }

    public Ae getShapeAppearanceModel() {
        return this.L;
    }

    public CharSequence getStartIconContentDescription() {
        return this.b.d.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.b.d.getDrawable();
    }

    public int getStartIconMinSize() {
        return this.b.g;
    }

    public ImageView.ScaleType getStartIconScaleType() {
        return this.b.h;
    }

    public CharSequence getSuffixText() {
        return this.c.p;
    }

    public ColorStateList getSuffixTextColor() {
        return this.c.q.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.c.q;
    }

    public Typeface getTypeface() {
        return this.b0;
    }

    public final int h(int i, boolean z) {
        int compoundPaddingRight;
        if (!z && getSuffixText() != null) {
            compoundPaddingRight = this.c.c();
        } else if (z && getPrefixText() != null) {
            compoundPaddingRight = this.b.a();
        } else {
            compoundPaddingRight = this.d.getCompoundPaddingRight();
        }
        return i - compoundPaddingRight;
    }

    /* JADX WARN: Type inference failed for: r0v37, types: [o.j5, o.eb] */
    public final void i() {
        int i = this.O;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    if (this.C && !(this.F instanceof C0204j5)) {
                        Ae ae = this.L;
                        int i2 = C0204j5.y;
                        if (ae == null) {
                            ae = new Ae();
                        }
                        C0185i5 c0185i5 = new C0185i5(ae, new RectF());
                        ?? c0111eb = new C0111eb(c0185i5);
                        c0111eb.x = c0185i5;
                        this.F = c0111eb;
                    } else {
                        this.F = new C0111eb(this.L);
                    }
                    this.J = null;
                    this.K = null;
                } else {
                    throw new IllegalArgumentException(Ve.j(new StringBuilder(), this.O, " is illegal; only @BoxBackgroundMode constants are supported."));
                }
            } else {
                this.F = new C0111eb(this.L);
                this.J = new C0111eb();
                this.K = new C0111eb();
            }
        } else {
            this.F = null;
            this.J = null;
            this.K = null;
        }
        s();
        x();
        if (this.O == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                this.P = getResources().getDimensionPixelSize(2131100220);
            } else if (Ha.a0(getContext())) {
                this.P = getResources().getDimensionPixelSize(2131100219);
            }
        }
        if (this.d != null && this.O == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                EditText editText = this.d;
                WeakHashMap weakHashMap = Dh.a;
                editText.setPaddingRelative(editText.getPaddingStart(), getResources().getDimensionPixelSize(2131100218), this.d.getPaddingEnd(), getResources().getDimensionPixelSize(2131100217));
            } else if (Ha.a0(getContext())) {
                EditText editText2 = this.d;
                WeakHashMap weakHashMap2 = Dh.a;
                editText2.setPaddingRelative(editText2.getPaddingStart(), getResources().getDimensionPixelSize(2131100216), this.d.getPaddingEnd(), getResources().getDimensionPixelSize(2131100215));
            }
        }
        if (this.O != 0) {
            t();
        }
        EditText editText3 = this.d;
        if (editText3 instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText3;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i3 = this.O;
                if (i3 == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateOutlinedDropDownMenuBackground());
                } else if (i3 == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateFilledDropDownMenuBackground());
                }
            }
        }
    }

    public final void j() {
        float f2;
        float f3;
        float f4;
        RectF rectF;
        float f5;
        int i;
        int i2;
        if (!e()) {
            return;
        }
        int width = this.d.getWidth();
        int gravity = this.d.getGravity();
        C0084d4 c0084d4 = this.v0;
        boolean b = c0084d4.b(c0084d4.A);
        c0084d4.C = b;
        Rect rect = c0084d4.d;
        if (gravity != 17 && (gravity & 7) != 1) {
            if ((gravity & 8388613) != 8388613 && (gravity & 5) != 5) {
                if (b) {
                    f2 = rect.right;
                    f3 = c0084d4.Z;
                } else {
                    i2 = rect.left;
                    f4 = i2;
                }
            } else if (b) {
                i2 = rect.left;
                f4 = i2;
            } else {
                f2 = rect.right;
                f3 = c0084d4.Z;
            }
            float max = Math.max(f4, rect.left);
            rectF = this.a0;
            rectF.left = max;
            rectF.top = rect.top;
            if (gravity == 17 && (gravity & 7) != 1) {
                if ((gravity & 8388613) != 8388613 && (gravity & 5) != 5) {
                    if (c0084d4.C) {
                        i = rect.right;
                        f5 = i;
                    } else {
                        f5 = c0084d4.Z + max;
                    }
                } else if (c0084d4.C) {
                    f5 = max + c0084d4.Z;
                } else {
                    i = rect.right;
                    f5 = i;
                }
            } else {
                f5 = (width / 2.0f) + (c0084d4.Z / 2.0f);
            }
            rectF.right = Math.min(f5, rect.right);
            rectF.bottom = c0084d4.d() + rect.top;
            if (rectF.width() <= 0.0f && rectF.height() > 0.0f) {
                float f6 = rectF.left;
                float f7 = this.N;
                rectF.left = f6 - f7;
                rectF.right += f7;
                rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.Q);
                C0204j5 c0204j5 = (C0204j5) this.F;
                c0204j5.getClass();
                c0204j5.q(rectF.left, rectF.top, rectF.right, rectF.bottom);
                return;
            }
        }
        f2 = width / 2.0f;
        f3 = c0084d4.Z / 2.0f;
        f4 = f2 - f3;
        float max2 = Math.max(f4, rect.left);
        rectF = this.a0;
        rectF.left = max2;
        rectF.top = rect.top;
        if (gravity == 17) {
        }
        f5 = (width / 2.0f) + (c0084d4.Z / 2.0f);
        rectF.right = Math.min(f5, rect.right);
        rectF.bottom = c0084d4.d() + rect.top;
        if (rectF.width() <= 0.0f) {
        }
    }

    public final void l(C0201j2 c0201j2, int i) {
        try {
            c0201j2.setTextAppearance(i);
            if (c0201j2.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        c0201j2.setTextAppearance(2131689879);
        c0201j2.setTextColor(getContext().getColor(2131034191));
    }

    public final boolean m() {
        C0268m9 c0268m9 = this.j;
        if (c0268m9.f253o == 1 && c0268m9.r != null && !TextUtils.isEmpty(c0268m9.p)) {
            return true;
        }
        return false;
    }

    public final void n(Editable editable) {
        int i;
        boolean z;
        int i2;
        C0103e3 c0103e3;
        ((Y5) this.n).getClass();
        if (editable != null) {
            i = editable.length();
        } else {
            i = 0;
        }
        boolean z2 = this.m;
        int i3 = this.l;
        String str = null;
        if (i3 == -1) {
            this.f58o.setText(String.valueOf(i));
            this.f58o.setContentDescription(null);
            this.m = false;
        } else {
            if (i > i3) {
                z = true;
            } else {
                z = false;
            }
            this.m = z;
            Context context = getContext();
            C0201j2 c0201j2 = this.f58o;
            int i4 = this.l;
            if (this.m) {
                i2 = 2131623983;
            } else {
                i2 = 2131623982;
            }
            c0201j2.setContentDescription(context.getString(i2, Integer.valueOf(i), Integer.valueOf(i4)));
            if (z2 != this.m) {
                o();
            }
            String str2 = C0103e3.b;
            if (TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1) {
                c0103e3 = C0103e3.e;
            } else {
                c0103e3 = C0103e3.d;
            }
            C0201j2 c0201j22 = this.f58o;
            String string = getContext().getString(2131623984, Integer.valueOf(i), Integer.valueOf(this.l));
            if (string == null) {
                c0103e3.getClass();
            } else {
                c0103e3.getClass();
                C0163h3 c0163h3 = Jf.a;
                str = c0103e3.c(string).toString();
            }
            c0201j22.setText(str);
        }
        if (this.d != null && z2 != this.m) {
            u(false, false);
            x();
            r();
        }
    }

    public final void o() {
        int i;
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        C0201j2 c0201j2 = this.f58o;
        if (c0201j2 != null) {
            if (this.m) {
                i = this.p;
            } else {
                i = this.q;
            }
            l(c0201j2, i);
            if (!this.m && (colorStateList2 = this.y) != null) {
                this.f58o.setTextColor(colorStateList2);
            }
            if (this.m && (colorStateList = this.z) != null) {
                this.f58o.setTextColor(colorStateList);
            }
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.v0.g(configuration);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int max;
        C0047b7 c0047b7 = this.c;
        c0047b7.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        boolean z = false;
        this.B0 = false;
        if (this.d != null && this.d.getMeasuredHeight() < (max = Math.max(c0047b7.getMeasuredHeight(), this.b.getMeasuredHeight()))) {
            this.d.setMinimumHeight(max);
            z = true;
        }
        boolean q = q();
        if (z || q) {
            this.d.post(new RunnableC0180i0(13, this));
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int compoundPaddingTop;
        int compoundPaddingBottom;
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.d;
        if (editText != null) {
            ThreadLocal threadLocal = Q5.a;
            int width = editText.getWidth();
            int height = editText.getHeight();
            Rect rect = this.V;
            rect.set(0, 0, width, height);
            Q5.b(this, editText, rect);
            C0111eb c0111eb = this.J;
            if (c0111eb != null) {
                int i5 = rect.bottom;
                c0111eb.setBounds(rect.left, i5 - this.R, rect.right, i5);
            }
            C0111eb c0111eb2 = this.K;
            if (c0111eb2 != null) {
                int i6 = rect.bottom;
                c0111eb2.setBounds(rect.left, i6 - this.S, rect.right, i6);
            }
            if (this.C) {
                float textSize = this.d.getTextSize();
                C0084d4 c0084d4 = this.v0;
                if (c0084d4.h != textSize) {
                    c0084d4.h = textSize;
                    c0084d4.h(false);
                }
                int gravity = this.d.getGravity();
                int i7 = (gravity & (-113)) | 48;
                if (c0084d4.g != i7) {
                    c0084d4.g = i7;
                    c0084d4.h(false);
                }
                if (c0084d4.f194f != gravity) {
                    c0084d4.f194f = gravity;
                    c0084d4.h(false);
                }
                if (this.d != null) {
                    boolean l = Ng.l(this);
                    int i8 = rect.bottom;
                    Rect rect2 = this.W;
                    rect2.bottom = i8;
                    int i9 = this.O;
                    if (i9 != 1) {
                        if (i9 != 2) {
                            rect2.left = g(rect.left, l);
                            rect2.top = getPaddingTop();
                            rect2.right = h(rect.right, l);
                        } else {
                            rect2.left = this.d.getPaddingLeft() + rect.left;
                            rect2.top = rect.top - c();
                            rect2.right = rect.right - this.d.getPaddingRight();
                        }
                    } else {
                        rect2.left = g(rect.left, l);
                        rect2.top = rect.top + this.P;
                        rect2.right = h(rect.right, l);
                    }
                    int i10 = rect2.left;
                    int i11 = rect2.top;
                    int i12 = rect2.right;
                    int i13 = rect2.bottom;
                    Rect rect3 = c0084d4.d;
                    if (rect3.left != i10 || rect3.top != i11 || rect3.right != i12 || rect3.bottom != i13) {
                        rect3.set(i10, i11, i12, i13);
                        c0084d4.M = true;
                    }
                    if (this.d != null) {
                        TextPaint textPaint = c0084d4.O;
                        textPaint.setTextSize(c0084d4.h);
                        textPaint.setTypeface(c0084d4.u);
                        textPaint.setLetterSpacing(c0084d4.W);
                        float f2 = -textPaint.ascent();
                        rect2.left = this.d.getCompoundPaddingLeft() + rect.left;
                        if (this.O == 1 && this.d.getMinLines() <= 1) {
                            compoundPaddingTop = (int) (rect.centerY() - (f2 / 2.0f));
                        } else {
                            compoundPaddingTop = rect.top + this.d.getCompoundPaddingTop();
                        }
                        rect2.top = compoundPaddingTop;
                        rect2.right = rect.right - this.d.getCompoundPaddingRight();
                        if (this.O == 1 && this.d.getMinLines() <= 1) {
                            compoundPaddingBottom = (int) (rect2.top + f2);
                        } else {
                            compoundPaddingBottom = rect.bottom - this.d.getCompoundPaddingBottom();
                        }
                        rect2.bottom = compoundPaddingBottom;
                        int i14 = rect2.left;
                        int i15 = rect2.top;
                        int i16 = rect2.right;
                        Rect rect4 = c0084d4.c;
                        if (rect4.left != i14 || rect4.top != i15 || rect4.right != i16 || rect4.bottom != compoundPaddingBottom) {
                            rect4.set(i14, i15, i16, compoundPaddingBottom);
                            c0084d4.M = true;
                        }
                        c0084d4.h(false);
                        if (e() && !this.u0) {
                            j();
                            return;
                        }
                        return;
                    }
                    throw new IllegalStateException();
                }
                throw new IllegalStateException();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        EditText editText;
        super.onMeasure(i, i2);
        boolean z = this.B0;
        C0047b7 c0047b7 = this.c;
        if (!z) {
            c0047b7.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.B0 = true;
        }
        if (this.t != null && (editText = this.d) != null) {
            this.t.setGravity(editText.getGravity());
            this.t.setPadding(this.d.getCompoundPaddingLeft(), this.d.getCompoundPaddingTop(), this.d.getCompoundPaddingRight(), this.d.getCompoundPaddingBottom());
        }
        c0047b7.m();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Pf)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Pf pf = (Pf) parcelable;
        super.onRestoreInstanceState(pf.a);
        setError(pf.c);
        if (pf.d) {
            post(new J2(11, this));
        }
        requestLayout();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3, types: [o.Ae, java.lang.Object] */
    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (z != this.M) {
            InterfaceC0085d5 interfaceC0085d5 = this.L.e;
            RectF rectF = this.a0;
            float a = interfaceC0085d5.a(rectF);
            float a2 = this.L.f65f.a(rectF);
            float a3 = this.L.h.a(rectF);
            float a4 = this.L.g.a(rectF);
            Ae ae = this.L;
            L1 l1 = ae.a;
            L1 l12 = ae.b;
            L1 l13 = ae.d;
            L1 l14 = ae.c;
            C0424u6 c0424u6 = new C0424u6(0);
            C0424u6 c0424u62 = new C0424u6(0);
            C0424u6 c0424u63 = new C0424u6(0);
            C0424u6 c0424u64 = new C0424u6(0);
            C0530ze.b(l12);
            C0530ze.b(l1);
            C0530ze.b(l14);
            C0530ze.b(l13);
            C0139g c0139g = new C0139g(a2);
            C0139g c0139g2 = new C0139g(a);
            C0139g c0139g3 = new C0139g(a4);
            C0139g c0139g4 = new C0139g(a3);
            ?? obj = new Object();
            obj.a = l12;
            obj.b = l1;
            obj.c = l13;
            obj.d = l14;
            obj.e = c0139g;
            obj.f65f = c0139g2;
            obj.g = c0139g4;
            obj.h = c0139g3;
            obj.i = c0424u6;
            obj.j = c0424u62;
            obj.k = c0424u63;
            obj.l = c0424u64;
            this.M = z;
            setShapeAppearanceModel(obj);
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.os.Parcelable, o.f, o.Pf] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        boolean z;
        ?? abstractC0119f = new AbstractC0119f(super.onSaveInstanceState());
        if (m()) {
            abstractC0119f.c = getError();
        }
        C0047b7 c0047b7 = this.c;
        if (c0047b7.i != 0 && c0047b7.g.d) {
            z = true;
        } else {
            z = false;
        }
        abstractC0119f.d = z;
        return abstractC0119f;
    }

    public final void p() {
        Drawable textCursorDrawable;
        Drawable textCursorDrawable2;
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.A;
        if (colorStateList2 == null) {
            Context context = getContext();
            TypedValue m0 = Ha.m0(context, 2130903287);
            if (m0 != null) {
                int i = m0.resourceId;
                if (i != 0) {
                    colorStateList2 = L1.v(context, i);
                } else {
                    int i2 = m0.data;
                    if (i2 != 0) {
                        colorStateList2 = ColorStateList.valueOf(i2);
                    }
                }
            }
            colorStateList2 = null;
        }
        EditText editText = this.d;
        if (editText != null) {
            textCursorDrawable = editText.getTextCursorDrawable();
            if (textCursorDrawable != null) {
                textCursorDrawable2 = this.d.getTextCursorDrawable();
                Drawable mutate = textCursorDrawable2.mutate();
                if ((m() || (this.f58o != null && this.m)) && (colorStateList = this.B) != null) {
                    colorStateList2 = colorStateList;
                }
                mutate.setTintList(colorStateList2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean q() {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.q():boolean");
    }

    public final void r() {
        Drawable background;
        C0201j2 c0201j2;
        EditText editText = this.d;
        if (editText == null || this.O != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        int[] iArr = AbstractC0166h6.a;
        Drawable mutate = background.mutate();
        if (m()) {
            mutate.setColorFilter(C0498y1.c(getErrorCurrentTextColors(), PorterDuff.Mode.SRC_IN));
        } else if (this.m && (c0201j2 = this.f58o) != null) {
            mutate.setColorFilter(C0498y1.c(c0201j2.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            mutate.clearColorFilter();
            this.d.refreshDrawableState();
        }
    }

    public final void s() {
        EditText editText = this.d;
        if (editText != null && this.F != null) {
            if ((this.I || editText.getBackground() == null) && this.O != 0) {
                Drawable editTextBoxBackground = getEditTextBoxBackground();
                EditText editText2 = this.d;
                WeakHashMap weakHashMap = Dh.a;
                editText2.setBackground(editTextBoxBackground);
                this.I = true;
            }
        }
    }

    public void setBoxBackgroundColor(int i) {
        if (this.U != i) {
            this.U = i;
            this.o0 = i;
            this.q0 = i;
            this.r0 = i;
            b();
        }
    }

    public void setBoxBackgroundColorResource(int i) {
        setBoxBackgroundColor(getContext().getColor(i));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.o0 = defaultColor;
        this.U = defaultColor;
        this.p0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.q0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.r0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        b();
    }

    public void setBoxBackgroundMode(int i) {
        if (i == this.O) {
            return;
        }
        this.O = i;
        if (this.d != null) {
            i();
        }
    }

    public void setBoxCollapsedPaddingTop(int i) {
        this.P = i;
    }

    public void setBoxCornerFamily(int i) {
        C0530ze e = this.L.e();
        InterfaceC0085d5 interfaceC0085d5 = this.L.e;
        L1 s = Ha.s(i);
        e.a = s;
        C0530ze.b(s);
        e.e = interfaceC0085d5;
        InterfaceC0085d5 interfaceC0085d52 = this.L.f65f;
        L1 s2 = Ha.s(i);
        e.b = s2;
        C0530ze.b(s2);
        e.f308f = interfaceC0085d52;
        InterfaceC0085d5 interfaceC0085d53 = this.L.h;
        L1 s3 = Ha.s(i);
        e.d = s3;
        C0530ze.b(s3);
        e.h = interfaceC0085d53;
        InterfaceC0085d5 interfaceC0085d54 = this.L.g;
        L1 s4 = Ha.s(i);
        e.c = s4;
        C0530ze.b(s4);
        e.g = interfaceC0085d54;
        this.L = e.a();
        b();
    }

    public void setBoxStrokeColor(int i) {
        if (this.m0 != i) {
            this.m0 = i;
            x();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.k0 = colorStateList.getDefaultColor();
            this.s0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.l0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.m0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.m0 != colorStateList.getDefaultColor()) {
            this.m0 = colorStateList.getDefaultColor();
        }
        x();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.n0 != colorStateList) {
            this.n0 = colorStateList;
            x();
        }
    }

    public void setBoxStrokeWidth(int i) {
        this.R = i;
        x();
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.S = i;
        x();
    }

    public void setBoxStrokeWidthFocusedResource(int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) {
        if (this.k != z) {
            Editable editable = null;
            C0268m9 c0268m9 = this.j;
            if (z) {
                C0201j2 c0201j2 = new C0201j2(getContext(), null);
                this.f58o = c0201j2;
                c0201j2.setId(2131231191);
                Typeface typeface = this.b0;
                if (typeface != null) {
                    this.f58o.setTypeface(typeface);
                }
                this.f58o.setMaxLines(1);
                c0268m9.a(this.f58o, 2);
                ((ViewGroup.MarginLayoutParams) this.f58o.getLayoutParams()).setMarginStart(getResources().getDimensionPixelOffset(2131100417));
                o();
                if (this.f58o != null) {
                    EditText editText = this.d;
                    if (editText != null) {
                        editable = editText.getText();
                    }
                    n(editable);
                }
            } else {
                c0268m9.g(this.f58o, 2);
                this.f58o = null;
            }
            this.k = z;
        }
    }

    public void setCounterMaxLength(int i) {
        Editable text;
        if (this.l != i) {
            if (i > 0) {
                this.l = i;
            } else {
                this.l = -1;
            }
            if (this.k && this.f58o != null) {
                EditText editText = this.d;
                if (editText == null) {
                    text = null;
                } else {
                    text = editText.getText();
                }
                n(text);
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.p != i) {
            this.p = i;
            o();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.z != colorStateList) {
            this.z = colorStateList;
            o();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.q != i) {
            this.q = i;
            o();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.y != colorStateList) {
            this.y = colorStateList;
            o();
        }
    }

    public void setCursorColor(ColorStateList colorStateList) {
        if (this.A != colorStateList) {
            this.A = colorStateList;
            p();
        }
    }

    public void setCursorErrorColor(ColorStateList colorStateList) {
        if (this.B != colorStateList) {
            this.B = colorStateList;
            if (m() || (this.f58o != null && this.m)) {
                p();
            }
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.i0 = colorStateList;
        this.j0 = colorStateList;
        if (this.d != null) {
            u(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        k(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.c.g.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.c.g.setCheckable(z);
    }

    public void setEndIconContentDescription(int i) {
        C0047b7 c0047b7 = this.c;
        CharSequence text = i != 0 ? c0047b7.getResources().getText(i) : null;
        CheckableImageButton checkableImageButton = c0047b7.g;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
    }

    public void setEndIconDrawable(int i) {
        C0047b7 c0047b7 = this.c;
        Drawable z = i != 0 ? L1.z(c0047b7.getContext(), i) : null;
        CheckableImageButton checkableImageButton = c0047b7.g;
        checkableImageButton.setImageDrawable(z);
        if (z != null) {
            ColorStateList colorStateList = c0047b7.k;
            PorterDuff.Mode mode = c0047b7.l;
            TextInputLayout textInputLayout = c0047b7.a;
            L1.g(textInputLayout, checkableImageButton, colorStateList, mode);
            L1.V(textInputLayout, checkableImageButton, c0047b7.k);
        }
    }

    public void setEndIconMinSize(int i) {
        C0047b7 c0047b7 = this.c;
        if (i >= 0) {
            if (i != c0047b7.m) {
                c0047b7.m = i;
                CheckableImageButton checkableImageButton = c0047b7.g;
                checkableImageButton.setMinimumWidth(i);
                checkableImageButton.setMinimumHeight(i);
                CheckableImageButton checkableImageButton2 = c0047b7.c;
                checkableImageButton2.setMinimumWidth(i);
                checkableImageButton2.setMinimumHeight(i);
                return;
            }
            return;
        }
        c0047b7.getClass();
        throw new IllegalArgumentException("endIconSize cannot be less than 0");
    }

    public void setEndIconMode(int i) {
        this.c.g(i);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        C0047b7 c0047b7 = this.c;
        View.OnLongClickListener onLongClickListener = c0047b7.f183o;
        CheckableImageButton checkableImageButton = c0047b7.g;
        checkableImageButton.setOnClickListener(onClickListener);
        L1.Z(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        C0047b7 c0047b7 = this.c;
        c0047b7.f183o = onLongClickListener;
        CheckableImageButton checkableImageButton = c0047b7.g;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        L1.Z(checkableImageButton, onLongClickListener);
    }

    public void setEndIconScaleType(ImageView.ScaleType scaleType) {
        C0047b7 c0047b7 = this.c;
        c0047b7.n = scaleType;
        c0047b7.g.setScaleType(scaleType);
        c0047b7.c.setScaleType(scaleType);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        C0047b7 c0047b7 = this.c;
        if (c0047b7.k != colorStateList) {
            c0047b7.k = colorStateList;
            L1.g(c0047b7.a, c0047b7.g, colorStateList, c0047b7.l);
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        C0047b7 c0047b7 = this.c;
        if (c0047b7.l != mode) {
            c0047b7.l = mode;
            L1.g(c0047b7.a, c0047b7.g, c0047b7.k, mode);
        }
    }

    public void setEndIconVisible(boolean z) {
        this.c.h(z);
    }

    public void setError(CharSequence charSequence) {
        C0268m9 c0268m9 = this.j;
        if (!c0268m9.q) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (!TextUtils.isEmpty(charSequence)) {
            c0268m9.c();
            c0268m9.p = charSequence;
            c0268m9.r.setText(charSequence);
            int i = c0268m9.n;
            if (i != 1) {
                c0268m9.f253o = 1;
            }
            c0268m9.i(i, c0268m9.f253o, c0268m9.h(c0268m9.r, charSequence));
            return;
        }
        c0268m9.f();
    }

    public void setErrorAccessibilityLiveRegion(int i) {
        C0268m9 c0268m9 = this.j;
        c0268m9.t = i;
        C0201j2 c0201j2 = c0268m9.r;
        if (c0201j2 != null) {
            WeakHashMap weakHashMap = Dh.a;
            c0201j2.setAccessibilityLiveRegion(i);
        }
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        C0268m9 c0268m9 = this.j;
        c0268m9.s = charSequence;
        C0201j2 c0201j2 = c0268m9.r;
        if (c0201j2 != null) {
            c0201j2.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z) {
        C0268m9 c0268m9 = this.j;
        if (c0268m9.q != z) {
            c0268m9.c();
            TextInputLayout textInputLayout = c0268m9.h;
            if (z) {
                C0201j2 c0201j2 = new C0201j2(c0268m9.g, null);
                c0268m9.r = c0201j2;
                c0201j2.setId(2131231192);
                c0268m9.r.setTextAlignment(5);
                Typeface typeface = c0268m9.B;
                if (typeface != null) {
                    c0268m9.r.setTypeface(typeface);
                }
                int i = c0268m9.u;
                c0268m9.u = i;
                C0201j2 c0201j22 = c0268m9.r;
                if (c0201j22 != null) {
                    textInputLayout.l(c0201j22, i);
                }
                ColorStateList colorStateList = c0268m9.v;
                c0268m9.v = colorStateList;
                C0201j2 c0201j23 = c0268m9.r;
                if (c0201j23 != null && colorStateList != null) {
                    c0201j23.setTextColor(colorStateList);
                }
                CharSequence charSequence = c0268m9.s;
                c0268m9.s = charSequence;
                C0201j2 c0201j24 = c0268m9.r;
                if (c0201j24 != null) {
                    c0201j24.setContentDescription(charSequence);
                }
                int i2 = c0268m9.t;
                c0268m9.t = i2;
                C0201j2 c0201j25 = c0268m9.r;
                if (c0201j25 != null) {
                    WeakHashMap weakHashMap = Dh.a;
                    c0201j25.setAccessibilityLiveRegion(i2);
                }
                c0268m9.r.setVisibility(4);
                c0268m9.a(c0268m9.r, 0);
            } else {
                c0268m9.f();
                c0268m9.g(c0268m9.r, 0);
                c0268m9.r = null;
                textInputLayout.r();
                textInputLayout.x();
            }
            c0268m9.q = z;
        }
    }

    public void setErrorIconDrawable(int i) {
        C0047b7 c0047b7 = this.c;
        c0047b7.i(i != 0 ? L1.z(c0047b7.getContext(), i) : null);
        L1.V(c0047b7.a, c0047b7.c, c0047b7.d);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        C0047b7 c0047b7 = this.c;
        CheckableImageButton checkableImageButton = c0047b7.c;
        View.OnLongClickListener onLongClickListener = c0047b7.f182f;
        checkableImageButton.setOnClickListener(onClickListener);
        L1.Z(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        C0047b7 c0047b7 = this.c;
        c0047b7.f182f = onLongClickListener;
        CheckableImageButton checkableImageButton = c0047b7.c;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        L1.Z(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        C0047b7 c0047b7 = this.c;
        if (c0047b7.d != colorStateList) {
            c0047b7.d = colorStateList;
            L1.g(c0047b7.a, c0047b7.c, colorStateList, c0047b7.e);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        C0047b7 c0047b7 = this.c;
        if (c0047b7.e != mode) {
            c0047b7.e = mode;
            L1.g(c0047b7.a, c0047b7.c, c0047b7.d, mode);
        }
    }

    public void setErrorTextAppearance(int i) {
        C0268m9 c0268m9 = this.j;
        c0268m9.u = i;
        C0201j2 c0201j2 = c0268m9.r;
        if (c0201j2 != null) {
            c0268m9.h.l(c0201j2, i);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        C0268m9 c0268m9 = this.j;
        c0268m9.v = colorStateList;
        C0201j2 c0201j2 = c0268m9.r;
        if (c0201j2 != null && colorStateList != null) {
            c0201j2.setTextColor(colorStateList);
        }
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.w0 != z) {
            this.w0 = z;
            u(false, false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        boolean isEmpty = TextUtils.isEmpty(charSequence);
        C0268m9 c0268m9 = this.j;
        if (isEmpty) {
            if (c0268m9.x) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!c0268m9.x) {
            setHelperTextEnabled(true);
        }
        c0268m9.c();
        c0268m9.w = charSequence;
        c0268m9.y.setText(charSequence);
        int i = c0268m9.n;
        if (i != 2) {
            c0268m9.f253o = 2;
        }
        c0268m9.i(i, c0268m9.f253o, c0268m9.h(c0268m9.y, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        C0268m9 c0268m9 = this.j;
        c0268m9.A = colorStateList;
        C0201j2 c0201j2 = c0268m9.y;
        if (c0201j2 != null && colorStateList != null) {
            c0201j2.setTextColor(colorStateList);
        }
    }

    public void setHelperTextEnabled(boolean z) {
        C0268m9 c0268m9 = this.j;
        if (c0268m9.x != z) {
            c0268m9.c();
            if (z) {
                C0201j2 c0201j2 = new C0201j2(c0268m9.g, null);
                c0268m9.y = c0201j2;
                c0201j2.setId(2131231193);
                c0268m9.y.setTextAlignment(5);
                Typeface typeface = c0268m9.B;
                if (typeface != null) {
                    c0268m9.y.setTypeface(typeface);
                }
                c0268m9.y.setVisibility(4);
                c0268m9.y.setAccessibilityLiveRegion(1);
                int i = c0268m9.z;
                c0268m9.z = i;
                C0201j2 c0201j22 = c0268m9.y;
                if (c0201j22 != null) {
                    c0201j22.setTextAppearance(i);
                }
                ColorStateList colorStateList = c0268m9.A;
                c0268m9.A = colorStateList;
                C0201j2 c0201j23 = c0268m9.y;
                if (c0201j23 != null && colorStateList != null) {
                    c0201j23.setTextColor(colorStateList);
                }
                c0268m9.a(c0268m9.y, 1);
                c0268m9.y.setAccessibilityDelegate(new C0248l9(c0268m9));
            } else {
                c0268m9.c();
                int i2 = c0268m9.n;
                if (i2 == 2) {
                    c0268m9.f253o = 0;
                }
                c0268m9.i(i2, c0268m9.f253o, c0268m9.h(c0268m9.y, BuildConfig.FLAVOR));
                c0268m9.g(c0268m9.y, 1);
                c0268m9.y = null;
                TextInputLayout textInputLayout = c0268m9.h;
                textInputLayout.r();
                textInputLayout.x();
            }
            c0268m9.x = z;
        }
    }

    public void setHelperTextTextAppearance(int i) {
        C0268m9 c0268m9 = this.j;
        c0268m9.z = i;
        C0201j2 c0201j2 = c0268m9.y;
        if (c0201j2 != null) {
            c0201j2.setTextAppearance(i);
        }
    }

    public void setHint(CharSequence charSequence) {
        if (this.C) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.x0 = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.C) {
            this.C = z;
            if (!z) {
                this.E = false;
                if (!TextUtils.isEmpty(this.D) && TextUtils.isEmpty(this.d.getHint())) {
                    this.d.setHint(this.D);
                }
                setHintInternal(null);
            } else {
                CharSequence hint = this.d.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.D)) {
                        setHint(hint);
                    }
                    this.d.setHint((CharSequence) null);
                }
                this.E = true;
            }
            if (this.d != null) {
                t();
            }
        }
    }

    public void setHintTextAppearance(int i) {
        C0084d4 c0084d4 = this.v0;
        TextInputLayout textInputLayout = c0084d4.a;
        If r0 = new If(textInputLayout.getContext(), i);
        ColorStateList colorStateList = r0.j;
        if (colorStateList != null) {
            c0084d4.k = colorStateList;
        }
        float f2 = r0.k;
        if (f2 != 0.0f) {
            c0084d4.i = f2;
        }
        ColorStateList colorStateList2 = r0.a;
        if (colorStateList2 != null) {
            c0084d4.U = colorStateList2;
        }
        c0084d4.S = r0.e;
        c0084d4.T = r0.f109f;
        c0084d4.R = r0.g;
        c0084d4.V = r0.i;
        C0322p3 c0322p3 = c0084d4.y;
        if (c0322p3 != null) {
            c0322p3.m = true;
        }
        C c = new C(6, c0084d4);
        r0.a();
        c0084d4.y = new C0322p3(c, r0.n);
        r0.c(textInputLayout.getContext(), c0084d4.y);
        c0084d4.h(false);
        this.j0 = c0084d4.k;
        if (this.d != null) {
            u(false, false);
            t();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.j0 != colorStateList) {
            if (this.i0 == null) {
                C0084d4 c0084d4 = this.v0;
                if (c0084d4.k != colorStateList) {
                    c0084d4.k = colorStateList;
                    c0084d4.h(false);
                }
            }
            this.j0 = colorStateList;
            if (this.d != null) {
                u(false, false);
            }
        }
    }

    public void setLengthCounter(Of of) {
        this.n = of;
    }

    public void setMaxEms(int i) {
        this.g = i;
        EditText editText = this.d;
        if (editText != null && i != -1) {
            editText.setMaxEms(i);
        }
    }

    public void setMaxWidth(int i) {
        this.i = i;
        EditText editText = this.d;
        if (editText != null && i != -1) {
            editText.setMaxWidth(i);
        }
    }

    public void setMaxWidthResource(int i) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    public void setMinEms(int i) {
        this.f57f = i;
        EditText editText = this.d;
        if (editText != null && i != -1) {
            editText.setMinEms(i);
        }
    }

    public void setMinWidth(int i) {
        this.h = i;
        EditText editText = this.d;
        if (editText != null && i != -1) {
            editText.setMinWidth(i);
        }
    }

    public void setMinWidthResource(int i) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i) {
        C0047b7 c0047b7 = this.c;
        c0047b7.g.setContentDescription(i != 0 ? c0047b7.getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i) {
        C0047b7 c0047b7 = this.c;
        c0047b7.g.setImageDrawable(i != 0 ? L1.z(c0047b7.getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        C0047b7 c0047b7 = this.c;
        if (z && c0047b7.i != 1) {
            c0047b7.g(1);
        } else if (!z) {
            c0047b7.g(0);
        } else {
            c0047b7.getClass();
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        C0047b7 c0047b7 = this.c;
        c0047b7.k = colorStateList;
        L1.g(c0047b7.a, c0047b7.g, colorStateList, c0047b7.l);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        C0047b7 c0047b7 = this.c;
        c0047b7.l = mode;
        L1.g(c0047b7.a, c0047b7.g, c0047b7.k, mode);
    }

    public void setPlaceholderText(CharSequence charSequence) {
        Editable editable = null;
        if (this.t == null) {
            C0201j2 c0201j2 = new C0201j2(getContext(), null);
            this.t = c0201j2;
            c0201j2.setId(2131231194);
            this.t.setImportantForAccessibility(2);
            C0246l7 d = d();
            this.w = d;
            d.b = 67L;
            this.x = d();
            setPlaceholderTextAppearance(this.v);
            setPlaceholderTextColor(this.u);
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.s) {
                setPlaceholderTextEnabled(true);
            }
            this.r = charSequence;
        }
        EditText editText = this.d;
        if (editText != null) {
            editable = editText.getText();
        }
        v(editable);
    }

    public void setPlaceholderTextAppearance(int i) {
        this.v = i;
        C0201j2 c0201j2 = this.t;
        if (c0201j2 != null) {
            c0201j2.setTextAppearance(i);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.u != colorStateList) {
            this.u = colorStateList;
            C0201j2 c0201j2 = this.t;
            if (c0201j2 != null && colorStateList != null) {
                c0201j2.setTextColor(colorStateList);
            }
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        CharSequence charSequence2;
        Cif cif = this.b;
        cif.getClass();
        if (TextUtils.isEmpty(charSequence)) {
            charSequence2 = null;
        } else {
            charSequence2 = charSequence;
        }
        cif.c = charSequence2;
        cif.b.setText(charSequence);
        cif.e();
    }

    public void setPrefixTextAppearance(int i) {
        this.b.b.setTextAppearance(i);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.b.b.setTextColor(colorStateList);
    }

    public void setShapeAppearanceModel(Ae ae) {
        C0111eb c0111eb = this.F;
        if (c0111eb != null && c0111eb.a.a != ae) {
            this.L = ae;
            b();
        }
    }

    public void setStartIconCheckable(boolean z) {
        this.b.d.setCheckable(z);
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.b.d;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(int i) {
        setStartIconDrawable(i != 0 ? L1.z(getContext(), i) : null);
    }

    public void setStartIconMinSize(int i) {
        Cif cif = this.b;
        if (i >= 0) {
            if (i != cif.g) {
                cif.g = i;
                CheckableImageButton checkableImageButton = cif.d;
                checkableImageButton.setMinimumWidth(i);
                checkableImageButton.setMinimumHeight(i);
                return;
            }
            return;
        }
        cif.getClass();
        throw new IllegalArgumentException("startIconSize cannot be less than 0");
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        Cif cif = this.b;
        View.OnLongClickListener onLongClickListener = cif.i;
        CheckableImageButton checkableImageButton = cif.d;
        checkableImageButton.setOnClickListener(onClickListener);
        L1.Z(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        Cif cif = this.b;
        cif.i = onLongClickListener;
        CheckableImageButton checkableImageButton = cif.d;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        L1.Z(checkableImageButton, onLongClickListener);
    }

    public void setStartIconScaleType(ImageView.ScaleType scaleType) {
        Cif cif = this.b;
        cif.h = scaleType;
        cif.d.setScaleType(scaleType);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        Cif cif = this.b;
        if (cif.e != colorStateList) {
            cif.e = colorStateList;
            L1.g(cif.a, cif.d, colorStateList, cif.f233f);
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        Cif cif = this.b;
        if (cif.f233f != mode) {
            cif.f233f = mode;
            L1.g(cif.a, cif.d, cif.e, mode);
        }
    }

    public void setStartIconVisible(boolean z) {
        this.b.c(z);
    }

    public void setSuffixText(CharSequence charSequence) {
        CharSequence charSequence2;
        C0047b7 c0047b7 = this.c;
        c0047b7.getClass();
        if (TextUtils.isEmpty(charSequence)) {
            charSequence2 = null;
        } else {
            charSequence2 = charSequence;
        }
        c0047b7.p = charSequence2;
        c0047b7.q.setText(charSequence);
        c0047b7.n();
    }

    public void setSuffixTextAppearance(int i) {
        this.c.q.setTextAppearance(i);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.c.q.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(Nf nf) {
        EditText editText = this.d;
        if (editText != null) {
            Dh.l(editText, nf);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.b0) {
            this.b0 = typeface;
            this.v0.m(typeface);
            C0268m9 c0268m9 = this.j;
            if (typeface != c0268m9.B) {
                c0268m9.B = typeface;
                C0201j2 c0201j2 = c0268m9.r;
                if (c0201j2 != null) {
                    c0201j2.setTypeface(typeface);
                }
                C0201j2 c0201j22 = c0268m9.y;
                if (c0201j22 != null) {
                    c0201j22.setTypeface(typeface);
                }
            }
            C0201j2 c0201j23 = this.f58o;
            if (c0201j23 != null) {
                c0201j23.setTypeface(typeface);
            }
        }
    }

    public final void t() {
        if (this.O != 1) {
            FrameLayout frameLayout = this.a;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
            int c = c();
            if (c != layoutParams.topMargin) {
                layoutParams.topMargin = c;
                frameLayout.requestLayout();
            }
        }
    }

    public final void u(boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        ColorStateList colorStateList;
        C0201j2 c0201j2;
        ColorStateList colorStateList2;
        int i;
        boolean isEnabled = isEnabled();
        EditText editText = this.d;
        if (editText != null && !TextUtils.isEmpty(editText.getText())) {
            z3 = true;
        } else {
            z3 = false;
        }
        EditText editText2 = this.d;
        if (editText2 != null && editText2.hasFocus()) {
            z4 = true;
        } else {
            z4 = false;
        }
        ColorStateList colorStateList3 = this.i0;
        C0084d4 c0084d4 = this.v0;
        if (colorStateList3 != null) {
            c0084d4.i(colorStateList3);
        }
        Editable editable = null;
        if (!isEnabled) {
            ColorStateList colorStateList4 = this.i0;
            if (colorStateList4 != null) {
                i = colorStateList4.getColorForState(new int[]{-16842910}, this.s0);
            } else {
                i = this.s0;
            }
            c0084d4.i(ColorStateList.valueOf(i));
        } else if (m()) {
            C0201j2 c0201j22 = this.j.r;
            if (c0201j22 != null) {
                colorStateList2 = c0201j22.getTextColors();
            } else {
                colorStateList2 = null;
            }
            c0084d4.i(colorStateList2);
        } else if (this.m && (c0201j2 = this.f58o) != null) {
            c0084d4.i(c0201j2.getTextColors());
        } else if (z4 && (colorStateList = this.j0) != null && c0084d4.k != colorStateList) {
            c0084d4.k = colorStateList;
            c0084d4.h(false);
        }
        C0047b7 c0047b7 = this.c;
        Cif cif = this.b;
        if (!z3 && this.w0 && (!isEnabled() || !z4)) {
            if (z2 || !this.u0) {
                ValueAnimator valueAnimator = this.y0;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.y0.cancel();
                }
                if (z && this.x0) {
                    a(0.0f);
                } else {
                    c0084d4.k(0.0f);
                }
                if (e() && !((C0204j5) this.F).x.r.isEmpty() && e()) {
                    ((C0204j5) this.F).q(0.0f, 0.0f, 0.0f, 0.0f);
                }
                this.u0 = true;
                C0201j2 c0201j23 = this.t;
                if (c0201j23 != null && this.s) {
                    c0201j23.setText((CharSequence) null);
                    AbstractC0513yg.a(this.a, this.x);
                    this.t.setVisibility(4);
                }
                cif.j = true;
                cif.e();
                c0047b7.r = true;
                c0047b7.n();
                return;
            }
            return;
        }
        if (z2 || this.u0) {
            ValueAnimator valueAnimator2 = this.y0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.y0.cancel();
            }
            if (z && this.x0) {
                a(1.0f);
            } else {
                c0084d4.k(1.0f);
            }
            this.u0 = false;
            if (e()) {
                j();
            }
            EditText editText3 = this.d;
            if (editText3 != null) {
                editable = editText3.getText();
            }
            v(editable);
            cif.j = false;
            cif.e();
            c0047b7.r = false;
            c0047b7.n();
        }
    }

    public final void v(Editable editable) {
        int i;
        ((Y5) this.n).getClass();
        if (editable != null) {
            i = editable.length();
        } else {
            i = 0;
        }
        FrameLayout frameLayout = this.a;
        if (i == 0 && !this.u0) {
            if (this.t != null && this.s && !TextUtils.isEmpty(this.r)) {
                this.t.setText(this.r);
                AbstractC0513yg.a(frameLayout, this.w);
                this.t.setVisibility(0);
                this.t.bringToFront();
                announceForAccessibility(this.r);
                return;
            }
            return;
        }
        C0201j2 c0201j2 = this.t;
        if (c0201j2 != null && this.s) {
            c0201j2.setText((CharSequence) null);
            AbstractC0513yg.a(frameLayout, this.x);
            this.t.setVisibility(4);
        }
    }

    public final void w(boolean z, boolean z2) {
        int defaultColor = this.n0.getDefaultColor();
        int colorForState = this.n0.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.n0.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z) {
            this.T = colorForState2;
        } else if (z2) {
            this.T = colorForState;
        } else {
            this.T = defaultColor;
        }
    }

    public final void x() {
        boolean z;
        C0201j2 c0201j2;
        EditText editText;
        EditText editText2;
        if (this.F != null && this.O != 0) {
            boolean z2 = false;
            if (!isFocused() && ((editText2 = this.d) == null || !editText2.hasFocus())) {
                z = false;
            } else {
                z = true;
            }
            if (isHovered() || ((editText = this.d) != null && editText.isHovered())) {
                z2 = true;
            }
            if (!isEnabled()) {
                this.T = this.s0;
            } else if (m()) {
                if (this.n0 != null) {
                    w(z, z2);
                } else {
                    this.T = getErrorCurrentTextColors();
                }
            } else if (this.m && (c0201j2 = this.f58o) != null) {
                if (this.n0 != null) {
                    w(z, z2);
                } else {
                    this.T = c0201j2.getCurrentTextColor();
                }
            } else if (z) {
                this.T = this.m0;
            } else if (z2) {
                this.T = this.l0;
            } else {
                this.T = this.k0;
            }
            if (Build.VERSION.SDK_INT >= 29) {
                p();
            }
            C0047b7 c0047b7 = this.c;
            c0047b7.l();
            CheckableImageButton checkableImageButton = c0047b7.c;
            ColorStateList colorStateList = c0047b7.d;
            TextInputLayout textInputLayout = c0047b7.a;
            L1.V(textInputLayout, checkableImageButton, colorStateList);
            ColorStateList colorStateList2 = c0047b7.k;
            CheckableImageButton checkableImageButton2 = c0047b7.g;
            L1.V(textInputLayout, checkableImageButton2, colorStateList2);
            if (c0047b7.b() instanceof C0364r6) {
                if (textInputLayout.m() && checkableImageButton2.getDrawable() != null) {
                    Drawable mutate = checkableImageButton2.getDrawable().mutate();
                    mutate.setTint(textInputLayout.getErrorCurrentTextColors());
                    checkableImageButton2.setImageDrawable(mutate);
                } else {
                    L1.g(textInputLayout, checkableImageButton2, c0047b7.k, c0047b7.l);
                }
            }
            Cif cif = this.b;
            L1.V(cif.a, cif.d, cif.e);
            if (this.O == 2) {
                int i = this.Q;
                if (z && isEnabled()) {
                    this.Q = this.S;
                } else {
                    this.Q = this.R;
                }
                if (this.Q != i && e() && !this.u0) {
                    if (e()) {
                        ((C0204j5) this.F).q(0.0f, 0.0f, 0.0f, 0.0f);
                    }
                    j();
                }
            }
            if (this.O == 1) {
                if (!isEnabled()) {
                    this.U = this.p0;
                } else if (z2 && !z) {
                    this.U = this.r0;
                } else if (z) {
                    this.U = this.q0;
                } else {
                    this.U = this.o0;
                }
            }
            b();
        }
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.b.b(drawable);
    }

    public void setHint(int i) {
        setHint(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconContentDescription(int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.c.g.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.c.g.setImageDrawable(drawable);
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.c.i(drawable);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.c.g;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(Drawable drawable) {
        C0047b7 c0047b7 = this.c;
        CheckableImageButton checkableImageButton = c0047b7.g;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = c0047b7.k;
            PorterDuff.Mode mode = c0047b7.l;
            TextInputLayout textInputLayout = c0047b7.a;
            L1.g(textInputLayout, checkableImageButton, colorStateList, mode);
            L1.V(textInputLayout, checkableImageButton, c0047b7.k);
        }
    }
}
