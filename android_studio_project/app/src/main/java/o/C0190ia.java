package o;

import android.database.DataSetObserver;

/* renamed from: o.ia, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0190ia extends DataSetObserver {
    public final /* synthetic */ C0249la a;

    public C0190ia(C0249la c0249la) {
        this.a = c0249la;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        C0249la c0249la = this.a;
        if (c0249la.z.isShowing()) {
            c0249la.f();
        }
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        this.a.dismiss();
    }
}
