package o;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import android.widget.TextView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class A1 extends EditText implements InterfaceC0331pc {
    public final W0 a;
    public final C0122f2 b;
    public final H1 c;
    public final Rf d;
    public final H1 e;

    /* renamed from: f, reason: collision with root package name */
    public C0517z1 f61f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r5v5, types: [o.Rf, java.lang.Object] */
    public A1(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 2130903451);
        Wf.a(context);
        Tf.a(this, getContext());
        W0 w0 = new W0(this);
        this.a = w0;
        w0.d(attributeSet, 2130903451);
        C0122f2 c0122f2 = new C0122f2(this);
        this.b = c0122f2;
        c0122f2.f(attributeSet, 2130903451);
        c0122f2.b();
        H1 h1 = new H1(4, false);
        h1.b = this;
        this.c = h1;
        this.d = new Object();
        H1 h12 = new H1(this, 3);
        this.e = h12;
        h12.B(attributeSet, 2130903451);
        KeyListener keyListener = getKeyListener();
        if (!(keyListener instanceof NumberKeyListener)) {
            boolean isFocusable = super.isFocusable();
            boolean isClickable = super.isClickable();
            boolean isLongClickable = super.isLongClickable();
            int inputType = super.getInputType();
            KeyListener x = h12.x(keyListener);
            if (x != keyListener) {
                super.setKeyListener(x);
                super.setRawInputType(inputType);
                super.setFocusable(isFocusable);
                super.setClickable(isClickable);
                super.setLongClickable(isLongClickable);
            }
        }
    }

    private C0517z1 getSuperCaller() {
        if (this.f61f == null) {
            this.f61f = new C0517z1(this);
        }
        return this.f61f;
    }

    @Override // o.InterfaceC0331pc
    public final T4 a(T4 t4) {
        this.d.getClass();
        return Rf.a(this, t4);
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

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
    
        if (r1 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0057, code lost:
    
        r6 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006a, code lost:
    
        if (r1 != null) goto L23;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.inputmethod.InputConnection onCreateInputConnection(android.view.inputmethod.EditorInfo r8) {
        /*
            r7 = this;
            android.view.inputmethod.InputConnection r0 = super.onCreateInputConnection(r8)
            o.f2 r1 = r7.b
            r1.getClass()
            o.C0122f2.h(r8, r0, r7)
            o.AbstractC0487x9.I(r8, r0, r7)
            if (r0 == 0) goto L77
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 30
            if (r1 > r2) goto L77
            java.lang.String[] r2 = o.Dh.f(r7)
            if (r2 == 0) goto L77
            java.lang.String r3 = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"
            java.lang.String r4 = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"
            r5 = 25
            if (r1 < r5) goto L29
            o.AbstractC0444v6.a(r8, r2)
            goto L3e
        L29:
            android.os.Bundle r6 = r8.extras
            if (r6 != 0) goto L34
            android.os.Bundle r6 = new android.os.Bundle
            r6.<init>()
            r8.extras = r6
        L34:
            android.os.Bundle r6 = r8.extras
            r6.putStringArray(r4, r2)
            android.os.Bundle r6 = r8.extras
            r6.putStringArray(r3, r2)
        L3e:
            o.s0 r2 = new o.s0
            r6 = 2
            r2.<init>(r6, r7)
            if (r1 < r5) goto L4d
            o.o9 r1 = new o.o9
            r1.<init>(r0, r2)
        L4b:
            r0 = r1
            goto L77
        L4d:
            java.lang.String[] r6 = o.AbstractC0487x9.q
            if (r1 < r5) goto L59
            java.lang.String[] r1 = o.AbstractC0444v6.b(r8)
            if (r1 == 0) goto L6d
        L57:
            r6 = r1
            goto L6d
        L59:
            android.os.Bundle r1 = r8.extras
            if (r1 != 0) goto L5e
            goto L6d
        L5e:
            java.lang.String[] r1 = r1.getStringArray(r4)
            if (r1 != 0) goto L6a
            android.os.Bundle r1 = r8.extras
            java.lang.String[] r1 = r1.getStringArray(r3)
        L6a:
            if (r1 == 0) goto L6d
            goto L57
        L6d:
            int r1 = r6.length
            if (r1 != 0) goto L71
            goto L77
        L71:
            o.p9 r1 = new o.p9
            r1.<init>(r0, r2)
            goto L4b
        L77:
            o.H1 r1 = r7.e
            o.I6 r8 = r1.E(r0, r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: o.A1.onCreateInputConnection(android.view.inputmethod.EditorInfo):android.view.inputmethod.InputConnection");
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i = Build.VERSION.SDK_INT;
        if (i >= 30 && i < 33) {
            ((InputMethodManager) getContext().getSystemService("input_method")).isActive(this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        Activity activity;
        boolean z = false;
        if (Build.VERSION.SDK_INT < 31 && dragEvent.getLocalState() == null && Dh.f(this) != null) {
            Context context = getContext();
            while (true) {
                if (context instanceof ContextWrapper) {
                    if (context instanceof Activity) {
                        activity = (Activity) context;
                        break;
                    }
                    context = ((ContextWrapper) context).getBaseContext();
                } else {
                    activity = null;
                    break;
                }
            }
            if (activity == null) {
                Log.i("ReceiveContent", "Can't handle drop: no activity: view=" + this);
            } else if (dragEvent.getAction() != 1 && dragEvent.getAction() == 3) {
                z = K1.a(dragEvent, this, activity);
            }
        }
        if (z) {
            return true;
        }
        return super.onDragEvent(dragEvent);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public final boolean onTextContextMenuItem(int i) {
        ClipData primaryClip;
        Q4 q4;
        int i2;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 31 && Dh.f(this) != null && (i == 16908322 || i == 16908337)) {
            ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
            if (clipboardManager == null) {
                primaryClip = null;
            } else {
                primaryClip = clipboardManager.getPrimaryClip();
            }
            if (primaryClip != null && primaryClip.getItemCount() > 0) {
                if (i3 >= 31) {
                    q4 = new C(primaryClip, 1);
                } else {
                    R4 r4 = new R4();
                    r4.b = primaryClip;
                    r4.c = 1;
                    q4 = r4;
                }
                if (i == 16908322) {
                    i2 = 0;
                } else {
                    i2 = 1;
                }
                q4.x(i2);
                Dh.h(this, q4.build());
            }
            return true;
        }
        return super.onTextContextMenuItem(i);
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
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(Ha.C0(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        this.e.M(z);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.e.x(keyListener));
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
    public void setTextClassifier(TextClassifier textClassifier) {
        H1 h1;
        if (Build.VERSION.SDK_INT < 28 && (h1 = this.c) != null) {
            h1.c = textClassifier;
        } else {
            super.setTextClassifier(textClassifier);
        }
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        if (Build.VERSION.SDK_INT >= 28) {
            return super.getText();
        }
        return super.getEditableText();
    }
}
