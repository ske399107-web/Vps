package o;

import android.graphics.Typeface;

/* renamed from: o.y0, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class RunnableC0497y0 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ RunnableC0497y0(Object obj, int i, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                ((C0378s0) this.b).b((C0478x0) this.c);
                return;
            case 1:
                Runnable runnable = (Runnable) this.c;
                ExecutorC0121f1 executorC0121f1 = (ExecutorC0121f1) this.b;
                executorC0121f1.getClass();
                try {
                    runnable.run();
                    return;
                } finally {
                    executorC0121f1.a();
                }
            default:
                ((Ha) this.b).i0((Typeface) this.c);
                return;
        }
    }
}
