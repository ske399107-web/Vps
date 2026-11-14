package androidx.lifecycle;

import o.L9;
import o.P9;
import o.R9;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class SavedStateHandleController implements P9 {
    public boolean a;

    @Override // o.P9
    public final void b(R9 r9, L9 l9) {
        if (l9 == L9.ON_DESTROY) {
            this.a = false;
            r9.e().f(this);
        }
    }
}
