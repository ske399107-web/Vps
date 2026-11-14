package o;

import android.graphics.Canvas;
import android.graphics.Matrix;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class De extends Je {
    public final /* synthetic */ ArrayList c;
    public final /* synthetic */ Matrix d;

    public De(ArrayList arrayList, Matrix matrix) {
        this.c = arrayList;
        this.d = matrix;
    }

    @Override // o.Je
    public final void a(Matrix matrix, C0511ye c0511ye, int i, Canvas canvas) {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((Je) it.next()).a(this.d, c0511ye, i, canvas);
        }
    }
}
