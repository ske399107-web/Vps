package com.ffrt.proxyread;

import android.app.Application;
import java.io.File;
import java.security.Security;
import o.AbstractC0408ta;
import org.conscrypt.Conscrypt;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class ProxyApp extends Application {
    @Override // android.app.Application
    public final void onCreate() {
        super.onCreate();
        Security.insertProviderAt(Conscrypt.newProvider(), 1);
        SchedHint.INSTANCE.bind(this);
        Integrity.c(this);
        int i = AbstractC0408ta.a;
        File externalFilesDir = getExternalFilesDir(null);
        if (externalFilesDir == null) {
            externalFilesDir = getFilesDir();
        }
        new File(externalFilesDir, "rudp.log").getAbsolutePath();
    }
}
