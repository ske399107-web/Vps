package o;

import java.util.ArrayList;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class E7 implements O4 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ E7(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // o.O4
    public final void a(Object obj) {
        switch (this.a) {
            case 0:
                F7 f7 = (F7) obj;
                if (f7 == null) {
                    f7 = new F7(-3);
                }
                ((H1) this.b).H(f7);
                return;
            default:
                F7 f72 = (F7) obj;
                synchronized (G7.c) {
                    try {
                        Qe qe = G7.d;
                        ArrayList arrayList = (ArrayList) qe.get((String) this.b);
                        if (arrayList != null) {
                            qe.remove((String) this.b);
                            for (int i = 0; i < arrayList.size(); i++) {
                                ((O4) arrayList.get(i)).a(f72);
                            }
                            return;
                        }
                        return;
                    } finally {
                    }
                }
        }
    }
}
