package o;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class D0 implements AdapterView.OnItemClickListener {
    public final /* synthetic */ H0 a;
    public final /* synthetic */ E0 b;

    public D0(E0 e0, H0 h0) {
        this.b = e0;
        this.a = h0;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        E0 e0 = this.b;
        DialogInterface.OnClickListener onClickListener = e0.h;
        H0 h0 = this.a;
        onClickListener.onClick(h0.b, i);
        if (!e0.i) {
            h0.b.dismiss();
        }
    }
}
