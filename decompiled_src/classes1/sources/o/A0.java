package o;

import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class A0 implements NsdManager.DiscoveryListener {
    public final /* synthetic */ C0339q0 a;
    public final /* synthetic */ String b;
    public final /* synthetic */ C0378s0 c;

    public A0(String str, C0339q0 c0339q0, C0378s0 c0378s0) {
        this.a = c0339q0;
        this.b = str;
        this.c = c0378s0;
    }

    @Override // android.net.nsd.NsdManager.DiscoveryListener
    public final void onDiscoveryStarted(String str) {
        AbstractC0487x9.o(str, "serviceType");
    }

    @Override // android.net.nsd.NsdManager.DiscoveryListener
    public final void onDiscoveryStopped(String str) {
        AbstractC0487x9.o(str, "serviceType");
    }

    @Override // android.net.nsd.NsdManager.DiscoveryListener
    public final void onServiceFound(NsdServiceInfo nsdServiceInfo) {
        AbstractC0487x9.o(nsdServiceInfo, "serviceInfo");
        C0339q0 c0339q0 = this.a;
        ((NsdManager) c0339q0.c).resolveService(nsdServiceInfo, new C0516z0(this.b, c0339q0, this.c));
    }

    @Override // android.net.nsd.NsdManager.DiscoveryListener
    public final void onServiceLost(NsdServiceInfo nsdServiceInfo) {
        AbstractC0487x9.o(nsdServiceInfo, "serviceInfo");
    }

    @Override // android.net.nsd.NsdManager.DiscoveryListener
    public final void onStartDiscoveryFailed(String str, int i) {
        AbstractC0487x9.o(str, "serviceType");
    }

    @Override // android.net.nsd.NsdManager.DiscoveryListener
    public final void onStopDiscoveryFailed(String str, int i) {
        AbstractC0487x9.o(str, "serviceType");
    }
}
