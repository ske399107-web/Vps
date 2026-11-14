package o;

import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;

/* renamed from: o.hc, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0172hc {
    public static final C0172hc a = new Object();

    public final OnBackInvokedCallback a(InterfaceC0426u8 interfaceC0426u8) {
        AbstractC0487x9.o(interfaceC0426u8, "onBackInvoked");
        return new C0280n1(1, interfaceC0426u8);
    }

    public final void b(Object obj, int i, Object obj2) {
        AbstractC0487x9.o(obj, "dispatcher");
        AbstractC0487x9.o(obj2, "callback");
        ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(i, (OnBackInvokedCallback) obj2);
    }

    public final void c(Object obj, Object obj2) {
        AbstractC0487x9.o(obj, "dispatcher");
        AbstractC0487x9.o(obj2, "callback");
        ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
    }
}
