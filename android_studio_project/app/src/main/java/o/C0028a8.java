package o;

import android.util.Log;
import java.util.ArrayList;
import java.util.Map;

/* renamed from: o.a8, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0028a8 {
    public final /* synthetic */ int a;
    public final /* synthetic */ C0188i8 b;

    public /* synthetic */ C0028a8(C0188i8 c0188i8, int i) {
        this.a = i;
        this.b = c0188i8;
    }

    public final void a(Object obj) {
        int i;
        switch (this.a) {
            case 0:
                Map map = (Map) obj;
                ArrayList arrayList = new ArrayList(map.values());
                int[] iArr = new int[arrayList.size()];
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    if (((Boolean) arrayList.get(i2)).booleanValue()) {
                        i = 0;
                    } else {
                        i = -1;
                    }
                    iArr[i2] = i;
                }
                C0188i8 c0188i8 = this.b;
                C0128f8 c0128f8 = (C0128f8) c0188i8.C.pollFirst();
                if (c0128f8 == null) {
                    Log.w("FragmentManager", "No permissions were requested for " + this);
                    return;
                }
                H5 h5 = c0188i8.c;
                String str = c0128f8.a;
                if (h5.d(str) == null) {
                    Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str);
                    return;
                }
                return;
            case 1:
                C0259m0 c0259m0 = (C0259m0) obj;
                C0188i8 c0188i82 = this.b;
                C0128f8 c0128f82 = (C0128f8) c0188i82.C.pollFirst();
                if (c0128f82 == null) {
                    Log.w("FragmentManager", "No Activities were started for result for " + this);
                    return;
                }
                H5 h52 = c0188i82.c;
                String str2 = c0128f82.a;
                T7 d = h52.d(str2);
                if (d == null) {
                    Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str2);
                    return;
                } else {
                    d.q(c0128f82.b, c0259m0.a, c0259m0.b);
                    return;
                }
            default:
                C0259m0 c0259m02 = (C0259m0) obj;
                C0188i8 c0188i83 = this.b;
                C0128f8 c0128f83 = (C0128f8) c0188i83.C.pollFirst();
                if (c0128f83 == null) {
                    Log.w("FragmentManager", "No IntentSenders were started for " + this);
                    return;
                }
                H5 h53 = c0188i83.c;
                String str3 = c0128f83.a;
                T7 d2 = h53.d(str3);
                if (d2 == null) {
                    Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str3);
                    return;
                } else {
                    d2.q(c0128f83.b, c0259m02.a, c0259m02.b);
                    return;
                }
        }
    }
}
