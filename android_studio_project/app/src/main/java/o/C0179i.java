package o;

import java.util.concurrent.CancellationException;

/* renamed from: o.i, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0179i {
    public static final C0179i b;
    public static final C0179i c;
    public final CancellationException a;

    static {
        if (AbstractFutureC0298o.d) {
            c = null;
            b = null;
        } else {
            c = new C0179i(false, null);
            b = new C0179i(true, null);
        }
    }

    public C0179i(boolean z, CancellationException cancellationException) {
        this.a = cancellationException;
    }
}
