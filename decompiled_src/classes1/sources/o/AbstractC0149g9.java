package o;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.WindowManager;
import com.ffrt.proxyread.HudAccessService;
import com.ffrt.proxyread.Integrity;

/* renamed from: o.g9, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0149g9 {
    public static WindowManager b;
    public static C0147g7 c;
    public static boolean d;
    public static Context e;

    /* renamed from: f, reason: collision with root package name */
    public static volatile HudAccessService f215f;
    public static final Handler a = new Handler(Looper.getMainLooper());
    public static final F6 g = new F6(1);

    public static void a(Context context) {
        boolean z;
        int i;
        boolean canDrawOverlays;
        C0147g7 c0147g7;
        if (d && (c0147g7 = c) != null && c0147g7.isAttachedToWindow()) {
            C0147g7 c0147g72 = c;
            if (c0147g72 != null) {
                c0147g72.b();
                return;
            }
            return;
        }
        if (d) {
            b();
        }
        if (f215f == null) {
            if (f215f != null) {
                canDrawOverlays = true;
            } else {
                canDrawOverlays = Settings.canDrawOverlays(context);
            }
            if (!canDrawOverlays) {
                int i2 = AbstractC0408ta.a;
                return;
            }
        }
        HudAccessService hudAccessService = f215f;
        if (hudAccessService != null) {
            context = hudAccessService;
        }
        Object systemService = context.getSystemService("window");
        AbstractC0487x9.m(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        WindowManager windowManager = (WindowManager) systemService;
        C0147g7 c0147g73 = new C0147g7(context);
        if (f215f != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i = 2032;
        } else if (Build.VERSION.SDK_INT >= 26) {
            i = 2038;
        } else {
            i = 2002;
        }
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, i, 824, -3);
        layoutParams.gravity = 48;
        layoutParams.x = 0;
        layoutParams.y = 0;
        layoutParams.alpha = 1.0f;
        if (Build.VERSION.SDK_INT >= 28) {
            layoutParams.layoutInDisplayCutoutMode = 1;
        }
        try {
            windowManager.addView(c0147g73, layoutParams);
            b = windowManager;
            c = c0147g73;
            d = true;
            Handler handler = a;
            F6 f6 = g;
            handler.removeCallbacks(f6);
            handler.post(f6);
            int i3 = AbstractC0408ta.a;
        } catch (Exception e2) {
            int i4 = AbstractC0408ta.a;
            AbstractC0408ta.a("overlay " + e2.getMessage());
        }
    }

    public static void b() {
        C0147g7 c0147g7 = c;
        if (c0147g7 == null) {
            return;
        }
        try {
            WindowManager windowManager = b;
            if (windowManager != null) {
                windowManager.removeView(c0147g7);
            }
        } catch (Exception unused) {
        }
        c = null;
        b = null;
        d = false;
    }

    public static void c(Context context) {
        AbstractC0487x9.o(context, "ctx");
        Integrity.c(context);
        if (L1.b && Integrity.a()) {
            e = context.getApplicationContext();
            a.post(new RunnableC0061c1(context, 1));
        }
    }
}
