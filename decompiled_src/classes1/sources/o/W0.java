package o;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import java.util.WeakHashMap;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class W0 {
    public final View a;
    public Xf d;
    public Xf e;

    /* renamed from: f, reason: collision with root package name */
    public Xf f159f;
    public int c = -1;
    public final C0498y1 b = C0498y1.a();

    public W0(View view) {
        this.a = view;
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object, o.Xf] */
    public final void a() {
        View view = this.a;
        Drawable background = view.getBackground();
        if (background != null) {
            if (this.d != null) {
                if (this.f159f == null) {
                    this.f159f = new Object();
                }
                Xf xf = this.f159f;
                xf.a = null;
                xf.d = false;
                xf.b = null;
                xf.c = false;
                WeakHashMap weakHashMap = Dh.a;
                ColorStateList c = AbstractC0455vh.c(view);
                if (c != null) {
                    xf.d = true;
                    xf.a = c;
                }
                PorterDuff.Mode d = AbstractC0455vh.d(view);
                if (d != null) {
                    xf.c = true;
                    xf.b = d;
                }
                if (xf.d || xf.c) {
                    C0498y1.e(background, xf, view.getDrawableState());
                    return;
                }
            }
            Xf xf2 = this.e;
            if (xf2 != null) {
                C0498y1.e(background, xf2, view.getDrawableState());
                return;
            }
            Xf xf3 = this.d;
            if (xf3 != null) {
                C0498y1.e(background, xf3, view.getDrawableState());
            }
        }
    }

    public final ColorStateList b() {
        Xf xf = this.e;
        if (xf != null) {
            return xf.a;
        }
        return null;
    }

    public final PorterDuff.Mode c() {
        Xf xf = this.e;
        if (xf != null) {
            return xf.b;
        }
        return null;
    }

    public final void d(AttributeSet attributeSet, int i) {
        ColorStateList f2;
        View view = this.a;
        Context context = view.getContext();
        int[] iArr = AbstractC0153gd.z;
        C0380s2 y = C0380s2.y(context, attributeSet, iArr, i);
        TypedArray typedArray = (TypedArray) y.b;
        View view2 = this.a;
        Dh.k(view2, view2.getContext(), iArr, attributeSet, (TypedArray) y.b, i);
        try {
            if (typedArray.hasValue(0)) {
                this.c = typedArray.getResourceId(0, -1);
                C0498y1 c0498y1 = this.b;
                Context context2 = view.getContext();
                int i2 = this.c;
                synchronized (c0498y1) {
                    f2 = c0498y1.a.f(context2, i2);
                }
                if (f2 != null) {
                    g(f2);
                }
            }
            if (typedArray.hasValue(1)) {
                AbstractC0455vh.i(view, y.n(1));
            }
            if (typedArray.hasValue(2)) {
                AbstractC0455vh.j(view, AbstractC0166h6.c(typedArray.getInt(2, -1), null));
            }
        } finally {
            y.A();
        }
    }

    public final void e() {
        this.c = -1;
        g(null);
        a();
    }

    public final void f(int i) {
        ColorStateList colorStateList;
        this.c = i;
        C0498y1 c0498y1 = this.b;
        if (c0498y1 != null) {
            Context context = this.a.getContext();
            synchronized (c0498y1) {
                colorStateList = c0498y1.a.f(context, i);
            }
        } else {
            colorStateList = null;
        }
        g(colorStateList);
        a();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, o.Xf] */
    public final void g(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.d == null) {
                this.d = new Object();
            }
            Xf xf = this.d;
            xf.a = colorStateList;
            xf.d = true;
        } else {
            this.d = null;
        }
        a();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, o.Xf] */
    public final void h(ColorStateList colorStateList) {
        if (this.e == null) {
            this.e = new Object();
        }
        Xf xf = this.e;
        xf.a = colorStateList;
        xf.d = true;
        a();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, o.Xf] */
    public final void i(PorterDuff.Mode mode) {
        if (this.e == null) {
            this.e = new Object();
        }
        Xf xf = this.e;
        xf.b = mode;
        xf.c = true;
        a();
    }
}
