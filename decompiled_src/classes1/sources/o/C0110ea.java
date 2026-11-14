package o;

import android.view.View;
import android.widget.AdapterView;

/* renamed from: o.ea, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0110ea implements AdapterView.OnItemSelectedListener {
    public final /* synthetic */ C0249la a;

    public C0110ea(C0249la c0249la) {
        this.a = c0249la;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        C0285n6 c0285n6;
        if (i != -1 && (c0285n6 = this.a.c) != null) {
            c0285n6.setListSelectionHidden(false);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
