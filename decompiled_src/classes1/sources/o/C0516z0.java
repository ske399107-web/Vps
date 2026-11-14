package o;

import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.Handler;
import java.net.InetAddress;

/* renamed from: o.z0, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0516z0 implements NsdManager.ResolveListener {
    public final /* synthetic */ String a;
    public final /* synthetic */ C0339q0 b;
    public final /* synthetic */ C0378s0 c;

    public C0516z0(String str, C0339q0 c0339q0, C0378s0 c0378s0) {
        this.a = str;
        this.b = c0339q0;
        this.c = c0378s0;
    }

    @Override // android.net.nsd.NsdManager.ResolveListener
    public final void onResolveFailed(NsdServiceInfo nsdServiceInfo, int i) {
        AbstractC0487x9.o(nsdServiceInfo, "si");
    }

    @Override // android.net.nsd.NsdManager.ResolveListener
    public final void onServiceResolved(NsdServiceInfo nsdServiceInfo) {
        String str;
        AbstractC0487x9.o(nsdServiceInfo, "si");
        InetAddress host = nsdServiceInfo.getHost();
        if (host == null || (str = host.getHostAddress()) == null) {
            str = "127.0.0.1";
        }
        ((Handler) this.b.d).post(new RunnableC0497y0(this.c, 0, new C0478x0(this.a, nsdServiceInfo.getPort(), str)));
    }
}
