package o;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* renamed from: o.j2, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C0201j2 extends TextView {
    public final W0 a;
    public final C0122f2 b;
    public final H1 c;
    public B1 d;
    public boolean e;

    /* renamed from: f, reason: collision with root package name */
    public C f238f;
    public Future g;

    public C0201j2(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    private B1 getEmojiTextViewHelper() {
        if (this.d == null) {
            this.d = new B1(this);
        }
        return this.d;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        W0 w0 = this.a;
        if (w0 != null) {
            w0.a();
        }
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null) {
            c0122f2.b();
        }
    }

    public final void g() {
        Future future = this.g;
        if (future != null) {
            try {
                this.g = null;
                if (future.get() == null) {
                    if (Build.VERSION.SDK_INT >= 29) {
                        throw null;
                    }
                    Ha.V(this);
                    throw null;
                }
                throw new ClassCastException();
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (Xh.c) {
            return super.getAutoSizeMaxTextSize();
        }
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null) {
            return Math.round(c0122f2.i.e);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (Xh.c) {
            return super.getAutoSizeMinTextSize();
        }
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null) {
            return Math.round(c0122f2.i.d);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (Xh.c) {
            return super.getAutoSizeStepGranularity();
        }
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null) {
            return Math.round(c0122f2.i.c);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (Xh.c) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null) {
            return c0122f2.i.f265f;
        }
        return new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (Xh.c) {
            if (super.getAutoSizeTextType() != 1) {
                return 0;
            }
            return 1;
        }
        C0122f2 c0122f2 = this.b;
        if (c0122f2 == null) {
            return 0;
        }
        return c0122f2.i.a;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return Ha.A0(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    public InterfaceC0142g2 getSuperCaller() {
        if (this.f238f == null) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 34) {
                this.f238f = new C0182i2(this);
            } else if (i >= 28) {
                this.f238f = new C0162h2(this);
            } else if (i >= 26) {
                this.f238f = new C(4, this);
            }
        }
        return this.f238f;
    }

    public ColorStateList getSupportBackgroundTintList() {
        W0 w0 = this.a;
        if (w0 != null) {
            return w0.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        W0 w0 = this.a;
        if (w0 != null) {
            return w0.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.b.e();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        g();
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        H1 h1;
        if (Build.VERSION.SDK_INT < 28 && (h1 = this.c) != null) {
            TextClassifier textClassifier = (TextClassifier) h1.c;
            if (textClassifier == null) {
                return Z1.a((TextView) h1.b);
            }
            return textClassifier;
        }
        return super.getTextClassifier();
    }

    public Oc getTextMetricsParamsCompat() {
        return Ha.V(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.b.getClass();
        C0122f2.h(editorInfo, onCreateInputConnection, this);
        AbstractC0487x9.I(editorInfo, onCreateInputConnection, this);
        return onCreateInputConnection;
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i = Build.VERSION.SDK_INT;
        if (i >= 30 && i < 33 && onCheckIsTextEditor()) {
            ((InputMethodManager) getContext().getSystemService("input_method")).isActive(this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null && !Xh.c) {
            c0122f2.i.a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        g();
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null && !Xh.c) {
            C0301o2 c0301o2 = c0122f2.i;
            if (c0301o2.f()) {
                c0301o2.a();
            }
        }
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().c(z);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (Xh.c) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null) {
            c0122f2.i(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (Xh.c) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null) {
            c0122f2.j(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (Xh.c) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null) {
            c0122f2.k(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        W0 w0 = this.a;
        if (w0 != null) {
            w0.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        W0 w0 = this.a;
        if (w0 != null) {
            w0.f(i);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null) {
            c0122f2.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null) {
            c0122f2.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null) {
            c0122f2.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null) {
            c0122f2.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(Ha.C0(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().d(z);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().q(i);
        } else {
            Ha.r0(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().n(i);
        } else {
            Ha.s0(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        Ha.t0(this, i);
    }

    public void setPrecomputedText(Pc pc) {
        if (Build.VERSION.SDK_INT >= 29) {
            throw null;
        }
        Ha.V(this);
        throw null;
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        W0 w0 = this.a;
        if (w0 != null) {
            w0.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        W0 w0 = this.a;
        if (w0 != null) {
            w0.i(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C0122f2 c0122f2 = this.b;
        c0122f2.l(colorStateList);
        c0122f2.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C0122f2 c0122f2 = this.b;
        c0122f2.m(mode);
        c0122f2.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null) {
            c0122f2.g(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        H1 h1;
        if (Build.VERSION.SDK_INT < 28 && (h1 = this.c) != null) {
            h1.c = textClassifier;
        } else {
            super.setTextClassifier(textClassifier);
        }
    }

    public void setTextFuture(Future<Pc> future) {
        this.g = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(Oc oc) {
        TextDirectionHeuristic textDirectionHeuristic;
        TextDirectionHeuristic textDirectionHeuristic2 = oc.b;
        TextDirectionHeuristic textDirectionHeuristic3 = TextDirectionHeuristics.FIRSTSTRONG_RTL;
        int i = 1;
        if (textDirectionHeuristic2 != textDirectionHeuristic3 && textDirectionHeuristic2 != (textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR)) {
            if (textDirectionHeuristic2 == TextDirectionHeuristics.ANYRTL_LTR) {
                i = 2;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.LTR) {
                i = 3;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.RTL) {
                i = 4;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.LOCALE) {
                i = 5;
            } else if (textDirectionHeuristic2 == textDirectionHeuristic) {
                i = 6;
            } else if (textDirectionHeuristic2 == textDirectionHeuristic3) {
                i = 7;
            }
        }
        setTextDirection(i);
        getPaint().set(oc.a);
        setBreakStrategy(oc.c);
        setHyphenationFrequency(oc.d);
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i, float f2) {
        boolean z = Xh.c;
        if (z) {
            super.setTextSize(i, f2);
            return;
        }
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null && !z) {
            C0301o2 c0301o2 = c0122f2.i;
            if (!c0301o2.f()) {
                c0301o2.g(i, f2);
            }
        }
    }

    @Override // android.widget.TextView
    public final void setTypeface(Typeface typeface, int i) {
        Typeface typeface2;
        if (this.e) {
            return;
        }
        if (typeface != null && i > 0) {
            Context context = getContext();
            Ha ha = Fg.a;
            if (context != null) {
                typeface2 = Typeface.create(typeface, i);
            } else {
                throw new IllegalArgumentException("Context cannot be null");
            }
        } else {
            typeface2 = null;
        }
        this.e = true;
        if (typeface2 != null) {
            typeface = typeface2;
        }
        try {
            super.setTypeface(typeface, i);
        } finally {
            this.e = false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0201j2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Wf.a(context);
        this.e = false;
        this.f238f = null;
        Tf.a(this, getContext());
        W0 w0 = new W0(this);
        this.a = w0;
        w0.d(attributeSet, i);
        C0122f2 c0122f2 = new C0122f2(this);
        this.b = c0122f2;
        c0122f2.f(attributeSet, i);
        c0122f2.b();
        H1 h1 = new H1(4, false);
        h1.b = this;
        this.c = h1;
        getEmojiTextViewHelper().b(attributeSet, i);
    }

    @Override // android.widget.TextView
    public final void setLineHeight(int i, float f2) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 34) {
            getSuperCaller().u(i, f2);
        } else if (i2 >= 34) {
            B.h(this, i, f2);
        } else {
            Ha.t0(this, Math.round(TypedValue.applyDimension(i, f2, getResources().getDisplayMetrics())));
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i != 0 ? L1.z(context, i) : null, i2 != 0 ? L1.z(context, i2) : null, i3 != 0 ? L1.z(context, i3) : null, i4 != 0 ? L1.z(context, i4) : null);
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null) {
            c0122f2.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i != 0 ? L1.z(context, i) : null, i2 != 0 ? L1.z(context, i2) : null, i3 != 0 ? L1.z(context, i3) : null, i4 != 0 ? L1.z(context, i4) : null);
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null) {
            c0122f2.b();
        }
    }
}
