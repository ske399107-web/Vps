package o;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;

/* renamed from: o.t4, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractActivityC0402t4 extends Activity implements R9, C9 {
    public final androidx.lifecycle.a a = new androidx.lifecycle.a(this);

    @Override // o.C9
    public final boolean c(KeyEvent keyEvent) {
        AbstractC0487x9.o(keyEvent, "event");
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        AbstractC0487x9.o(keyEvent, "event");
        View decorView = getWindow().getDecorView();
        AbstractC0487x9.n(decorView, "window.decorView");
        if (L1.r(decorView, keyEvent)) {
            return true;
        }
        return L1.s(this, decorView, this, keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        AbstractC0487x9.o(keyEvent, "event");
        View decorView = getWindow().getDecorView();
        AbstractC0487x9.n(decorView, "window.decorView");
        if (L1.r(decorView, keyEvent)) {
            return true;
        }
        return super.dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i = Rd.b;
        Pd.b(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        AbstractC0487x9.o(bundle, "outState");
        this.a.g();
        super.onSaveInstanceState(bundle);
    }
}
