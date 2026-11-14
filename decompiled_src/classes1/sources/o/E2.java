package o;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class E2 extends Qe implements Map {
    public C0518z2 d;
    public B2 e;

    /* renamed from: f, reason: collision with root package name */
    public D2 f84f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public E2(Qe qe) {
        super(0);
        int i = qe.c;
        b(this.c + i);
        if (this.c == 0) {
            if (i > 0) {
                H2.i0(0, qe.a, 0, i, this.a);
                H2.k0(qe.b, this.b, 0, 0, i << 1);
                this.c = i;
                return;
            }
            return;
        }
        for (int i2 = 0; i2 < i; i2++) {
            put(qe.f(i2), qe.i(i2));
        }
    }

    @Override // java.util.Map
    public final Set entrySet() {
        C0518z2 c0518z2 = this.d;
        if (c0518z2 == null) {
            C0518z2 c0518z22 = new C0518z2(this);
            this.d = c0518z22;
            return c0518z22;
        }
        return c0518z2;
    }

    public final boolean j(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!super.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final boolean k(Collection collection) {
        int i = this.c;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            super.remove(it.next());
        }
        if (i != this.c) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public final Set keySet() {
        B2 b2 = this.e;
        if (b2 == null) {
            B2 b22 = new B2(this);
            this.e = b22;
            return b22;
        }
        return b2;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        b(map.size() + this.c);
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection values() {
        D2 d2 = this.f84f;
        if (d2 == null) {
            D2 d22 = new D2(this);
            this.f84f = d22;
            return d22;
        }
        return d2;
    }
}
