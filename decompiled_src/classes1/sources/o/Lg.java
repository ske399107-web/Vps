package o;

import java.nio.ByteBuffer;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Lg {
    public static final ThreadLocal d = new ThreadLocal();
    public final int a;
    public final H5 b;
    public volatile int c = 0;

    public Lg(H5 h5, int i) {
        this.b = h5;
        this.a = i;
    }

    public final int a(int i) {
        Eb c = c();
        int a = c.a(16);
        if (a != 0) {
            ByteBuffer byteBuffer = (ByteBuffer) c.d;
            int i2 = a + c.a;
            return byteBuffer.getInt((i * 4) + byteBuffer.getInt(i2) + i2 + 4);
        }
        return 0;
    }

    public final int b() {
        Eb c = c();
        int a = c.a(16);
        if (a != 0) {
            int i = a + c.a;
            return ((ByteBuffer) c.d).getInt(((ByteBuffer) c.d).getInt(i) + i);
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [o.Ef, java.lang.Object] */
    public final Eb c() {
        ThreadLocal threadLocal = d;
        Eb eb = (Eb) threadLocal.get();
        Eb eb2 = eb;
        if (eb == null) {
            ?? ef = new Ef();
            threadLocal.set(ef);
            eb2 = ef;
        }
        Fb fb = (Fb) this.b.a;
        int a = fb.a(6);
        if (a != 0) {
            int i = a + fb.a;
            int i2 = (this.a * 4) + ((ByteBuffer) fb.d).getInt(i) + i + 4;
            int i3 = ((ByteBuffer) fb.d).getInt(i2) + i2;
            ByteBuffer byteBuffer = (ByteBuffer) fb.d;
            eb2.d = byteBuffer;
            if (byteBuffer != null) {
                eb2.a = i3;
                int i4 = i3 - byteBuffer.getInt(i3);
                eb2.b = i4;
                eb2.c = ((ByteBuffer) eb2.d).getShort(i4);
            } else {
                eb2.a = 0;
                eb2.b = 0;
                eb2.c = 0;
            }
        }
        return eb2;
    }

    public final String toString() {
        int i;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        Eb c = c();
        int a = c.a(4);
        if (a != 0) {
            i = ((ByteBuffer) c.d).getInt(a + c.a);
        } else {
            i = 0;
        }
        sb.append(Integer.toHexString(i));
        sb.append(", codepoints:");
        int b = b();
        for (int i2 = 0; i2 < b; i2++) {
            sb.append(Integer.toHexString(a(i2)));
            sb.append(" ");
        }
        return sb.toString();
    }
}
