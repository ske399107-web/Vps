package o;

import android.R;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOverlay;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import com.google.android.material.slider.Slider;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class W2 extends View {
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int L;
    public final int M;
    public float N;
    public MotionEvent O;
    public boolean P;
    public float Q;
    public float R;
    public ArrayList S;
    public int T;
    public int U;
    public float V;
    public float[] W;
    public final Paint a;
    public boolean a0;
    public final Paint b;
    public int b0;
    public final Paint c;
    public int c0;
    public final Paint d;
    public int d0;
    public final Paint e;
    public boolean e0;

    /* renamed from: f, reason: collision with root package name */
    public final Paint f160f;
    public boolean f0;
    public final Paint g;
    public ColorStateList g0;
    public final U2 h;
    public ColorStateList h0;
    public final AccessibilityManager i;
    public ColorStateList i0;
    public T2 j;
    public ColorStateList j0;
    public final int k;
    public ColorStateList k0;
    public final ArrayList l;
    public final Path l0;
    public final ArrayList m;
    public final RectF m0;
    public final ArrayList n;
    public final RectF n0;

    /* renamed from: o, reason: collision with root package name */
    public boolean f161o;
    public final C0111eb o0;
    public ValueAnimator p;
    public Drawable p0;
    public ValueAnimator q;
    public List q0;
    public final int r;
    public float r0;
    public final int s;
    public int s0;
    public final int t;
    public final R2 t0;
    public final int u;
    public final int v;
    public final int w;
    public final int x;
    public final int y;
    public final int z;

    /* JADX WARN: Type inference failed for: r1v10, types: [o.R2] */
    public W2(Context context, AttributeSet attributeSet) {
        super(AbstractC0487x9.j0(context, attributeSet, 2130904030, 2131690565), attributeSet, 2130904030);
        int i;
        int i2;
        this.l = new ArrayList();
        this.m = new ArrayList();
        this.n = new ArrayList();
        this.f161o = false;
        this.I = -1;
        this.J = -1;
        this.P = false;
        this.S = new ArrayList();
        this.T = -1;
        this.U = -1;
        this.V = 0.0f;
        this.a0 = true;
        this.e0 = false;
        this.l0 = new Path();
        this.m0 = new RectF();
        this.n0 = new RectF();
        C0111eb c0111eb = new C0111eb();
        this.o0 = c0111eb;
        this.q0 = Collections.emptyList();
        this.s0 = 0;
        final Slider slider = (Slider) this;
        this.t0 = new ViewTreeObserver.OnScrollChangedListener() { // from class: o.R2
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                Slider.this.w();
            }
        };
        Context context2 = getContext();
        this.a = new Paint();
        this.b = new Paint();
        Paint paint = new Paint(1);
        this.c = paint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint2 = new Paint(1);
        this.d = paint2;
        paint2.setStyle(style);
        Paint paint3 = new Paint();
        this.e = paint3;
        Paint.Style style2 = Paint.Style.STROKE;
        paint3.setStyle(style2);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint3.setStrokeCap(cap);
        Paint paint4 = new Paint();
        this.f160f = paint4;
        paint4.setStyle(style2);
        paint4.setStrokeCap(cap);
        Paint paint5 = new Paint();
        this.g = paint5;
        paint5.setStyle(style);
        paint5.setStrokeCap(cap);
        Resources resources = context2.getResources();
        this.z = resources.getDimensionPixelSize(2131100399);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(2131100398);
        this.s = dimensionPixelOffset;
        this.D = dimensionPixelOffset;
        this.t = resources.getDimensionPixelSize(2131100394);
        this.u = resources.getDimensionPixelSize(2131100397);
        this.v = resources.getDimensionPixelSize(2131100396);
        this.w = resources.getDimensionPixelSize(2131100396);
        this.x = resources.getDimensionPixelSize(2131100395);
        this.M = resources.getDimensionPixelSize(2131100390);
        int[] iArr = AbstractC0133fd.x;
        AbstractC0487x9.j(context2, attributeSet, 2130904030, 2131690565);
        AbstractC0487x9.q(context2, attributeSet, iArr, 2130904030, 2131690565, new int[0]);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, 2130904030, 2131690565);
        this.k = obtainStyledAttributes.getResourceId(8, 2131690599);
        this.Q = obtainStyledAttributes.getFloat(3, 0.0f);
        this.R = obtainStyledAttributes.getFloat(4, 1.0f);
        setValues(Float.valueOf(this.Q));
        this.V = obtainStyledAttributes.getFloat(2, 0.0f);
        this.y = (int) Math.ceil(obtainStyledAttributes.getDimension(9, (float) Math.ceil(TypedValue.applyDimension(1, 48, getContext().getResources().getDisplayMetrics()))));
        boolean hasValue = obtainStyledAttributes.hasValue(24);
        if (hasValue) {
            i = 24;
        } else {
            i = 26;
        }
        int i3 = hasValue ? 24 : 25;
        ColorStateList F = Ha.F(context2, obtainStyledAttributes, i);
        setTrackInactiveTintList(F == null ? L1.v(context2, 2131034805) : F);
        ColorStateList F2 = Ha.F(context2, obtainStyledAttributes, i3);
        setTrackActiveTintList(F2 == null ? L1.v(context2, 2131034802) : F2);
        c0111eb.k(Ha.F(context2, obtainStyledAttributes, 10));
        if (obtainStyledAttributes.hasValue(14)) {
            setThumbStrokeColor(Ha.F(context2, obtainStyledAttributes, 14));
        }
        setThumbStrokeWidth(obtainStyledAttributes.getDimension(15, 0.0f));
        ColorStateList F3 = Ha.F(context2, obtainStyledAttributes, 5);
        setHaloTintList(F3 == null ? L1.v(context2, 2131034803) : F3);
        this.a0 = obtainStyledAttributes.getBoolean(23, true);
        boolean hasValue2 = obtainStyledAttributes.hasValue(18);
        if (hasValue2) {
            i2 = 18;
        } else {
            i2 = 20;
        }
        int i4 = hasValue2 ? 18 : 19;
        ColorStateList F4 = Ha.F(context2, obtainStyledAttributes, i2);
        setTickInactiveTintList(F4 == null ? L1.v(context2, 2131034804) : F4);
        ColorStateList F5 = Ha.F(context2, obtainStyledAttributes, i4);
        setTickActiveTintList(F5 == null ? L1.v(context2, 2131034801) : F5);
        setThumbTrackGapSize(obtainStyledAttributes.getDimensionPixelSize(16, 0));
        setTrackStopIndicatorSize(obtainStyledAttributes.getDimensionPixelSize(29, 0));
        setTrackInsideCornerSize(obtainStyledAttributes.getDimensionPixelSize(28, 0));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(13, 0) * 2;
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(17, dimensionPixelSize);
        int dimensionPixelSize3 = obtainStyledAttributes.getDimensionPixelSize(12, dimensionPixelSize);
        setThumbWidth(dimensionPixelSize2);
        setThumbHeight(dimensionPixelSize3);
        setHaloRadius(obtainStyledAttributes.getDimensionPixelSize(6, 0));
        setThumbElevation(obtainStyledAttributes.getDimension(11, 0.0f));
        setTrackHeight(obtainStyledAttributes.getDimensionPixelSize(27, 0));
        setTickActiveRadius(obtainStyledAttributes.getDimensionPixelSize(21, this.K / 2));
        setTickInactiveRadius(obtainStyledAttributes.getDimensionPixelSize(22, this.K / 2));
        setLabelBehavior(obtainStyledAttributes.getInt(7, 0));
        if (!obtainStyledAttributes.getBoolean(0, true)) {
            setEnabled(false);
        }
        obtainStyledAttributes.recycle();
        setFocusable(true);
        setClickable(true);
        c0111eb.l();
        this.r = ViewConfiguration.get(context2).getScaledTouchSlop();
        U2 u2 = new U2(slider);
        this.h = u2;
        Dh.l(this, u2);
        this.i = (AccessibilityManager) getContext().getSystemService("accessibility");
    }

    public final boolean A(float f2) {
        return i(new BigDecimal(Float.toString(f2)).subtract(new BigDecimal(Float.toString(this.Q)), MathContext.DECIMAL64).doubleValue());
    }

    public final float B(float f2) {
        return (o(f2) * this.d0) + this.D;
    }

    public final void a(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth == -1 && intrinsicHeight == -1) {
            drawable.setBounds(0, 0, this.E, this.F);
        } else {
            float max = Math.max(this.E, this.F) / Math.max(intrinsicWidth, intrinsicHeight);
            drawable.setBounds(0, 0, (int) (intrinsicWidth * max), (int) (intrinsicHeight * max));
        }
    }

    public final int b() {
        int i = this.A / 2;
        int i2 = this.B;
        int i3 = 0;
        if (i2 == 1 || i2 == 3) {
            i3 = ((C0275mg) this.l.get(0)).getIntrinsicHeight();
        }
        return i + i3;
    }

    public final ValueAnimator c(boolean z) {
        float f2;
        ValueAnimator valueAnimator;
        int o0;
        TimeInterpolator p0;
        int i = 0;
        float f3 = 1.0f;
        if (z) {
            f2 = 0.0f;
        } else {
            f2 = 1.0f;
        }
        if (z) {
            valueAnimator = this.q;
        } else {
            valueAnimator = this.p;
        }
        if (valueAnimator != null && valueAnimator.isRunning()) {
            f2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            valueAnimator.cancel();
        }
        if (!z) {
            f3 = 0.0f;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f2, f3);
        if (z) {
            o0 = Ha.o0(getContext(), 2130903859, 83);
            p0 = Ha.p0(getContext(), 2130903869, Q0.e);
        } else {
            o0 = Ha.o0(getContext(), 2130903862, 117);
            p0 = Ha.p0(getContext(), 2130903867, Q0.c);
        }
        ofFloat.setDuration(o0);
        ofFloat.setInterpolator(p0);
        ofFloat.addUpdateListener(new S2(i, this));
        return ofFloat;
    }

    public final void d(Canvas canvas, int i, int i2, float f2, Drawable drawable) {
        canvas.save();
        canvas.translate((this.D + ((int) (o(f2) * i))) - (drawable.getBounds().width() / 2.0f), i2 - (drawable.getBounds().height() / 2.0f));
        drawable.draw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (!this.h.m(motionEvent) && !super.dispatchHoverEvent(motionEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        this.a.setColor(h(this.k0));
        this.b.setColor(h(this.j0));
        this.e.setColor(h(this.i0));
        this.f160f.setColor(h(this.h0));
        this.g.setColor(h(this.j0));
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            C0275mg c0275mg = (C0275mg) it.next();
            if (c0275mg.isStateful()) {
                c0275mg.setState(getDrawableState());
            }
        }
        C0111eb c0111eb = this.o0;
        if (c0111eb.isStateful()) {
            c0111eb.setState(getDrawableState());
        }
        Paint paint = this.d;
        paint.setColor(h(this.g0));
        paint.setAlpha(63);
    }

    public final void e() {
        if (!this.f161o) {
            this.f161o = true;
            ValueAnimator c = c(true);
            this.p = c;
            this.q = null;
            c.start();
        }
        ArrayList arrayList = this.l;
        Iterator it = arrayList.iterator();
        for (int i = 0; i < this.S.size() && it.hasNext(); i++) {
            if (i != this.U) {
                q((C0275mg) it.next(), ((Float) this.S.get(i)).floatValue());
            }
        }
        if (it.hasNext()) {
            q((C0275mg) it.next(), ((Float) this.S.get(this.U)).floatValue());
            return;
        }
        throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(arrayList.size()), Integer.valueOf(this.S.size())));
    }

    public final void f() {
        if (this.f161o) {
            this.f161o = false;
            ValueAnimator c = c(false);
            this.q = c;
            this.p = null;
            c.addListener(new Q(2, this));
            this.q.start();
        }
    }

    public final float[] g() {
        float floatValue = ((Float) this.S.get(0)).floatValue();
        ArrayList arrayList = this.S;
        float floatValue2 = ((Float) arrayList.get(arrayList.size() - 1)).floatValue();
        if (this.S.size() == 1) {
            floatValue = this.Q;
        }
        float o2 = o(floatValue);
        float o3 = o(floatValue2);
        if (k()) {
            return new float[]{o3, o2};
        }
        return new float[]{o2, o3};
    }

    public final int getAccessibilityFocusedVirtualViewId() {
        return this.h.k;
    }

    public float getMinSeparation() {
        return 0.0f;
    }

    public abstract int getThumbRadius();

    public List<Float> getValues() {
        return new ArrayList(this.S);
    }

    public final int h(ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    public final boolean i(double d) {
        if (Math.abs(Math.round(r3) - new BigDecimal(Double.toString(d)).divide(new BigDecimal(Float.toString(this.V)), MathContext.DECIMAL64).doubleValue()) < 1.0E-4d) {
            return true;
        }
        return false;
    }

    public final boolean j(MotionEvent motionEvent) {
        if (motionEvent.getToolType(0) == 3) {
            return false;
        }
        for (ViewParent parent = getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if ((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) && viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
        }
        return false;
    }

    public final boolean k() {
        WeakHashMap weakHashMap = Dh.a;
        if (getLayoutDirection() == 1) {
            return true;
        }
        return false;
    }

    public final void l() {
        if (this.V <= 0.0f) {
            return;
        }
        z();
        int min = Math.min((int) (((this.R - this.Q) / this.V) + 1.0f), (this.d0 / this.x) + 1);
        float[] fArr = this.W;
        if (fArr == null || fArr.length != min * 2) {
            this.W = new float[min * 2];
        }
        float f2 = this.d0 / (min - 1);
        for (int i = 0; i < min * 2; i += 2) {
            float[] fArr2 = this.W;
            fArr2[i] = ((i / 2.0f) * f2) + this.D;
            fArr2[i + 1] = b();
        }
    }

    public final boolean m(int i) {
        int i2 = this.U;
        long j = i2 + i;
        long size = this.S.size() - 1;
        if (j < 0) {
            j = 0;
        } else if (j > size) {
            j = size;
        }
        int i3 = (int) j;
        this.U = i3;
        if (i3 == i2) {
            return false;
        }
        if (this.T != -1) {
            this.T = i3;
        }
        v();
        postInvalidate();
        return true;
    }

    public final void n(int i) {
        if (k()) {
            if (i == Integer.MIN_VALUE) {
                i = Integer.MAX_VALUE;
            } else {
                i = -i;
            }
        }
        m(i);
    }

    public final float o(float f2) {
        float f3 = this.Q;
        float f4 = (f2 - f3) / (this.R - f3);
        if (k()) {
            return 1.0f - f4;
        }
        return f4;
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnScrollChangedListener(this.t0);
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            C0275mg c0275mg = (C0275mg) it.next();
            ViewGroup f2 = Ng.f(this);
            if (f2 == null) {
                c0275mg.getClass();
            } else {
                c0275mg.getClass();
                int[] iArr = new int[2];
                f2.getLocationOnScreen(iArr);
                c0275mg.J = iArr[0];
                f2.getWindowVisibleDisplayFrame(c0275mg.C);
                f2.addOnLayoutChangeListener(c0275mg.B);
            }
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        T2 t2 = this.j;
        if (t2 != null) {
            removeCallbacks(t2);
        }
        this.f161o = false;
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            C0275mg c0275mg = (C0275mg) it.next();
            Oh g = Ng.g(this);
            if (g != null) {
                ((ViewOverlay) g.a).remove(c0275mg);
                ViewGroup f2 = Ng.f(this);
                if (f2 == null) {
                    c0275mg.getClass();
                } else {
                    f2.removeOnLayoutChangeListener(c0275mg.B);
                }
            }
        }
        getViewTreeObserver().removeOnScrollChangedListener(this.t0);
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0185 A[SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onDraw(android.graphics.Canvas r19) {
        /*
            Method dump skipped, instructions count: 778
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.W2.onDraw(android.graphics.Canvas):void");
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        U2 u2 = this.h;
        if (!z) {
            this.T = -1;
            u2.j(this.U);
            return;
        }
        if (i != 1) {
            if (i != 2) {
                if (i != 17) {
                    if (i == 66) {
                        n(PKIFailureInfo.systemUnavail);
                    }
                } else {
                    n(Integer.MAX_VALUE);
                }
            } else {
                m(PKIFailureInfo.systemUnavail);
            }
        } else {
            m(Integer.MAX_VALUE);
        }
        u2.w(this.U);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i, keyEvent);
        }
        if (this.S.size() == 1) {
            this.T = 0;
        }
        Float f2 = null;
        Boolean bool = null;
        if (this.T == -1) {
            if (i != 61) {
                if (i != 66) {
                    if (i != 81) {
                        if (i != 69) {
                            if (i != 70) {
                                switch (i) {
                                    case 21:
                                        n(-1);
                                        bool = Boolean.TRUE;
                                        break;
                                    case 22:
                                        n(1);
                                        bool = Boolean.TRUE;
                                        break;
                                }
                            }
                        } else {
                            m(-1);
                            bool = Boolean.TRUE;
                        }
                    }
                    m(1);
                    bool = Boolean.TRUE;
                }
                this.T = this.U;
                postInvalidate();
                bool = Boolean.TRUE;
            } else if (keyEvent.hasNoModifiers()) {
                bool = Boolean.valueOf(m(1));
            } else if (keyEvent.isShiftPressed()) {
                bool = Boolean.valueOf(m(-1));
            } else {
                bool = Boolean.FALSE;
            }
            if (bool != null) {
                return bool.booleanValue();
            }
            return super.onKeyDown(i, keyEvent);
        }
        boolean isLongPress = this.e0 | keyEvent.isLongPress();
        this.e0 = isLongPress;
        float f3 = 1.0f;
        if (isLongPress) {
            float f4 = this.V;
            if (f4 != 0.0f) {
                f3 = f4;
            }
            if ((this.R - this.Q) / f3 > 20) {
                f3 *= Math.round(r0 / r11);
            }
        } else {
            float f5 = this.V;
            if (f5 != 0.0f) {
                f3 = f5;
            }
        }
        if (i != 21) {
            if (i != 22) {
                if (i != 69) {
                    if (i == 70 || i == 81) {
                        f2 = Float.valueOf(f3);
                    }
                } else {
                    f2 = Float.valueOf(-f3);
                }
            } else {
                if (k()) {
                    f3 = -f3;
                }
                f2 = Float.valueOf(f3);
            }
        } else {
            if (!k()) {
                f3 = -f3;
            }
            f2 = Float.valueOf(f3);
        }
        if (f2 != null) {
            if (s(this.T, f2.floatValue() + ((Float) this.S.get(this.T)).floatValue())) {
                v();
                postInvalidate();
            }
            return true;
        }
        if (i != 23) {
            if (i != 61) {
                if (i != 66) {
                    return super.onKeyDown(i, keyEvent);
                }
            } else {
                if (keyEvent.hasNoModifiers()) {
                    return m(1);
                }
                if (!keyEvent.isShiftPressed()) {
                    return false;
                }
                return m(-1);
            }
        }
        this.T = -1;
        postInvalidate();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        this.e0 = false;
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3 = this.A;
        int i4 = this.B;
        int i5 = 0;
        if (i4 == 1 || i4 == 3) {
            i5 = ((C0275mg) this.l.get(0)).getIntrinsicHeight();
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(i3 + i5, 1073741824));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        V2 v2 = (V2) parcelable;
        super.onRestoreInstanceState(v2.getSuperState());
        this.Q = v2.a;
        this.R = v2.b;
        r(v2.c);
        this.V = v2.d;
        if (v2.e) {
            requestFocus();
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.view.View$BaseSavedState, android.os.Parcelable, o.V2] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? baseSavedState = new View.BaseSavedState(super.onSaveInstanceState());
        baseSavedState.a = this.Q;
        baseSavedState.b = this.R;
        baseSavedState.c = new ArrayList(this.S);
        baseSavedState.d = this.V;
        baseSavedState.e = hasFocus();
        return baseSavedState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        this.d0 = Math.max(i - (this.D * 2), 0);
        l();
        v();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0036, code lost:
    
        if (r2 != 3) goto L65;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.W2.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        Oh g;
        super.onVisibilityChanged(view, i);
        if (i == 0 || (g = Ng.g(this)) == null) {
            return;
        }
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            ((ViewOverlay) g.a).remove((C0275mg) it.next());
        }
    }

    public final void p() {
        Iterator it = this.n.iterator();
        if (!it.hasNext()) {
            return;
        }
        it.next().getClass();
        throw new ClassCastException();
    }

    public final void q(C0275mg c0275mg, float f2) {
        String str;
        if (((int) f2) == f2) {
            str = "%.0f";
        } else {
            str = "%.2f";
        }
        String format = String.format(str, Float.valueOf(f2));
        if (!TextUtils.equals(c0275mg.x, format)) {
            c0275mg.x = format;
            c0275mg.A.d = true;
            c0275mg.invalidateSelf();
        }
        int o2 = (this.D + ((int) (o(f2) * this.d0))) - (c0275mg.getIntrinsicWidth() / 2);
        int b = b() - ((this.F / 2) + this.M);
        c0275mg.setBounds(o2, b - c0275mg.getIntrinsicHeight(), c0275mg.getIntrinsicWidth() + o2, b);
        Rect rect = new Rect(c0275mg.getBounds());
        Q5.b(Ng.f(this), this, rect);
        c0275mg.setBounds(rect);
        ((ViewOverlay) Ng.g(this).a).add(c0275mg);
    }

    public final void r(ArrayList arrayList) {
        If r5;
        int i;
        int i2;
        int i3;
        ViewGroup f2;
        int resourceId;
        Oh g;
        if (!arrayList.isEmpty()) {
            Collections.sort(arrayList);
            if (this.S.size() == arrayList.size() && this.S.equals(arrayList)) {
                return;
            }
            this.S = arrayList;
            int i4 = 1;
            this.f0 = true;
            this.U = 0;
            v();
            ArrayList arrayList2 = this.l;
            if (arrayList2.size() > this.S.size()) {
                List<C0275mg> subList = arrayList2.subList(this.S.size(), arrayList2.size());
                for (C0275mg c0275mg : subList) {
                    WeakHashMap weakHashMap = Dh.a;
                    if (isAttachedToWindow() && (g = Ng.g(this)) != null) {
                        ((ViewOverlay) g.a).remove(c0275mg);
                        ViewGroup f3 = Ng.f(this);
                        if (f3 == null) {
                            c0275mg.getClass();
                        } else {
                            f3.removeOnLayoutChangeListener(c0275mg.B);
                        }
                    }
                }
                subList.clear();
            }
            while (arrayList2.size() < this.S.size()) {
                Context context = getContext();
                int i5 = this.k;
                C0275mg c0275mg2 = new C0275mg(context, i5);
                TypedArray H = AbstractC0487x9.H(c0275mg2.y, null, AbstractC0133fd.E, 0, i5, new int[0]);
                Context context2 = c0275mg2.y;
                c0275mg2.I = context2.getResources().getDimensionPixelSize(2131100422);
                boolean z = H.getBoolean(8, true);
                c0275mg2.H = z;
                if (z) {
                    C0530ze e = c0275mg2.a.a.e();
                    e.k = c0275mg2.r();
                    c0275mg2.setShapeAppearanceModel(e.a());
                } else {
                    c0275mg2.I = 0;
                }
                CharSequence text = H.getText(6);
                boolean equals = TextUtils.equals(c0275mg2.x, text);
                Lf lf = c0275mg2.A;
                if (!equals) {
                    c0275mg2.x = text;
                    lf.d = true;
                    c0275mg2.invalidateSelf();
                }
                if (H.hasValue(0) && (resourceId = H.getResourceId(0, 0)) != 0) {
                    r5 = new If(context2, resourceId);
                } else {
                    r5 = null;
                }
                if (r5 != null && H.hasValue(1)) {
                    r5.j = Ha.F(context2, H, 1);
                }
                lf.b(r5, context2);
                TypedValue q0 = Ha.q0(context2, 2130903292, C0275mg.class.getCanonicalName());
                int i6 = q0.resourceId;
                if (i6 != 0) {
                    i = context2.getColor(i6);
                } else {
                    i = q0.data;
                }
                TypedValue q02 = Ha.q0(context2, R.attr.colorBackground, C0275mg.class.getCanonicalName());
                int i7 = q02.resourceId;
                if (i7 != 0) {
                    i2 = context2.getColor(i7);
                } else {
                    i2 = q02.data;
                }
                c0275mg2.k(ColorStateList.valueOf(H.getColor(7, AbstractC0263m4.b(AbstractC0263m4.d(i, 153), AbstractC0263m4.d(i2, 229)))));
                TypedValue q03 = Ha.q0(context2, 2130903328, C0275mg.class.getCanonicalName());
                int i8 = q03.resourceId;
                if (i8 != 0) {
                    i3 = context2.getColor(i8);
                } else {
                    i3 = q03.data;
                }
                c0275mg2.m(ColorStateList.valueOf(i3));
                c0275mg2.D = H.getDimensionPixelSize(2, 0);
                c0275mg2.E = H.getDimensionPixelSize(4, 0);
                c0275mg2.F = H.getDimensionPixelSize(5, 0);
                c0275mg2.G = H.getDimensionPixelSize(3, 0);
                H.recycle();
                arrayList2.add(c0275mg2);
                WeakHashMap weakHashMap2 = Dh.a;
                if (isAttachedToWindow() && (f2 = Ng.f(this)) != null) {
                    int[] iArr = new int[2];
                    f2.getLocationOnScreen(iArr);
                    c0275mg2.J = iArr[0];
                    f2.getWindowVisibleDisplayFrame(c0275mg2.C);
                    f2.addOnLayoutChangeListener(c0275mg2.B);
                }
            }
            if (arrayList2.size() == 1) {
                i4 = 0;
            }
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                C0275mg c0275mg3 = (C0275mg) it.next();
                c0275mg3.a.j = i4;
                c0275mg3.invalidateSelf();
            }
            Iterator it2 = this.m.iterator();
            while (it2.hasNext()) {
                Ca ca = (Ca) it2.next();
                Iterator it3 = this.S.iterator();
                while (it3.hasNext()) {
                    ca.a(this, ((Float) it3.next()).floatValue(), false);
                }
            }
            postInvalidate();
            return;
        }
        throw new IllegalArgumentException("At least one value must be set");
    }

    public final boolean s(int i, float f2) {
        float floatValue;
        float floatValue2;
        this.U = i;
        if (Math.abs(f2 - ((Float) this.S.get(i)).floatValue()) < 1.0E-4d) {
            return false;
        }
        float minSeparation = getMinSeparation();
        if (this.s0 == 0) {
            if (minSeparation == 0.0f) {
                minSeparation = 0.0f;
            } else {
                float f3 = this.Q;
                minSeparation = ((f3 - this.R) * ((minSeparation - this.D) / this.d0)) + f3;
            }
        }
        if (k()) {
            minSeparation = -minSeparation;
        }
        int i2 = i + 1;
        if (i2 >= this.S.size()) {
            floatValue = this.R;
        } else {
            floatValue = ((Float) this.S.get(i2)).floatValue() - minSeparation;
        }
        int i3 = i - 1;
        if (i3 < 0) {
            floatValue2 = this.Q;
        } else {
            floatValue2 = minSeparation + ((Float) this.S.get(i3)).floatValue();
        }
        if (f2 < floatValue2) {
            f2 = floatValue2;
        } else if (f2 > floatValue) {
            f2 = floatValue;
        }
        this.S.set(i, Float.valueOf(f2));
        Iterator it = this.m.iterator();
        while (it.hasNext()) {
            ((Ca) it.next()).a(this, ((Float) this.S.get(i)).floatValue(), true);
        }
        AccessibilityManager accessibilityManager = this.i;
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            Runnable runnable = this.j;
            if (runnable == null) {
                this.j = new T2(this);
            } else {
                removeCallbacks(runnable);
            }
            T2 t2 = this.j;
            t2.b = i;
            postDelayed(t2, 200L);
        }
        return true;
    }

    public void setActiveThumbIndex(int i) {
        this.T = i;
    }

    public void setCustomThumbDrawablesForValues(int... iArr) {
        Drawable[] drawableArr = new Drawable[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            drawableArr[i] = getResources().getDrawable(iArr[i]);
        }
        setCustomThumbDrawablesForValues(drawableArr);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        int i;
        super.setEnabled(z);
        if (z) {
            i = 0;
        } else {
            i = 2;
        }
        setLayerType(i, null);
    }

    public abstract void setHaloRadius(int i);

    public abstract void setHaloTintList(ColorStateList colorStateList);

    public abstract void setLabelBehavior(int i);

    public void setSeparationUnit(int i) {
        this.s0 = i;
        this.f0 = true;
        postInvalidate();
    }

    public abstract void setThumbElevation(float f2);

    public abstract void setThumbHeight(int i);

    public abstract void setThumbStrokeColor(ColorStateList colorStateList);

    public abstract void setThumbStrokeWidth(float f2);

    public abstract void setThumbTrackGapSize(int i);

    public abstract void setThumbWidth(int i);

    public abstract void setTickActiveRadius(int i);

    public abstract void setTickActiveTintList(ColorStateList colorStateList);

    public abstract void setTickInactiveRadius(int i);

    public abstract void setTickInactiveTintList(ColorStateList colorStateList);

    public abstract void setTrackActiveTintList(ColorStateList colorStateList);

    public abstract void setTrackHeight(int i);

    public abstract void setTrackInactiveTintList(ColorStateList colorStateList);

    public abstract void setTrackInsideCornerSize(int i);

    public abstract void setTrackStopIndicatorSize(int i);

    public void setValues(Float... fArr) {
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, fArr);
        r(arrayList);
    }

    public final void t() {
        double d;
        float f2 = this.r0;
        float f3 = this.V;
        if (f3 > 0.0f) {
            d = Math.round(f2 * r1) / ((int) ((this.R - this.Q) / f3));
        } else {
            d = f2;
        }
        if (k()) {
            d = 1.0d - d;
        }
        float f4 = this.R;
        s(this.T, (float) ((d * (f4 - r1)) + this.Q));
    }

    public final void u(int i, Rect rect) {
        int o2 = this.D + ((int) (o(getValues().get(i).floatValue()) * this.d0));
        int b = b();
        int max = Math.max(this.E / 2, this.y / 2);
        int max2 = Math.max(this.F / 2, this.y / 2);
        rect.set(o2 - max, b - max2, o2 + max, b + max2);
    }

    public final void v() {
        if ((getBackground() instanceof RippleDrawable) && getMeasuredWidth() > 0) {
            Drawable background = getBackground();
            if (background instanceof RippleDrawable) {
                int o2 = (int) ((o(((Float) this.S.get(this.U)).floatValue()) * this.d0) + this.D);
                int b = b();
                int i = this.G;
                background.setHotspotBounds(o2 - i, b - i, o2 + i, b + i);
            }
        }
    }

    public final void w() {
        int i = this.B;
        if (i != 0 && i != 1) {
            if (i != 2) {
                if (i == 3) {
                    if (isEnabled()) {
                        Rect rect = new Rect();
                        Ng.f(this).getHitRect(rect);
                        if (getLocalVisibleRect(rect)) {
                            e();
                            return;
                        }
                    }
                    f();
                    return;
                }
                throw new IllegalArgumentException("Unexpected labelBehavior: " + this.B);
            }
            f();
            return;
        }
        if (this.T != -1 && isEnabled()) {
            e();
        } else {
            f();
        }
    }

    public final void x(Canvas canvas, Paint paint, RectF rectF, int i) {
        float f2;
        float f3 = this.C / 2.0f;
        int C = Ve.C(i);
        if (C != 1) {
            if (C != 2) {
                if (C == 3) {
                    f3 = this.L;
                }
                f2 = f3;
            } else {
                f2 = f3;
                f3 = this.L;
            }
        } else {
            f2 = this.L;
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        Path path = this.l0;
        path.reset();
        if (rectF.width() >= f3 + f2) {
            path.addRoundRect(rectF, new float[]{f3, f3, f2, f2, f2, f2, f3, f3}, Path.Direction.CW);
            canvas.drawPath(path, paint);
            return;
        }
        float min = Math.min(f3, f2);
        float max = Math.max(f3, f2);
        canvas.save();
        path.addRoundRect(rectF, min, min, Path.Direction.CW);
        canvas.clipPath(path);
        int C2 = Ve.C(i);
        RectF rectF2 = this.n0;
        if (C2 != 1) {
            if (C2 != 2) {
                rectF2.set(rectF.centerX() - max, rectF.top, rectF.centerX() + max, rectF.bottom);
            } else {
                float f4 = rectF.right;
                rectF2.set(f4 - (2.0f * max), rectF.top, f4, rectF.bottom);
            }
        } else {
            float f5 = rectF.left;
            rectF2.set(f5, rectF.top, (2.0f * max) + f5, rectF.bottom);
        }
        canvas.drawRoundRect(rectF2, max, max, paint);
        canvas.restore();
    }

    public final void y() {
        boolean z;
        int max = Math.max(this.z, Math.max(this.C + getPaddingBottom() + getPaddingTop(), getPaddingBottom() + getPaddingTop() + this.F));
        boolean z2 = false;
        if (max == this.A) {
            z = false;
        } else {
            this.A = max;
            z = true;
        }
        int max2 = Math.max(Math.max(Math.max((this.E / 2) - this.t, 0), Math.max((this.C - this.u) / 2, 0)), Math.max(Math.max(this.b0 - this.v, 0), Math.max(this.c0 - this.w, 0))) + this.s;
        if (this.D != max2) {
            this.D = max2;
            WeakHashMap weakHashMap = Dh.a;
            if (isLaidOut()) {
                this.d0 = Math.max(getWidth() - (this.D * 2), 0);
                l();
            }
            z2 = true;
        }
        if (z) {
            requestLayout();
        } else if (z2) {
            postInvalidate();
        }
    }

    public final void z() {
        if (this.f0) {
            float f2 = this.Q;
            float f3 = this.R;
            if (f2 < f3) {
                if (f3 > f2) {
                    if (this.V > 0.0f && !A(f3)) {
                        throw new IllegalStateException("The stepSize(" + this.V + ") must be 0, or a factor of the valueFrom(" + this.Q + ")-valueTo(" + this.R + ") range");
                    }
                    Iterator it = this.S.iterator();
                    while (it.hasNext()) {
                        Float f4 = (Float) it.next();
                        if (f4.floatValue() >= this.Q && f4.floatValue() <= this.R) {
                            if (this.V > 0.0f && !A(f4.floatValue())) {
                                float f5 = this.Q;
                                float f6 = this.V;
                                throw new IllegalStateException("Value(" + f4 + ") must be equal to valueFrom(" + f5 + ") plus a multiple of stepSize(" + f6 + ") when using stepSize(" + f6 + ")");
                            }
                        } else {
                            throw new IllegalStateException("Slider value(" + f4 + ") must be greater or equal to valueFrom(" + this.Q + "), and lower or equal to valueTo(" + this.R + ")");
                        }
                    }
                    float minSeparation = getMinSeparation();
                    if (minSeparation >= 0.0f) {
                        float f7 = this.V;
                        if (f7 > 0.0f && minSeparation > 0.0f) {
                            if (this.s0 == 1) {
                                if (minSeparation < f7 || !i(minSeparation)) {
                                    float f8 = this.V;
                                    throw new IllegalStateException("minSeparation(" + minSeparation + ") must be greater or equal and a multiple of stepSize(" + f8 + ") when using stepSize(" + f8 + ")");
                                }
                            } else {
                                throw new IllegalStateException("minSeparation(" + minSeparation + ") cannot be set as a dimension when using stepSize(" + this.V + ")");
                            }
                        }
                        float f9 = this.V;
                        if (f9 != 0.0f) {
                            if (((int) f9) != f9) {
                                Log.w("W2", "Floating point value used for stepSize(" + f9 + "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.");
                            }
                            float f10 = this.Q;
                            if (((int) f10) != f10) {
                                Log.w("W2", "Floating point value used for valueFrom(" + f10 + "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.");
                            }
                            float f11 = this.R;
                            if (((int) f11) != f11) {
                                Log.w("W2", "Floating point value used for valueTo(" + f11 + "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.");
                            }
                        }
                        this.f0 = false;
                        return;
                    }
                    throw new IllegalStateException("minSeparation(" + minSeparation + ") must be greater or equal to 0");
                }
                throw new IllegalStateException("valueTo(" + this.R + ") must be greater than valueFrom(" + this.Q + ")");
            }
            throw new IllegalStateException("valueFrom(" + this.Q + ") must be smaller than valueTo(" + this.R + ")");
        }
    }

    public void setValues(List<Float> list) {
        r(new ArrayList(list));
    }

    public void setCustomThumbDrawablesForValues(Drawable... drawableArr) {
        this.p0 = null;
        this.q0 = new ArrayList();
        for (Drawable drawable : drawableArr) {
            List list = this.q0;
            Drawable newDrawable = drawable.mutate().getConstantState().newDrawable();
            a(newDrawable);
            list.add(newDrawable);
        }
        postInvalidate();
    }
}
