package o;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;

/* renamed from: o.a1, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0021a1 extends CheckedTextView {
    public final C0041b1 a;
    public final W0 b;
    public final C0122f2 c;
    public B1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0086 A[Catch: all -> 0x0066, TryCatch #1 {all -> 0x0066, blocks: (B:3:0x004d, B:5:0x0054, B:8:0x005a, B:9:0x007f, B:11:0x0086, B:12:0x008d, B:14:0x0094, B:21:0x0068, B:23:0x006e, B:25:0x0074), top: B:2:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0094 A[Catch: all -> 0x0066, TRY_LEAVE, TryCatch #1 {all -> 0x0066, blocks: (B:3:0x004d, B:5:0x0054, B:8:0x005a, B:9:0x007f, B:11:0x0086, B:12:0x008d, B:14:0x0094, B:21:0x0068, B:23:0x006e, B:25:0x0074), top: B:2:0x004d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0021a1(android.content.Context r9, android.util.AttributeSet r10) {
        /*
            r8 = this;
            o.Wf.a(r9)
            r6 = 2130903229(0x7f0300bd, float:1.741327E38)
            r8.<init>(r9, r10, r6)
            android.content.Context r9 = r8.getContext()
            o.Tf.a(r8, r9)
            o.f2 r9 = new o.f2
            r9.<init>(r8)
            r8.c = r9
            r9.f(r10, r6)
            r9.b()
            o.W0 r9 = new o.W0
            r9.<init>(r8)
            r8.b = r9
            r9.d(r10, r6)
            o.b1 r9 = new o.b1
            r9.<init>(r8)
            r8.a = r9
            android.content.Context r9 = r8.getContext()
            int[] r2 = o.AbstractC0153gd.l
            o.s2 r9 = o.C0380s2.y(r9, r10, r2, r6)
            java.lang.Object r0 = r9.b
            r7 = r0
            android.content.res.TypedArray r7 = (android.content.res.TypedArray) r7
            android.content.Context r1 = r8.getContext()
            java.lang.Object r0 = r9.b
            r4 = r0
            android.content.res.TypedArray r4 = (android.content.res.TypedArray) r4
            r0 = r8
            r3 = r10
            r5 = r6
            o.Dh.k(r0, r1, r2, r3, r4, r5)
            r0 = 1
            boolean r1 = r7.hasValue(r0)     // Catch: java.lang.Throwable -> L66
            r2 = 0
            if (r1 == 0) goto L68
            int r0 = r7.getResourceId(r0, r2)     // Catch: java.lang.Throwable -> L66
            if (r0 == 0) goto L68
            android.content.Context r1 = r8.getContext()     // Catch: java.lang.Throwable -> L66 android.content.res.Resources.NotFoundException -> L68
            android.graphics.drawable.Drawable r0 = o.L1.z(r1, r0)     // Catch: java.lang.Throwable -> L66 android.content.res.Resources.NotFoundException -> L68
            r8.setCheckMarkDrawable(r0)     // Catch: java.lang.Throwable -> L66 android.content.res.Resources.NotFoundException -> L68
            goto L7f
        L66:
            r10 = move-exception
            goto Lac
        L68:
            boolean r0 = r7.hasValue(r2)     // Catch: java.lang.Throwable -> L66
            if (r0 == 0) goto L7f
            int r0 = r7.getResourceId(r2, r2)     // Catch: java.lang.Throwable -> L66
            if (r0 == 0) goto L7f
            android.content.Context r1 = r8.getContext()     // Catch: java.lang.Throwable -> L66
            android.graphics.drawable.Drawable r0 = o.L1.z(r1, r0)     // Catch: java.lang.Throwable -> L66
            r8.setCheckMarkDrawable(r0)     // Catch: java.lang.Throwable -> L66
        L7f:
            r0 = 2
            boolean r1 = r7.hasValue(r0)     // Catch: java.lang.Throwable -> L66
            if (r1 == 0) goto L8d
            android.content.res.ColorStateList r0 = r9.n(r0)     // Catch: java.lang.Throwable -> L66
            r8.setCheckMarkTintList(r0)     // Catch: java.lang.Throwable -> L66
        L8d:
            r0 = 3
            boolean r1 = r7.hasValue(r0)     // Catch: java.lang.Throwable -> L66
            if (r1 == 0) goto La1
            r1 = -1
            int r0 = r7.getInt(r0, r1)     // Catch: java.lang.Throwable -> L66
            r1 = 0
            android.graphics.PorterDuff$Mode r0 = o.AbstractC0166h6.c(r0, r1)     // Catch: java.lang.Throwable -> L66
            r8.setCheckMarkTintMode(r0)     // Catch: java.lang.Throwable -> L66
        La1:
            r9.A()
            o.B1 r9 = r8.getEmojiTextViewHelper()
            r9.b(r10, r6)
            return
        Lac:
            r9.A()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: o.C0021a1.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    private B1 getEmojiTextViewHelper() {
        if (this.d == null) {
            this.d = new B1(this);
        }
        return this.d;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0122f2 c0122f2 = this.c;
        if (c0122f2 != null) {
            c0122f2.b();
        }
        W0 w0 = this.b;
        if (w0 != null) {
            w0.a();
        }
        C0041b1 c0041b1 = this.a;
        if (c0041b1 != null) {
            c0041b1.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return Ha.A0(super.getCustomSelectionActionModeCallback());
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

    public ColorStateList getSupportCheckMarkTintList() {
        C0041b1 c0041b1 = this.a;
        if (c0041b1 != null) {
            return (ColorStateList) c0041b1.a;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCheckMarkTintMode() {
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

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        AbstractC0487x9.I(editorInfo, onCreateInputConnection, this);
        return onCreateInputConnection;
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

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        C0041b1 c0041b1 = this.a;
        if (c0041b1 != null) {
            if (c0041b1.e) {
                c0041b1.e = false;
            } else {
                c0041b1.e = true;
                c0041b1.b();
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

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(Ha.C0(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().d(z);
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

    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        C0041b1 c0041b1 = this.a;
        if (c0041b1 != null) {
            c0041b1.a = colorStateList;
            c0041b1.c = true;
            c0041b1.b();
        }
    }

    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        C0041b1 c0041b1 = this.a;
        if (c0041b1 != null) {
            c0041b1.b = mode;
            c0041b1.d = true;
            c0041b1.b();
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

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0122f2 c0122f2 = this.c;
        if (c0122f2 != null) {
            c0122f2.g(context, i);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(L1.z(getContext(), i));
    }
}
