package o;

import android.window.OnBackInvokedCallback;

/* renamed from: o.jc, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0211jc {
    public static final C0211jc a = new Object();

    public final OnBackInvokedCallback a(F8 f8, F8 f82, InterfaceC0426u8 interfaceC0426u8, InterfaceC0426u8 interfaceC0426u82) {
        AbstractC0487x9.o(f8, "onBackStarted");
        AbstractC0487x9.o(f82, "onBackProgressed");
        AbstractC0487x9.o(interfaceC0426u8, "onBackInvoked");
        AbstractC0487x9.o(interfaceC0426u82, "onBackCancelled");
        return new C0192ic(f8, f82, interfaceC0426u8, interfaceC0426u82);
    }
}
