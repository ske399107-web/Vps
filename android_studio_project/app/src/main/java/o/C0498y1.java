package o;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;

/* renamed from: o.y1, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0498y1 {
    public static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;
    public static C0498y1 c;
    public Xd a;

    public static synchronized C0498y1 a() {
        C0498y1 c0498y1;
        synchronized (C0498y1.class) {
            try {
                if (c == null) {
                    d();
                }
                c0498y1 = c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0498y1;
    }

    public static synchronized PorterDuffColorFilter c(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter e;
        synchronized (C0498y1.class) {
            e = Xd.e(i, mode);
        }
        return e;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [o.y1, java.lang.Object] */
    public static synchronized void d() {
        synchronized (C0498y1.class) {
            if (c == null) {
                ?? obj = new Object();
                c = obj;
                obj.a = Xd.b();
                Xd xd = c.a;
                C0479x1 c0479x1 = new C0479x1();
                synchronized (xd) {
                    xd.e = c0479x1;
                }
            }
        }
    }

    public static void e(Drawable drawable, Xf xf, int[] iArr) {
        ColorStateList colorStateList;
        PorterDuff.Mode mode;
        PorterDuff.Mode mode2 = Xd.f164f;
        int[] state = drawable.getState();
        if (drawable.mutate() == drawable) {
            if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
                drawable.setState(new int[0]);
                drawable.setState(state);
            }
            boolean z = xf.d;
            if (!z && !xf.c) {
                drawable.clearColorFilter();
                return;
            }
            PorterDuffColorFilter porterDuffColorFilter = null;
            if (z) {
                colorStateList = xf.a;
            } else {
                colorStateList = null;
            }
            if (xf.c) {
                mode = xf.b;
            } else {
                mode = Xd.f164f;
            }
            if (colorStateList != null && mode != null) {
                porterDuffColorFilter = Xd.e(colorStateList.getColorForState(iArr, 0), mode);
            }
            drawable.setColorFilter(porterDuffColorFilter);
            return;
        }
        Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
    }

    public final synchronized Drawable b(Context context, int i) {
        return this.a.c(context, i);
    }
}
