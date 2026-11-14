package o;

import android.widget.EditText;
import java.lang.ref.WeakReference;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Q6 extends A6 {
    public final /* synthetic */ int a = 0;
    public final WeakReference b;

    public Q6(EditText editText) {
        this.b = new WeakReference(editText);
    }

    @Override // o.A6
    public void a() {
        switch (this.a) {
            case 1:
                Cf cf = (Cf) this.b.get();
                if (cf != null) {
                    cf.c();
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // o.A6
    public final void b() {
        switch (this.a) {
            case 0:
                R6.a((EditText) this.b.get(), 1);
                return;
            default:
                Cf cf = (Cf) this.b.get();
                if (cf != null) {
                    cf.c();
                    return;
                }
                return;
        }
    }

    public Q6(Cf cf) {
        this.b = new WeakReference(cf);
    }
}
