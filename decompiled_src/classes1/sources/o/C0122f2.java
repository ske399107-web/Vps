package o;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* renamed from: o.f2, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0122f2 {
    public final TextView a;
    public Xf b;
    public Xf c;
    public Xf d;
    public Xf e;

    /* renamed from: f, reason: collision with root package name */
    public Xf f208f;
    public Xf g;
    public Xf h;
    public final C0301o2 i;
    public int j = 0;
    public int k = -1;
    public Typeface l;
    public boolean m;

    public C0122f2(TextView textView) {
        this.a = textView;
        this.i = new C0301o2(textView);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, o.Xf] */
    public static Xf c(Context context, C0498y1 c0498y1, int i) {
        ColorStateList f2;
        synchronized (c0498y1) {
            f2 = c0498y1.a.f(context, i);
        }
        if (f2 != null) {
            ?? obj = new Object();
            obj.d = true;
            obj.a = f2;
            return obj;
        }
        return null;
    }

    public static void h(EditorInfo editorInfo, InputConnection inputConnection, TextView textView) {
        int i;
        int i2;
        CharSequence subSequence;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 30 && inputConnection != null) {
            CharSequence text = textView.getText();
            if (i3 >= 30) {
                AbstractC0515z.f(editorInfo, text);
                return;
            }
            text.getClass();
            if (i3 >= 30) {
                AbstractC0515z.f(editorInfo, text);
                return;
            }
            int i4 = editorInfo.initialSelStart;
            int i5 = editorInfo.initialSelEnd;
            if (i4 > i5) {
                i = i5;
            } else {
                i = i4;
            }
            if (i4 <= i5) {
                i4 = i5;
            }
            int length = text.length();
            if (i >= 0 && i4 <= length) {
                int i6 = editorInfo.inputType & 4095;
                if (i6 != 129 && i6 != 225 && i6 != 18) {
                    if (length <= 2048) {
                        AbstractC0487x9.W(editorInfo, text, i, i4);
                        return;
                    }
                    int i7 = i4 - i;
                    if (i7 > 1024) {
                        i2 = 0;
                    } else {
                        i2 = i7;
                    }
                    int i8 = 2048 - i2;
                    int min = Math.min(text.length() - i4, i8 - Math.min(i, (int) (i8 * 0.8d)));
                    int min2 = Math.min(i, i8 - min);
                    int i9 = i - min2;
                    if (Character.isLowSurrogate(text.charAt(i9))) {
                        i9++;
                        min2--;
                    }
                    if (Character.isHighSurrogate(text.charAt((i4 + min) - 1))) {
                        min--;
                    }
                    int i10 = min2 + i2;
                    int i11 = i10 + min;
                    if (i2 != i7) {
                        subSequence = TextUtils.concat(text.subSequence(i9, i9 + min2), text.subSequence(i4, min + i4));
                    } else {
                        subSequence = text.subSequence(i9, i11 + i9);
                    }
                    AbstractC0487x9.W(editorInfo, subSequence, min2, i10);
                    return;
                }
                AbstractC0487x9.W(editorInfo, null, 0, 0);
                return;
            }
            AbstractC0487x9.W(editorInfo, null, 0, 0);
        }
    }

    public final void a(Drawable drawable, Xf xf) {
        if (drawable != null && xf != null) {
            C0498y1.e(drawable, xf, this.a.getDrawableState());
        }
    }

    public final void b() {
        Xf xf = this.b;
        TextView textView = this.a;
        if (xf != null || this.c != null || this.d != null || this.e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            a(compoundDrawables[0], this.b);
            a(compoundDrawables[1], this.c);
            a(compoundDrawables[2], this.d);
            a(compoundDrawables[3], this.e);
        }
        if (this.f208f != null || this.g != null) {
            Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
            a(compoundDrawablesRelative[0], this.f208f);
            a(compoundDrawablesRelative[2], this.g);
        }
    }

    public final ColorStateList d() {
        Xf xf = this.h;
        if (xf != null) {
            return xf.a;
        }
        return null;
    }

    public final PorterDuff.Mode e() {
        Xf xf = this.h;
        if (xf != null) {
            return xf.b;
        }
        return null;
    }

    public final void f(AttributeSet attributeSet, int i) {
        boolean z;
        boolean z2;
        String str;
        String str2;
        boolean z3;
        float f2;
        float f3;
        float f4;
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        Drawable drawable4;
        Drawable drawable5;
        Drawable drawable6;
        int i2;
        int i3;
        int i4;
        float f5;
        ColorStateList colorStateList;
        int resourceId;
        int i5;
        int resourceId2;
        int i6;
        TextView textView = this.a;
        Context context = textView.getContext();
        C0498y1 a = C0498y1.a();
        int[] iArr = AbstractC0153gd.h;
        C0380s2 y = C0380s2.y(context, attributeSet, iArr, i);
        Dh.k(textView, textView.getContext(), iArr, attributeSet, (TypedArray) y.b, i);
        TypedArray typedArray = (TypedArray) y.b;
        int resourceId3 = typedArray.getResourceId(0, -1);
        if (typedArray.hasValue(3)) {
            this.b = c(context, a, typedArray.getResourceId(3, 0));
        }
        if (typedArray.hasValue(1)) {
            this.c = c(context, a, typedArray.getResourceId(1, 0));
        }
        if (typedArray.hasValue(4)) {
            this.d = c(context, a, typedArray.getResourceId(4, 0));
        }
        if (typedArray.hasValue(2)) {
            this.e = c(context, a, typedArray.getResourceId(2, 0));
        }
        if (typedArray.hasValue(5)) {
            this.f208f = c(context, a, typedArray.getResourceId(5, 0));
        }
        if (typedArray.hasValue(6)) {
            this.g = c(context, a, typedArray.getResourceId(6, 0));
        }
        y.A();
        boolean z4 = textView.getTransformationMethod() instanceof PasswordTransformationMethod;
        int[] iArr2 = AbstractC0153gd.w;
        if (resourceId3 != -1) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(resourceId3, iArr2);
            C0380s2 c0380s2 = new C0380s2(context, obtainStyledAttributes);
            if (!z4 && obtainStyledAttributes.hasValue(14)) {
                z = obtainStyledAttributes.getBoolean(14, false);
                z2 = true;
            } else {
                z = false;
                z2 = false;
            }
            n(context, c0380s2);
            int i7 = Build.VERSION.SDK_INT;
            if (obtainStyledAttributes.hasValue(15)) {
                str2 = obtainStyledAttributes.getString(15);
                i6 = 26;
            } else {
                i6 = 26;
                str2 = null;
            }
            if (i7 >= i6 && obtainStyledAttributes.hasValue(13)) {
                str = obtainStyledAttributes.getString(13);
            } else {
                str = null;
            }
            c0380s2.A();
        } else {
            z = false;
            z2 = false;
            str = null;
            str2 = null;
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i, 0);
        C0380s2 c0380s22 = new C0380s2(context, obtainStyledAttributes2);
        if (!z4 && obtainStyledAttributes2.hasValue(14)) {
            z3 = obtainStyledAttributes2.getBoolean(14, false);
            z2 = true;
        } else {
            z3 = z;
        }
        int i8 = Build.VERSION.SDK_INT;
        if (obtainStyledAttributes2.hasValue(15)) {
            str2 = obtainStyledAttributes2.getString(15);
        }
        if (i8 >= 26 && obtainStyledAttributes2.hasValue(13)) {
            str = obtainStyledAttributes2.getString(13);
        }
        if (i8 >= 28 && obtainStyledAttributes2.hasValue(0) && obtainStyledAttributes2.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        n(context, c0380s22);
        c0380s22.A();
        if (!z4 && z2) {
            textView.setAllCaps(z3);
        }
        Typeface typeface = this.l;
        if (typeface != null) {
            if (this.k == -1) {
                textView.setTypeface(typeface, this.j);
            } else {
                textView.setTypeface(typeface);
            }
        }
        if (str != null) {
            AbstractC0082d2.d(textView, str);
        }
        if (str2 != null) {
            AbstractC0062c2.b(textView, AbstractC0062c2.a(str2));
        }
        int[] iArr3 = AbstractC0153gd.i;
        C0301o2 c0301o2 = this.i;
        Context context2 = c0301o2.j;
        TypedArray obtainStyledAttributes3 = context2.obtainStyledAttributes(attributeSet, iArr3, i, 0);
        TextView textView2 = c0301o2.i;
        Dh.k(textView2, textView2.getContext(), iArr3, attributeSet, obtainStyledAttributes3, i);
        if (obtainStyledAttributes3.hasValue(5)) {
            c0301o2.a = obtainStyledAttributes3.getInt(5, 0);
        }
        if (obtainStyledAttributes3.hasValue(4)) {
            f2 = obtainStyledAttributes3.getDimension(4, -1.0f);
        } else {
            f2 = -1.0f;
        }
        if (obtainStyledAttributes3.hasValue(2)) {
            f3 = obtainStyledAttributes3.getDimension(2, -1.0f);
        } else {
            f3 = -1.0f;
        }
        if (obtainStyledAttributes3.hasValue(1)) {
            f4 = obtainStyledAttributes3.getDimension(1, -1.0f);
        } else {
            f4 = -1.0f;
        }
        if (obtainStyledAttributes3.hasValue(3) && (resourceId2 = obtainStyledAttributes3.getResourceId(3, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes3.getResources().obtainTypedArray(resourceId2);
            int length = obtainTypedArray.length();
            int[] iArr4 = new int[length];
            if (length > 0) {
                for (int i9 = 0; i9 < length; i9++) {
                    iArr4[i9] = obtainTypedArray.getDimensionPixelSize(i9, -1);
                }
                c0301o2.f265f = C0301o2.b(iArr4);
                c0301o2.i();
            }
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes3.recycle();
        if (c0301o2.j()) {
            if (c0301o2.a == 1) {
                if (!c0301o2.g) {
                    DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
                    if (f3 == -1.0f) {
                        i5 = 2;
                        f3 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                    } else {
                        i5 = 2;
                    }
                    if (f4 == -1.0f) {
                        f4 = TypedValue.applyDimension(i5, 112.0f, displayMetrics);
                    }
                    if (f2 == -1.0f) {
                        f2 = 1.0f;
                    }
                    c0301o2.k(f3, f4, f2);
                }
                c0301o2.h();
            }
        } else {
            c0301o2.a = 0;
        }
        if (Xh.c && c0301o2.a != 0) {
            int[] iArr5 = c0301o2.f265f;
            if (iArr5.length > 0) {
                if (AbstractC0082d2.a(textView) != -1.0f) {
                    AbstractC0082d2.b(textView, Math.round(c0301o2.d), Math.round(c0301o2.e), Math.round(c0301o2.c), 0);
                } else {
                    AbstractC0082d2.c(textView, iArr5, 0);
                }
            }
        }
        TypedArray obtainStyledAttributes4 = context.obtainStyledAttributes(attributeSet, iArr3);
        int resourceId4 = obtainStyledAttributes4.getResourceId(8, -1);
        if (resourceId4 != -1) {
            drawable = a.b(context, resourceId4);
        } else {
            drawable = null;
        }
        int resourceId5 = obtainStyledAttributes4.getResourceId(13, -1);
        if (resourceId5 != -1) {
            drawable2 = a.b(context, resourceId5);
        } else {
            drawable2 = null;
        }
        int resourceId6 = obtainStyledAttributes4.getResourceId(9, -1);
        if (resourceId6 != -1) {
            drawable3 = a.b(context, resourceId6);
        } else {
            drawable3 = null;
        }
        int resourceId7 = obtainStyledAttributes4.getResourceId(6, -1);
        if (resourceId7 != -1) {
            drawable4 = a.b(context, resourceId7);
        } else {
            drawable4 = null;
        }
        int resourceId8 = obtainStyledAttributes4.getResourceId(10, -1);
        if (resourceId8 != -1) {
            drawable5 = a.b(context, resourceId8);
        } else {
            drawable5 = null;
        }
        int resourceId9 = obtainStyledAttributes4.getResourceId(7, -1);
        if (resourceId9 != -1) {
            drawable6 = a.b(context, resourceId9);
        } else {
            drawable6 = null;
        }
        if (drawable5 == null && drawable6 == null) {
            if (drawable != null || drawable2 != null || drawable3 != null || drawable4 != null) {
                Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
                Drawable drawable7 = compoundDrawablesRelative[0];
                if (drawable7 == null && compoundDrawablesRelative[2] == null) {
                    Drawable[] compoundDrawables = textView.getCompoundDrawables();
                    if (drawable == null) {
                        drawable = compoundDrawables[0];
                    }
                    if (drawable2 == null) {
                        drawable2 = compoundDrawables[1];
                    }
                    if (drawable3 == null) {
                        drawable3 = compoundDrawables[2];
                    }
                    if (drawable4 == null) {
                        drawable4 = compoundDrawables[3];
                    }
                    textView.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
                } else {
                    if (drawable2 == null) {
                        drawable2 = compoundDrawablesRelative[1];
                    }
                    if (drawable4 == null) {
                        drawable4 = compoundDrawablesRelative[3];
                    }
                    textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, compoundDrawablesRelative[2], drawable4);
                }
            }
        } else {
            Drawable[] compoundDrawablesRelative2 = textView.getCompoundDrawablesRelative();
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative2[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative2[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative2[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative2[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
        }
        if (obtainStyledAttributes4.hasValue(11)) {
            if (!obtainStyledAttributes4.hasValue(11) || (resourceId = obtainStyledAttributes4.getResourceId(11, 0)) == 0 || (colorStateList = L1.v(context, resourceId)) == null) {
                colorStateList = obtainStyledAttributes4.getColorStateList(11);
            }
            textView.setCompoundDrawableTintList(colorStateList);
        }
        if (obtainStyledAttributes4.hasValue(12)) {
            i2 = -1;
            textView.setCompoundDrawableTintMode(AbstractC0166h6.c(obtainStyledAttributes4.getInt(12, -1), null));
        } else {
            i2 = -1;
        }
        int dimensionPixelSize = obtainStyledAttributes4.getDimensionPixelSize(15, i2);
        int dimensionPixelSize2 = obtainStyledAttributes4.getDimensionPixelSize(18, i2);
        if (obtainStyledAttributes4.hasValue(19)) {
            TypedValue peekValue = obtainStyledAttributes4.peekValue(19);
            if (peekValue != null && peekValue.type == 5) {
                int i10 = peekValue.data;
                int i11 = i10 & 15;
                f5 = TypedValue.complexToFloat(i10);
                i4 = i11;
                i3 = -1;
            } else {
                i3 = -1;
                f5 = obtainStyledAttributes4.getDimensionPixelSize(19, -1);
                i4 = -1;
            }
        } else {
            i3 = -1;
            i4 = -1;
            f5 = -1.0f;
        }
        obtainStyledAttributes4.recycle();
        if (dimensionPixelSize != i3) {
            Ha.r0(textView, dimensionPixelSize);
        }
        if (dimensionPixelSize2 != i3) {
            Ha.s0(textView, dimensionPixelSize2);
        }
        if (f5 != -1.0f) {
            if (i4 == i3) {
                Ha.t0(textView, (int) f5);
            } else if (Build.VERSION.SDK_INT >= 34) {
                B.h(textView, i4, f5);
            } else {
                Ha.t0(textView, Math.round(TypedValue.applyDimension(i4, f5, textView.getResources().getDisplayMetrics())));
            }
        }
    }

    public final void g(Context context, int i) {
        String string;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, AbstractC0153gd.w);
        C0380s2 c0380s2 = new C0380s2(context, obtainStyledAttributes);
        boolean hasValue = obtainStyledAttributes.hasValue(14);
        TextView textView = this.a;
        if (hasValue) {
            textView.setAllCaps(obtainStyledAttributes.getBoolean(14, false));
        }
        int i2 = Build.VERSION.SDK_INT;
        if (obtainStyledAttributes.hasValue(0) && obtainStyledAttributes.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        n(context, c0380s2);
        if (i2 >= 26 && obtainStyledAttributes.hasValue(13) && (string = obtainStyledAttributes.getString(13)) != null) {
            AbstractC0082d2.d(textView, string);
        }
        c0380s2.A();
        Typeface typeface = this.l;
        if (typeface != null) {
            textView.setTypeface(typeface, this.j);
        }
    }

    public final void i(int i, int i2, int i3, int i4) {
        C0301o2 c0301o2 = this.i;
        if (c0301o2.j()) {
            DisplayMetrics displayMetrics = c0301o2.j.getResources().getDisplayMetrics();
            c0301o2.k(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (c0301o2.h()) {
                c0301o2.a();
            }
        }
    }

    public final void j(int[] iArr, int i) {
        C0301o2 c0301o2 = this.i;
        if (c0301o2.j()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = c0301o2.j.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArr2[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                c0301o2.f265f = C0301o2.b(iArr2);
                if (!c0301o2.i()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                c0301o2.g = false;
            }
            if (c0301o2.h()) {
                c0301o2.a();
            }
        }
    }

    public final void k(int i) {
        C0301o2 c0301o2 = this.i;
        if (c0301o2.j()) {
            if (i != 0) {
                if (i == 1) {
                    DisplayMetrics displayMetrics = c0301o2.j.getResources().getDisplayMetrics();
                    c0301o2.k(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                    if (c0301o2.h()) {
                        c0301o2.a();
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException(AbstractC0214jf.a(i, "Unknown auto-size text type: "));
            }
            c0301o2.a = 0;
            c0301o2.d = -1.0f;
            c0301o2.e = -1.0f;
            c0301o2.c = -1.0f;
            c0301o2.f265f = new int[0];
            c0301o2.b = false;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, o.Xf] */
    public final void l(ColorStateList colorStateList) {
        boolean z;
        if (this.h == null) {
            this.h = new Object();
        }
        Xf xf = this.h;
        xf.a = colorStateList;
        if (colorStateList != null) {
            z = true;
        } else {
            z = false;
        }
        xf.d = z;
        this.b = xf;
        this.c = xf;
        this.d = xf;
        this.e = xf;
        this.f208f = xf;
        this.g = xf;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, o.Xf] */
    public final void m(PorterDuff.Mode mode) {
        boolean z;
        if (this.h == null) {
            this.h = new Object();
        }
        Xf xf = this.h;
        xf.b = mode;
        if (mode != null) {
            z = true;
        } else {
            z = false;
        }
        xf.c = z;
        this.b = xf;
        this.c = xf;
        this.d = xf;
        this.e = xf;
        this.f208f = xf;
        this.g = xf;
    }

    public final void n(Context context, C0380s2 c0380s2) {
        String string;
        boolean z;
        boolean z2;
        int i = this.j;
        TypedArray typedArray = (TypedArray) c0380s2.b;
        this.j = typedArray.getInt(2, i);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            int i3 = typedArray.getInt(11, -1);
            this.k = i3;
            if (i3 != -1) {
                this.j &= 2;
            }
        }
        int i4 = 10;
        boolean z3 = false;
        if (!typedArray.hasValue(10) && !typedArray.hasValue(12)) {
            if (typedArray.hasValue(1)) {
                this.m = false;
                int i5 = typedArray.getInt(1, 1);
                if (i5 != 1) {
                    if (i5 != 2) {
                        if (i5 == 3) {
                            this.l = Typeface.MONOSPACE;
                            return;
                        }
                        return;
                    }
                    this.l = Typeface.SERIF;
                    return;
                }
                this.l = Typeface.SANS_SERIF;
                return;
            }
            return;
        }
        this.l = null;
        if (typedArray.hasValue(12)) {
            i4 = 12;
        }
        int i6 = this.k;
        int i7 = this.j;
        if (!context.isRestricted()) {
            try {
                Typeface q = c0380s2.q(i4, this.j, new C0022a2(this, i6, i7, new WeakReference(this.a)));
                if (q != null) {
                    if (i2 >= 28 && this.k != -1) {
                        Typeface create = Typeface.create(q, 0);
                        int i8 = this.k;
                        if ((this.j & 2) != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        this.l = AbstractC0102e2.a(create, i8, z2);
                    } else {
                        this.l = q;
                    }
                }
                if (this.l == null) {
                    z = true;
                } else {
                    z = false;
                }
                this.m = z;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.l == null && (string = typedArray.getString(i4)) != null) {
            if (Build.VERSION.SDK_INT >= 28 && this.k != -1) {
                Typeface create2 = Typeface.create(string, 0);
                int i9 = this.k;
                if ((this.j & 2) != 0) {
                    z3 = true;
                }
                this.l = AbstractC0102e2.a(create2, i9, z3);
                return;
            }
            this.l = Typeface.create(string, this.j);
        }
    }
}
