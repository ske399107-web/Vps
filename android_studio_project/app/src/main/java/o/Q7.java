package o;

import android.view.View;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Q7 extends L1 {
    public final /* synthetic */ T7 g;

    public Q7(T7 t7) {
        this.g = t7;
    }

    @Override // o.L1
    public final View L(int i) {
        T7 t7 = this.g;
        View view = t7.E;
        if (view != null) {
            return view.findViewById(i);
        }
        throw new IllegalStateException("Fragment " + t7 + " does not have a view");
    }

    @Override // o.L1
    public final boolean M() {
        if (this.g.E != null) {
            return true;
        }
        return false;
    }
}
