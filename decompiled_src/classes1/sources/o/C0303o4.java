package o;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: o.o4, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class C0303o4 implements InterfaceC0291nc {
    public final /* synthetic */ int a;
    public final /* synthetic */ U0 b;

    public /* synthetic */ C0303o4(U0 u0, int i) {
        this.a = i;
        this.b = u0;
    }

    @Override // o.InterfaceC0291nc
    public final void a() {
        switch (this.a) {
            case 0:
                U0 u0 = this.b;
                Bundle c = ((C0041b1) u0.e.c).c("android:support:activity-result");
                if (c != null) {
                    C0323p4 c0323p4 = u0.j;
                    c0323p4.getClass();
                    ArrayList<Integer> integerArrayList = c.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
                    ArrayList<String> stringArrayList = c.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
                    if (stringArrayList != null && integerArrayList != null) {
                        c0323p4.d = c.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                        Bundle bundle = c.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
                        Bundle bundle2 = c0323p4.g;
                        bundle2.putAll(bundle);
                        for (int i = 0; i < stringArrayList.size(); i++) {
                            String str = stringArrayList.get(i);
                            HashMap hashMap = c0323p4.b;
                            boolean containsKey = hashMap.containsKey(str);
                            HashMap hashMap2 = c0323p4.a;
                            if (containsKey) {
                                Integer num = (Integer) hashMap.remove(str);
                                if (!bundle2.containsKey(str)) {
                                    hashMap2.remove(num);
                                }
                            }
                            Integer num2 = integerArrayList.get(i);
                            num2.intValue();
                            String str2 = stringArrayList.get(i);
                            hashMap2.put(num2, str2);
                            hashMap.put(str2, num2);
                        }
                        return;
                    }
                    return;
                }
                return;
            default:
                V7 v7 = (V7) this.b.r.b;
                v7.j.b(v7, v7, null);
                return;
        }
    }
}
