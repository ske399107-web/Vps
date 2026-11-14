package o;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import java.util.BitSet;
import java.util.Objects;

/* renamed from: o.eb, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C0111eb extends Drawable implements Le {
    public static final Paint w;
    public C0091db a;
    public final Je[] b;
    public final Je[] c;
    public final BitSet d;
    public boolean e;

    /* renamed from: f, reason: collision with root package name */
    public final Matrix f202f;
    public final Path g;
    public final Path h;
    public final RectF i;
    public final RectF j;
    public final Region k;
    public final Region l;
    public Ae m;
    public final Paint n;

    /* renamed from: o, reason: collision with root package name */
    public final Paint f203o;
    public final C0511ye p;
    public final C q;
    public final Ce r;
    public PorterDuffColorFilter s;
    public PorterDuffColorFilter t;
    public final RectF u;
    public final boolean v;

    static {
        Paint paint = new Paint(1);
        w = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public C0111eb() {
        this(new Ae());
    }

    public void a() {
        invalidateSelf();
    }

    public final void b(RectF rectF, Path path) {
        C0091db c0091db = this.a;
        this.r.a(c0091db.a, c0091db.i, rectF, this.q, path);
        if (this.a.h != 1.0f) {
            Matrix matrix = this.f202f;
            matrix.reset();
            float f2 = this.a.h;
            matrix.setScale(f2, f2, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.u, true);
    }

    public final int c(int i) {
        C0091db c0091db = this.a;
        float f2 = c0091db.m + 0.0f + c0091db.l;
        C0464w6 c0464w6 = c0091db.b;
        if (c0464w6 != null) {
            return c0464w6.a(i, f2);
        }
        return i;
    }

    public final void d(Canvas canvas) {
        if (this.d.cardinality() > 0) {
            Log.w("eb", "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        int i = this.a.p;
        Path path = this.g;
        C0511ye c0511ye = this.p;
        if (i != 0) {
            canvas.drawPath(path, c0511ye.a);
        }
        for (int i2 = 0; i2 < 4; i2++) {
            Je je = this.b[i2];
            int i3 = this.a.f200o;
            Matrix matrix = Je.b;
            je.a(matrix, c0511ye, i3, canvas);
            this.c[i2].a(matrix, c0511ye, this.a.f200o, canvas);
        }
        if (this.v) {
            double d = 0;
            int sin = (int) (Math.sin(Math.toRadians(d)) * this.a.p);
            int cos = (int) (Math.cos(Math.toRadians(d)) * this.a.p);
            canvas.translate(-sin, -cos);
            canvas.drawPath(path, w);
            canvas.translate(sin, cos);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00f2, code lost:
    
        if (r2 < 29) goto L40;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r20) {
        /*
            Method dump skipped, instructions count: 463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.C0111eb.draw(android.graphics.Canvas):void");
    }

    public final void e(Canvas canvas, Paint paint, Path path, Ae ae, RectF rectF) {
        if (ae.d(rectF)) {
            float a = ae.f65f.a(rectF) * this.a.i;
            canvas.drawRoundRect(rectF, a, a, paint);
        } else {
            canvas.drawPath(path, paint);
        }
    }

    public void f(Canvas canvas) {
        float f2;
        Paint paint = this.f203o;
        Path path = this.h;
        Ae ae = this.m;
        RectF rectF = this.j;
        rectF.set(g());
        if (h()) {
            f2 = paint.getStrokeWidth() / 2.0f;
        } else {
            f2 = 0.0f;
        }
        rectF.inset(f2, f2);
        e(canvas, paint, path, ae, rectF);
    }

    public final RectF g() {
        RectF rectF = this.i;
        rectF.set(getBounds());
        return rectF;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.a.k;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        C0091db c0091db = this.a;
        if (c0091db.n == 2) {
            return;
        }
        if (c0091db.a.d(g())) {
            outline.setRoundRect(getBounds(), this.a.a.e.a(g()) * this.a.i);
            return;
        }
        RectF g = g();
        Path path = this.g;
        b(g, path);
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            AbstractC0146g6.a(outline, path);
            return;
        }
        if (i >= 29) {
            try {
                AbstractC0126f6.a(outline, path);
            } catch (IllegalArgumentException unused) {
            }
        } else if (path.isConvex()) {
            AbstractC0126f6.a(outline, path);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.a.g;
        if (rect2 != null) {
            rect.set(rect2);
            return true;
        }
        return super.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.k;
        region.set(bounds);
        RectF g = g();
        Path path = this.g;
        b(g, path);
        Region region2 = this.l;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    public final boolean h() {
        Paint.Style style = this.a.q;
        if ((style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f203o.getStrokeWidth() > 0.0f) {
            return true;
        }
        return false;
    }

    public final void i(Context context) {
        this.a.b = new C0464w6(context);
        p();
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.e = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        if (!super.isStateful() && ((colorStateList = this.a.e) == null || !colorStateList.isStateful())) {
            this.a.getClass();
            ColorStateList colorStateList3 = this.a.d;
            if ((colorStateList3 == null || !colorStateList3.isStateful()) && ((colorStateList2 = this.a.c) == null || !colorStateList2.isStateful())) {
                return false;
            }
        }
        return true;
    }

    public final void j(float f2) {
        C0091db c0091db = this.a;
        if (c0091db.m != f2) {
            c0091db.m = f2;
            p();
        }
    }

    public final void k(ColorStateList colorStateList) {
        C0091db c0091db = this.a;
        if (c0091db.c != colorStateList) {
            c0091db.c = colorStateList;
            onStateChange(getState());
        }
    }

    public final void l() {
        C0091db c0091db = this.a;
        if (c0091db.n != 2) {
            c0091db.n = 2;
            super.invalidateSelf();
        }
    }

    public final void m(ColorStateList colorStateList) {
        C0091db c0091db = this.a;
        if (c0091db.d != colorStateList) {
            c0091db.d = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.a = new C0091db(this.a);
        return this;
    }

    public final boolean n(int[] iArr) {
        boolean z;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.a.c != null && color2 != (colorForState2 = this.a.c.getColorForState(iArr, (color2 = (paint2 = this.n).getColor())))) {
            paint2.setColor(colorForState2);
            z = true;
        } else {
            z = false;
        }
        if (this.a.d != null && color != (colorForState = this.a.d.getColorForState(iArr, (color = (paint = this.f203o).getColor())))) {
            paint.setColor(colorForState);
            return true;
        }
        return z;
    }

    public final boolean o() {
        PorterDuffColorFilter porterDuffColorFilter;
        PorterDuffColorFilter porterDuffColorFilter2;
        PorterDuffColorFilter porterDuffColorFilter3 = this.s;
        PorterDuffColorFilter porterDuffColorFilter4 = this.t;
        C0091db c0091db = this.a;
        ColorStateList colorStateList = c0091db.e;
        PorterDuff.Mode mode = c0091db.f199f;
        Paint paint = this.n;
        if (colorStateList != null && mode != null) {
            porterDuffColorFilter2 = new PorterDuffColorFilter(c(colorStateList.getColorForState(getState(), 0)), mode);
        } else {
            int color = paint.getColor();
            int c = c(color);
            if (c != color) {
                porterDuffColorFilter = new PorterDuffColorFilter(c, PorterDuff.Mode.SRC_IN);
            } else {
                porterDuffColorFilter = null;
            }
            porterDuffColorFilter2 = porterDuffColorFilter;
        }
        this.s = porterDuffColorFilter2;
        this.a.getClass();
        this.t = null;
        this.a.getClass();
        if (!Objects.equals(porterDuffColorFilter3, this.s) || !Objects.equals(porterDuffColorFilter4, this.t)) {
            return true;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.e = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable, o.Kf
    public boolean onStateChange(int[] iArr) {
        boolean z;
        boolean n = n(iArr);
        boolean o2 = o();
        if (!n && !o2) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    public final void p() {
        C0091db c0091db = this.a;
        float f2 = c0091db.m + 0.0f;
        c0091db.f200o = (int) Math.ceil(0.75f * f2);
        this.a.p = (int) Math.ceil(f2 * 0.25f);
        o();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        C0091db c0091db = this.a;
        if (c0091db.k != i) {
            c0091db.k = i;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.a.getClass();
        super.invalidateSelf();
    }

    @Override // o.Le
    public final void setShapeAppearanceModel(Ae ae) {
        this.a.a = ae;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.a.e = colorStateList;
        o();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        C0091db c0091db = this.a;
        if (c0091db.f199f != mode) {
            c0091db.f199f = mode;
            o();
            super.invalidateSelf();
        }
    }

    public C0111eb(Context context, AttributeSet attributeSet, int i, int i2) {
        this(Ae.b(context, attributeSet, i, i2).a());
    }

    public C0111eb(Ae ae) {
        this(new C0091db(ae));
    }

    public C0111eb(C0091db c0091db) {
        Ce ce;
        this.b = new Je[4];
        this.c = new Je[4];
        this.d = new BitSet(8);
        this.f202f = new Matrix();
        this.g = new Path();
        this.h = new Path();
        this.i = new RectF();
        this.j = new RectF();
        this.k = new Region();
        this.l = new Region();
        Paint paint = new Paint(1);
        this.n = paint;
        Paint paint2 = new Paint(1);
        this.f203o = paint2;
        this.p = new C0511ye();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            ce = Be.a;
        } else {
            ce = new Ce();
        }
        this.r = ce;
        this.u = new RectF();
        this.v = true;
        this.a = c0091db;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        o();
        n(getState());
        this.q = new C(20, this);
    }
}
