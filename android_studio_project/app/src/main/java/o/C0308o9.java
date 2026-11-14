package o;

import android.os.Build;
import android.os.Bundle;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;

/* renamed from: o.o9, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0308o9 extends InputConnectionWrapper {
    public final /* synthetic */ C0378s0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0308o9(InputConnection inputConnection, C0378s0 c0378s0) {
        super(inputConnection, false);
        this.a = c0378s0;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
        C c = null;
        if (inputContentInfo != null && Build.VERSION.SDK_INT >= 25) {
            c = new C(16, new C0348q9(inputContentInfo));
        }
        if (this.a.a(c, i, bundle)) {
            return true;
        }
        return super.commitContent(inputContentInfo, i, bundle);
    }
}
