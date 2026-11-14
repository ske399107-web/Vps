package o;

import android.view.View;
import android.view.Window;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Oi extends Ni {
    @Override // o.Ng
    public final void v(boolean z) {
        if (z) {
            Window window = this.e;
            window.clearFlags(134217728);
            window.addFlags(PKIFailureInfo.systemUnavail);
            View decorView = window.getDecorView();
            decorView.setSystemUiVisibility(16 | decorView.getSystemUiVisibility());
            return;
        }
        B(16);
    }
}
