package o;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.animation.LinearInterpolator;
import com.google.android.material.textfield.TextInputLayout;
import java.util.WeakHashMap;

/* renamed from: o.d4, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0084d4 {
    public CharSequence A;
    public CharSequence B;
    public boolean C;
    public Bitmap E;
    public float F;
    public float G;
    public float H;
    public float I;
    public float J;
    public int K;
    public int[] L;
    public boolean M;
    public final TextPaint N;
    public final TextPaint O;
    public LinearInterpolator P;
    public LinearInterpolator Q;
    public float R;
    public float S;
    public float T;
    public ColorStateList U;
    public float V;
    public float W;
    public float X;
    public StaticLayout Y;
    public float Z;
    public final TextInputLayout a;
    public float a0;
    public float b;
    public float b0;
    public final Rect c;
    public CharSequence c0;
    public final Rect d;
    public final RectF e;
    public ColorStateList j;
    public ColorStateList k;
    public float l;
    public float m;
    public float n;

    /* renamed from: o, reason: collision with root package name */
    public float f195o;
    public float p;
    public float q;
    public Typeface r;
    public Typeface s;
    public Typeface t;
    public Typeface u;
    public Typeface v;
    public Typeface w;
    public Typeface x;
    public C0322p3 y;

    /* renamed from: f, reason: collision with root package name */
    public int f194f = 16;
    public int g = 16;
    public float h = 15.0f;
    public float i = 15.0f;
    public final TextUtils.TruncateAt z = TextUtils.TruncateAt.END;
    public final boolean D = true;
    public final int d0 = 1;
    public final float e0 = 1.0f;
    public final int f0 = 1;

    public C0084d4(TextInputLayout textInputLayout) {
        this.a = textInputLayout;
        TextPaint textPaint = new TextPaint(129);
        this.N = textPaint;
        this.O = new TextPaint(textPaint);
        this.d = new Rect();
        this.c = new Rect();
        this.e = new RectF();
        g(textInputLayout.getContext().getResources().getConfiguration());
    }

    public static int a(int i, int i2, float f2) {
        float f3 = 1.0f - f2;
        return Color.argb(Math.round((Color.alpha(i2) * f2) + (Color.alpha(i) * f3)), Math.round((Color.red(i2) * f2) + (Color.red(i) * f3)), Math.round((Color.green(i2) * f2) + (Color.green(i) * f3)), Math.round((Color.blue(i2) * f2) + (Color.blue(i) * f3)));
    }

    public static float f(float f2, float f3, float f4, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f4);
        }
        return Q0.a(f2, f3, f4);
    }

    public final boolean b(CharSequence charSequence) {
        C0163h3 c0163h3;
        WeakHashMap weakHashMap = Dh.a;
        boolean z = true;
        if (this.a.getLayoutDirection() != 1) {
            z = false;
        }
        if (this.D) {
            if (z) {
                c0163h3 = Jf.d;
            } else {
                c0163h3 = Jf.c;
            }
            return c0163h3.b(charSequence, charSequence.length());
        }
        return z;
    }

    public final void c(float f2, boolean z) {
        boolean z2;
        float f3;
        float f4;
        Typeface typeface;
        boolean z3;
        Layout.Alignment alignment;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        if (this.A == null) {
            return;
        }
        float width = this.d.width();
        float width2 = this.c.width();
        if (Math.abs(f2 - 1.0f) < 1.0E-5f) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            f3 = this.i;
            f4 = this.V;
            this.F = 1.0f;
            typeface = this.r;
        } else {
            float f5 = this.h;
            float f6 = this.W;
            Typeface typeface2 = this.u;
            if (Math.abs(f2 - 0.0f) < 1.0E-5f) {
                this.F = 1.0f;
            } else {
                this.F = f(this.h, this.i, f2, this.Q) / this.h;
            }
            float f7 = this.i / this.h;
            float f8 = width2 * f7;
            if (!z && f8 > width) {
                width = Math.min(width / f7, width2);
            } else {
                width = width2;
            }
            f3 = f5;
            f4 = f6;
            typeface = typeface2;
        }
        TextPaint textPaint = this.N;
        if (width > 0.0f) {
            if (this.G != f3) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (this.X != f4) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (this.x != typeface) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (this.Y != null && width != r9.getWidth()) {
                z7 = true;
            } else {
                z7 = false;
            }
            if (!z4 && !z5 && !z7 && !z6 && !this.M) {
                z8 = false;
            } else {
                z8 = true;
            }
            this.G = f3;
            this.X = f4;
            this.x = typeface;
            this.M = false;
            if (this.F != 1.0f) {
                z9 = true;
            } else {
                z9 = false;
            }
            textPaint.setLinearText(z9);
            z3 = z8;
        } else {
            z3 = false;
        }
        if (this.B == null || z3) {
            textPaint.setTextSize(this.G);
            textPaint.setTypeface(this.x);
            textPaint.setLetterSpacing(this.X);
            boolean b = b(this.A);
            this.C = b;
            int i = this.d0;
            if (i <= 1 || b) {
                i = 1;
            }
            if (i == 1) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else {
                int absoluteGravity = Gravity.getAbsoluteGravity(this.f194f, b ? 1 : 0) & 7;
                if (absoluteGravity != 1) {
                    if (absoluteGravity != 5) {
                        if (this.C) {
                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                        } else {
                            alignment = Layout.Alignment.ALIGN_NORMAL;
                        }
                    } else if (this.C) {
                        alignment = Layout.Alignment.ALIGN_NORMAL;
                    } else {
                        alignment = Layout.Alignment.ALIGN_OPPOSITE;
                    }
                } else {
                    alignment = Layout.Alignment.ALIGN_CENTER;
                }
            }
            C0254lf c0254lf = new C0254lf(this.A, textPaint, (int) width);
            c0254lf.k = this.z;
            c0254lf.j = b;
            c0254lf.e = alignment;
            c0254lf.i = false;
            c0254lf.f248f = i;
            c0254lf.g = this.e0;
            c0254lf.h = this.f0;
            StaticLayout a = c0254lf.a();
            a.getClass();
            this.Y = a;
            this.B = a.getText();
        }
    }

    public final float d() {
        TextPaint textPaint = this.O;
        textPaint.setTextSize(this.i);
        textPaint.setTypeface(this.r);
        textPaint.setLetterSpacing(this.V);
        return -textPaint.ascent();
    }

    public final int e(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.L;
        if (iArr != null) {
            return colorStateList.getColorForState(iArr, 0);
        }
        return colorStateList.getDefaultColor();
    }

    public final void g(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            Typeface typeface = this.t;
            if (typeface != null) {
                this.s = Ng.m(configuration, typeface);
            }
            Typeface typeface2 = this.w;
            if (typeface2 != null) {
                this.v = Ng.m(configuration, typeface2);
            }
            Typeface typeface3 = this.s;
            if (typeface3 == null) {
                typeface3 = this.t;
            }
            this.r = typeface3;
            Typeface typeface4 = this.v;
            if (typeface4 == null) {
                typeface4 = this.w;
            }
            this.u = typeface4;
            h(true);
        }
    }

    public final void h(boolean z) {
        float f2;
        float f3;
        StaticLayout staticLayout;
        TextInputLayout textInputLayout = this.a;
        if ((textInputLayout.getHeight() > 0 && textInputLayout.getWidth() > 0) || z) {
            c(1.0f, z);
            CharSequence charSequence = this.B;
            TextPaint textPaint = this.N;
            if (charSequence != null && (staticLayout = this.Y) != null) {
                this.c0 = TextUtils.ellipsize(charSequence, textPaint, staticLayout.getWidth(), this.z);
            }
            CharSequence charSequence2 = this.c0;
            if (charSequence2 != null) {
                this.Z = textPaint.measureText(charSequence2, 0, charSequence2.length());
            } else {
                this.Z = 0.0f;
            }
            int absoluteGravity = Gravity.getAbsoluteGravity(this.g, this.C ? 1 : 0);
            int i = absoluteGravity & 112;
            Rect rect = this.d;
            if (i != 48) {
                if (i != 80) {
                    this.m = rect.centerY() - ((textPaint.descent() - textPaint.ascent()) / 2.0f);
                } else {
                    this.m = textPaint.ascent() + rect.bottom;
                }
            } else {
                this.m = rect.top;
            }
            int i2 = absoluteGravity & 8388615;
            if (i2 != 1) {
                if (i2 != 5) {
                    this.f195o = rect.left;
                } else {
                    this.f195o = rect.right - this.Z;
                }
            } else {
                this.f195o = rect.centerX() - (this.Z / 2.0f);
            }
            c(0.0f, z);
            StaticLayout staticLayout2 = this.Y;
            if (staticLayout2 != null) {
                f2 = staticLayout2.getHeight();
            } else {
                f2 = 0.0f;
            }
            StaticLayout staticLayout3 = this.Y;
            if (staticLayout3 != null && this.d0 > 1) {
                f3 = staticLayout3.getWidth();
            } else {
                CharSequence charSequence3 = this.B;
                if (charSequence3 != null) {
                    f3 = textPaint.measureText(charSequence3, 0, charSequence3.length());
                } else {
                    f3 = 0.0f;
                }
            }
            StaticLayout staticLayout4 = this.Y;
            if (staticLayout4 != null) {
                staticLayout4.getLineCount();
            }
            int absoluteGravity2 = Gravity.getAbsoluteGravity(this.f194f, this.C ? 1 : 0);
            int i3 = absoluteGravity2 & 112;
            Rect rect2 = this.c;
            if (i3 != 48) {
                if (i3 != 80) {
                    this.l = rect2.centerY() - (f2 / 2.0f);
                } else {
                    this.l = textPaint.descent() + (rect2.bottom - f2);
                }
            } else {
                this.l = rect2.top;
            }
            int i4 = absoluteGravity2 & 8388615;
            if (i4 != 1) {
                if (i4 != 5) {
                    this.n = rect2.left;
                } else {
                    this.n = rect2.right - f3;
                }
            } else {
                this.n = rect2.centerX() - (f3 / 2.0f);
            }
            Bitmap bitmap = this.E;
            if (bitmap != null) {
                bitmap.recycle();
                this.E = null;
            }
            l(this.b);
            float f4 = this.b;
            float f5 = f(rect2.left, rect.left, f4, this.P);
            RectF rectF = this.e;
            rectF.left = f5;
            rectF.top = f(this.l, this.m, f4, this.P);
            rectF.right = f(rect2.right, rect.right, f4, this.P);
            rectF.bottom = f(rect2.bottom, rect.bottom, f4, this.P);
            this.p = f(this.n, this.f195o, f4, this.P);
            this.q = f(this.l, this.m, f4, this.P);
            l(f4);
            C0306o7 c0306o7 = Q0.b;
            this.a0 = 1.0f - f(0.0f, 1.0f, 1.0f - f4, c0306o7);
            WeakHashMap weakHashMap = Dh.a;
            textInputLayout.postInvalidateOnAnimation();
            this.b0 = f(1.0f, 0.0f, f4, c0306o7);
            textInputLayout.postInvalidateOnAnimation();
            ColorStateList colorStateList = this.k;
            ColorStateList colorStateList2 = this.j;
            if (colorStateList != colorStateList2) {
                textPaint.setColor(a(e(colorStateList2), e(this.k), f4));
            } else {
                textPaint.setColor(e(colorStateList));
            }
            float f6 = this.V;
            float f7 = this.W;
            if (f6 != f7) {
                textPaint.setLetterSpacing(f(f7, f6, f4, c0306o7));
            } else {
                textPaint.setLetterSpacing(f6);
            }
            this.H = Q0.a(0.0f, this.R, f4);
            this.I = Q0.a(0.0f, this.S, f4);
            this.J = Q0.a(0.0f, this.T, f4);
            int a = a(0, e(this.U), f4);
            this.K = a;
            textPaint.setShadowLayer(this.H, this.I, this.J, a);
            textInputLayout.postInvalidateOnAnimation();
        }
    }

    public final void i(ColorStateList colorStateList) {
        if (this.k != colorStateList || this.j != colorStateList) {
            this.k = colorStateList;
            this.j = colorStateList;
            h(false);
        }
    }

    public final boolean j(Typeface typeface) {
        C0322p3 c0322p3 = this.y;
        if (c0322p3 != null) {
            c0322p3.m = true;
        }
        if (this.t != typeface) {
            this.t = typeface;
            Typeface m = Ng.m(this.a.getContext().getResources().getConfiguration(), typeface);
            this.s = m;
            if (m == null) {
                m = this.t;
            }
            this.r = m;
            return true;
        }
        return false;
    }

    public final void k(float f2) {
        if (f2 < 0.0f) {
            f2 = 0.0f;
        } else if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        if (f2 != this.b) {
            this.b = f2;
            float f3 = this.c.left;
            Rect rect = this.d;
            float f4 = f(f3, rect.left, f2, this.P);
            RectF rectF = this.e;
            rectF.left = f4;
            rectF.top = f(this.l, this.m, f2, this.P);
            rectF.right = f(r1.right, rect.right, f2, this.P);
            rectF.bottom = f(r1.bottom, rect.bottom, f2, this.P);
            this.p = f(this.n, this.f195o, f2, this.P);
            this.q = f(this.l, this.m, f2, this.P);
            l(f2);
            C0306o7 c0306o7 = Q0.b;
            this.a0 = 1.0f - f(0.0f, 1.0f, 1.0f - f2, c0306o7);
            WeakHashMap weakHashMap = Dh.a;
            TextInputLayout textInputLayout = this.a;
            textInputLayout.postInvalidateOnAnimation();
            this.b0 = f(1.0f, 0.0f, f2, c0306o7);
            textInputLayout.postInvalidateOnAnimation();
            ColorStateList colorStateList = this.k;
            ColorStateList colorStateList2 = this.j;
            TextPaint textPaint = this.N;
            if (colorStateList != colorStateList2) {
                textPaint.setColor(a(e(colorStateList2), e(this.k), f2));
            } else {
                textPaint.setColor(e(colorStateList));
            }
            float f5 = this.V;
            float f6 = this.W;
            if (f5 != f6) {
                textPaint.setLetterSpacing(f(f6, f5, f2, c0306o7));
            } else {
                textPaint.setLetterSpacing(f5);
            }
            this.H = Q0.a(0.0f, this.R, f2);
            this.I = Q0.a(0.0f, this.S, f2);
            this.J = Q0.a(0.0f, this.T, f2);
            int a = a(0, e(this.U), f2);
            this.K = a;
            textPaint.setShadowLayer(this.H, this.I, this.J, a);
            textInputLayout.postInvalidateOnAnimation();
        }
    }

    public final void l(float f2) {
        c(f2, false);
        WeakHashMap weakHashMap = Dh.a;
        this.a.postInvalidateOnAnimation();
    }

    public final void m(Typeface typeface) {
        boolean z;
        boolean j = j(typeface);
        if (this.w != typeface) {
            this.w = typeface;
            Typeface m = Ng.m(this.a.getContext().getResources().getConfiguration(), typeface);
            this.v = m;
            if (m == null) {
                m = this.w;
            }
            this.u = m;
            z = true;
        } else {
            z = false;
        }
        if (j || z) {
            h(false);
        }
    }
}
