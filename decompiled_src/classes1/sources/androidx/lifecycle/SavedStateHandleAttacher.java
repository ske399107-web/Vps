package androidx.lifecycle;

import android.os.Bundle;
import o.C0313oe;
import o.L9;
import o.P9;
import o.R9;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class SavedStateHandleAttacher implements P9 {
    public final C0313oe a;

    public SavedStateHandleAttacher(C0313oe c0313oe) {
        this.a = c0313oe;
    }

    @Override // o.P9
    public final void b(R9 r9, L9 l9) {
        if (l9 == L9.ON_CREATE) {
            r9.e().f(this);
            C0313oe c0313oe = this.a;
            if (!c0313oe.b) {
                Bundle c = c0313oe.a.c("androidx.lifecycle.internal.SavedStateHandlesProvider");
                Bundle bundle = new Bundle();
                Bundle bundle2 = c0313oe.c;
                if (bundle2 != null) {
                    bundle.putAll(bundle2);
                }
                if (c != null) {
                    bundle.putAll(c);
                }
                c0313oe.c = bundle;
                c0313oe.b = true;
                return;
            }
            return;
        }
        throw new IllegalStateException(("Next event must be ON_CREATE, it was " + l9).toString());
    }
}
