package o;

import java.util.Iterator;

/* renamed from: o.ke, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0233ke extends AbstractC0253le implements Iterator {
    public C0213je a;
    public boolean b = true;
    public final /* synthetic */ C0273me c;

    public C0233ke(C0273me c0273me) {
        this.c = c0273me;
    }

    @Override // o.AbstractC0253le
    public final void a(C0213je c0213je) {
        boolean z;
        C0213je c0213je2 = this.a;
        if (c0213je == c0213je2) {
            C0213je c0213je3 = c0213je2.d;
            this.a = c0213je3;
            if (c0213je3 == null) {
                z = true;
            } else {
                z = false;
            }
            this.b = z;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.b) {
            if (this.c.a == null) {
                return false;
            }
            return true;
        }
        C0213je c0213je = this.a;
        if (c0213je == null || c0213je.c == null) {
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        C0213je c0213je;
        if (this.b) {
            this.b = false;
            this.a = this.c.a;
        } else {
            C0213je c0213je2 = this.a;
            if (c0213je2 != null) {
                c0213je = c0213je2.c;
            } else {
                c0213je = null;
            }
            this.a = c0213je;
        }
        return this.a;
    }
}
