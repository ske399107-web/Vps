package o;

import android.content.DialogInterface;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class F0 extends Handler {
    public WeakReference a;

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != -3 && i != -2 && i != -1) {
            if (i == 1) {
                ((DialogInterface) message.obj).dismiss();
                return;
            }
            return;
        }
        ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.a.get(), message.what);
    }
}
