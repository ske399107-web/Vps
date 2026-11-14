package o;

import android.util.SparseArray;

/* renamed from: o.zd, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0529zd {
    public SparseArray a;
    public int b;

    public final C0510yd a(int i) {
        SparseArray sparseArray = this.a;
        C0510yd c0510yd = (C0510yd) sparseArray.get(i);
        if (c0510yd == null) {
            C0510yd c0510yd2 = new C0510yd();
            sparseArray.put(i, c0510yd2);
            return c0510yd2;
        }
        return c0510yd;
    }
}
