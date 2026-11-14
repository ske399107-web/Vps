package com.google.android.material.slider;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import java.util.Iterator;
import o.C0111eb;
import o.C0139g;
import o.C0424u6;
import o.C0530ze;
import o.E9;
import o.Ha;
import o.L1;
import o.W2;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Slider extends W2 {
    public Slider(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.value});
        if (obtainStyledAttributes.hasValue(0)) {
            setValue(obtainStyledAttributes.getFloat(0, 0.0f));
        }
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    public int getActiveThumbIndex() {
        return this.T;
    }

    public int getFocusedThumbIndex() {
        return this.U;
    }

    public int getHaloRadius() {
        return this.G;
    }

    public ColorStateList getHaloTintList() {
        return this.g0;
    }

    public int getLabelBehavior() {
        return this.B;
    }

    public float getStepSize() {
        return this.V;
    }

    public float getThumbElevation() {
        return this.o0.a.m;
    }

    public int getThumbHeight() {
        return this.F;
    }

    @Override // o.W2
    public int getThumbRadius() {
        return this.E / 2;
    }

    public ColorStateList getThumbStrokeColor() {
        return this.o0.a.d;
    }

    public float getThumbStrokeWidth() {
        return this.o0.a.j;
    }

    public ColorStateList getThumbTintList() {
        return this.o0.a.c;
    }

    public int getThumbTrackGapSize() {
        return this.H;
    }

    public int getThumbWidth() {
        return this.E;
    }

    public int getTickActiveRadius() {
        return this.b0;
    }

    public ColorStateList getTickActiveTintList() {
        return this.h0;
    }

    public int getTickInactiveRadius() {
        return this.c0;
    }

    public ColorStateList getTickInactiveTintList() {
        return this.i0;
    }

    public ColorStateList getTickTintList() {
        if (this.i0.equals(this.h0)) {
            return this.h0;
        }
        throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
    }

    public ColorStateList getTrackActiveTintList() {
        return this.j0;
    }

    public int getTrackHeight() {
        return this.C;
    }

    public ColorStateList getTrackInactiveTintList() {
        return this.k0;
    }

    public int getTrackInsideCornerSize() {
        return this.L;
    }

    public int getTrackSidePadding() {
        return this.D;
    }

    public int getTrackStopIndicatorSize() {
        return this.K;
    }

    public ColorStateList getTrackTintList() {
        if (this.k0.equals(this.j0)) {
            return this.j0;
        }
        throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
    }

    public int getTrackWidth() {
        return this.d0;
    }

    public float getValue() {
        return getValues().get(0).floatValue();
    }

    public float getValueFrom() {
        return this.Q;
    }

    public float getValueTo() {
        return this.R;
    }

    public void setCustomThumbDrawable(int i) {
        setCustomThumbDrawable(getResources().getDrawable(i));
    }

    @Override // o.W2, android.view.View
    public /* bridge */ /* synthetic */ void setEnabled(boolean z) {
        super.setEnabled(z);
    }

    public void setFocusedThumbIndex(int i) {
        if (i >= 0 && i < this.S.size()) {
            this.U = i;
            this.h.w(i);
            postInvalidate();
            return;
        }
        throw new IllegalArgumentException("index out of range");
    }

    @Override // o.W2
    public void setHaloRadius(int i) {
        if (i != this.G) {
            this.G = i;
            Drawable background = getBackground();
            if ((getBackground() instanceof RippleDrawable) && (background instanceof RippleDrawable)) {
                ((RippleDrawable) background).setRadius(this.G);
            } else {
                postInvalidate();
            }
        }
    }

    public void setHaloRadiusResource(int i) {
        setHaloRadius(getResources().getDimensionPixelSize(i));
    }

    @Override // o.W2
    public void setHaloTintList(ColorStateList colorStateList) {
        if (!colorStateList.equals(this.g0)) {
            this.g0 = colorStateList;
            Drawable background = getBackground();
            if ((getBackground() instanceof RippleDrawable) && (background instanceof RippleDrawable)) {
                ((RippleDrawable) background).setColor(colorStateList);
                return;
            }
            Paint paint = this.d;
            paint.setColor(h(colorStateList));
            paint.setAlpha(63);
            invalidate();
        }
    }

    @Override // o.W2
    public void setLabelBehavior(int i) {
        if (this.B != i) {
            this.B = i;
            requestLayout();
        }
    }

    public /* bridge */ /* synthetic */ void setLabelFormatter(E9 e9) {
    }

    public void setStepSize(float f2) {
        if (f2 >= 0.0f) {
            if (this.V != f2) {
                this.V = f2;
                this.f0 = true;
                postInvalidate();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("The stepSize(" + f2 + ") must be 0, or a factor of the valueFrom(" + this.Q + ")-valueTo(" + this.R + ") range");
    }

    @Override // o.W2
    public void setThumbElevation(float f2) {
        this.o0.j(f2);
    }

    public void setThumbElevationResource(int i) {
        setThumbElevation(getResources().getDimension(i));
    }

    @Override // o.W2
    public void setThumbHeight(int i) {
        if (i != this.F) {
            this.F = i;
            this.o0.setBounds(0, 0, this.E, i);
            Drawable drawable = this.p0;
            if (drawable != null) {
                a(drawable);
            }
            Iterator it = this.q0.iterator();
            while (it.hasNext()) {
                a((Drawable) it.next());
            }
            y();
        }
    }

    public void setThumbHeightResource(int i) {
        setThumbHeight(getResources().getDimensionPixelSize(i));
    }

    public void setThumbRadius(int i) {
        int i2 = i * 2;
        setThumbWidth(i2);
        setThumbHeight(i2);
    }

    public void setThumbRadiusResource(int i) {
        setThumbRadius(getResources().getDimensionPixelSize(i));
    }

    @Override // o.W2
    public void setThumbStrokeColor(ColorStateList colorStateList) {
        this.o0.m(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeColorResource(int i) {
        if (i != 0) {
            setThumbStrokeColor(L1.v(getContext(), i));
        }
    }

    @Override // o.W2
    public void setThumbStrokeWidth(float f2) {
        C0111eb c0111eb = this.o0;
        c0111eb.a.j = f2;
        c0111eb.invalidateSelf();
        postInvalidate();
    }

    public void setThumbStrokeWidthResource(int i) {
        if (i != 0) {
            setThumbStrokeWidth(getResources().getDimension(i));
        }
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        C0111eb c0111eb = this.o0;
        if (!colorStateList.equals(c0111eb.a.c)) {
            c0111eb.k(colorStateList);
            invalidate();
        }
    }

    @Override // o.W2
    public void setThumbTrackGapSize(int i) {
        if (this.H != i) {
            this.H = i;
            invalidate();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [o.Ae, java.lang.Object] */
    @Override // o.W2
    public void setThumbWidth(int i) {
        if (i != this.E) {
            this.E = i;
            C0111eb c0111eb = this.o0;
            C0424u6 c0424u6 = new C0424u6(0);
            C0424u6 c0424u62 = new C0424u6(0);
            C0424u6 c0424u63 = new C0424u6(0);
            C0424u6 c0424u64 = new C0424u6(0);
            float f2 = this.E / 2.0f;
            L1 s = Ha.s(0);
            C0530ze.b(s);
            C0530ze.b(s);
            C0530ze.b(s);
            C0530ze.b(s);
            C0139g c0139g = new C0139g(f2);
            C0139g c0139g2 = new C0139g(f2);
            C0139g c0139g3 = new C0139g(f2);
            C0139g c0139g4 = new C0139g(f2);
            ?? obj = new Object();
            obj.a = s;
            obj.b = s;
            obj.c = s;
            obj.d = s;
            obj.e = c0139g;
            obj.f65f = c0139g2;
            obj.g = c0139g3;
            obj.h = c0139g4;
            obj.i = c0424u6;
            obj.j = c0424u62;
            obj.k = c0424u63;
            obj.l = c0424u64;
            c0111eb.setShapeAppearanceModel(obj);
            c0111eb.setBounds(0, 0, this.E, this.F);
            Drawable drawable = this.p0;
            if (drawable != null) {
                a(drawable);
            }
            Iterator it = this.q0.iterator();
            while (it.hasNext()) {
                a((Drawable) it.next());
            }
            y();
        }
    }

    public void setThumbWidthResource(int i) {
        setThumbWidth(getResources().getDimensionPixelSize(i));
    }

    @Override // o.W2
    public void setTickActiveRadius(int i) {
        if (this.b0 != i) {
            this.b0 = i;
            this.f160f.setStrokeWidth(i * 2);
            y();
        }
    }

    @Override // o.W2
    public void setTickActiveTintList(ColorStateList colorStateList) {
        if (!colorStateList.equals(this.h0)) {
            this.h0 = colorStateList;
            this.f160f.setColor(h(colorStateList));
            invalidate();
        }
    }

    @Override // o.W2
    public void setTickInactiveRadius(int i) {
        if (this.c0 != i) {
            this.c0 = i;
            this.e.setStrokeWidth(i * 2);
            y();
        }
    }

    @Override // o.W2
    public void setTickInactiveTintList(ColorStateList colorStateList) {
        if (!colorStateList.equals(this.i0)) {
            this.i0 = colorStateList;
            this.e.setColor(h(colorStateList));
            invalidate();
        }
    }

    public void setTickTintList(ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTickVisible(boolean z) {
        if (this.a0 != z) {
            this.a0 = z;
            postInvalidate();
        }
    }

    @Override // o.W2
    public void setTrackActiveTintList(ColorStateList colorStateList) {
        if (!colorStateList.equals(this.j0)) {
            this.j0 = colorStateList;
            this.b.setColor(h(colorStateList));
            this.g.setColor(h(this.j0));
            invalidate();
        }
    }

    @Override // o.W2
    public void setTrackHeight(int i) {
        if (this.C != i) {
            this.C = i;
            this.a.setStrokeWidth(i);
            this.b.setStrokeWidth(this.C);
            y();
        }
    }

    @Override // o.W2
    public void setTrackInactiveTintList(ColorStateList colorStateList) {
        if (!colorStateList.equals(this.k0)) {
            this.k0 = colorStateList;
            this.a.setColor(h(colorStateList));
            invalidate();
        }
    }

    @Override // o.W2
    public void setTrackInsideCornerSize(int i) {
        if (this.L != i) {
            this.L = i;
            invalidate();
        }
    }

    @Override // o.W2
    public void setTrackStopIndicatorSize(int i) {
        if (this.K != i) {
            this.K = i;
            this.g.setStrokeWidth(i);
            invalidate();
        }
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValue(float f2) {
        setValues(Float.valueOf(f2));
    }

    public void setValueFrom(float f2) {
        this.Q = f2;
        this.f0 = true;
        postInvalidate();
    }

    public void setValueTo(float f2) {
        this.R = f2;
        this.f0 = true;
        postInvalidate();
    }

    public void setCustomThumbDrawable(Drawable drawable) {
        Drawable newDrawable = drawable.mutate().getConstantState().newDrawable();
        a(newDrawable);
        this.p0 = newDrawable;
        this.q0.clear();
        postInvalidate();
    }
}
