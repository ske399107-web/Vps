package o;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.Objects;
import java.util.WeakHashMap;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Mi {
    public static final Mi b;
    public final Ki a;

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            b = Ji.q;
        } else {
            b = Ki.b;
        }
    }

    public Mi(WindowInsets windowInsets) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            this.a = new Ji(this, windowInsets);
            return;
        }
        if (i >= 29) {
            this.a = new Ii(this, windowInsets);
        } else if (i >= 28) {
            this.a = new Hi(this, windowInsets);
        } else {
            this.a = new Gi(this, windowInsets);
        }
    }

    public static C0407t9 e(C0407t9 c0407t9, int i, int i2, int i3, int i4) {
        int max = Math.max(0, c0407t9.a - i);
        int max2 = Math.max(0, c0407t9.b - i2);
        int max3 = Math.max(0, c0407t9.c - i3);
        int max4 = Math.max(0, c0407t9.d - i4);
        if (max == i && max2 == i2 && max3 == i3 && max4 == i4) {
            return c0407t9;
        }
        return C0407t9.b(max, max2, max3, max4);
    }

    public static Mi g(View view, WindowInsets windowInsets) {
        windowInsets.getClass();
        Mi mi = new Mi(windowInsets);
        if (view != null && view.isAttachedToWindow()) {
            WeakHashMap weakHashMap = Dh.a;
            Mi a = AbstractC0475wh.a(view);
            Ki ki = mi.a;
            ki.p(a);
            ki.d(view.getRootView());
        }
        return mi;
    }

    public final int a() {
        return this.a.j().d;
    }

    public final int b() {
        return this.a.j().a;
    }

    public final int c() {
        return this.a.j().c;
    }

    public final int d() {
        return this.a.j().b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Mi)) {
            return false;
        }
        return Objects.equals(this.a, ((Mi) obj).a);
    }

    public final WindowInsets f() {
        Ki ki = this.a;
        if (ki instanceof Fi) {
            return ((Fi) ki).c;
        }
        return null;
    }

    public final int hashCode() {
        Ki ki = this.a;
        if (ki == null) {
            return 0;
        }
        return ki.hashCode();
    }

    public Mi() {
        this.a = new Ki(this);
    }
}
