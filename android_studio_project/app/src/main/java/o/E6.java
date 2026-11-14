package o;

import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class E6 extends L1 {
    public final /* synthetic */ L1 g;
    public final /* synthetic */ ThreadPoolExecutor h;

    public E6(L1 l1, ThreadPoolExecutor threadPoolExecutor) {
        this.g = l1;
        this.h = threadPoolExecutor;
    }

    @Override // o.L1
    public final void K(Throwable th) {
        ThreadPoolExecutor threadPoolExecutor = this.h;
        try {
            this.g.K(th);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }

    @Override // o.L1
    public final void N(H5 h5) {
        ThreadPoolExecutor threadPoolExecutor = this.h;
        try {
            this.g.N(h5);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }
}
