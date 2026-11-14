package o;

import java.io.Serializable;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Df implements Serializable {
    public C0152gc a;
    public volatile Object b = C0424u6.c;
    public final Object c = this;

    public Df(C0152gc c0152gc) {
        this.a = c0152gc;
    }

    public final Object a() {
        Object obj;
        Object obj2 = this.b;
        C0424u6 c0424u6 = C0424u6.c;
        if (obj2 != c0424u6) {
            return obj2;
        }
        synchronized (this.c) {
            obj = this.b;
            if (obj == c0424u6) {
                C0152gc c0152gc = this.a;
                AbstractC0487x9.l(c0152gc);
                obj = c0152gc.a();
                this.b = obj;
                this.a = null;
            }
        }
        return obj;
    }

    public final String toString() {
        if (this.b != C0424u6.c) {
            return String.valueOf(a());
        }
        return "Lazy value not initialized yet.";
    }
}
