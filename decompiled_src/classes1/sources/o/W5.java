package o;

import android.app.Dialog;
import android.view.View;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class W5 extends L1 {
    public final /* synthetic */ Q7 g;
    public final /* synthetic */ X5 h;

    public W5(X5 x5, Q7 q7) {
        this.h = x5;
        this.g = q7;
    }

    @Override // o.L1
    public final View L(int i) {
        Q7 q7 = this.g;
        if (q7.M()) {
            return q7.L(i);
        }
        Dialog dialog = this.h.c0;
        if (dialog != null) {
            return dialog.findViewById(i);
        }
        return null;
    }

    @Override // o.L1
    public final boolean M() {
        if (!this.g.M() && !this.h.f0) {
            return false;
        }
        return true;
    }
}
