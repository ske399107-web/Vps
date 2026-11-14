package o;

import android.graphics.Matrix;
import android.view.View;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Zh {
    public static void a(View view, Matrix matrix) {
        view.setAnimationMatrix(matrix);
    }

    public static void b(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    public static void c(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
