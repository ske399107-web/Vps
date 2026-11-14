package o;

import android.content.Context;
import android.os.Trace;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class F6 implements Runnable {
    public final /* synthetic */ int a;

    @Override // java.lang.Runnable
    public final void run() {
        boolean z = false;
        switch (this.a) {
            case 0:
                try {
                    int i = AbstractC0335pg.a;
                    Trace.beginSection("EmojiCompat.EmojiCompatInitializer.run");
                    if (C6.k != null) {
                        z = true;
                    }
                    if (z) {
                        C6.a().c();
                    }
                    Trace.endSection();
                    return;
                } catch (Throwable th) {
                    int i2 = AbstractC0335pg.a;
                    Trace.endSection();
                    throw th;
                }
            default:
                if (AbstractC0149g9.d) {
                    C0147g7 c0147g7 = AbstractC0149g9.c;
                    if (c0147g7 != null) {
                        c0147g7.b();
                    }
                    C0147g7 c0147g72 = AbstractC0149g9.c;
                    if (c0147g72 == null || !c0147g72.isAttachedToWindow()) {
                        Context context = AbstractC0149g9.f215f;
                        if (context == null) {
                            context = AbstractC0149g9.e;
                        }
                        if (context != null) {
                            AbstractC0149g9.d = false;
                            AbstractC0149g9.a(context);
                        }
                    }
                    AbstractC0149g9.a.postDelayed(this, 16L);
                    return;
                }
                return;
        }
    }
}
