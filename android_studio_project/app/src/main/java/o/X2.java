package o;

import android.os.Handler;
import android.os.Message;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class X2 implements Handler.Callback {
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i != 0) {
            if (i != 1) {
                return false;
            }
            message.obj.getClass();
            throw new ClassCastException();
        }
        message.obj.getClass();
        throw new ClassCastException();
    }
}
