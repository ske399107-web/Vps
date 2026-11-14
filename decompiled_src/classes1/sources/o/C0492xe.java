package o;

import java.util.Iterator;

/* renamed from: o.xe, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0492xe implements Iterable {
    public final /* synthetic */ H1 a;

    public C0492xe(H1 h1) {
        this.a = h1;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new M5(this.a);
    }
}
