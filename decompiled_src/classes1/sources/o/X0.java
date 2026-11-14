package o;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class X0 extends Button {
    public final W0 a;
    public final C0122f2 b;
    public B1 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public X0(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Wf.a(context);
        Tf.a(this, getContext());
        W0 w0 = new W0(this);
        this.a = w0;
        w0.d(attributeSet, i);
        C0122f2 c0122f2 = new C0122f2(this);
        this.b = c0122f2;
        c0122f2.f(attributeSet, i);
        c0122f2.b();
        getEmojiTextViewHelper().b(attributeSet, i);
    }

    private B1 getEmojiTextViewHelper() {
        if (this.c == null) {
            this.c = new B1(this);
        }
        return this.c;
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

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null && !Xh.c) {
            c0122f2.i.a();
        }
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
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

    public void setSupportAllCaps(boolean z) {
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null) {
            c0122f2.a.setAllCaps(z);
        }
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
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0122f2 c0122f2 = this.b;
        if (c0122f2 != null) {
            c0122f2.g(context, i);
        }
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
}
