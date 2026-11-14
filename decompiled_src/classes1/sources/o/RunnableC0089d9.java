package o;

import com.ffrt.proxyread.WirelessPair;

/* renamed from: o.d9, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class RunnableC0089d9 implements Runnable {
    public final /* synthetic */ int a;

    public /* synthetic */ RunnableC0089d9(int i) {
        this.a = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                AbstractC0149g9.a.removeCallbacks(AbstractC0149g9.g);
                AbstractC0149g9.b();
                return;
            default:
                WirelessPair.resetPaint$lambda$1();
                return;
        }
    }
}
