package o;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Te extends AbstractC0491xd {
    public boolean a = false;
    public final /* synthetic */ Ac b;

    public Te(Ac ac) {
        this.b = ac;
    }

    @Override // o.AbstractC0491xd
    public final void a(RecyclerView recyclerView, int i) {
        if (i == 0 && this.a) {
            this.a = false;
            this.b.f();
        }
    }

    @Override // o.AbstractC0491xd
    public final void b(RecyclerView recyclerView, int i, int i2) {
        if (i != 0 || i2 != 0) {
            this.a = true;
        }
    }
}
