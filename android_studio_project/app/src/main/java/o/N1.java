package o;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class N1 extends H1 {
    public final M1 e;

    /* renamed from: f, reason: collision with root package name */
    public Drawable f125f;
    public ColorStateList g;
    public PorterDuff.Mode h;
    public boolean i;
    public boolean j;

    public N1(M1 m1) {
        super(m1);
        this.g = null;
        this.h = null;
        this.i = false;
        this.j = false;
        this.e = m1;
    }

    @Override // o.H1
    public final void B(AttributeSet attributeSet, int i) {
        super.B(attributeSet, 2130903991);
        M1 m1 = this.e;
        Context context = m1.getContext();
        int[] iArr = AbstractC0153gd.g;
        C0380s2 y = C0380s2.y(context, attributeSet, iArr, 2130903991);
        Dh.k(m1, m1.getContext(), iArr, attributeSet, (TypedArray) y.b, 2130903991);
        Drawable p = y.p(0);
        if (p != null) {
            m1.setThumb(p);
        }
        Drawable o2 = y.o(1);
        Drawable drawable = this.f125f;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f125f = o2;
        if (o2 != null) {
            o2.setCallback(m1);
            o2.setLayoutDirection(m1.getLayoutDirection());
            if (o2.isStateful()) {
                o2.setState(m1.getDrawableState());
            }
            O();
        }
        m1.invalidate();
        TypedArray typedArray = (TypedArray) y.b;
        if (typedArray.hasValue(3)) {
            this.h = AbstractC0166h6.c(typedArray.getInt(3, -1), this.h);
            this.j = true;
        }
        if (typedArray.hasValue(2)) {
            this.g = y.n(2);
            this.i = true;
        }
        y.A();
        O();
    }

    public final void O() {
        Drawable drawable = this.f125f;
        if (drawable != null) {
            if (this.i || this.j) {
                Drawable mutate = drawable.mutate();
                this.f125f = mutate;
                if (this.i) {
                    mutate.setTintList(this.g);
                }
                if (this.j) {
                    this.f125f.setTintMode(this.h);
                }
                if (this.f125f.isStateful()) {
                    this.f125f.setState(this.e.getDrawableState());
                }
            }
        }
    }

    public final void P(Canvas canvas) {
        int i;
        if (this.f125f != null) {
            int max = this.e.getMax();
            int i2 = 1;
            if (max > 1) {
                int intrinsicWidth = this.f125f.getIntrinsicWidth();
                int intrinsicHeight = this.f125f.getIntrinsicHeight();
                if (intrinsicWidth >= 0) {
                    i = intrinsicWidth / 2;
                } else {
                    i = 1;
                }
                if (intrinsicHeight >= 0) {
                    i2 = intrinsicHeight / 2;
                }
                this.f125f.setBounds(-i, -i2, i, i2);
                float width = ((r0.getWidth() - r0.getPaddingLeft()) - r0.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(r0.getPaddingLeft(), r0.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.f125f.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }
}
