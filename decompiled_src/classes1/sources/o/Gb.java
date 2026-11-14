package o;

import android.util.SparseArray;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Gb {
    public final SparseArray a;
    public Lg b;

    public Gb(int i) {
        this.a = new SparseArray(i);
    }

    public final void a(Lg lg, int i, int i2) {
        Gb gb;
        int a = lg.a(i);
        SparseArray sparseArray = this.a;
        if (sparseArray == null) {
            gb = null;
        } else {
            gb = (Gb) sparseArray.get(a);
        }
        if (gb == null) {
            gb = new Gb(1);
            sparseArray.put(lg.a(i), gb);
        }
        if (i2 > i) {
            gb.a(lg, i + 1, i2);
        } else {
            gb.b = lg;
        }
    }
}
