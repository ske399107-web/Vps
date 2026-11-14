package o;

import android.os.Handler;
import com.ffrt.proxyread.MainActivity;
import com.ffrt.proxyread.VpnCaptureService;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class Ga implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ Ga(MainActivity mainActivity, int i) {
        this.a = i;
        this.b = mainActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        MainActivity mainActivity = this.b;
        switch (this.a) {
            case 0:
                int i = MainActivity.I;
                mainActivity.s();
                return;
            case 1:
                int i2 = MainActivity.I;
                mainActivity.t();
                return;
            case 2:
                int i3 = MainActivity.I;
                VpnCaptureService.Companion.getClass();
                z = VpnCaptureService.running;
                if (z) {
                    Handler handler = AbstractC0149g9.a;
                    AbstractC0149g9.c(mainActivity);
                    return;
                }
                return;
            default:
                int i4 = MainActivity.I;
                mainActivity.t();
                return;
        }
    }
}
