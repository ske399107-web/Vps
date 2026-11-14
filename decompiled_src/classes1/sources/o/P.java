package o;

import android.view.View;
import android.widget.Button;
import androidx.appcompat.widget.Toolbar;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class P implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ P(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C0290nb c0290nb;
        switch (this.a) {
            case 0:
                ((AbstractC0160h0) this.b).a();
                return;
            case 1:
                H0 h0 = (H0) this.b;
                Button button = h0.f98f;
                h0.v.obtainMessage(1, h0.b).sendToTarget();
                return;
            case 2:
                Va va = (Va) this.b;
                int i = va.X;
                if (i == 2) {
                    va.H(1);
                    return;
                } else {
                    if (i == 1) {
                        va.H(2);
                        return;
                    }
                    return;
                }
            default:
                C0096dg c0096dg = ((Toolbar) this.b).L;
                if (c0096dg == null) {
                    c0290nb = null;
                } else {
                    c0290nb = c0096dg.b;
                }
                if (c0290nb != null) {
                    c0290nb.collapseActionView();
                    return;
                }
                return;
        }
    }
}
