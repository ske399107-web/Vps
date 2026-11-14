package o;

import android.app.Activity;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import java.util.Objects;

/* renamed from: o.o1, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0300o1 {
    public static OnBackInvokedDispatcher a(Activity activity) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        onBackInvokedDispatcher = activity.getOnBackInvokedDispatcher();
        return onBackInvokedDispatcher;
    }

    public static OnBackInvokedCallback b(Object obj, LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1) {
        Objects.requireNonNull(layoutInflaterFactory2C0439v1);
        C0280n1 c0280n1 = new C0280n1(0, layoutInflaterFactory2C0439v1);
        AbstractC0477x.d(obj).registerOnBackInvokedCallback(1000000, c0280n1);
        return c0280n1;
    }

    public static void c(Object obj, Object obj2) {
        AbstractC0477x.d(obj).unregisterOnBackInvokedCallback(AbstractC0477x.b(obj2));
    }
}
