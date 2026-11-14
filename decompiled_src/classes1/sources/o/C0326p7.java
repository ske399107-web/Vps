package o;

import java.util.HashMap;

/* renamed from: o.p7, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0326p7 extends C0273me {
    public final HashMap e = new HashMap();

    @Override // o.C0273me
    public final C0213je a(Object obj) {
        return (C0213je) this.e.get(obj);
    }

    @Override // o.C0273me
    public final Object b(Object obj) {
        Object b = super.b(obj);
        this.e.remove(obj);
        return b;
    }
}
