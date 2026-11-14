package o;

import android.view.View;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class X3 implements View.OnFocusChangeListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ AbstractC0067c7 b;

    public /* synthetic */ X3(AbstractC0067c7 abstractC0067c7, int i) {
        this.a = i;
        this.b = abstractC0067c7;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        switch (this.a) {
            case 0:
                C0024a4 c0024a4 = (C0024a4) this.b;
                c0024a4.t(c0024a4.u());
                return;
            default:
                C0364r6 c0364r6 = (C0364r6) this.b;
                c0364r6.l = z;
                c0364r6.q();
                if (!z) {
                    c0364r6.t(false);
                    c0364r6.m = false;
                    return;
                }
                return;
        }
    }
}
