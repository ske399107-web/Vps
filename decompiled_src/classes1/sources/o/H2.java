package o;

import java.util.Arrays;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class H2 extends L1 {
    public static void i0(int i, int[] iArr, int i2, int i3, int[] iArr2) {
        AbstractC0487x9.o(iArr, "<this>");
        AbstractC0487x9.o(iArr2, "destination");
        System.arraycopy(iArr, i2, iArr2, i, i3 - i2);
    }

    public static void j0(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        AbstractC0487x9.o(bArr, "<this>");
        System.arraycopy(bArr, i2, bArr2, i, i3 - i2);
    }

    public static void k0(Object[] objArr, Object[] objArr2, int i, int i2, int i3) {
        AbstractC0487x9.o(objArr, "<this>");
        AbstractC0487x9.o(objArr2, "destination");
        System.arraycopy(objArr, i2, objArr2, i, i3 - i2);
    }

    public static /* synthetic */ void l0(int i, int i2, byte[] bArr, byte[] bArr2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        j0(bArr, bArr2, i, 0, bArr.length);
    }

    public static /* synthetic */ void m0(Object[] objArr, Object[] objArr2, int i, int i2, int i3) {
        if ((i3 & 4) != 0) {
            i = 0;
        }
        k0(objArr, objArr2, 0, i, i2);
    }

    public static byte[] n0(byte[] bArr, int i, int i2) {
        AbstractC0487x9.o(bArr, "<this>");
        L1.n(i2, bArr.length);
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i, i2);
        AbstractC0487x9.n(copyOfRange, "copyOfRange(...)");
        return copyOfRange;
    }
}
