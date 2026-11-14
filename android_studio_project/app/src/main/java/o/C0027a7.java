package o;

import android.content.res.TypedArray;
import android.util.SparseArray;

/* renamed from: o.a7, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0027a7 {
    public final SparseArray a = new SparseArray();
    public final C0047b7 b;
    public final int c;
    public final int d;

    public C0027a7(C0047b7 c0047b7, C0380s2 c0380s2) {
        this.b = c0047b7;
        TypedArray typedArray = (TypedArray) c0380s2.b;
        this.c = typedArray.getResourceId(28, 0);
        this.d = typedArray.getResourceId(52, 0);
    }
}
