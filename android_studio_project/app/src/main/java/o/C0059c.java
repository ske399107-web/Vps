package o;

import io.github.muntashirakon.adb.AbsAdbConnectionManager;
import io.github.muntashirakon.adb.android.AdbMdns;
import java.net.InetAddress;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: o.c, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class C0059c implements AdbMdns.OnAdbDaemonDiscoveredListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ AtomicReference b;
    public final /* synthetic */ AtomicInteger c;
    public final /* synthetic */ CountDownLatch d;

    public /* synthetic */ C0059c(AtomicReference atomicReference, AtomicInteger atomicInteger, CountDownLatch countDownLatch, int i) {
        this.a = i;
        this.b = atomicReference;
        this.c = atomicInteger;
        this.d = countDownLatch;
    }

    @Override // io.github.muntashirakon.adb.android.AdbMdns.OnAdbDaemonDiscoveredListener
    public final void onPortChanged(InetAddress inetAddress, int i) {
        switch (this.a) {
            case 0:
                AbsAdbConnectionManager.c(this.b, this.c, this.d, inetAddress, i);
                return;
            case 1:
                AbsAdbConnectionManager.a(this.b, this.c, this.d, inetAddress, i);
                return;
            default:
                AbsAdbConnectionManager.b(this.b, this.c, this.d, inetAddress, i);
                return;
        }
    }
}
