package o;

import com.ffrt.proxyread.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.google.android.material.chip.Chip;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import org.bouncycastle.pqc.crypto.rainbow.GF2Field;
//import org.conscrypt.BuildConfig // replaced by app BuildConfig

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Q3 extends C0111eb implements Drawable.Callback, Kf {
    public static final int[] F0 = {R.attr.state_enabled};
    public static final ShapeDrawable G0 = new ShapeDrawable(new OvalShape());
    public float A;
    public WeakReference A0;
    public ColorStateList B;
    public TextUtils.TruncateAt B0;
    public float C;
    public boolean C0;
    public ColorStateList D;
    public int D0;
    public CharSequence E;
    public boolean E0;
    public boolean F;
    public Drawable G;
    public ColorStateList H;
    public float I;
    public boolean J;
    public boolean K;
    public Drawable L;
    public RippleDrawable M;
    public ColorStateList N;
    public float O;
    public SpannableStringBuilder P;
    public boolean Q;
    public boolean R;
    public Drawable S;
    public ColorStateList T;
    public Lb U;
    public Lb V;
    public float W;
    public float X;
    public float Y;
    public float Z;
    public float a0;
    public float b0;
    public float c0;
    public float d0;
    public final Context e0;
    public final Paint f0;
    public final Paint.FontMetrics g0;
    public final RectF h0;
    public final PointF i0;
    public final Path j0;
    public final Lf k0;
    public int l0;
    public int m0;
    public int n0;
    public int o0;
    public int p0;
    public int q0;
    public boolean r0;
    public int s0;
    public int t0;
    public ColorFilter u0;
    public PorterDuffColorFilter v0;
    public ColorStateList w0;
    public ColorStateList x;
    public PorterDuff.Mode x0;
    public ColorStateList y;
    public int[] y0;
    public float z;
    public ColorStateList z0;

    public Q3(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 2130903248, 2131690509);
        this.A = -1.0f;
        this.f0 = new Paint(1);
        this.g0 = new Paint.FontMetrics();
        this.h0 = new RectF();
        this.i0 = new PointF();
        this.j0 = new Path();
        this.t0 = GF2Field.MASK;
        this.x0 = PorterDuff.Mode.SRC_IN;
        this.A0 = new WeakReference(null);
        i(context);
        this.e0 = context;
        Lf lf = new Lf(this);
        this.k0 = lf;
        this.E = BuildConfig.FLAVOR;
        lf.a.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = F0;
        setState(iArr);
        if (!Arrays.equals(this.y0, iArr)) {
            this.y0 = iArr;
            if (V()) {
                y(getState(), iArr);
            }
        }
        this.C0 = true;
        int[] iArr2 = AbstractC0114ee.a;
        G0.setTint(-1);
    }

    public static void W(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public static boolean v(ColorStateList colorStateList) {
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        return false;
    }

    public static boolean w(Drawable drawable) {
        if (drawable != null && drawable.isStateful()) {
            return true;
        }
        return false;
    }

    public final void A(Drawable drawable) {
        if (this.S != drawable) {
            float s = s();
            this.S = drawable;
            float s2 = s();
            W(this.S);
            q(this.S);
            invalidateSelf();
            if (s != s2) {
                x();
            }
        }
    }

    public final void B(ColorStateList colorStateList) {
        Drawable drawable;
        if (this.T != colorStateList) {
            this.T = colorStateList;
            if (this.R && (drawable = this.S) != null && this.Q) {
                drawable.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void C(boolean z) {
        if (this.R != z) {
            boolean T = T();
            this.R = z;
            boolean T2 = T();
            if (T != T2) {
                if (T2) {
                    q(this.S);
                } else {
                    W(this.S);
                }
                invalidateSelf();
                x();
            }
        }
    }

    public final void D(float f2) {
        if (this.A != f2) {
            this.A = f2;
            C0530ze e = this.a.a.e();
            e.e = new C0139g(f2);
            e.f308f = new C0139g(f2);
            e.g = new C0139g(f2);
            e.h = new C0139g(f2);
            setShapeAppearanceModel(e.a());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void E(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.G;
        Drawable drawable4 = null;
        if (drawable3 != 0) {
            boolean z = drawable3 instanceof Si;
            drawable2 = drawable3;
            if (z) {
                drawable2 = null;
            }
        } else {
            drawable2 = null;
        }
        if (drawable2 != drawable) {
            float s = s();
            if (drawable != null) {
                drawable4 = drawable.mutate();
            }
            this.G = drawable4;
            float s2 = s();
            W(drawable2);
            if (U()) {
                q(this.G);
            }
            invalidateSelf();
            if (s != s2) {
                x();
            }
        }
    }

    public final void F(float f2) {
        if (this.I != f2) {
            float s = s();
            this.I = f2;
            float s2 = s();
            invalidateSelf();
            if (s != s2) {
                x();
            }
        }
    }

    public final void G(ColorStateList colorStateList) {
        this.J = true;
        if (this.H != colorStateList) {
            this.H = colorStateList;
            if (U()) {
                this.G.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void H(boolean z) {
        if (this.F != z) {
            boolean U = U();
            this.F = z;
            boolean U2 = U();
            if (U != U2) {
                if (U2) {
                    q(this.G);
                } else {
                    W(this.G);
                }
                invalidateSelf();
                x();
            }
        }
    }

    public final void I(ColorStateList colorStateList) {
        if (this.B != colorStateList) {
            this.B = colorStateList;
            if (this.E0) {
                m(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void J(float f2) {
        if (this.C != f2) {
            this.C = f2;
            this.f0.setStrokeWidth(f2);
            if (this.E0) {
                this.a.j = f2;
                invalidateSelf();
            }
            invalidateSelf();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void K(android.graphics.drawable.Drawable r6) {
        /*
            r5 = this;
            r0 = 0
            android.graphics.drawable.Drawable r1 = r5.L
            if (r1 == 0) goto Lb
            boolean r2 = r1 instanceof o.Si
            if (r2 == 0) goto Lc
            o.Si r1 = (o.Si) r1
        Lb:
            r1 = r0
        Lc:
            if (r1 == r6) goto L49
            float r2 = r5.t()
            if (r6 == 0) goto L18
            android.graphics.drawable.Drawable r0 = r6.mutate()
        L18:
            r5.L = r0
            int[] r6 = o.AbstractC0114ee.a
            android.graphics.drawable.RippleDrawable r6 = new android.graphics.drawable.RippleDrawable
            android.content.res.ColorStateList r0 = r5.D
            android.content.res.ColorStateList r0 = o.AbstractC0114ee.a(r0)
            android.graphics.drawable.Drawable r3 = r5.L
            android.graphics.drawable.ShapeDrawable r4 = o.Q3.G0
            r6.<init>(r0, r3, r4)
            r5.M = r6
            float r6 = r5.t()
            W(r1)
            boolean r0 = r5.V()
            if (r0 == 0) goto L3f
            android.graphics.drawable.Drawable r0 = r5.L
            r5.q(r0)
        L3f:
            r5.invalidateSelf()
            int r6 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r6 == 0) goto L49
            r5.x()
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Q3.K(android.graphics.drawable.Drawable):void");
    }

    public final void L(float f2) {
        if (this.c0 != f2) {
            this.c0 = f2;
            invalidateSelf();
            if (V()) {
                x();
            }
        }
    }

    public final void M(float f2) {
        if (this.O != f2) {
            this.O = f2;
            invalidateSelf();
            if (V()) {
                x();
            }
        }
    }

    public final void N(float f2) {
        if (this.b0 != f2) {
            this.b0 = f2;
            invalidateSelf();
            if (V()) {
                x();
            }
        }
    }

    public final void O(ColorStateList colorStateList) {
        if (this.N != colorStateList) {
            this.N = colorStateList;
            if (V()) {
                this.L.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void P(boolean z) {
        if (this.K != z) {
            boolean V = V();
            this.K = z;
            boolean V2 = V();
            if (V != V2) {
                if (V2) {
                    q(this.L);
                } else {
                    W(this.L);
                }
                invalidateSelf();
                x();
            }
        }
    }

    public final void Q(float f2) {
        if (this.Y != f2) {
            float s = s();
            this.Y = f2;
            float s2 = s();
            invalidateSelf();
            if (s != s2) {
                x();
            }
        }
    }

    public final void R(float f2) {
        if (this.X != f2) {
            float s = s();
            this.X = f2;
            float s2 = s();
            invalidateSelf();
            if (s != s2) {
                x();
            }
        }
    }

    public final void S(ColorStateList colorStateList) {
        if (this.D != colorStateList) {
            this.D = colorStateList;
            this.z0 = null;
            onStateChange(getState());
        }
    }

    public final boolean T() {
        if (this.R && this.S != null && this.r0) {
            return true;
        }
        return false;
    }

    public final boolean U() {
        if (this.F && this.G != null) {
            return true;
        }
        return false;
    }

    public final boolean V() {
        if (this.K && this.L != null) {
            return true;
        }
        return false;
    }

    @Override // o.C0111eb, o.Kf
    public final void a() {
        x();
        invalidateSelf();
    }

    @Override // o.C0111eb, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i;
        int i2;
        RectF rectF;
        int i3;
        int i4;
        int i5;
        RectF rectF2;
        boolean z;
        int i6;
        Rect bounds = getBounds();
        if (!bounds.isEmpty() && (i = this.t0) != 0) {
            if (i < 255) {
                i2 = canvas.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, i);
            } else {
                i2 = 0;
            }
            boolean z2 = this.E0;
            Paint paint = this.f0;
            RectF rectF3 = this.h0;
            if (!z2) {
                paint.setColor(this.l0);
                paint.setStyle(Paint.Style.FILL);
                rectF3.set(bounds);
                canvas.drawRoundRect(rectF3, u(), u(), paint);
            }
            if (!this.E0) {
                paint.setColor(this.m0);
                paint.setStyle(Paint.Style.FILL);
                ColorFilter colorFilter = this.u0;
                if (colorFilter == null) {
                    colorFilter = this.v0;
                }
                paint.setColorFilter(colorFilter);
                rectF3.set(bounds);
                canvas.drawRoundRect(rectF3, u(), u(), paint);
            }
            if (this.E0) {
                super.draw(canvas);
            }
            if (this.C > 0.0f && !this.E0) {
                paint.setColor(this.o0);
                paint.setStyle(Paint.Style.STROKE);
                if (!this.E0) {
                    ColorFilter colorFilter2 = this.u0;
                    if (colorFilter2 == null) {
                        colorFilter2 = this.v0;
                    }
                    paint.setColorFilter(colorFilter2);
                }
                float f2 = bounds.left;
                float f3 = this.C / 2.0f;
                rectF3.set(f2 + f3, bounds.top + f3, bounds.right - f3, bounds.bottom - f3);
                float f4 = this.A - (this.C / 2.0f);
                canvas.drawRoundRect(rectF3, f4, f4, paint);
            }
            paint.setColor(this.p0);
            paint.setStyle(Paint.Style.FILL);
            rectF3.set(bounds);
            if (!this.E0) {
                canvas.drawRoundRect(rectF3, u(), u(), paint);
            } else {
                RectF rectF4 = new RectF(bounds);
                Path path = this.j0;
                C0091db c0091db = this.a;
                this.r.a(c0091db.a, c0091db.i, rectF4, this.q, path);
                e(canvas, paint, path, this.a.a, g());
            }
            if (U()) {
                r(bounds, rectF3);
                float f5 = rectF3.left;
                float f6 = rectF3.top;
                canvas.translate(f5, f6);
                this.G.setBounds(0, 0, (int) rectF3.width(), (int) rectF3.height());
                this.G.draw(canvas);
                canvas.translate(-f5, -f6);
            }
            if (T()) {
                r(bounds, rectF3);
                float f7 = rectF3.left;
                float f8 = rectF3.top;
                canvas.translate(f7, f8);
                this.S.setBounds(0, 0, (int) rectF3.width(), (int) rectF3.height());
                this.S.draw(canvas);
                canvas.translate(-f7, -f8);
            }
            if (this.C0 && this.E != null) {
                PointF pointF = this.i0;
                pointF.set(0.0f, 0.0f);
                Paint.Align align = Paint.Align.LEFT;
                CharSequence charSequence = this.E;
                Lf lf = this.k0;
                if (charSequence != null) {
                    float s = s() + this.W + this.Z;
                    if (getLayoutDirection() == 0) {
                        pointF.x = bounds.left + s;
                    } else {
                        pointF.x = bounds.right - s;
                        align = Paint.Align.RIGHT;
                    }
                    float centerY = bounds.centerY();
                    TextPaint textPaint = lf.a;
                    Paint.FontMetrics fontMetrics = this.g0;
                    textPaint.getFontMetrics(fontMetrics);
                    pointF.y = centerY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f);
                }
                rectF3.setEmpty();
                if (this.E != null) {
                    float s2 = s() + this.W + this.Z;
                    float t = t() + this.d0 + this.a0;
                    if (getLayoutDirection() == 0) {
                        rectF3.left = bounds.left + s2;
                        rectF3.right = bounds.right - t;
                    } else {
                        rectF3.left = bounds.left + t;
                        rectF3.right = bounds.right - s2;
                    }
                    rectF3.top = bounds.top;
                    rectF3.bottom = bounds.bottom;
                }
                If r2 = lf.f121f;
                TextPaint textPaint2 = lf.a;
                if (r2 != null) {
                    textPaint2.drawableState = getState();
                    lf.f121f.e(this.e0, textPaint2, lf.b);
                }
                textPaint2.setTextAlign(align);
                if (Math.round(lf.a(this.E.toString())) > Math.round(rectF3.width())) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    i6 = canvas.save();
                    canvas.clipRect(rectF3);
                } else {
                    i6 = 0;
                }
                CharSequence charSequence2 = this.E;
                if (z && this.B0 != null) {
                    charSequence2 = TextUtils.ellipsize(charSequence2, textPaint2, rectF3.width(), this.B0);
                }
                CharSequence charSequence3 = charSequence2;
                int length = charSequence3.length();
                float f9 = pointF.x;
                float f10 = pointF.y;
                rectF = rectF3;
                i3 = i2;
                i4 = 0;
                i5 = 255;
                canvas.drawText(charSequence3, 0, length, f9, f10, textPaint2);
                if (z) {
                    canvas.restoreToCount(i6);
                }
            } else {
                rectF = rectF3;
                i3 = i2;
                i4 = 0;
                i5 = 255;
            }
            if (V()) {
                rectF.setEmpty();
                if (V()) {
                    float f11 = this.d0 + this.c0;
                    if (getLayoutDirection() == 0) {
                        float f12 = bounds.right - f11;
                        rectF2 = rectF;
                        rectF2.right = f12;
                        rectF2.left = f12 - this.O;
                    } else {
                        rectF2 = rectF;
                        float f13 = bounds.left + f11;
                        rectF2.left = f13;
                        rectF2.right = f13 + this.O;
                    }
                    float exactCenterY = bounds.exactCenterY();
                    float f14 = this.O;
                    float f15 = exactCenterY - (f14 / 2.0f);
                    rectF2.top = f15;
                    rectF2.bottom = f15 + f14;
                } else {
                    rectF2 = rectF;
                }
                float f16 = rectF2.left;
                float f17 = rectF2.top;
                canvas.translate(f16, f17);
                this.L.setBounds(i4, i4, (int) rectF2.width(), (int) rectF2.height());
                int[] iArr = AbstractC0114ee.a;
                this.M.setBounds(this.L.getBounds());
                this.M.jumpToCurrentState();
                this.M.draw(canvas);
                canvas.translate(-f16, -f17);
            }
            if (this.t0 < i5) {
                canvas.restoreToCount(i3);
            }
        }
    }

    @Override // o.C0111eb, android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.t0;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.u0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.z;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.min(Math.round(t() + this.k0.a(this.E.toString()) + s() + this.W + this.Z + this.a0 + this.d0), this.D0);
    }

    @Override // o.C0111eb, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // o.C0111eb, android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        if (this.E0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            outline.setRoundRect(bounds, this.A);
        } else {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.z, this.A);
        }
        outline.setAlpha(this.t0 / 255.0f);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // o.C0111eb, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        If r0;
        ColorStateList colorStateList;
        if (!v(this.x) && !v(this.y) && !v(this.B) && (((r0 = this.k0.f121f) == null || (colorStateList = r0.j) == null || !colorStateList.isStateful()) && ((!this.R || this.S == null || !this.Q) && !w(this.G) && !w(this.S) && !v(this.w0)))) {
            return false;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        if (U()) {
            onLayoutDirectionChanged |= this.G.setLayoutDirection(i);
        }
        if (T()) {
            onLayoutDirectionChanged |= this.S.setLayoutDirection(i);
        }
        if (V()) {
            onLayoutDirectionChanged |= this.L.setLayoutDirection(i);
        }
        if (onLayoutDirectionChanged) {
            invalidateSelf();
            return true;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        boolean onLevelChange = super.onLevelChange(i);
        if (U()) {
            onLevelChange |= this.G.setLevel(i);
        }
        if (T()) {
            onLevelChange |= this.S.setLevel(i);
        }
        if (V()) {
            onLevelChange |= this.L.setLevel(i);
        }
        if (onLevelChange) {
            invalidateSelf();
        }
        return onLevelChange;
    }

    @Override // o.C0111eb, android.graphics.drawable.Drawable, o.Kf
    public final boolean onStateChange(int[] iArr) {
        if (this.E0) {
            super.onStateChange(iArr);
        }
        return y(iArr, this.y0);
    }

    public final void q(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        drawable.setLayoutDirection(getLayoutDirection());
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.L) {
            if (drawable.isStateful()) {
                drawable.setState(this.y0);
            }
            drawable.setTintList(this.N);
            return;
        }
        Drawable drawable2 = this.G;
        if (drawable == drawable2 && this.J) {
            drawable2.setTintList(this.H);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    public final void r(Rect rect, RectF rectF) {
        Drawable drawable;
        Drawable drawable2;
        rectF.setEmpty();
        if (U() || T()) {
            float f2 = this.W + this.X;
            if (this.r0) {
                drawable = this.S;
            } else {
                drawable = this.G;
            }
            float f3 = this.I;
            if (f3 <= 0.0f && drawable != null) {
                f3 = drawable.getIntrinsicWidth();
            }
            if (getLayoutDirection() == 0) {
                float f4 = rect.left + f2;
                rectF.left = f4;
                rectF.right = f4 + f3;
            } else {
                float f5 = rect.right - f2;
                rectF.right = f5;
                rectF.left = f5 - f3;
            }
            if (this.r0) {
                drawable2 = this.S;
            } else {
                drawable2 = this.G;
            }
            float f6 = this.I;
            if (f6 <= 0.0f && drawable2 != null) {
                f6 = (float) Math.ceil(TypedValue.applyDimension(1, 24, this.e0.getResources().getDisplayMetrics()));
                if (drawable2.getIntrinsicHeight() <= f6) {
                    f6 = drawable2.getIntrinsicHeight();
                }
            }
            float exactCenterY = rect.exactCenterY() - (f6 / 2.0f);
            rectF.top = exactCenterY;
            rectF.bottom = exactCenterY + f6;
        }
    }

    public final float s() {
        Drawable drawable;
        if (!U() && !T()) {
            return 0.0f;
        }
        float f2 = this.X;
        if (this.r0) {
            drawable = this.S;
        } else {
            drawable = this.G;
        }
        float f3 = this.I;
        if (f3 <= 0.0f && drawable != null) {
            f3 = drawable.getIntrinsicWidth();
        }
        return f3 + f2 + this.Y;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // o.C0111eb, android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.t0 != i) {
            this.t0 = i;
            invalidateSelf();
        }
    }

    @Override // o.C0111eb, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.u0 != colorFilter) {
            this.u0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // o.C0111eb, android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        if (this.w0 != colorStateList) {
            this.w0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // o.C0111eb, android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        if (this.x0 != mode) {
            this.x0 = mode;
            ColorStateList colorStateList = this.w0;
            if (colorStateList != null && mode != null) {
                porterDuffColorFilter = new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
            } else {
                porterDuffColorFilter = null;
            }
            this.v0 = porterDuffColorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (U()) {
            visible |= this.G.setVisible(z, z2);
        }
        if (T()) {
            visible |= this.S.setVisible(z, z2);
        }
        if (V()) {
            visible |= this.L.setVisible(z, z2);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    public final float t() {
        if (V()) {
            return this.b0 + this.O + this.c0;
        }
        return 0.0f;
    }

    public final float u() {
        if (this.E0) {
            return this.a.a.e.a(g());
        }
        return this.A;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final void x() {
        P3 p3 = (P3) this.A0.get();
        if (p3 != null) {
            Chip chip = (Chip) p3;
            chip.c(chip.p);
            chip.requestLayout();
            chip.invalidateOutline();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean y(int[] r9, int[] r10) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Q3.y(int[], int[]):boolean");
    }

    public final void z(boolean z) {
        if (this.Q != z) {
            this.Q = z;
            float s = s();
            if (!z && this.r0) {
                this.r0 = false;
            }
            float s2 = s();
            invalidateSelf();
            if (s != s2) {
                x();
            }
        }
    }
}
