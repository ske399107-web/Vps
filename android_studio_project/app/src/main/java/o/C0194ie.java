package o;

import java.util.Iterator;

/* renamed from: o.ie, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0194ie extends AbstractC0253le implements Iterator {
    public C0213je a;
    public C0213je b;
    public final /* synthetic */ int c;

    public C0194ie(C0213je c0213je, C0213je c0213je2, int i) {
        this.c = i;
        this.a = c0213je2;
        this.b = c0213je;
    }

    @Override // o.AbstractC0253le
    public final void a(C0213je c0213je) {
        C0213je c0213je2;
        C0213je c0213je3 = null;
        if (this.a == c0213je && c0213je == this.b) {
            this.b = null;
            this.a = null;
        }
        C0213je c0213je4 = this.a;
        if (c0213je4 == c0213je) {
            switch (this.c) {
                case 0:
                    c0213je2 = c0213je4.d;
                    break;
                default:
                    c0213je2 = c0213je4.c;
                    break;
            }
            this.a = c0213je2;
        }
        C0213je c0213je5 = this.b;
        if (c0213je5 == c0213je) {
            C0213je c0213je6 = this.a;
            if (c0213je5 != c0213je6 && c0213je6 != null) {
                c0213je3 = b(c0213je5);
            }
            this.b = c0213je3;
        }
    }

    public final C0213je b(C0213je c0213je) {
        switch (this.c) {
            case 0:
                return c0213je.c;
            default:
                return c0213je.d;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.b != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        C0213je c0213je;
        C0213je c0213je2 = this.b;
        C0213je c0213je3 = this.a;
        if (c0213je2 != c0213je3 && c0213je3 != null) {
            c0213je = b(c0213je2);
        } else {
            c0213je = null;
        }
        this.b = c0213je;
        return c0213je2;
    }
}
