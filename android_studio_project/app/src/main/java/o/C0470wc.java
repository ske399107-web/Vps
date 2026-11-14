package o;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.bouncycastle.crypto.digests.Blake2xsDigest;
import org.bouncycastle.pqc.crypto.rainbow.GF2Field;

/* renamed from: o.wc, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0470wc {
    public static final String a(C0470wc c0470wc, byte[] bArr, int i) {
        c0470wc.getClass();
        return (bArr[i] & 255) + "." + (bArr[i + 1] & 255) + "." + (bArr[i + 2] & 255) + "." + (bArr[i + 3] & 255);
    }

    public static final void b(C0470wc c0470wc, byte[] bArr, int i, String str) {
        c0470wc.getClass();
        List I0 = AbstractC0413tf.I0(str, new char[]{'.'});
        for (int i2 = 0; i2 < 4; i2++) {
            bArr[i + i2] = (byte) Integer.parseInt((String) I0.get(i2));
        }
    }

    public static final void c(C0470wc c0470wc, byte[] bArr, int i, int i2) {
        c0470wc.getClass();
        bArr[i] = (byte) ((i2 >>> 8) & GF2Field.MASK);
        bArr[i + 1] = (byte) (i2 & GF2Field.MASK);
    }

    public static final void d(C0470wc c0470wc, byte[] bArr, int i, long j) {
        c0470wc.getClass();
        bArr[i] = (byte) ((j >>> 24) & 255);
        bArr[i + 1] = (byte) ((j >>> 16) & 255);
        bArr[i + 2] = (byte) ((j >>> 8) & 255);
        bArr[i + 3] = (byte) (j & 255);
    }

    public static final int e(C0470wc c0470wc, byte[] bArr, int i) {
        c0470wc.getClass();
        return ((bArr[i] & 255) << 8) | (bArr[i + 1] & 255);
    }

    public static int f(byte[] bArr, int i, int i2, int i3) {
        long j = i3;
        int i4 = i2 + i;
        while (true) {
            if (i + 1 >= i4) {
                break;
            }
            j += (bArr[r7] & 255) | ((bArr[i] & 255) << 8);
            i += 2;
        }
        if (i < i4) {
            j += (bArr[i] & 255) << 8;
        }
        while (j > 65535) {
            j = (65535 & j) + (j >>> 16);
        }
        return (~((int) j)) & Blake2xsDigest.UNKNOWN_DIGEST_LENGTH;
    }

    public static int g(String str) {
        List I0 = AbstractC0413tf.I0(str, new char[]{'.'});
        ArrayList arrayList = new ArrayList(I0.size());
        Iterator it = I0.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(Integer.parseInt((String) it.next())));
        }
        return (((((Number) arrayList.get(2)).intValue() & GF2Field.MASK) << 8) | (((Number) arrayList.get(3)).intValue() & GF2Field.MASK)) + (((((Number) arrayList.get(0)).intValue() & GF2Field.MASK) << 8) | (((Number) arrayList.get(1)).intValue() & GF2Field.MASK));
    }
}
