package o;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.LinkedHashSet;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class S0 implements InterfaceC0392se {
    public final /* synthetic */ int a = 0;
    public final Object b;

    public S0(C0041b1 c0041b1) {
        AbstractC0487x9.o(c0041b1, "registry");
        this.b = new LinkedHashSet();
        c0041b1.e("androidx.savedstate.Restarter", this);
    }

    @Override // o.InterfaceC0392se
    public final Bundle a() {
        switch (this.a) {
            case 0:
                Bundle bundle = new Bundle();
                ((U0) this.b).j().getClass();
                return bundle;
            default:
                Bundle bundle2 = new Bundle();
                bundle2.putStringArrayList("classes_to_restore", new ArrayList<>((LinkedHashSet) this.b));
                return bundle2;
        }
    }

    public S0(U0 u0) {
        this.b = u0;
    }
}
