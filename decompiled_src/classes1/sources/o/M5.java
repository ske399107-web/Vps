package o;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class M5 implements Iterator {
    public int a = -1;
    public int b;
    public int c;
    public C0467w9 d;
    public final /* synthetic */ H1 e;

    public M5(H1 h1) {
        this.e = h1;
        int l = Ha.l(0, 0, ((String) h1.b).length());
        this.b = l;
        this.c = l;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [o.u9, o.w9] */
    /* JADX WARN: Type inference failed for: r0v9, types: [o.u9, o.w9] */
    public final void a() {
        C0467w9 abstractC0427u9;
        int i = this.c;
        int i2 = 0;
        if (i < 0) {
            this.a = 0;
            this.d = null;
            return;
        }
        H1 h1 = this.e;
        String str = (String) h1.b;
        if (i > str.length()) {
            this.d = new AbstractC0427u9(this.b, AbstractC0413tf.E0(str), 1);
            this.c = -1;
        } else {
            Cc cc = (Cc) ((C0393sf) h1.c).a(str, Integer.valueOf(this.c));
            if (cc == null) {
                this.d = new AbstractC0427u9(this.b, AbstractC0413tf.E0(str), 1);
                this.c = -1;
            } else {
                int intValue = ((Number) cc.a).intValue();
                int intValue2 = ((Number) cc.b).intValue();
                int i3 = this.b;
                if (intValue <= Integer.MIN_VALUE) {
                    abstractC0427u9 = C0467w9.d;
                } else {
                    abstractC0427u9 = new AbstractC0427u9(i3, intValue - 1, 1);
                }
                this.d = abstractC0427u9;
                int i4 = intValue + intValue2;
                this.b = i4;
                if (intValue2 == 0) {
                    i2 = 1;
                }
                this.c = i4 + i2;
            }
        }
        this.a = 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.a == -1) {
            a();
        }
        if (this.a == 1) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.a == -1) {
            a();
        }
        if (this.a != 0) {
            C0467w9 c0467w9 = this.d;
            AbstractC0487x9.m(c0467w9, "null cannot be cast to non-null type kotlin.ranges.IntRange");
            this.d = null;
            this.a = -1;
            return c0467w9;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
