package o;

import android.graphics.Typeface;
import com.google.android.material.chip.Chip;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class M3 extends Ha {
    public final /* synthetic */ int k;
    public final /* synthetic */ Object l;

    public /* synthetic */ M3(int i, Object obj) {
        this.k = i;
        this.l = obj;
    }

    private final void D0(int i) {
    }

    @Override // o.Ha
    public final void h0(int i) {
        switch (this.k) {
            case 0:
                return;
            default:
                Lf lf = (Lf) this.l;
                lf.d = true;
                Kf kf = (Kf) lf.e.get();
                if (kf != null) {
                    kf.a();
                    return;
                }
                return;
        }
    }

    @Override // o.Ha
    public final void j0(Typeface typeface, boolean z) {
        CharSequence text;
        switch (this.k) {
            case 0:
                Chip chip = (Chip) this.l;
                Q3 q3 = chip.e;
                if (q3.C0) {
                    text = q3.E;
                } else {
                    text = chip.getText();
                }
                chip.setText(text);
                chip.requestLayout();
                chip.invalidate();
                return;
            default:
                if (!z) {
                    Lf lf = (Lf) this.l;
                    lf.d = true;
                    Kf kf = (Kf) lf.e.get();
                    if (kf != null) {
                        kf.a();
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
