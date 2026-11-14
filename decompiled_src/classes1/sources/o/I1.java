package o;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.RadioButton;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class I1 extends RadioButton implements Zf {
    public final C0041b1 a;
    public final W0 b;
    public final C0122f2 c;
    public B1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public I1(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 2130903962);
        Wf.a(context);
        Tf.a(this, getContext());
        C0041b1 c0041b1 = new C0041b1(this);
        this.a = c0041b1;
        c0041b1.d(attributeSet, 2130903962);
        W0 w0 = new W0(this);
        this.b = w0;
        w0.d(attributeSet, 2130903962);
        C0122f2 c0122f2 = new C0122f2(this);
        this.c = c0122f2;
        c0122f2.f(attributeSet, 2130903962);
        getEmojiTextViewHelper().b(attributeSet, 2130903962);
    }

    private B1 getEmojiTextViewHelper() {
        if (this.d == null) {
            this.d = new B1(this);
        }
        return this.d;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        W0 w0 = this.b;
        if (w0 != null) {
            w0.a();
        }
        C0122f2 c0122f2 = this.c;
        if (c0122f2 != null) {
            c0122f2.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        W0 w0 = this.b;
        if (w0 != null) {
            return w0.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        W0 w0 = this.b;
        if (w0 != null) {
            return w0.c();
        }
        return null;
    }

    @Override // o.Zf
    public ColorStateList getSupportButtonTintList() {
        C0041b1 c0041b1 = this.a;
        if (c0041b1 != null) {
            return (ColorStateList) c0041b1.a;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        C0041b1 c0041b1 = this.a;
        if (c0041b1 != null) {
            return (PorterDuff.Mode) c0041b1.b;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.c.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.c.e();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().c(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        W0 w0 = this.b;
        if (w0 != null) {
            w0.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        W0 w0 = this.b;
        if (w0 != null) {
            w0.f(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C0041b1 c0041b1 = this.a;
        if (c0041b1 != null) {
            if (c0041b1.e) {
                c0041b1.e = false;
            } else {
                c0041b1.e = true;
                c0041b1.a();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C0122f2 c0122f2 = this.c;
        if (c0122f2 != null) {
            c0122f2.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C0122f2 c0122f2 = this.c;
        if (c0122f2 != null) {
            c0122f2.b();
        }
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().d(z);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        W0 w0 = this.b;
        if (w0 != null) {
            w0.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        W0 w0 = this.b;
        if (w0 != null) {
            w0.i(mode);
        }
    }

    @Override // o.Zf
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        C0041b1 c0041b1 = this.a;
        if (c0041b1 != null) {
            c0041b1.a = colorStateList;
            c0041b1.c = true;
            c0041b1.a();
        }
    }

    @Override // o.Zf
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        C0041b1 c0041b1 = this.a;
        if (c0041b1 != null) {
            c0041b1.b = mode;
            c0041b1.d = true;
            c0041b1.a();
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C0122f2 c0122f2 = this.c;
        c0122f2.l(colorStateList);
        c0122f2.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C0122f2 c0122f2 = this.c;
        c0122f2.m(mode);
        c0122f2.b();
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(L1.z(getContext(), i));
    }
}
