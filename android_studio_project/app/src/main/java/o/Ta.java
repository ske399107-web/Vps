package o;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Ta extends AbstractC0371rd {
    public final /* synthetic */ Va a;

    public Ta(Va va) {
        this.a = va;
        Xg.c(null);
        Xg.c(null);
    }

    @Override // o.AbstractC0371rd
    public final void a(RecyclerView recyclerView) {
        if ((recyclerView.getAdapter() instanceof Wi) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
            this.a.getClass();
            throw null;
        }
    }
}
