package o;

import android.window.BackEvent;
import android.window.OnBackAnimationCallback;

/* renamed from: o.ic, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0192ic implements OnBackAnimationCallback {
    public final /* synthetic */ F8 a;
    public final /* synthetic */ F8 b;
    public final /* synthetic */ InterfaceC0426u8 c;
    public final /* synthetic */ InterfaceC0426u8 d;

    public C0192ic(F8 f8, F8 f82, InterfaceC0426u8 interfaceC0426u8, InterfaceC0426u8 interfaceC0426u82) {
        this.a = f8;
        this.b = f82;
        this.c = interfaceC0426u8;
        this.d = interfaceC0426u82;
    }

    public final void onBackCancelled() {
        this.d.a();
    }

    public final void onBackInvoked() {
        this.c.a();
    }

    public final void onBackProgressed(BackEvent backEvent) {
        AbstractC0487x9.o(backEvent, "backEvent");
        this.b.b(new L2(backEvent));
    }

    public final void onBackStarted(BackEvent backEvent) {
        AbstractC0487x9.o(backEvent, "backEvent");
        this.a.b(new L2(backEvent));
    }
}
