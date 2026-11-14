package com.ffrt.proxyread;

import android.R;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.VpnService;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.OsConstants;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import o.AbstractC0039b;
import o.AbstractC0104e4;
import o.AbstractC0149g9;
import o.AbstractC0189i9;
import o.AbstractC0408ta;
import o.AbstractC0458w0;
import o.AbstractC0487x9;
import o.C0094de;
import o.C0217ji;
import o.C0398t0;
import o.Ha;
import o.Hb;
import o.L1;
import o.RunnableC0089d9;
import o.Tg;
import o.Ug;
import o.Y5;
import o.Zb;
import org.conscrypt.BuildConfig;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class VpnCaptureService extends VpnService {
    public static final String ACTION_STOP = "com.ffrt.proxyread.STOP";
    private static final String CH = "proxy_read";
    public static final C0217ji Companion = new Object();
    public static final String FF_MAX = "com.dts.freefiremax";
    public static final String FF_PKG = "com.dts.freefireth";
    private static volatile boolean running;
    private static volatile boolean wantOn;
    private PacketEngine engine;
    private ParcelFileDescriptor tun;

    private final void addUnderlyingDns(VpnService.Builder builder) {
        LinkProperties linkProperties;
        ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService(ConnectivityManager.class);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int i = 0;
        if (connectivityManager != null) {
            for (Network network : connectivityManager.getAllNetworks()) {
                NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(network);
                if (networkCapabilities != null && !networkCapabilities.hasTransport(4)) {
                    boolean hasTransport = networkCapabilities.hasTransport(1);
                    boolean hasTransport2 = networkCapabilities.hasTransport(0);
                    boolean hasTransport3 = networkCapabilities.hasTransport(3);
                    if ((hasTransport || hasTransport2 || hasTransport3) && (linkProperties = connectivityManager.getLinkProperties(network)) != null) {
                        linkedHashSet.addAll(linkProperties.getDnsServers());
                    }
                }
            }
        }
        Iterator it = linkedHashSet.iterator();
        AbstractC0487x9.n(it, "iterator(...)");
        while (it.hasNext()) {
            Object next = it.next();
            AbstractC0487x9.n(next, "next(...)");
            InetAddress inetAddress = (InetAddress) next;
            if (i >= 3) {
                break;
            } else if (inetAddress instanceof Inet4Address) {
                try {
                    builder.addDnsServer(inetAddress);
                    i++;
                } catch (Throwable unused) {
                }
            }
        }
        if (i == 0) {
            builder.addDnsServer("8.8.8.8");
            AbstractC0487x9.l(builder.addDnsServer("1.1.1.1"));
            return;
        }
        int i2 = AbstractC0408ta.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : linkedHashSet) {
            if (obj instanceof Inet4Address) {
                arrayList.add(obj);
            }
        }
        AbstractC0408ta.a("DNS " + AbstractC0104e4.k0(arrayList, null, new Y5(9), 31));
    }

    public static final CharSequence addUnderlyingDns$lambda$6(Inet4Address inet4Address) {
        AbstractC0487x9.o(inet4Address, "it");
        String hostAddress = inet4Address.getHostAddress();
        if (hostAddress == null) {
            return BuildConfig.FLAVOR;
        }
        return hostAddress;
    }

    private final Notification notif() {
        NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
        if (Build.VERSION.SDK_INT >= 26) {
            AbstractC0039b.f();
            NotificationChannel q = AbstractC0039b.q(getString(2131623981));
            q.setShowBadge(false);
            notificationManager.createNotificationChannel(q);
        }
        PendingIntent activity = PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) MainActivity.class), 201326592);
        Zb zb = new Zb(this, CH);
        zb.e = Zb.b(getString(2131624100));
        zb.f174f = Zb.b(getString(2131624099));
        zb.p.icon = R.drawable.stat_notify_sync_noanim;
        zb.g = activity;
        zb.c(2, true);
        zb.q = true;
        zb.h = -2;
        Notification a = zb.a();
        AbstractC0487x9.n(a, "build(...)");
        return a;
    }

    private final void startCapture() {
        boolean z;
        String str;
        int i = 1;
        VpnService.Builder blocking = new VpnService.Builder(this).setSession(getString(2131624113)).setMtu(4000).addAddress("10.111.0.2", 32).addRoute("0.0.0.0", 0).setBlocking(true);
        AbstractC0487x9.n(blocking, "setBlocking(...)");
        if (Build.VERSION.SDK_INT >= 29) {
            blocking.setMetered(false);
        }
        try {
            blocking.allowFamily(OsConstants.AF_INET6);
        } catch (Throwable unused) {
        }
        addUnderlyingDns(blocking);
        try {
            blocking.addAllowedApplication(FF_PKG);
            z = true;
        } catch (Exception e) {
            int i2 = AbstractC0408ta.a;
            AbstractC0408ta.a("addAllowedApplication FF: " + e.getMessage());
            z = false;
        }
        try {
            blocking.addAllowedApplication(FF_MAX);
            z = true;
        } catch (Exception unused2) {
        }
        if (!z) {
            try {
                blocking.addDisallowedApplication(getPackageName());
            } catch (Throwable unused3) {
            }
            int i3 = AbstractC0408ta.a;
        }
        ParcelFileDescriptor establish = blocking.establish();
        if (establish == null) {
            int i4 = AbstractC0408ta.a;
            running = false;
            return;
        }
        this.tun = establish;
        running = true;
        PacketEngine packetEngine = new PacketEngine(this, new FileInputStream(establish.getFileDescriptor()), new FileOutputStream(establish.getFileDescriptor()));
        this.engine = packetEngine;
        int i5 = AbstractC0408ta.a;
        if (z) {
            str = "solo com.dts.freefireth";
        } else {
            str = "full";
        }
        AbstractC0408ta.a("VPN activa · " + str + " · TCP/UDP directo · IPv6 omitido");
        AbstractC0189i9.a();
        byte[] bArr = Hb.a;
        Hb.j();
        Tg.a.u();
        Hb.k(getSharedPreferences(CH, 0).getBoolean("moco_on", false));
        AbstractC0149g9.c(this);
        if (L1.b && !AbstractC0487x9.T) {
            AbstractC0458w0.b(this);
        }
        Ha.y0("pr-tun", new C0398t0(packetEngine, this, i), 23);
    }

    public static final Ug startCapture$lambda$4(PacketEngine packetEngine, VpnCaptureService vpnCaptureService) {
        packetEngine.loop();
        int i = AbstractC0408ta.a;
        running = false;
        try {
            ParcelFileDescriptor parcelFileDescriptor = vpnCaptureService.tun;
            if (parcelFileDescriptor != null) {
                parcelFileDescriptor.close();
            }
        } catch (Throwable unused) {
        }
        vpnCaptureService.tun = null;
        vpnCaptureService.engine = null;
        if (wantOn) {
            try {
                Thread.sleep(800L);
            } catch (InterruptedException unused2) {
            }
            if (wantOn) {
                vpnCaptureService.startCapture();
            }
        }
        return Ug.a;
    }

    private final void stopCapture() {
        wantOn = false;
        running = false;
        PacketEngine packetEngine = this.engine;
        if (packetEngine != null) {
            packetEngine.stop();
        }
        this.engine = null;
        try {
            ParcelFileDescriptor parcelFileDescriptor = this.tun;
            if (parcelFileDescriptor != null) {
                parcelFileDescriptor.close();
            }
        } catch (Throwable unused) {
        }
        this.tun = null;
        AbstractC0149g9.a.post(new RunnableC0089d9(0));
        AbstractC0189i9.a();
        byte[] bArr = Hb.a;
        Hb.j();
        Tg.a.u();
        int i = AbstractC0408ta.a;
    }

    public static final void z(Context context) {
        Companion.getClass();
        C0217ji.a(context);
    }

    @Override // android.app.Service
    public void onDestroy() {
        stopCapture();
        super.onDestroy();
    }

    @Override // android.net.VpnService
    public void onRevoke() {
        stopCapture();
        super.onRevoke();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        String str;
        Object c0094de;
        startForeground(1, notif());
        if (intent != null) {
            str = intent.getAction();
        } else {
            str = null;
        }
        if (str != null && str.hashCode() == -423673045 && str.equals(ACTION_STOP)) {
            stopCapture();
            stopSelf();
            return 2;
        }
        Integrity.c(this);
        try {
            c0094de = Integer.valueOf(SchedHint.n(7, 0));
        } catch (Throwable th) {
            c0094de = new C0094de(th);
        }
        if (c0094de instanceof C0094de) {
            c0094de = 0;
        }
        int intValue = ((Number) c0094de).intValue();
        if (L1.b && Integrity.a() && intValue == 1) {
            wantOn = true;
            if (this.tun == null) {
                startCapture();
            }
            return 1;
        }
        stopCapture();
        stopSelf();
        return 2;
    }
}
