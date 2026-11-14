package o;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: o.n4, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class C0283n4 implements InterfaceC0392se {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0283n4(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // o.InterfaceC0392se
    public final Bundle a() {
        switch (this.a) {
            case 0:
                U0 u0 = (U0) this.b;
                Bundle bundle = new Bundle();
                C0323p4 c0323p4 = u0.j;
                c0323p4.getClass();
                HashMap hashMap = c0323p4.b;
                bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(hashMap.values()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(hashMap.keySet()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(c0323p4.d));
                bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) c0323p4.g.clone());
                return bundle;
            case 1:
                U0 u02 = (U0) this.b;
                do {
                } while (U0.l(((V7) u02.r.b).j));
                u02.s.d(L9.ON_STOP);
                return new Bundle();
            default:
                return ((C0188i8) this.b).S();
        }
    }
}
