package o;

import java.util.ListIterator;

/* renamed from: o.fc, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0132fc extends F9 implements F8 {
    public final /* synthetic */ int a;
    public final /* synthetic */ androidx.activity.b b;

    public /* synthetic */ C0132fc(androidx.activity.b bVar, int i) {
        this.a = i;
        this.b = bVar;
    }

    @Override // o.F8
    public final Object b(Object obj) {
        Object obj2;
        Object obj3;
        switch (this.a) {
            case 0:
                AbstractC0487x9.o((L2) obj, "backEvent");
                androidx.activity.b bVar = this.b;
                C0480x2 c0480x2 = bVar.b;
                ListIterator listIterator = c0480x2.listIterator(c0480x2.size());
                while (true) {
                    if (listIterator.hasPrevious()) {
                        obj2 = listIterator.previous();
                        if (((C0048b8) obj2).a) {
                        }
                    } else {
                        obj2 = null;
                    }
                }
                bVar.c = (C0048b8) obj2;
                return Ug.a;
            default:
                AbstractC0487x9.o((L2) obj, "backEvent");
                C0480x2 c0480x22 = this.b.b;
                ListIterator listIterator2 = c0480x22.listIterator(c0480x22.size());
                while (true) {
                    if (listIterator2.hasPrevious()) {
                        obj3 = listIterator2.previous();
                        if (((C0048b8) obj3).a) {
                        }
                    } else {
                        obj3 = null;
                    }
                }
                return Ug.a;
        }
    }
}
