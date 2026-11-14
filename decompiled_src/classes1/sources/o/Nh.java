package o;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.WeakHashMap;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Nh extends W4 {
    public C0031ab a;

    @Override // o.W4
    public boolean g(CoordinatorLayout coordinatorLayout, View view, int i) {
        r(coordinatorLayout, view, i);
        if (this.a == null) {
            this.a = new C0031ab(view);
        }
        C0031ab c0031ab = this.a;
        View view2 = (View) c0031ab.a;
        c0031ab.b = view2.getTop();
        c0031ab.c = view2.getLeft();
        C0031ab c0031ab2 = this.a;
        View view3 = (View) c0031ab2.a;
        int top = 0 - (view3.getTop() - c0031ab2.b);
        WeakHashMap weakHashMap = Dh.a;
        view3.offsetTopAndBottom(top);
        view3.offsetLeftAndRight(0 - (view3.getLeft() - c0031ab2.c));
        return true;
    }

    public void r(CoordinatorLayout coordinatorLayout, View view, int i) {
        coordinatorLayout.q(view, i);
    }
}
