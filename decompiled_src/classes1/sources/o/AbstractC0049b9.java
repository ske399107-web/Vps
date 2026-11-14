package o;

import java.util.ArrayList;

/* renamed from: o.b9, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0049b9 extends L4 {
    public L4[] q0 = new L4[4];
    public int r0 = 0;

    public final void R(int i, ArrayList arrayList, C0257li c0257li) {
        for (int i2 = 0; i2 < this.r0; i2++) {
            L4 l4 = this.q0[i2];
            ArrayList arrayList2 = c0257li.a;
            if (!arrayList2.contains(l4)) {
                arrayList2.add(l4);
            }
        }
        for (int i3 = 0; i3 < this.r0; i3++) {
            L1.u(this.q0[i3], i, arrayList, c0257li);
        }
    }

    public void S() {
    }
}
