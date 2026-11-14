package com.ffrt.proxyread;

import android.content.Context;
import o.AbstractC0487x9;
import o.B0;
import o.C0217ji;
import o.Ug;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class SchedHint {
    public static final SchedHint INSTANCE = new SchedHint();
    private static volatile Context app;
    private static volatile boolean hooked;
    public static volatile String q;

    static {
        try {
            System.loadLibrary("tune");
        } catch (Throwable unused) {
        }
    }

    private SchedHint() {
    }

    public static final void k() {
        AbstractC0487x9.T = false;
        try {
            B0 b0 = B0.d;
            if (b0 != null) {
                b0.disconnect();
            }
        } catch (Throwable unused) {
        }
        Context context = app;
        if (context == null) {
            return;
        }
        VpnCaptureService.Companion.getClass();
        C0217ji.a(context);
        WirelessPair.INSTANCE.resetPaint();
    }

    public static final native int n(int i, int i2);

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0121, code lost:
    
        if (r7.length() == 6) goto L44;
     */
    /* JADX WARN: Type inference failed for: r3v19, types: [java.lang.Object, o.ue] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void r(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ffrt.proxyread.SchedHint.r(java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Ug r$lambda$2(boolean z, String str) {
        AbstractC0487x9.o(str, "t");
        WirelessPair.INSTANCE.push(str);
        return Ug.a;
    }

    public final void bind(Context context) {
        AbstractC0487x9.o(context, "ctx");
        app = context.getApplicationContext();
        try {
            n(1, 0);
        } catch (Throwable unused) {
        }
    }

    public final void feed(String str) {
        AbstractC0487x9.o(str, "s");
        q = str;
    }

    public final Context getApp() {
        return app;
    }

    public final void setApp(Context context) {
        app = context;
    }
}
