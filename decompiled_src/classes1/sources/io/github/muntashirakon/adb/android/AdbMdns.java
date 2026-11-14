package io.github.muntashirakon.adb.android;

import android.content.Context;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.ServerSocket;
import java.net.SocketException;
import java.util.Collections;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class AdbMdns {
    public static final String SERVICE_TYPE_ADB = "adb";
    public static final String SERVICE_TYPE_TLS_CONNECT = "adb-tls-connect";
    public static final String SERVICE_TYPE_TLS_PAIRING = "adb-tls-pairing";
    private final OnAdbDaemonDiscoveredListener mAdbDaemonDiscoveredListener;
    private final Context mContext;
    private final NsdManager.DiscoveryListener mDiscoveryListener;
    private final NsdManager mNsdManager;
    private boolean mRegistered;
    private boolean mRunning;
    private String mServiceName;
    private final String mServiceType;

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class DiscoveryListener implements NsdManager.DiscoveryListener {
        private final AdbMdns mAdbMdns;

        @Override // android.net.nsd.NsdManager.DiscoveryListener
        public void onDiscoveryStarted(String str) {
            this.mAdbMdns.onDiscoveryStart();
        }

        @Override // android.net.nsd.NsdManager.DiscoveryListener
        public void onDiscoveryStopped(String str) {
            this.mAdbMdns.onDiscoverStop();
        }

        @Override // android.net.nsd.NsdManager.DiscoveryListener
        public void onServiceFound(NsdServiceInfo nsdServiceInfo) {
            this.mAdbMdns.onServiceFound(nsdServiceInfo);
        }

        @Override // android.net.nsd.NsdManager.DiscoveryListener
        public void onServiceLost(NsdServiceInfo nsdServiceInfo) {
            this.mAdbMdns.onServiceLost(nsdServiceInfo);
        }

        @Override // android.net.nsd.NsdManager.DiscoveryListener
        public void onStartDiscoveryFailed(String str, int i) {
        }

        @Override // android.net.nsd.NsdManager.DiscoveryListener
        public void onStopDiscoveryFailed(String str, int i) {
        }

        private DiscoveryListener(AdbMdns adbMdns) {
            this.mAdbMdns = adbMdns;
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public interface OnAdbDaemonDiscoveredListener {
        void onPortChanged(InetAddress inetAddress, int i);
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class ResolveListener implements NsdManager.ResolveListener {
        private final AdbMdns mAdbMdns;

        @Override // android.net.nsd.NsdManager.ResolveListener
        public void onResolveFailed(NsdServiceInfo nsdServiceInfo, int i) {
        }

        @Override // android.net.nsd.NsdManager.ResolveListener
        public void onServiceResolved(NsdServiceInfo nsdServiceInfo) {
            this.mAdbMdns.onServiceResolved(nsdServiceInfo);
        }

        private ResolveListener(AdbMdns adbMdns) {
            this.mAdbMdns = adbMdns;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public @interface ServiceType {
    }

    public AdbMdns(Context context, String str, OnAdbDaemonDiscoveredListener onAdbDaemonDiscoveredListener) {
        Objects.requireNonNull(context);
        this.mContext = context;
        Objects.requireNonNull(str);
        this.mServiceType = String.format("_%s._tcp", str);
        Objects.requireNonNull(onAdbDaemonDiscoveredListener);
        this.mAdbDaemonDiscoveredListener = onAdbDaemonDiscoveredListener;
        this.mNsdManager = (NsdManager) context.getSystemService("servicediscovery");
        this.mDiscoveryListener = new DiscoveryListener();
    }

    private boolean isPortAvailable(int i) {
        try {
            ServerSocket serverSocket = new ServerSocket();
            try {
                serverSocket.bind(new InetSocketAddress(AndroidUtils.getHostIpAddress(this.mContext), i), 1);
                serverSocket.close();
                return false;
            } finally {
            }
        } catch (IOException unused) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDiscoverStop() {
        this.mRegistered = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDiscoveryStart() {
        this.mRegistered = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onServiceFound(NsdServiceInfo nsdServiceInfo) {
        this.mNsdManager.resolveService(nsdServiceInfo, new ResolveListener());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onServiceLost(NsdServiceInfo nsdServiceInfo) {
        String str = this.mServiceName;
        if (str != null && str.equals(nsdServiceInfo.getServiceName())) {
            this.mAdbDaemonDiscoveredListener.onPortChanged(nsdServiceInfo.getHost(), -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onServiceResolved(NsdServiceInfo nsdServiceInfo) {
        if (!this.mRunning) {
            return;
        }
        try {
            Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
            while (it.hasNext()) {
                Iterator it2 = Collections.list(((NetworkInterface) it.next()).getInetAddresses()).iterator();
                while (it2.hasNext()) {
                    if (Objects.equals(((InetAddress) it2.next()).getHostAddress(), nsdServiceInfo.getHost().getHostAddress()) && isPortAvailable(nsdServiceInfo.getPort())) {
                        this.mServiceName = nsdServiceInfo.getServiceName();
                        this.mAdbDaemonDiscoveredListener.onPortChanged(nsdServiceInfo.getHost(), nsdServiceInfo.getPort());
                    }
                }
            }
        } catch (SocketException e) {
            e.printStackTrace();
        }
    }

    public boolean isRunning() {
        return this.mRunning;
    }

    public void start() {
        if (this.mRunning) {
            return;
        }
        this.mRunning = true;
        if (!this.mRegistered) {
            this.mNsdManager.discoverServices(this.mServiceType, 1, this.mDiscoveryListener);
        }
    }

    public void stop() {
        if (!this.mRunning) {
            return;
        }
        this.mRunning = false;
        if (this.mRegistered) {
            this.mNsdManager.stopServiceDiscovery(this.mDiscoveryListener);
        }
    }
}
