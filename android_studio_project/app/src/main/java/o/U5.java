package o;

import android.app.Dialog;
import android.content.DialogInterface;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class U5 implements DialogInterface.OnCancelListener {
    public final /* synthetic */ X5 a;

    public U5(X5 x5) {
        this.a = x5;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        X5 x5 = this.a;
        Dialog dialog = x5.c0;
        if (dialog != null) {
            x5.onCancel(dialog);
        }
    }
}
