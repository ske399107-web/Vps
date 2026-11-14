package o;

import android.view.View;

/* renamed from: o.f3, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class ViewOnLayoutChangeListenerC0123f3 implements View.OnLayoutChangeListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ViewOnLayoutChangeListenerC0123f3(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        switch (this.a) {
            case 0:
                throw null;
            default:
                C0275mg c0275mg = (C0275mg) this.b;
                c0275mg.getClass();
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                c0275mg.J = iArr[0];
                view.getWindowVisibleDisplayFrame(c0275mg.C);
                return;
        }
    }
}
