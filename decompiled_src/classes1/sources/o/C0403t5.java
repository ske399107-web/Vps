package o;

import android.content.pm.PackageManager;
import android.content.pm.Signature;

/* renamed from: o.t5, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0403t5 extends C0424u6 {
    @Override // o.C0424u6
    public final Signature[] h(PackageManager packageManager, String str) {
        return packageManager.getPackageInfo(str, 64).signatures;
    }
}
