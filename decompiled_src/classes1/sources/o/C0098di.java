package o;

import android.graphics.Matrix;
import android.view.View;

/* renamed from: o.di, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0098di extends C0078ci {
    @Override // o.C0078ci
    public final void B(View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    @Override // o.C0078ci
    public final void C(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // o.C0078ci
    public final void D(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }

    @Override // o.Ng
    public final float h(View view) {
        float transitionAlpha;
        transitionAlpha = view.getTransitionAlpha();
        return transitionAlpha;
    }

    @Override // o.Ng
    public final void x(View view, float f2) {
        view.setTransitionAlpha(f2);
    }

    @Override // o.C0078ci, o.Ng
    public final void y(View view, int i) {
        view.setTransitionVisibility(i);
    }
}
