package androidx.activity.result;

import o.L9;
import o.P9;
import o.R9;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
class ActivityResultRegistry$1 implements P9 {
    @Override // o.P9
    public final void b(R9 r9, L9 l9) {
        if (!L9.ON_START.equals(l9)) {
            if (!L9.ON_STOP.equals(l9)) {
                if (!L9.ON_DESTROY.equals(l9)) {
                    return;
                } else {
                    throw null;
                }
            }
            throw null;
        }
        throw null;
    }
}
