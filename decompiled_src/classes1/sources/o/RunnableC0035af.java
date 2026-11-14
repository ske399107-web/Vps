package o;

import java.util.ArrayList;

/* renamed from: o.af, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class RunnableC0035af implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ C0055bf b;
    public final /* synthetic */ K5 c;

    public /* synthetic */ RunnableC0035af(K5 k5, C0055bf c0055bf, int i) {
        this.a = i;
        this.c = k5;
        this.b = c0055bf;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                ArrayList arrayList = this.c.b;
                C0055bf c0055bf = this.b;
                if (arrayList.contains(c0055bf)) {
                    AbstractC0304o5.a(c0055bf.c.E, c0055bf.a);
                    return;
                }
                return;
            default:
                K5 k5 = this.c;
                ArrayList arrayList2 = k5.b;
                C0055bf c0055bf2 = this.b;
                arrayList2.remove(c0055bf2);
                k5.c.remove(c0055bf2);
                return;
        }
    }
}
