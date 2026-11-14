package o;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextPaint;

/* renamed from: o.mg, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0275mg extends C0111eb implements Kf {
    public final Lf A;
    public final ViewOnLayoutChangeListenerC0123f3 B;
    public final Rect C;
    public int D;
    public int E;
    public int F;
    public int G;
    public boolean H;
    public int I;
    public int J;
    public float K;
    public float L;
    public float M;
    public float N;
    public CharSequence x;
    public final Context y;
    public final Paint.FontMetrics z;

    public C0275mg(Context context, int i) {
        super(context, null, 0, i);
        this.z = new Paint.FontMetrics();
        Lf lf = new Lf(this);
        this.A = lf;
        this.B = new ViewOnLayoutChangeListenerC0123f3(1, this);
        this.C = new Rect();
        this.K = 1.0f;
        this.L = 1.0f;
        this.M = 0.5f;
        this.N = 1.0f;
        this.y = context;
        TextPaint textPaint = lf.a;
        textPaint.density = context.getResources().getDisplayMetrics().density;
        textPaint.setTextAlign(Paint.Align.CENTER);
    }

    @Override // o.C0111eb, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        canvas.save();
        float q = q();
        float f2 = (float) (-((Math.sqrt(2.0d) * this.I) - this.I));
        canvas.scale(this.K, this.L, (getBounds().width() * 0.5f) + getBounds().left, (getBounds().height() * this.M) + getBounds().top);
        canvas.translate(q, f2);
        super.draw(canvas);
        if (this.x != null) {
            float centerY = getBounds().centerY();
            Lf lf = this.A;
            TextPaint textPaint = lf.a;
            Paint.FontMetrics fontMetrics = this.z;
            textPaint.getFontMetrics(fontMetrics);
            int i = (int) (centerY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f));
            If r3 = lf.f121f;
            TextPaint textPaint2 = lf.a;
            if (r3 != null) {
                textPaint2.drawableState = getState();
                lf.f121f.e(this.y, textPaint2, lf.b);
                textPaint2.setAlpha((int) (this.N * 255.0f));
            }
            CharSequence charSequence = this.x;
            canvas.drawText(charSequence, 0, charSequence.length(), r0.centerX(), i, textPaint2);
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) Math.max(this.A.a.getTextSize(), this.F);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        float a;
        float f2 = this.D * 2;
        CharSequence charSequence = this.x;
        if (charSequence == null) {
            a = 0.0f;
        } else {
            a = this.A.a(charSequence.toString());
        }
        return (int) Math.max(f2 + a, this.E);
    }

    @Override // o.C0111eb, android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (this.H) {
            C0530ze e = this.a.a.e();
            e.k = r();
            setShapeAppearanceModel(e.a());
        }
    }

    public final float q() {
        int i;
        Rect rect = this.C;
        if (((rect.right - getBounds().right) - this.J) - this.G < 0) {
            i = ((rect.right - getBounds().right) - this.J) - this.G;
        } else if (((rect.left - getBounds().left) - this.J) + this.G > 0) {
            i = ((rect.left - getBounds().left) - this.J) + this.G;
        } else {
            return 0.0f;
        }
        return i;
    }

    public final C0092dc r() {
        float f2 = -q();
        float width = ((float) (getBounds().width() - (Math.sqrt(2.0d) * this.I))) / 2.0f;
        return new C0092dc(new Ja(this.I), Math.min(Math.max(f2, -width), width));
    }
}
