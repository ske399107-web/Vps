package o;

import android.graphics.Rect;
import android.util.Log;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Ai extends Ei {
    public static Field e;

    /* renamed from: f, reason: collision with root package name */
    public static boolean f66f;
    public static Constructor g;
    public static boolean h;
    public WindowInsets c;
    public C0407t9 d;

    public Ai() {
        this.c = i();
    }

    private static WindowInsets i() {
        if (!f66f) {
            try {
                e = WindowInsets.class.getDeclaredField("CONSUMED");
            } catch (ReflectiveOperationException e2) {
                Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e2);
            }
            f66f = true;
        }
        Field field = e;
        if (field != null) {
            try {
                WindowInsets windowInsets = (WindowInsets) field.get(null);
                if (windowInsets != null) {
                    return new WindowInsets(windowInsets);
                }
            } catch (ReflectiveOperationException e3) {
                Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e3);
            }
        }
        if (!h) {
            try {
                g = WindowInsets.class.getConstructor(Rect.class);
            } catch (ReflectiveOperationException e4) {
                Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e4);
            }
            h = true;
        }
        Constructor constructor = g;
        if (constructor != null) {
            try {
                return (WindowInsets) constructor.newInstance(new Rect());
            } catch (ReflectiveOperationException e5) {
                Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e5);
            }
        }
        return null;
    }

    @Override // o.Ei
    public Mi b() {
        a();
        Mi g2 = Mi.g(null, this.c);
        C0407t9[] c0407t9Arr = this.b;
        Ki ki = g2.a;
        ki.o(c0407t9Arr);
        ki.q(this.d);
        return g2;
    }

    @Override // o.Ei
    public void e(C0407t9 c0407t9) {
        this.d = c0407t9;
    }

    @Override // o.Ei
    public void g(C0407t9 c0407t9) {
        WindowInsets windowInsets = this.c;
        if (windowInsets != null) {
            this.c = windowInsets.replaceSystemWindowInsets(c0407t9.a, c0407t9.b, c0407t9.c, c0407t9.d);
        }
    }

    public Ai(Mi mi) {
        super(mi);
        this.c = mi.f();
    }
}
