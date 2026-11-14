package o;

import java.util.Iterator;

/* renamed from: o.a6, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C0026a6 extends P5 {
    public int m;

    public C0026a6(AbstractC0277mi abstractC0277mi) {
        super(abstractC0277mi);
        if (abstractC0277mi instanceof C0069c9) {
            this.e = 2;
        } else {
            this.e = 3;
        }
    }

    @Override // o.P5
    public final void d(int i) {
        if (this.j) {
            return;
        }
        this.j = true;
        this.g = i;
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            N5 n5 = (N5) it.next();
            n5.a(n5);
        }
    }
}
