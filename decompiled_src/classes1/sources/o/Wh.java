package o;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Wh {
    public static final C0078ci a;
    public static final D3 b;

    /* JADX WARN: Type inference failed for: r0v1, types: [o.ci, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4, types: [o.ci, java.lang.Object] */
    static {
        if (Build.VERSION.SDK_INT >= 29) {
            a = new Object();
        } else {
            a = new Object();
        }
        b = new D3(Float.class, "translationAlpha", 6);
        new D3(Rect.class, "clipBounds", 7);
    }

    public static void a(View view, int i, int i2, int i3, int i4) {
        a.B(view, i, i2, i3, i4);
    }

    public static void b(View view, int i) {
        a.y(view, i);
    }
}
