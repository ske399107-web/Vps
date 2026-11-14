package o;

import android.os.Bundle;
import java.util.Iterator;
import java.util.Map;

/* renamed from: o.oe, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0313oe implements InterfaceC0392se {
    public final C0041b1 a;
    public boolean b;
    public Bundle c;
    public final Df d;

    public C0313oe(C0041b1 c0041b1, Mh mh) {
        AbstractC0487x9.o(c0041b1, "savedStateRegistry");
        this.a = c0041b1;
        this.d = new Df(new C0152gc(3, mh));
    }

    @Override // o.InterfaceC0392se
    public final Bundle a() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        Iterator it = ((C0333pe) this.d.a()).c.entrySet().iterator();
        if (!it.hasNext()) {
            this.b = false;
            return bundle;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getValue().getClass();
        throw new ClassCastException();
    }
}
