package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.profileinstaller.ProfileInstallerInitializer;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import o.C0424u6;
import o.InterfaceC0288n9;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class ProfileInstallerInitializer implements InterfaceC0288n9 {
    @Override // o.InterfaceC0288n9
    public final List a() {
        return Collections.emptyList();
    }

    @Override // o.InterfaceC0288n9
    public final Object b(Context context) {
        final Context applicationContext = context.getApplicationContext();
        Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: o.Wc
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                Handler handler;
                ProfileInstallerInitializer.this.getClass();
                if (Build.VERSION.SDK_INT >= 28) {
                    handler = Handler.createAsync(Looper.getMainLooper());
                } else {
                    handler = new Handler(Looper.getMainLooper());
                }
                handler.postDelayed(new RunnableC0061c1(applicationContext, 2), new Random().nextInt(Math.max(1000, 1)) + 5000);
            }
        });
        return new C0424u6(22);
    }
}
