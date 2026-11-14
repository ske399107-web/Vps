package o;

import java.util.AbstractSet;
import java.util.Iterator;

/* renamed from: o.z2, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0518z2 extends AbstractSet {
    public final /* synthetic */ E2 a;

    public C0518z2(E2 e2) {
        this.a = e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new C2(this.a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.a.c;
    }
}
