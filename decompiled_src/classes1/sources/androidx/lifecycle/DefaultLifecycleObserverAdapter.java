package androidx.lifecycle;

import o.C5;
import o.D5;
import o.L9;
import o.P9;
import o.R9;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class DefaultLifecycleObserverAdapter implements P9 {
    public final C5 a;
    public final P9 b;

    public DefaultLifecycleObserverAdapter(C5 c5, P9 p9) {
        this.a = c5;
        this.b = p9;
    }

    @Override // o.P9
    public final void b(R9 r9, L9 l9) {
        int i = D5.a[l9.ordinal()];
        C5 c5 = this.a;
        if (i != 3) {
            if (i == 7) {
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
            }
        } else {
            c5.a();
        }
        P9 p9 = this.b;
        if (p9 != null) {
            p9.b(r9, l9);
        }
    }
}
