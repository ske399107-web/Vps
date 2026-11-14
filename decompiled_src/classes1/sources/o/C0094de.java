package o;

import java.io.Serializable;

/* renamed from: o.de, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0094de implements Serializable {
    public final Throwable a;

    public C0094de(Throwable th) {
        this.a = th;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0094de) {
            if (AbstractC0487x9.b(this.a, ((C0094de) obj).a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "Failure(" + this.a + ')';
    }
}
