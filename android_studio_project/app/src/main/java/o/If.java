package o;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import android.util.TypedValue;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class If {
    public final ColorStateList a;
    public final String b;
    public final int c;
    public final int d;
    public final float e;

    /* renamed from: f, reason: collision with root package name */
    public final float f109f;
    public final float g;
    public final boolean h;
    public final float i;
    public ColorStateList j;
    public float k;
    public final int l;
    public boolean m = false;
    public Typeface n;

    public If(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, AbstractC0133fd.A);
        this.k = obtainStyledAttributes.getDimension(0, 0.0f);
        this.j = Ha.F(context, obtainStyledAttributes, 3);
        Ha.F(context, obtainStyledAttributes, 4);
        Ha.F(context, obtainStyledAttributes, 5);
        this.c = obtainStyledAttributes.getInt(2, 0);
        this.d = obtainStyledAttributes.getInt(1, 1);
        int i2 = obtainStyledAttributes.hasValue(12) ? 12 : 10;
        this.l = obtainStyledAttributes.getResourceId(i2, 0);
        this.b = obtainStyledAttributes.getString(i2);
        obtainStyledAttributes.getBoolean(14, false);
        this.a = Ha.F(context, obtainStyledAttributes, 6);
        this.e = obtainStyledAttributes.getFloat(7, 0.0f);
        this.f109f = obtainStyledAttributes.getFloat(8, 0.0f);
        this.g = obtainStyledAttributes.getFloat(9, 0.0f);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i, AbstractC0133fd.q);
        this.h = obtainStyledAttributes2.hasValue(0);
        this.i = obtainStyledAttributes2.getFloat(0, 0.0f);
        obtainStyledAttributes2.recycle();
    }

    public final void a() {
        String str;
        Typeface typeface = this.n;
        int i = this.c;
        if (typeface == null && (str = this.b) != null) {
            this.n = Typeface.create(str, i);
        }
        if (this.n == null) {
            int i2 = this.d;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        this.n = Typeface.DEFAULT;
                    } else {
                        this.n = Typeface.MONOSPACE;
                    }
                } else {
                    this.n = Typeface.SERIF;
                }
            } else {
                this.n = Typeface.SANS_SERIF;
            }
            this.n = Typeface.create(this.n, i);
        }
    }

    public final Typeface b(Context context) {
        if (this.m) {
            return this.n;
        }
        if (!context.isRestricted()) {
            try {
                Typeface a = AbstractC0054be.a(context, this.l);
                this.n = a;
                if (a != null) {
                    this.n = Typeface.create(a, this.c);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception e) {
                Log.d("TextAppearance", "Error loading font " + this.b, e);
            }
        }
        a();
        this.m = true;
        return this.n;
    }

    public final void c(Context context, Ha ha) {
        if (d(context)) {
            b(context);
        } else {
            a();
        }
        int i = this.l;
        if (i == 0) {
            this.m = true;
        }
        if (this.m) {
            ha.j0(this.n, true);
            return;
        }
        try {
            Gf gf = new Gf(this, ha);
            ThreadLocal threadLocal = AbstractC0054be.a;
            if (context.isRestricted()) {
                gf.d(-4);
            } else {
                AbstractC0054be.b(context, i, new TypedValue(), 0, gf, false, false);
            }
        } catch (Resources.NotFoundException unused) {
            this.m = true;
            ha.h0(1);
        } catch (Exception e) {
            Log.d("TextAppearance", "Error loading font " + this.b, e);
            this.m = true;
            ha.h0(-3);
        }
    }

    public final boolean d(Context context) {
        Typeface typeface = null;
        int i = this.l;
        if (i != 0) {
            ThreadLocal threadLocal = AbstractC0054be.a;
            if (!context.isRestricted()) {
                typeface = AbstractC0054be.b(context, i, new TypedValue(), 0, null, false, true);
            }
        }
        if (typeface != null) {
            return true;
        }
        return false;
    }

    public final void e(Context context, TextPaint textPaint, Ha ha) {
        int i;
        int i2;
        f(context, textPaint, ha);
        ColorStateList colorStateList = this.j;
        if (colorStateList != null) {
            i = colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor());
        } else {
            i = -16777216;
        }
        textPaint.setColor(i);
        ColorStateList colorStateList2 = this.a;
        if (colorStateList2 != null) {
            i2 = colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor());
        } else {
            i2 = 0;
        }
        textPaint.setShadowLayer(this.g, this.e, this.f109f, i2);
    }

    public final void f(Context context, TextPaint textPaint, Ha ha) {
        if (d(context)) {
            g(context, textPaint, b(context));
            return;
        }
        a();
        g(context, textPaint, this.n);
        c(context, new Hf(this, context, textPaint, ha));
    }

    public final void g(Context context, TextPaint textPaint, Typeface typeface) {
        boolean z;
        float f2;
        Typeface m = Ng.m(context.getResources().getConfiguration(), typeface);
        if (m != null) {
            typeface = m;
        }
        textPaint.setTypeface(typeface);
        int i = (~typeface.getStyle()) & this.c;
        if ((i & 1) != 0) {
            z = true;
        } else {
            z = false;
        }
        textPaint.setFakeBoldText(z);
        if ((i & 2) != 0) {
            f2 = -0.25f;
        } else {
            f2 = 0.0f;
        }
        textPaint.setTextSkewX(f2);
        textPaint.setTextSize(this.k);
        if (this.h) {
            textPaint.setLetterSpacing(this.i);
        }
    }
}
