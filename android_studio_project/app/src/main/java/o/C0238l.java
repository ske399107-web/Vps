package o;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: o.l, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0238l extends AbstractC0487x9 {
    public final AtomicReferenceFieldUpdater U;
    public final AtomicReferenceFieldUpdater V;
    public final AtomicReferenceFieldUpdater W;
    public final AtomicReferenceFieldUpdater X;
    public final AtomicReferenceFieldUpdater Y;

    public C0238l(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.U = atomicReferenceFieldUpdater;
        this.V = atomicReferenceFieldUpdater2;
        this.W = atomicReferenceFieldUpdater3;
        this.X = atomicReferenceFieldUpdater4;
        this.Y = atomicReferenceFieldUpdater5;
    }

    @Override // o.AbstractC0487x9
    public final void M(C0278n c0278n, C0278n c0278n2) {
        this.V.lazySet(c0278n, c0278n2);
    }

    @Override // o.AbstractC0487x9
    public final void N(C0278n c0278n, Thread thread) {
        this.U.lazySet(c0278n, thread);
    }

    @Override // o.AbstractC0487x9
    public final boolean g(AbstractFutureC0298o abstractFutureC0298o, C0218k c0218k) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        C0218k c0218k2 = C0218k.b;
        do {
            atomicReferenceFieldUpdater = this.X;
            if (atomicReferenceFieldUpdater.compareAndSet(abstractFutureC0298o, c0218k, c0218k2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(abstractFutureC0298o) == c0218k);
        return false;
    }

    @Override // o.AbstractC0487x9
    public final boolean h(AbstractFutureC0298o abstractFutureC0298o, Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.Y;
            if (atomicReferenceFieldUpdater.compareAndSet(abstractFutureC0298o, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(abstractFutureC0298o) == obj);
        return false;
    }

    @Override // o.AbstractC0487x9
    public final boolean i(AbstractFutureC0298o abstractFutureC0298o, C0278n c0278n, C0278n c0278n2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.W;
            if (atomicReferenceFieldUpdater.compareAndSet(abstractFutureC0298o, c0278n, c0278n2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(abstractFutureC0298o) == c0278n);
        return false;
    }
}
