package o;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* renamed from: o.r1, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0359r1 extends BroadcastReceiver {
    public final /* synthetic */ AbstractC0379s1 a;

    public C0359r1(AbstractC0379s1 abstractC0379s1) {
        this.a = abstractC0379s1;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.a.h();
    }
}
