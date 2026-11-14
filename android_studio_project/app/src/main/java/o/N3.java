package o;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.google.android.material.chip.Chip;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class N3 extends ViewOutlineProvider {
    public final /* synthetic */ Chip a;

    public N3(Chip chip) {
        this.a = chip;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        Q3 q3 = this.a.e;
        if (q3 != null) {
            q3.getOutline(outline);
        } else {
            outline.setAlpha(0.0f);
        }
    }
}
