package o;

import android.os.Build;
import java.util.ArrayList;
import java.util.Set;

/* renamed from: o.x6, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0484x6 extends L1 {
    public final /* synthetic */ C0503y6 g;

    public C0484x6(C0503y6 c0503y6) {
        this.g = c0503y6;
    }

    @Override // o.L1
    public final void K(Throwable th) {
        this.g.a.d(th);
    }

    @Override // o.L1
    public final void N(H5 h5) {
        Set<int[]> A;
        C0503y6 c0503y6 = this.g;
        c0503y6.c = h5;
        H5 h52 = c0503y6.c;
        C6 c6 = c0503y6.a;
        C0424u6 c0424u6 = c6.g;
        C0423u5 c0423u5 = c6.i;
        if (Build.VERSION.SDK_INT >= 34) {
            A = H6.a();
        } else {
            A = L1.A();
        }
        c0503y6.b = new C0380s2(h52, c0424u6, c0423u5, A);
        C6 c62 = c0503y6.a;
        c62.getClass();
        ArrayList arrayList = new ArrayList();
        c62.a.writeLock().lock();
        try {
            c62.c = 1;
            arrayList.addAll(c62.b);
            c62.b.clear();
            c62.a.writeLock().unlock();
            c62.d.post(new T2(arrayList, c62.c, (Throwable) null));
        } catch (Throwable th) {
            c62.a.writeLock().unlock();
            throw th;
        }
    }
}
