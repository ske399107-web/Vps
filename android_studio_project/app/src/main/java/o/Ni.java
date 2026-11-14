package o;

import android.view.View;
import android.view.Window;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Ni extends Ng {
    public final Window e;

    public Ni(Window window, C0424u6 c0424u6) {
        this.e = window;
    }

    public final void B(int i) {
        View decorView = this.e.getDecorView();
        decorView.setSystemUiVisibility((~i) & decorView.getSystemUiVisibility());
    }

    @Override // o.Ng
    public final void w(boolean z) {
        if (z) {
            Window window = this.e;
            window.clearFlags(67108864);
            window.addFlags(PKIFailureInfo.systemUnavail);
            View decorView = window.getDecorView();
            decorView.setSystemUiVisibility(8192 | decorView.getSystemUiVisibility());
            return;
        }
        B(8192);
    }
}
