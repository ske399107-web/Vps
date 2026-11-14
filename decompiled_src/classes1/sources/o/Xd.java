package o;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.TypedValue;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Xd {
    public static Xd g;
    public WeakHashMap a;
    public final WeakHashMap b = new WeakHashMap(0);
    public TypedValue c;
    public boolean d;
    public C0479x1 e;

    /* renamed from: f, reason: collision with root package name */
    public static final PorterDuff.Mode f164f = PorterDuff.Mode.SRC_IN;
    public static final Wd h = new Ba(6);

    public static synchronized Xd b() {
        Xd xd;
        synchronized (Xd.class) {
            try {
                if (g == null) {
                    g = new Xd();
                }
                xd = g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return xd;
    }

    public static synchronized PorterDuffColorFilter e(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (Xd.class) {
            Wd wd = h;
            wd.getClass();
            int i2 = (31 + i) * 31;
            porterDuffColorFilter = (PorterDuffColorFilter) wd.f(Integer.valueOf(mode.hashCode() + i2));
            if (porterDuffColorFilter == null) {
                porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
            }
        }
        return porterDuffColorFilter;
    }

    public final Drawable a(Context context, int i) {
        Drawable drawable;
        if (this.c == null) {
            this.c = new TypedValue();
        }
        TypedValue typedValue = this.c;
        context.getResources().getValue(i, typedValue, true);
        long j = (typedValue.assetCookie << 32) | typedValue.data;
        synchronized (this) {
            C0526za c0526za = (C0526za) this.b.get(context);
            drawable = null;
            if (c0526za != null) {
                WeakReference weakReference = (WeakReference) c0526za.b(j);
                if (weakReference != null) {
                    Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
                    if (constantState != null) {
                        drawable = constantState.newDrawable(context.getResources());
                    } else {
                        int e = AbstractC0487x9.e(c0526za.b, c0526za.d, j);
                        if (e >= 0) {
                            Object[] objArr = c0526za.c;
                            Object obj = objArr[e];
                            Object obj2 = AbstractC0487x9.v;
                            if (obj != obj2) {
                                objArr[e] = obj2;
                                c0526za.a = true;
                            }
                        }
                    }
                }
            }
        }
        if (drawable != null) {
            return drawable;
        }
        LayerDrawable layerDrawable = null;
        if (this.e != null) {
            if (i == 2131165240) {
                layerDrawable = new LayerDrawable(new Drawable[]{c(context, 2131165239), c(context, 2131165241)});
            } else if (i == 2131165275) {
                layerDrawable = C0479x1.c(this, context, 2131099707);
            } else if (i == 2131165274) {
                layerDrawable = C0479x1.c(this, context, 2131099708);
            } else if (i == 2131165276) {
                layerDrawable = C0479x1.c(this, context, 2131099709);
            }
        }
        if (layerDrawable != null) {
            layerDrawable.setChangingConfigurations(typedValue.changingConfigurations);
            synchronized (this) {
                try {
                    Drawable.ConstantState constantState2 = layerDrawable.getConstantState();
                    if (constantState2 != null) {
                        C0526za c0526za2 = (C0526za) this.b.get(context);
                        if (c0526za2 == null) {
                            c0526za2 = new C0526za();
                            this.b.put(context, c0526za2);
                        }
                        c0526za2.d(j, new WeakReference(constantState2));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return layerDrawable;
    }

    public final synchronized Drawable c(Context context, int i) {
        return d(context, i, false);
    }

    public final synchronized Drawable d(Context context, int i, boolean z) {
        Drawable a;
        try {
            if (!this.d) {
                this.d = true;
                Drawable c = c(context, 2131165302);
                if (c == null || (!(c instanceof C0177hh) && !"android.graphics.drawable.VectorDrawable".equals(c.getClass().getName()))) {
                    this.d = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            a = a(context, i);
            if (a == null) {
                a = context.getDrawable(i);
            }
            if (a != null) {
                a = g(context, i, z, a);
            }
            if (a != null) {
                AbstractC0166h6.a(a);
            }
        } catch (Throwable th) {
            throw th;
        }
        return a;
    }

    public final synchronized ColorStateList f(Context context, int i) {
        ColorStateList colorStateList;
        Ze ze;
        WeakHashMap weakHashMap = this.a;
        ColorStateList colorStateList2 = null;
        if (weakHashMap != null && (ze = (Ze) weakHashMap.get(context)) != null) {
            colorStateList = (ColorStateList) ze.b(i);
        } else {
            colorStateList = null;
        }
        if (colorStateList == null) {
            C0479x1 c0479x1 = this.e;
            if (c0479x1 != null) {
                colorStateList2 = c0479x1.d(context, i);
            }
            if (colorStateList2 != null) {
                if (this.a == null) {
                    this.a = new WeakHashMap();
                }
                Ze ze2 = (Ze) this.a.get(context);
                if (ze2 == null) {
                    ze2 = new Ze();
                    this.a.put(context, ze2);
                }
                ze2.a(i, colorStateList2);
            }
            colorStateList = colorStateList2;
        }
        return colorStateList;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable g(android.content.Context r9, int r10, boolean r11, android.graphics.drawable.Drawable r12) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Xd.g(android.content.Context, int, boolean, android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }
}
