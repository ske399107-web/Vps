package o;

import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: o.bg, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0056bg implements InterfaceC0140g0, InterfaceC0191ib {
    public final /* synthetic */ Toolbar a;

    public /* synthetic */ C0056bg(Toolbar toolbar) {
        this.a = toolbar;
    }

    @Override // o.InterfaceC0191ib
    public boolean k(MenuC0230kb menuC0230kb, MenuItem menuItem) {
        this.a.getClass();
        return false;
    }

    @Override // o.InterfaceC0191ib
    public void v(MenuC0230kb menuC0230kb) {
        Toolbar toolbar = this.a;
        C0080d0 c0080d0 = toolbar.a.t;
        if (c0080d0 == null || !c0080d0.j()) {
            Iterator it = ((CopyOnWriteArrayList) toolbar.G.d).iterator();
            while (it.hasNext()) {
                ((C0068c8) it.next()).a.t();
            }
        }
    }
}
