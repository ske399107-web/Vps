package o;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import java.util.ArrayDeque;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: o.hh, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0177hh extends Yg {
    public static final PorterDuff.Mode j = PorterDuff.Mode.SRC_IN;
    public C0137fh b;
    public PorterDuffColorFilter c;
    public ColorFilter d;
    public boolean e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f226f;
    public final float[] g;
    public final Matrix h;
    public final Rect i;

    /* JADX WARN: Type inference failed for: r0v5, types: [android.graphics.drawable.Drawable$ConstantState, o.fh] */
    public C0177hh() {
        this.f226f = true;
        this.g = new float[9];
        this.h = new Matrix();
        this.i = new Rect();
        ?? constantState = new Drawable.ConstantState();
        constantState.c = null;
        constantState.d = j;
        constantState.b = new C0117eh();
        this.b = constantState;
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList != null && mode != null) {
            return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.canApplyTheme();
            return false;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint;
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        Rect rect = this.i;
        copyBounds(rect);
        if (rect.width() > 0 && rect.height() > 0) {
            ColorFilter colorFilter = this.d;
            if (colorFilter == null) {
                colorFilter = this.c;
            }
            Matrix matrix = this.h;
            canvas.getMatrix(matrix);
            float[] fArr = this.g;
            matrix.getValues(fArr);
            float abs = Math.abs(fArr[0]);
            float abs2 = Math.abs(fArr[4]);
            float abs3 = Math.abs(fArr[1]);
            float abs4 = Math.abs(fArr[3]);
            if (abs3 != 0.0f || abs4 != 0.0f) {
                abs = 1.0f;
                abs2 = 1.0f;
            }
            int width = (int) (rect.width() * abs);
            int min = Math.min(2048, width);
            int min2 = Math.min(2048, (int) (rect.height() * abs2));
            if (min > 0 && min2 > 0) {
                int save = canvas.save();
                canvas.translate(rect.left, rect.top);
                if (isAutoMirrored() && getLayoutDirection() == 1) {
                    canvas.translate(rect.width(), 0.0f);
                    canvas.scale(-1.0f, 1.0f);
                }
                rect.offsetTo(0, 0);
                C0137fh c0137fh = this.b;
                Bitmap bitmap = c0137fh.f212f;
                if (bitmap == null || min != bitmap.getWidth() || min2 != c0137fh.f212f.getHeight()) {
                    c0137fh.f212f = Bitmap.createBitmap(min, min2, Bitmap.Config.ARGB_8888);
                    c0137fh.k = true;
                }
                if (!this.f226f) {
                    C0137fh c0137fh2 = this.b;
                    c0137fh2.f212f.eraseColor(0);
                    Canvas canvas2 = new Canvas(c0137fh2.f212f);
                    C0117eh c0117eh = c0137fh2.b;
                    c0117eh.a(c0117eh.g, C0117eh.p, canvas2, min, min2);
                } else {
                    C0137fh c0137fh3 = this.b;
                    if (c0137fh3.k || c0137fh3.g != c0137fh3.c || c0137fh3.h != c0137fh3.d || c0137fh3.j != c0137fh3.e || c0137fh3.i != c0137fh3.b.getRootAlpha()) {
                        C0137fh c0137fh4 = this.b;
                        c0137fh4.f212f.eraseColor(0);
                        Canvas canvas3 = new Canvas(c0137fh4.f212f);
                        C0117eh c0117eh2 = c0137fh4.b;
                        c0117eh2.a(c0117eh2.g, C0117eh.p, canvas3, min, min2);
                        C0137fh c0137fh5 = this.b;
                        c0137fh5.g = c0137fh5.c;
                        c0137fh5.h = c0137fh5.d;
                        c0137fh5.i = c0137fh5.b.getRootAlpha();
                        c0137fh5.j = c0137fh5.e;
                        c0137fh5.k = false;
                    }
                }
                C0137fh c0137fh6 = this.b;
                if (c0137fh6.b.getRootAlpha() >= 255 && colorFilter == null) {
                    paint = null;
                } else {
                    if (c0137fh6.l == null) {
                        Paint paint2 = new Paint();
                        c0137fh6.l = paint2;
                        paint2.setFilterBitmap(true);
                    }
                    c0137fh6.l.setAlpha(c0137fh6.b.getRootAlpha());
                    c0137fh6.l.setColorFilter(colorFilter);
                    paint = c0137fh6.l;
                }
                canvas.drawBitmap(c0137fh6.f212f, (Rect) null, rect, paint);
                canvas.restoreToCount(save);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.getAlpha();
        }
        return this.b.b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.getColorFilter();
        }
        return this.d;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.a != null) {
            return new C0157gh(this.a.getConstantState());
        }
        this.b.a = getChangingConfigurations();
        return this.b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return (int) this.b.b.i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return (int) this.b.b.h;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.isAutoMirrored();
        }
        return this.b.e;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (!super.isStateful()) {
            C0137fh c0137fh = this.b;
            if (c0137fh != null) {
                C0117eh c0117eh = c0137fh.b;
                if (c0117eh.n == null) {
                    c0117eh.n = Boolean.valueOf(c0117eh.g.a());
                }
                if (c0117eh.n.booleanValue() || ((colorStateList = this.b.c) != null && colorStateList.isStateful())) {
                }
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [android.graphics.drawable.Drawable$ConstantState, o.fh] */
    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.e && super.mutate() == this) {
            C0137fh c0137fh = this.b;
            ?? constantState = new Drawable.ConstantState();
            constantState.c = null;
            constantState.d = j;
            if (c0137fh != null) {
                constantState.a = c0137fh.a;
                C0117eh c0117eh = new C0117eh(c0137fh.b);
                constantState.b = c0117eh;
                if (c0137fh.b.e != null) {
                    c0117eh.e = new Paint(c0137fh.b.e);
                }
                if (c0137fh.b.d != null) {
                    constantState.b.d = new Paint(c0137fh.b.d);
                }
                constantState.c = c0137fh.c;
                constantState.d = c0137fh.d;
                constantState.e = c0137fh.e;
            }
            this.b = constantState;
            this.e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z;
        PorterDuff.Mode mode;
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        C0137fh c0137fh = this.b;
        ColorStateList colorStateList = c0137fh.c;
        if (colorStateList != null && (mode = c0137fh.d) != null) {
            this.c = a(colorStateList, mode);
            invalidateSelf();
            z = true;
        } else {
            z = false;
        }
        C0117eh c0117eh = c0137fh.b;
        if (c0117eh.n == null) {
            c0117eh.n = Boolean.valueOf(c0117eh.g.a());
        }
        if (c0117eh.n.booleanValue()) {
            boolean b = c0137fh.b.g.b(iArr);
            c0137fh.k |= b;
            if (b) {
                invalidateSelf();
                return true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j2) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j2);
        } else {
            super.scheduleSelf(runnable, j2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else if (this.b.b.getRootAlpha() != i) {
            this.b.b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
        } else {
            this.b.e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.d = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        Drawable drawable = this.a;
        if (drawable != null) {
            L1.a0(drawable, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
            return;
        }
        C0137fh c0137fh = this.b;
        if (c0137fh.c != colorStateList) {
            c0137fh.c = colorStateList;
            this.c = a(colorStateList, c0137fh.d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setTintMode(mode);
            return;
        }
        C0137fh c0137fh = this.b;
        if (c0137fh.d != mode) {
            c0137fh.d = mode;
            this.c = a(c0137fh.c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v19, types: [o.dh, o.ah, java.lang.Object] */
    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        C0117eh c0117eh;
        int i;
        int i2;
        boolean z;
        int i3;
        boolean z2;
        Paint.Join join;
        Paint.Cap cap;
        Paint.Join join2;
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
            return;
        }
        C0137fh c0137fh = this.b;
        c0137fh.b = new C0117eh();
        TypedArray g0 = Ha.g0(resources, theme, attributeSet, AbstractC0487x9.a);
        C0137fh c0137fh2 = this.b;
        C0117eh c0117eh2 = c0137fh2.b;
        int i4 = !Ha.W(xmlPullParser, "tintMode") ? -1 : g0.getInt(6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        int i5 = 3;
        if (i4 == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (i4 != 5) {
            if (i4 != 9) {
                switch (i4) {
                    case 14:
                        mode = PorterDuff.Mode.MULTIPLY;
                        break;
                    case 15:
                        mode = PorterDuff.Mode.SCREEN;
                        break;
                    case 16:
                        mode = PorterDuff.Mode.ADD;
                        break;
                }
            } else {
                mode = PorterDuff.Mode.SRC_ATOP;
            }
        }
        c0137fh2.d = mode;
        int i6 = 1;
        ColorStateList colorStateList = null;
        boolean z3 = false;
        if (Ha.W(xmlPullParser, "tint")) {
            TypedValue typedValue = new TypedValue();
            g0.getValue(1, typedValue);
            int i7 = typedValue.type;
            if (i7 == 2) {
                throw new UnsupportedOperationException("Failed to resolve attribute at index 1: " + typedValue);
            }
            if (i7 >= 28 && i7 <= 31) {
                colorStateList = ColorStateList.valueOf(typedValue.data);
            } else {
                Resources resources2 = g0.getResources();
                int resourceId = g0.getResourceId(1, 0);
                ThreadLocal threadLocal = AbstractC0243l4.a;
                try {
                    colorStateList = AbstractC0243l4.a(resources2, resources2.getXml(resourceId), theme);
                } catch (Exception e) {
                    Log.e("CSLCompat", "Failed to inflate ColorStateList.", e);
                }
            }
        }
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList2 != null) {
            c0137fh2.c = colorStateList2;
        }
        boolean z4 = c0137fh2.e;
        if (Ha.W(xmlPullParser, "autoMirrored")) {
            z4 = g0.getBoolean(5, z4);
        }
        c0137fh2.e = z4;
        float f2 = c0117eh2.j;
        if (Ha.W(xmlPullParser, "viewportWidth")) {
            f2 = g0.getFloat(7, f2);
        }
        c0117eh2.j = f2;
        float f3 = c0117eh2.k;
        if (Ha.W(xmlPullParser, "viewportHeight")) {
            f3 = g0.getFloat(8, f3);
        }
        c0117eh2.k = f3;
        if (c0117eh2.j <= 0.0f) {
            throw new XmlPullParserException(g0.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (f3 > 0.0f) {
            c0117eh2.h = g0.getDimension(3, c0117eh2.h);
            float dimension = g0.getDimension(2, c0117eh2.i);
            c0117eh2.i = dimension;
            if (c0117eh2.h <= 0.0f) {
                throw new XmlPullParserException(g0.getPositionDescription() + "<vector> tag requires width > 0");
            }
            if (dimension > 0.0f) {
                float alpha = c0117eh2.getAlpha();
                if (Ha.W(xmlPullParser, "alpha")) {
                    alpha = g0.getFloat(4, alpha);
                }
                c0117eh2.setAlpha(alpha);
                String string = g0.getString(0);
                if (string != null) {
                    c0117eh2.m = string;
                    c0117eh2.f205o.put(string, c0117eh2);
                }
                g0.recycle();
                c0137fh.a = getChangingConfigurations();
                c0137fh.k = true;
                C0137fh c0137fh3 = this.b;
                C0117eh c0117eh3 = c0137fh3.b;
                ArrayDeque arrayDeque = new ArrayDeque();
                arrayDeque.push(c0117eh3.g);
                int eventType = xmlPullParser.getEventType();
                int depth = xmlPullParser.getDepth() + 1;
                boolean z5 = true;
                while (eventType != i6 && (xmlPullParser.getDepth() >= depth || eventType != i5)) {
                    if (eventType == 2) {
                        String name = xmlPullParser.getName();
                        C0057bh c0057bh = (C0057bh) arrayDeque.peek();
                        boolean equals = "path".equals(name);
                        i = depth;
                        E2 e2 = c0117eh3.f205o;
                        if (equals) {
                            ?? abstractC0097dh = new AbstractC0097dh();
                            abstractC0097dh.e = 0.0f;
                            abstractC0097dh.g = 1.0f;
                            abstractC0097dh.h = 1.0f;
                            abstractC0097dh.i = 0.0f;
                            abstractC0097dh.j = 1.0f;
                            abstractC0097dh.k = 0.0f;
                            Paint.Cap cap2 = Paint.Cap.BUTT;
                            abstractC0097dh.l = cap2;
                            Paint.Join join3 = Paint.Join.MITER;
                            abstractC0097dh.m = join3;
                            c0117eh = c0117eh3;
                            abstractC0097dh.n = 4.0f;
                            TypedArray g02 = Ha.g0(resources, theme, attributeSet, AbstractC0487x9.c);
                            if (Ha.W(xmlPullParser, "pathData")) {
                                String string2 = g02.getString(0);
                                if (string2 != null) {
                                    abstractC0097dh.b = string2;
                                }
                                String string3 = g02.getString(2);
                                if (string3 != null) {
                                    abstractC0097dh.a = Ha.y(string3);
                                }
                                abstractC0097dh.f180f = Ha.N(g02, xmlPullParser, theme, "fillColor", 1);
                                float f4 = abstractC0097dh.h;
                                if (Ha.W(xmlPullParser, "fillAlpha")) {
                                    f4 = g02.getFloat(12, f4);
                                }
                                abstractC0097dh.h = f4;
                                int i8 = !Ha.W(xmlPullParser, "strokeLineCap") ? -1 : g02.getInt(8, -1);
                                Paint.Cap cap3 = abstractC0097dh.l;
                                if (i8 != 0) {
                                    join = join3;
                                    if (i8 != 1) {
                                        cap = i8 != 2 ? cap3 : Paint.Cap.SQUARE;
                                    } else {
                                        cap = Paint.Cap.ROUND;
                                    }
                                } else {
                                    join = join3;
                                    cap = cap2;
                                }
                                abstractC0097dh.l = cap;
                                int i9 = !Ha.W(xmlPullParser, "strokeLineJoin") ? -1 : g02.getInt(9, -1);
                                Paint.Join join4 = abstractC0097dh.m;
                                if (i9 == 0) {
                                    join2 = join;
                                } else if (i9 != 1) {
                                    join2 = i9 != 2 ? join4 : Paint.Join.BEVEL;
                                } else {
                                    join2 = Paint.Join.ROUND;
                                }
                                abstractC0097dh.m = join2;
                                float f5 = abstractC0097dh.n;
                                if (Ha.W(xmlPullParser, "strokeMiterLimit")) {
                                    f5 = g02.getFloat(10, f5);
                                }
                                abstractC0097dh.n = f5;
                                abstractC0097dh.d = Ha.N(g02, xmlPullParser, theme, "strokeColor", 3);
                                float f6 = abstractC0097dh.g;
                                if (Ha.W(xmlPullParser, "strokeAlpha")) {
                                    f6 = g02.getFloat(11, f6);
                                }
                                abstractC0097dh.g = f6;
                                float f7 = abstractC0097dh.e;
                                if (Ha.W(xmlPullParser, "strokeWidth")) {
                                    f7 = g02.getFloat(4, f7);
                                }
                                abstractC0097dh.e = f7;
                                float f8 = abstractC0097dh.j;
                                if (Ha.W(xmlPullParser, "trimPathEnd")) {
                                    f8 = g02.getFloat(6, f8);
                                }
                                abstractC0097dh.j = f8;
                                float f9 = abstractC0097dh.k;
                                if (Ha.W(xmlPullParser, "trimPathOffset")) {
                                    f9 = g02.getFloat(7, f9);
                                }
                                abstractC0097dh.k = f9;
                                float f10 = abstractC0097dh.i;
                                if (Ha.W(xmlPullParser, "trimPathStart")) {
                                    f10 = g02.getFloat(5, f10);
                                }
                                abstractC0097dh.i = f10;
                                int i10 = abstractC0097dh.c;
                                if (Ha.W(xmlPullParser, "fillType")) {
                                    i10 = g02.getInt(13, i10);
                                }
                                abstractC0097dh.c = i10;
                            }
                            g02.recycle();
                            c0057bh.b.add(abstractC0097dh);
                            if (abstractC0097dh.getPathName() != null) {
                                e2.put(abstractC0097dh.getPathName(), abstractC0097dh);
                            }
                            c0137fh3.a = c0137fh3.a;
                            z2 = false;
                            i2 = 1;
                            z5 = false;
                        } else {
                            c0117eh = c0117eh3;
                            if ("clip-path".equals(name)) {
                                AbstractC0097dh abstractC0097dh2 = new AbstractC0097dh();
                                if (Ha.W(xmlPullParser, "pathData")) {
                                    TypedArray g03 = Ha.g0(resources, theme, attributeSet, AbstractC0487x9.d);
                                    String string4 = g03.getString(0);
                                    if (string4 != null) {
                                        abstractC0097dh2.b = string4;
                                    }
                                    String string5 = g03.getString(1);
                                    if (string5 != null) {
                                        abstractC0097dh2.a = Ha.y(string5);
                                    }
                                    abstractC0097dh2.c = !Ha.W(xmlPullParser, "fillType") ? 0 : g03.getInt(2, 0);
                                    g03.recycle();
                                }
                                c0057bh.b.add(abstractC0097dh2);
                                if (abstractC0097dh2.getPathName() != null) {
                                    e2.put(abstractC0097dh2.getPathName(), abstractC0097dh2);
                                }
                                c0137fh3.a = c0137fh3.a;
                            } else if ("group".equals(name)) {
                                C0057bh c0057bh2 = new C0057bh();
                                TypedArray g04 = Ha.g0(resources, theme, attributeSet, AbstractC0487x9.b);
                                float f11 = c0057bh2.c;
                                if (Ha.W(xmlPullParser, "rotation")) {
                                    f11 = g04.getFloat(5, f11);
                                }
                                c0057bh2.c = f11;
                                i2 = 1;
                                c0057bh2.d = g04.getFloat(1, c0057bh2.d);
                                c0057bh2.e = g04.getFloat(2, c0057bh2.e);
                                float f12 = c0057bh2.f187f;
                                if (Ha.W(xmlPullParser, "scaleX")) {
                                    f12 = g04.getFloat(3, f12);
                                }
                                c0057bh2.f187f = f12;
                                float f13 = c0057bh2.g;
                                if (Ha.W(xmlPullParser, "scaleY")) {
                                    f13 = g04.getFloat(4, f13);
                                }
                                c0057bh2.g = f13;
                                float f14 = c0057bh2.h;
                                if (Ha.W(xmlPullParser, "translateX")) {
                                    f14 = g04.getFloat(6, f14);
                                }
                                c0057bh2.h = f14;
                                float f15 = c0057bh2.i;
                                if (Ha.W(xmlPullParser, "translateY")) {
                                    f15 = g04.getFloat(7, f15);
                                }
                                c0057bh2.i = f15;
                                z2 = false;
                                String string6 = g04.getString(0);
                                if (string6 != null) {
                                    c0057bh2.k = string6;
                                }
                                c0057bh2.c();
                                g04.recycle();
                                c0057bh.b.add(c0057bh2);
                                arrayDeque.push(c0057bh2);
                                if (c0057bh2.getGroupName() != null) {
                                    e2.put(c0057bh2.getGroupName(), c0057bh2);
                                }
                                c0137fh3.a = c0137fh3.a;
                            }
                            z2 = false;
                            i2 = 1;
                        }
                        z = z2;
                        i3 = 3;
                    } else {
                        c0117eh = c0117eh3;
                        i = depth;
                        i2 = i6;
                        z = z3;
                        i3 = 3;
                        if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                            arrayDeque.pop();
                        }
                    }
                    eventType = xmlPullParser.next();
                    i5 = i3;
                    z3 = z;
                    i6 = i2;
                    depth = i;
                    c0117eh3 = c0117eh;
                }
                if (!z5) {
                    this.c = a(c0137fh.c, c0137fh.d);
                    return;
                }
                throw new XmlPullParserException("no path defined");
            }
            throw new XmlPullParserException(g0.getPositionDescription() + "<vector> tag requires height > 0");
        }
        throw new XmlPullParserException(g0.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
    }

    public C0177hh(C0137fh c0137fh) {
        this.f226f = true;
        this.g = new float[9];
        this.h = new Matrix();
        this.i = new Rect();
        this.b = c0137fh;
        this.c = a(c0137fh.c, c0137fh.d);
    }
}
