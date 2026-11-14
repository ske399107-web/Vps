package o;

/* renamed from: o.m, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0258m extends AbstractC0487x9 {
    @Override // o.AbstractC0487x9
    public final void M(C0278n c0278n, C0278n c0278n2) {
        c0278n.b = c0278n2;
    }

    @Override // o.AbstractC0487x9
    public final void N(C0278n c0278n, Thread thread) {
        c0278n.a = thread;
    }

    @Override // o.AbstractC0487x9
    public final boolean g(AbstractFutureC0298o abstractFutureC0298o, C0218k c0218k) {
        C0218k c0218k2 = C0218k.b;
        synchronized (abstractFutureC0298o) {
            try {
                if (abstractFutureC0298o.b == c0218k) {
                    abstractFutureC0298o.b = c0218k2;
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // o.AbstractC0487x9
    public final boolean h(AbstractFutureC0298o abstractFutureC0298o, Object obj, Object obj2) {
        synchronized (abstractFutureC0298o) {
            try {
                if (abstractFutureC0298o.a == obj) {
                    abstractFutureC0298o.a = obj2;
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // o.AbstractC0487x9
    public final boolean i(AbstractFutureC0298o abstractFutureC0298o, C0278n c0278n, C0278n c0278n2) {
        synchronized (abstractFutureC0298o) {
            try {
                if (abstractFutureC0298o.c == c0278n) {
                    abstractFutureC0298o.c = c0278n2;
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
