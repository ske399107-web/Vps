package o;

/* renamed from: o.s3, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0381s3 {
    public boolean a;
    public InterfaceC0361r3 b;
    public boolean c;

    public final void a(InterfaceC0361r3 interfaceC0361r3) {
        synchronized (this) {
            while (this.c) {
                try {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.b == interfaceC0361r3) {
                return;
            }
            this.b = interfaceC0361r3;
            if (this.a) {
                interfaceC0361r3.t();
            }
        }
    }
}
