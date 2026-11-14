package o;

import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: o.n0, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0279n0 extends AbstractC0487x9 {
    public final /* synthetic */ int U;

    public /* synthetic */ C0279n0(int i) {
        this.U = i;
    }

    @Override // o.AbstractC0487x9
    public final Object K(int i, Intent intent) {
        boolean z;
        switch (this.U) {
            case 0:
                W6 w6 = W6.a;
                if (i == -1 && intent != null) {
                    String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                    int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
                    if (intArrayExtra != null && stringArrayExtra != null) {
                        ArrayList arrayList = new ArrayList(intArrayExtra.length);
                        for (int i2 : intArrayExtra) {
                            if (i2 == 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            arrayList.add(Boolean.valueOf(z));
                        }
                        ArrayList arrayList2 = new ArrayList();
                        for (String str : stringArrayExtra) {
                            if (str != null) {
                                arrayList2.add(str);
                            }
                        }
                        Iterator it = arrayList2.iterator();
                        Iterator it2 = arrayList.iterator();
                        ArrayList arrayList3 = new ArrayList(Math.min(arrayList2.size(), arrayList.size()));
                        while (it.hasNext() && it2.hasNext()) {
                            arrayList3.add(new Cc(it.next(), it2.next()));
                        }
                        return Ia.E0(arrayList3);
                    }
                    return w6;
                }
                return w6;
            case 1:
                return new C0259m0(i, intent);
            default:
                return new C0259m0(i, intent);
        }
    }
}
