package o;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.view.Choreographer;
import android.view.MotionEvent;
import android.view.View;
import java.util.HashMap;

/* renamed from: o.g7, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0147g7 extends View {
    public final RectF A;
    public final Path B;
    public final Paint C;
    public final Paint D;
    public final Paint E;
    public final RectF F;
    public final Path G;
    public float H;
    public final ChoreographerFrameCallbackC0107e7 I;
    public final float a;
    public volatile boolean b;
    public volatile int c;
    public volatile boolean d;
    public volatile boolean e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f213f;
    public long g;
    public float h;
    public float i;
    public float j;
    public final HashMap k;
    public final HashMap l;
    public final HashMap m;
    public final Paint n;

    /* renamed from: o, reason: collision with root package name */
    public final Paint f214o;
    public final Paint p;
    public final Paint q;
    public final Paint r;
    public final Paint s;
    public final Paint t;
    public final Paint u;
    public final Paint v;
    public final Paint w;
    public final Paint x;
    public final Paint y;
    public final Paint z;

    /* JADX WARN: Type inference failed for: r15v5, types: [o.e7] */
    public C0147g7(Context context) {
        super(context);
        float f2 = getResources().getDisplayMetrics().density;
        this.a = f2;
        Context applicationContext = context.getApplicationContext();
        AbstractC0487x9.n(applicationContext, "getApplicationContext(...)");
        this.c = Ha.l(applicationContext.getSharedPreferences("proxy_read", 0).getInt("radar_size", 100), 70, 180);
        Context applicationContext2 = context.getApplicationContext();
        AbstractC0487x9.n(applicationContext2, "getApplicationContext(...)");
        this.d = applicationContext2.getSharedPreferences("proxy_read", 0).getBoolean("radar_on", true);
        Context applicationContext3 = context.getApplicationContext();
        AbstractC0487x9.n(applicationContext3, "getApplicationContext(...)");
        this.e = applicationContext3.getSharedPreferences("proxy_read", 0).getBoolean("esp_on", false);
        this.h = Float.NaN;
        this.i = Float.NaN;
        this.j = Float.NaN;
        this.k = new HashMap();
        this.l = new HashMap();
        this.m = new HashMap();
        Paint paint = new Paint(1);
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint.setColor(-1442312168);
        this.n = paint;
        Paint paint2 = new Paint(1);
        Paint.Style style2 = Paint.Style.STROKE;
        paint2.setStyle(style2);
        paint2.setStrokeWidth(1.3f * f2);
        paint2.setColor(-1151533116);
        this.f214o = paint2;
        Paint paint3 = new Paint(1);
        paint3.setStyle(style);
        paint3.setColor(-1);
        this.p = paint3;
        Paint paint4 = new Paint(1);
        paint4.setStyle(style);
        paint4.setColor(-46518);
        this.q = paint4;
        Paint paint5 = new Paint(1);
        paint5.setColor(-3722);
        paint5.setTextSize(12.0f * f2);
        Typeface typeface = Typeface.MONOSPACE;
        paint5.setTypeface(typeface);
        float f3 = 3.0f * f2;
        paint5.setShadowLayer(f3, 0.0f, 1.0f, -16777216);
        this.r = paint5;
        Paint paint6 = new Paint(1);
        paint6.setColor(-1507338);
        paint6.setTextSize(9.0f * f2);
        paint6.setTypeface(typeface);
        Paint.Align align = Paint.Align.CENTER;
        paint6.setTextAlign(align);
        paint6.setShadowLayer(2.0f * f2, 0.0f, 1.0f, -16777216);
        this.s = paint6;
        Paint paint7 = new Paint(1);
        paint7.setStyle(style);
        paint7.setColor(1146945476);
        this.t = paint7;
        Paint paint8 = new Paint(1);
        paint8.setStyle(style2);
        paint8.setStrokeWidth(1.1f * f2);
        paint8.setColor(-2007171132);
        this.u = paint8;
        Paint paint9 = new Paint(1);
        paint9.setStyle(style2);
        paint9.setStrokeWidth(1.6f * f2);
        paint9.setColor(-3722);
        this.v = paint9;
        Paint paint10 = new Paint(1);
        paint10.setStyle(style2);
        paint10.setStrokeWidth(1.15f * f2);
        paint10.setColor(-855684534);
        this.w = paint10;
        Paint paint11 = new Paint(1);
        paint11.setStyle(style2);
        paint11.setStrokeWidth(1.35f * f2);
        paint11.setColor(-285259190);
        this.x = paint11;
        Paint paint12 = new Paint(1);
        paint12.setStyle(style);
        paint12.setColor(587156042);
        this.y = paint12;
        Paint paint13 = new Paint(1);
        paint13.setColor(-8062);
        paint13.setTextSize(10.0f * f2);
        paint13.setTypeface(typeface);
        paint13.setTextAlign(align);
        paint13.setShadowLayer(2.5f * f2, 0.0f, 1.0f, -16777216);
        this.z = paint13;
        this.A = new RectF();
        this.B = new Path();
        Paint paint14 = new Paint(1);
        paint14.setStyle(style);
        paint14.setColor(-871102456);
        this.C = paint14;
        Paint paint15 = new Paint(1);
        paint15.setColor(-50384);
        paint15.setTextSize(f2 * 13.0f);
        paint15.setTypeface(Typeface.create(Typeface.SANS_SERIF, 1));
        paint15.setShadowLayer(f3, 0.0f, 1.0f, -16777216);
        this.D = paint15;
        Paint paint16 = new Paint(1);
        paint16.setStyle(style);
        paint16.setColor(-50384);
        this.E = paint16;
        this.F = new RectF();
        this.G = new Path();
        this.H = Float.NaN;
        this.I = new Choreographer.FrameCallback() { // from class: o.e7
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                C0147g7 c0147g7 = C0147g7.this;
                c0147g7.f213f = false;
                if (c0147g7.b) {
                    c0147g7.invalidate();
                    c0147g7.b();
                }
            }
        };
        setWillNotDraw(false);
        setLayerType(2, null);
        setClickable(false);
        setFocusable(false);
        setImportantForAccessibility(2);
    }

    public static float[] a(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19) {
        float f20 = f2 - f5;
        float f21 = f3 - f6;
        float f22 = f4 - f7;
        float f23 = (f22 * f15) + (f21 * f14) + (f20 * f13);
        if (f23 < 0.25f) {
            return null;
        }
        float f24 = (f22 * f9) + (0.0f * f21) + (f20 * f8);
        float f25 = f24 / (f23 * f16);
        float f26 = ((f22 * f12) + ((f21 * f11) + (f20 * f10))) / (f23 * f17);
        if (f25 < -2.5f || f25 > 2.5f || f26 < -2.5f || f26 > 2.5f) {
            return null;
        }
        return new float[]{((f25 * 0.5f) + 0.5f) * f18, (0.5f - (f26 * 0.5f)) * f19};
    }

    public final void b() {
        if (!this.f213f && this.b) {
            this.f213f = true;
            Choreographer.getInstance().postFrameCallback(this.I);
        }
    }

    @Override // android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        AbstractC0487x9.o(motionEvent, "event");
        return false;
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.b = true;
        b();
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        this.b = false;
        this.f213f = false;
        Choreographer.getInstance().removeFrameCallback(this.I);
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x05d6  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x05de  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x063d  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x06f5  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x06fc  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x070d  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x073c  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x086e  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x08f4  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0989  */
    /* JADX WARN: Removed duplicated region for block: B:213:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x074d  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x06ff  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x06f8  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x05e1  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x05d9  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0a21  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x04e3  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onDraw(android.graphics.Canvas r62) {
        /*
            Method dump skipped, instructions count: 2595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.C0147g7.onDraw(android.graphics.Canvas):void");
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        if (size <= 0) {
            size = getSuggestedMinimumWidth();
        }
        int size2 = View.MeasureSpec.getSize(i2);
        if (size2 <= 0) {
            size2 = getResources().getDisplayMetrics().heightPixels;
        }
        if (size < 1) {
            size = 1;
        }
        if (size2 < 1) {
            size2 = 1;
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractC0487x9.o(motionEvent, "event");
        return false;
    }

    public final void setEspEnabled(boolean z) {
        if (this.e == z) {
            b();
        } else {
            this.e = z;
            b();
        }
    }

    public final void setRadarEnabled(boolean z) {
        if (this.d == z) {
            b();
        } else {
            this.d = z;
            b();
        }
    }

    public final void setSizePercent(int i) {
        int l = Ha.l(i, 70, 180);
        if (l == this.c) {
            b();
            return;
        }
        this.c = l;
        requestLayout();
        b();
    }
}
