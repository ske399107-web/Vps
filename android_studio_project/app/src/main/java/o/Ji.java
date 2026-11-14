package o;

import android.graphics.Insets;
import android.view.View;
import android.view.WindowInsets;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Ji extends Ii {
    public static final Mi q;

    static {
        WindowInsets windowInsets;
        windowInsets = WindowInsets.CONSUMED;
        q = Mi.g(null, windowInsets);
    }

    public Ji(Mi mi, WindowInsets windowInsets) {
        super(mi, windowInsets);
    }

    @Override // o.Fi, o.Ki
    public final void d(View view) {
    }

    @Override // o.Fi, o.Ki
    public C0407t9 f(int i) {
        Insets insets;
        insets = this.c.getInsets(Li.a(i));
        return C0407t9.c(insets);
    }
}
