package o;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Sa extends LinearLayoutManager {
    public final /* synthetic */ int E;
    public final /* synthetic */ Va F;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Sa(Va va, int i, int i2) {
        super(i);
        this.F = va;
        this.E = i2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void A0(Fd fd, int[] iArr) {
        int i = this.E;
        Va va = this.F;
        if (i == 0) {
            iArr[0] = va.a0.getWidth();
            iArr[1] = va.a0.getWidth();
        } else {
            iArr[0] = va.a0.getHeight();
            iArr[1] = va.a0.getHeight();
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, o.AbstractC0431ud
    public final void x0(RecyclerView recyclerView, int i) {
        C0030aa c0030aa = new C0030aa(recyclerView.getContext());
        c0030aa.a = i;
        y0(c0030aa);
    }
}
