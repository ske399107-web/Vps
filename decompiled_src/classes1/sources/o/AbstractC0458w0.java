package o;

import android.app.NotificationManager;
import android.content.Context;
import android.net.nsd.NsdManager;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: o.w0, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0458w0 {
    public static C0339q0 c;
    public static Context d;
    public static volatile int e;

    /* renamed from: f, reason: collision with root package name */
    public static volatile int f290f;
    public static volatile boolean h;
    public static volatile boolean i;
    public static final Handler a = new Handler(Looper.getMainLooper());
    public static final CopyOnWriteArrayList b = new CopyOnWriteArrayList();
    public static volatile String g = "Chưa nối adbd trên máy.";

    public static void a() {
        Object c0094de;
        boolean booleanValue;
        boolean z;
        final Context context = d;
        if (context != null && AbstractC0487x9.a(context, f290f)) {
            g = "ADB local đã nối.";
        }
        final boolean z2 = true;
        if (!AbstractC0487x9.T) {
            if (AbstractC0487x9.T) {
                booleanValue = true;
            } else {
                try {
                    B0 b0 = B0.d;
                    if (b0 != null && b0.isConnected()) {
                        z = true;
                    } else {
                        z = false;
                    }
                    c0094de = Boolean.valueOf(z);
                } catch (Throwable th) {
                    c0094de = new C0094de(th);
                }
                Object obj = Boolean.FALSE;
                if (c0094de instanceof C0094de) {
                    c0094de = obj;
                }
                booleanValue = ((Boolean) c0094de).booleanValue();
            }
            if (!booleanValue) {
                z2 = false;
            }
        }
        final String str = g;
        a.post(new Runnable() { // from class: o.u0
            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = context;
                boolean z3 = z2;
                if (context2 != null) {
                    if (z3) {
                        C0339q0 c0339q0 = AbstractC0458w0.c;
                        if (c0339q0 != null) {
                            c0339q0.j();
                        }
                        AbstractC0458w0.c = null;
                        NotificationManager notificationManager = (NotificationManager) context2.getApplicationContext().getSystemService(NotificationManager.class);
                        if (notificationManager != null) {
                            notificationManager.cancel(42);
                        }
                    } else {
                        AbstractC0487x9.Z(context2);
                    }
                }
                Iterator it = AbstractC0458w0.b.iterator();
                while (it.hasNext()) {
                    ((J8) it.next()).a(Boolean.valueOf(z3), str);
                }
            }
        });
    }

    public static void b(Context context) {
        Context applicationContext = context.getApplicationContext();
        d = applicationContext;
        if (AbstractC0487x9.T) {
            AbstractC0487x9.l(applicationContext);
            NotificationManager notificationManager = (NotificationManager) applicationContext.getApplicationContext().getSystemService(NotificationManager.class);
            if (notificationManager != null) {
                notificationManager.cancel(42);
                return;
            }
            return;
        }
        if (c == null) {
            AbstractC0487x9.l(applicationContext);
            C0339q0 c0339q0 = c;
            if (c0339q0 != null) {
                c0339q0.j();
            }
            e = 0;
            f290f = 0;
            C0339q0 c0339q02 = new C0339q0(applicationContext);
            c = c0339q02;
            C0378s0 c0378s0 = new C0378s0(0, applicationContext);
            c0339q02.j();
            Object systemService = ((Context) c0339q02.b).getSystemService("wifi");
            AbstractC0487x9.m(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
            WifiManager.MulticastLock createMulticastLock = ((WifiManager) systemService).createMulticastLock("proxyread-adb");
            createMulticastLock.setReferenceCounted(true);
            createMulticastLock.acquire();
            c0339q02.e = createMulticastLock;
            for (String str : AbstractC0124f4.i0("_adb-tls-pairing._tcp.", "_adb-tls-connect._tcp.", "_adb._tcp.")) {
                A0 a0 = new A0(str, c0339q02, c0378s0);
                c0339q02.a.add(a0);
                try {
                    ((NsdManager) c0339q02.c).discoverServices(str, 1, a0);
                } catch (Throwable unused) {
                }
            }
        }
        AbstractC0487x9.l(applicationContext);
        AbstractC0487x9.Z(applicationContext);
        if (applicationContext.getSharedPreferences("adb_session", 0).getBoolean("paired", false) && !AbstractC0487x9.T) {
            c(applicationContext);
        }
    }

    public static void c(Context context) {
        Context applicationContext = context.getApplicationContext();
        d = applicationContext;
        if (!i && !h && !AbstractC0487x9.T) {
            i = true;
            g = "Đang nối lại ADB…";
            a();
            Ha.y0("pr-adb-re", new C0358r0(0, applicationContext), 23);
        }
    }
}
