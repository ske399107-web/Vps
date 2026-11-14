package o;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Yc {
    public static final Vd a = new Object();
    public static final Object b = new Object();
    public static C0424u6 c = null;

    public static long a(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        if (Build.VERSION.SDK_INT >= 33) {
            return A.a(packageManager, context).lastUpdateTime;
        }
        return packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    public static C0424u6 b() {
        C0424u6 c0424u6 = new C0424u6(23);
        c = c0424u6;
        Vd vd = a;
        vd.getClass();
        if (AbstractFutureC0298o.f264f.h(vd, null, c0424u6)) {
            AbstractFutureC0298o.b(vd);
        }
        return c;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:33|34|35|(2:75|76)(1:37)|38|(8:45|(1:49)|(1:68)(1:56)|57|(2:64|65)|61|62|63)|(1:72)(1:(1:74))|(1:49)|(1:51)|68|57|(1:59)|64|65|61|62|63) */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00c5, code lost:
    
        r5 = 327680;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void c(android.content.Context r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Yc.c(android.content.Context, boolean):void");
    }
}
