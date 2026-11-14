package o;

import android.content.Context;
import android.content.Intent;
import com.ffrt.proxyread.VpnCaptureService;

/* renamed from: o.ji, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0217ji {
    public static void a(Context context) {
        AbstractC0487x9.o(context, "ctx");
        VpnCaptureService.wantOn = false;
        try {
            Context applicationContext = context.getApplicationContext();
            applicationContext.startService(new Intent(applicationContext, (Class<?>) VpnCaptureService.class).setAction(VpnCaptureService.ACTION_STOP));
        } catch (Throwable unused) {
        }
    }
}
