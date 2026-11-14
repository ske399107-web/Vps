package o;

import android.text.Editable;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Y6 extends Sf {
    public final /* synthetic */ C0047b7 a;

    public Y6(C0047b7 c0047b7) {
        this.a = c0047b7;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        this.a.b().a();
    }

    @Override // o.Sf, android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.a.b().b();
    }
}
