package o;

import android.os.Handler;
import android.os.Message;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Se implements Handler.Callback {
    public final /* synthetic */ C a;

    public Se(C c) {
        this.a = c;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 0) {
            return false;
        }
        C c = this.a;
        if (message.obj == null) {
            synchronized (c.b) {
                throw null;
            }
        }
        throw new ClassCastException();
    }
}
