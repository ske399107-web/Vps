package o;

import java.util.ArrayList;

/* renamed from: o.h8, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0168h8 implements InterfaceC0148g8 {
    public final int a;
    public final /* synthetic */ C0188i8 b;

    public C0168h8(C0188i8 c0188i8, int i) {
        this.b = c0188i8;
        this.a = i;
    }

    @Override // o.InterfaceC0148g8
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        C0188i8 c0188i8 = this.b;
        T7 t7 = c0188i8.w;
        int i = this.a;
        if (t7 != null && i < 0 && t7.g().N(-1, 0)) {
            return false;
        }
        return c0188i8.O(arrayList, arrayList2, i, 1);
    }
}
