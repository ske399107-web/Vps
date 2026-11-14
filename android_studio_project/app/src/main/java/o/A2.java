package o;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class A2 implements Iterator {
    public int a;
    public int b;
    public boolean c;
    public final /* synthetic */ int d;
    public final /* synthetic */ Object e;

    public A2(int i) {
        this.a = i;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.b < this.a) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object f2;
        if (hasNext()) {
            int i = this.b;
            switch (this.d) {
                case 0:
                    f2 = ((E2) this.e).f(i);
                    break;
                case 1:
                    f2 = ((E2) this.e).i(i);
                    break;
                default:
                    f2 = ((G2) this.e).b[i];
                    break;
            }
            this.b++;
            this.c = true;
            return f2;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (this.c) {
            int i = this.b - 1;
            this.b = i;
            switch (this.d) {
                case 0:
                    ((E2) this.e).g(i);
                    break;
                case 1:
                    ((E2) this.e).g(i);
                    break;
                default:
                    ((G2) this.e).a(i);
                    break;
            }
            this.a--;
            this.c = false;
            return;
        }
        throw new IllegalStateException("Call next() before removing an element.");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public A2(G2 g2) {
        this(g2.c);
        this.d = 2;
        this.e = g2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public A2(E2 e2, int i) {
        this(e2.c);
        this.d = i;
        switch (i) {
            case 1:
                this.e = e2;
                this(e2.c);
                return;
            default:
                this.e = e2;
                return;
        }
    }
}
