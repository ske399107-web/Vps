package o;

import java.util.Random;

/* renamed from: o.n7, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0286n7 extends AbstractC0159h {
    public final C0266m7 c = new ThreadLocal();

    @Override // o.AbstractC0159h
    public final Random c() {
        Object obj = this.c.get();
        AbstractC0487x9.n(obj, "get(...)");
        return (Random) obj;
    }
}
