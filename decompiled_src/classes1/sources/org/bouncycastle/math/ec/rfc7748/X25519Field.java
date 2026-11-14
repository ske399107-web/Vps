package org.bouncycastle.math.ec.rfc7748;

import o.Ve;
import org.bouncycastle.math.raw.Mod;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class X25519Field {
    private static final int M24 = 16777215;
    private static final int M25 = 33554431;
    private static final int M26 = 67108863;
    private static final int[] P32 = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};
    private static final int[] ROOT_NEG_ONE = {-32595792, -7943725, 4688975, 3500415, 6194736, 33281959, -12573105, -1002827, 163343, 5703241};
    public static final int SIZE = 10;

    public static void add(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i = 0; i < 10; i++) {
            iArr3[i] = iArr[i] + iArr2[i];
        }
    }

    public static void addOne(int[] iArr) {
        iArr[0] = iArr[0] + 1;
    }

    public static void apm(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        for (int i = 0; i < 10; i++) {
            int i2 = iArr[i];
            int i3 = iArr2[i];
            iArr3[i] = i2 + i3;
            iArr4[i] = i2 - i3;
        }
    }

    public static int areEqual(int[] iArr, int[] iArr2) {
        int i = 0;
        for (int i2 = 0; i2 < 10; i2++) {
            i |= iArr[i2] ^ iArr2[i2];
        }
        return (((i >>> 1) | (i & 1)) - 1) >> 31;
    }

    public static boolean areEqualVar(int[] iArr, int[] iArr2) {
        return areEqual(iArr, iArr2) != 0;
    }

    public static void carry(int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = iArr[8];
        int i10 = iArr[9];
        int i11 = i3 + (i2 >> 26);
        int i12 = i2 & M26;
        int i13 = i5 + (i4 >> 26);
        int i14 = i4 & M26;
        int i15 = i8 + (i7 >> 26);
        int i16 = i7 & M26;
        int i17 = i10 + (i9 >> 26);
        int i18 = i9 & M26;
        int i19 = i14 + (i11 >> 25);
        int i20 = i11 & M25;
        int i21 = i6 + (i13 >> 25);
        int i22 = i13 & M25;
        int i23 = i18 + (i15 >> 25);
        int i24 = i15 & M25;
        int i25 = ((i17 >> 25) * 38) + i;
        int i26 = i17 & M25;
        int i27 = i12 + (i25 >> 26);
        int i28 = i25 & M26;
        int i29 = i16 + (i21 >> 26);
        int i30 = i21 & M26;
        int i31 = i20 + (i27 >> 26);
        int i32 = i27 & M26;
        int i33 = i22 + (i19 >> 26);
        int i34 = i19 & M26;
        int i35 = i24 + (i29 >> 26);
        int i36 = i29 & M26;
        int i37 = i26 + (i23 >> 26);
        int i38 = i23 & M26;
        iArr[0] = i28;
        iArr[1] = i32;
        iArr[2] = i31;
        iArr[3] = i34;
        iArr[4] = i33;
        iArr[5] = i30;
        iArr[6] = i36;
        iArr[7] = i35;
        iArr[8] = i38;
        iArr[9] = i37;
    }

    public static void cmov(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        for (int i4 = 0; i4 < 10; i4++) {
            int i5 = i3 + i4;
            int i6 = iArr2[i5];
            iArr2[i5] = i6 ^ ((iArr[i2 + i4] ^ i6) & i);
        }
    }

    public static void cnegate(int i, int[] iArr) {
        int i2 = 0 - i;
        for (int i3 = 0; i3 < 10; i3++) {
            iArr[i3] = (iArr[i3] ^ i2) - i2;
        }
    }

    public static void copy(int[] iArr, int i, int[] iArr2, int i2) {
        for (int i3 = 0; i3 < 10; i3++) {
            iArr2[i2 + i3] = iArr[i + i3];
        }
    }

    public static int[] create() {
        return new int[10];
    }

    public static int[] createTable(int i) {
        return new int[i * 10];
    }

    public static void cswap(int i, int[] iArr, int[] iArr2) {
        int i2 = 0 - i;
        for (int i3 = 0; i3 < 10; i3++) {
            int i4 = iArr[i3];
            int i5 = iArr2[i3];
            int i6 = (i4 ^ i5) & i2;
            iArr[i3] = i4 ^ i6;
            iArr2[i3] = i5 ^ i6;
        }
    }

    public static void decode(byte[] bArr, int i, int[] iArr) {
        decode128(bArr, i, iArr, 0);
        decode128(bArr, i + 16, iArr, 5);
        iArr[9] = iArr[9] & M24;
    }

    private static void decode128(byte[] bArr, int i, int[] iArr, int i2) {
        int decode32 = decode32(bArr, i);
        int decode322 = decode32(bArr, i + 4);
        int decode323 = decode32(bArr, i + 8);
        int decode324 = decode32(bArr, i + 12);
        iArr[i2] = decode32 & M26;
        iArr[i2 + 1] = ((decode32 >>> 26) | (decode322 << 6)) & M26;
        iArr[i2 + 2] = ((decode322 >>> 20) | (decode323 << 12)) & M25;
        iArr[i2 + 3] = M26 & ((decode324 << 19) | (decode323 >>> 13));
        iArr[i2 + 4] = decode324 >>> 7;
    }

    private static int decode32(byte[] bArr, int i) {
        return (bArr[i + 3] << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static void encode(int[] iArr, int i, byte[] bArr, int i2) {
        encode128(iArr, i, bArr, i2);
        encode128(iArr, i + 5, bArr, i2 + 16);
    }

    private static void encode128(int[] iArr, int i, byte[] bArr, int i2) {
        int i3 = iArr[i];
        int i4 = iArr[i + 1];
        int i5 = iArr[i + 2];
        int i6 = iArr[i + 3];
        int i7 = iArr[i + 4];
        encode32((i4 << 26) | i3, bArr, i2);
        encode32((i4 >>> 6) | (i5 << 20), bArr, i2 + 4);
        encode32((i5 >>> 12) | (i6 << 13), bArr, i2 + 8);
        encode32((i7 << 7) | (i6 >>> 19), bArr, i2 + 12);
    }

    private static void encode32(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 3] = (byte) (i >>> 24);
    }

    public static void inv(int[] iArr, int[] iArr2) {
        int[] create = create();
        int[] iArr3 = new int[8];
        copy(iArr, 0, create, 0);
        normalize(create);
        encode(create, iArr3, 0);
        Mod.modOddInverse(P32, iArr3, iArr3);
        decode(iArr3, 0, iArr2);
    }

    public static void invVar(int[] iArr, int[] iArr2) {
        int[] create = create();
        int[] iArr3 = new int[8];
        copy(iArr, 0, create, 0);
        normalize(create);
        encode(create, iArr3, 0);
        Mod.modOddInverseVar(P32, iArr3, iArr3);
        decode(iArr3, 0, iArr2);
    }

    public static int isOne(int[] iArr) {
        int i = iArr[0] ^ 1;
        for (int i2 = 1; i2 < 10; i2++) {
            i |= iArr[i2];
        }
        return (((i >>> 1) | (i & 1)) - 1) >> 31;
    }

    public static boolean isOneVar(int[] iArr) {
        return isOne(iArr) != 0;
    }

    public static int isZero(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 10; i2++) {
            i |= iArr[i2];
        }
        return (((i >>> 1) | (i & 1)) - 1) >> 31;
    }

    public static boolean isZeroVar(int[] iArr) {
        return isZero(iArr) != 0;
    }

    public static void mul(int[] iArr, int i, int[] iArr2) {
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = iArr[2];
        int i5 = iArr[3];
        int i6 = iArr[4];
        int i7 = iArr[5];
        int i8 = iArr[6];
        int i9 = iArr[7];
        int i10 = iArr[8];
        int i11 = iArr[9];
        long j = i;
        long j2 = i4 * j;
        int i12 = ((int) j2) & M25;
        long j3 = i6 * j;
        int i13 = ((int) j3) & M25;
        long j4 = i9 * j;
        int i14 = ((int) j4) & M25;
        long j5 = j4 >> 25;
        long j6 = i11 * j;
        int i15 = ((int) j6) & M25;
        long j7 = (i2 * j) + ((j6 >> 25) * 38);
        iArr2[0] = ((int) j7) & M26;
        long j8 = (i7 * j) + (j3 >> 25);
        iArr2[5] = ((int) j8) & M26;
        long j9 = j8 >> 26;
        long j10 = (i3 * j) + (j7 >> 26);
        iArr2[1] = ((int) j10) & M26;
        long j11 = j10 >> 26;
        long j12 = (i5 * j) + (j2 >> 25);
        iArr2[3] = ((int) j12) & M26;
        long j13 = j12 >> 26;
        long j14 = (i8 * j) + j9;
        iArr2[6] = ((int) j14) & M26;
        long j15 = j14 >> 26;
        long j16 = (i10 * j) + j5;
        iArr2[8] = M26 & ((int) j16);
        iArr2[2] = i12 + ((int) j11);
        iArr2[4] = i13 + ((int) j13);
        iArr2[7] = i14 + ((int) j15);
        iArr2[9] = i15 + ((int) (j16 >> 26));
    }

    public static void negate(int[] iArr, int[] iArr2) {
        for (int i = 0; i < 10; i++) {
            iArr2[i] = -iArr[i];
        }
    }

    public static void normalize(int[] iArr) {
        int i = (iArr[9] >>> 23) & 1;
        reduce(iArr, i);
        reduce(iArr, -i);
    }

    public static void one(int[] iArr) {
        iArr[0] = 1;
        for (int i = 1; i < 10; i++) {
            iArr[i] = 0;
        }
    }

    private static void powPm5d8(int[] iArr, int[] iArr2, int[] iArr3) {
        sqr(iArr, iArr2);
        mul(iArr, iArr2, iArr2);
        int[] create = create();
        sqr(iArr2, create);
        mul(iArr, create, create);
        sqr(create, 2, create);
        mul(iArr2, create, create);
        int[] create2 = create();
        sqr(create, 5, create2);
        mul(create, create2, create2);
        int[] create3 = create();
        sqr(create2, 5, create3);
        mul(create, create3, create3);
        sqr(create3, 10, create);
        mul(create2, create, create);
        sqr(create, 25, create2);
        mul(create, create2, create2);
        sqr(create2, 25, create3);
        mul(create, create3, create3);
        sqr(create3, 50, create);
        mul(create2, create, create);
        sqr(create, 125, create2);
        mul(create, create2, create2);
        sqr(create2, 2, create);
        mul(create, iArr, iArr3);
    }

    private static void reduce(int[] iArr, int i) {
        int i2 = M24 & iArr[9];
        long j = (((r1 >> 24) + i) * 19) + iArr[0];
        iArr[0] = ((int) j) & M26;
        long j2 = (j >> 26) + iArr[1];
        iArr[1] = ((int) j2) & M26;
        long j3 = (j2 >> 26) + iArr[2];
        iArr[2] = ((int) j3) & M25;
        long j4 = (j3 >> 25) + iArr[3];
        iArr[3] = ((int) j4) & M26;
        long j5 = (j4 >> 26) + iArr[4];
        iArr[4] = ((int) j5) & M25;
        long j6 = (j5 >> 25) + iArr[5];
        iArr[5] = ((int) j6) & M26;
        long j7 = (j6 >> 26) + iArr[6];
        iArr[6] = ((int) j7) & M26;
        long j8 = (j7 >> 26) + iArr[7];
        iArr[7] = M25 & ((int) j8);
        long j9 = (j8 >> 25) + iArr[8];
        iArr[8] = M26 & ((int) j9);
        iArr[9] = i2 + ((int) (j9 >> 26));
    }

    public static void sqr(int[] iArr, int i, int[] iArr2) {
        sqr(iArr, iArr2);
        while (true) {
            i--;
            if (i <= 0) {
                return;
            } else {
                sqr(iArr2, iArr2);
            }
        }
    }

    public static boolean sqrtRatioVar(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] create = create();
        int[] create2 = create();
        mul(iArr, iArr2, create);
        sqr(iArr2, create2);
        mul(create, create2, create);
        sqr(create2, create2);
        mul(create2, create, create2);
        int[] create3 = create();
        int[] create4 = create();
        powPm5d8(create2, create3, create4);
        mul(create4, create, create4);
        int[] create5 = create();
        sqr(create4, create5);
        mul(create5, iArr2, create5);
        sub(create5, iArr, create3);
        normalize(create3);
        if (isZeroVar(create3)) {
            copy(create4, 0, iArr3, 0);
            return true;
        }
        add(create5, iArr, create3);
        normalize(create3);
        if (!isZeroVar(create3)) {
            return false;
        }
        mul(create4, ROOT_NEG_ONE, iArr3);
        return true;
    }

    public static void sub(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i = 0; i < 10; i++) {
            iArr3[i] = iArr[i] - iArr2[i];
        }
    }

    public static void subOne(int[] iArr) {
        iArr[0] = iArr[0] - 1;
    }

    public static void zero(int[] iArr) {
        for (int i = 0; i < 10; i++) {
            iArr[i] = 0;
        }
    }

    public static void addOne(int[] iArr, int i) {
        iArr[i] = iArr[i] + 1;
    }

    public static void decode(byte[] bArr, int i, int[] iArr, int i2) {
        decode128(bArr, i, iArr, i2);
        decode128(bArr, i + 16, iArr, i2 + 5);
        int i3 = i2 + 9;
        iArr[i3] = iArr[i3] & M24;
    }

    private static void decode128(int[] iArr, int i, int[] iArr2, int i2) {
        int i3 = iArr[i];
        int i4 = iArr[i + 1];
        int i5 = iArr[i + 2];
        int i6 = iArr[i + 3];
        iArr2[i2] = i3 & M26;
        iArr2[i2 + 1] = ((i3 >>> 26) | (i4 << 6)) & M26;
        iArr2[i2 + 2] = ((i4 >>> 20) | (i5 << 12)) & M25;
        iArr2[i2 + 3] = M26 & ((i6 << 19) | (i5 >>> 13));
        iArr2[i2 + 4] = i6 >>> 7;
    }

    public static void encode(int[] iArr, byte[] bArr) {
        encode128(iArr, 0, bArr, 0);
        encode128(iArr, 5, bArr, 16);
    }

    private static void encode128(int[] iArr, int i, int[] iArr2, int i2) {
        int i3 = iArr[i];
        int i4 = iArr[i + 1];
        int i5 = iArr[i + 2];
        int i6 = iArr[i + 3];
        int i7 = iArr[i + 4];
        iArr2[i2] = (i4 << 26) | i3;
        iArr2[i2 + 1] = (i4 >>> 6) | (i5 << 20);
        iArr2[i2 + 2] = (i5 >>> 12) | (i6 << 13);
        iArr2[i2 + 3] = (i7 << 7) | (i6 >>> 19);
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
        int i = iArr[0];
        int i2 = iArr2[0];
        int i3 = iArr[1];
        int i4 = iArr2[1];
        int i5 = iArr[2];
        int i6 = iArr2[2];
        int i7 = iArr[3];
        int i8 = iArr2[3];
        int i9 = iArr[4];
        int i10 = iArr2[4];
        int i11 = iArr[5];
        int i12 = iArr2[5];
        int i13 = iArr[6];
        int i14 = iArr2[6];
        int i15 = iArr[7];
        int i16 = iArr2[7];
        int i17 = iArr[8];
        int i18 = iArr2[8];
        int i19 = iArr[9];
        int i20 = iArr2[9];
        long j = i;
        long j2 = i2;
        long j3 = j * j2;
        long j4 = i4;
        long j5 = i3;
        long j6 = (j5 * j2) + (j * j4);
        long j7 = i6;
        long j8 = i5;
        long j9 = (j8 * j2) + (j5 * j4) + (j * j7);
        long j10 = j8 * j4;
        long j11 = i8;
        long j12 = j * j11;
        long j13 = i7;
        long c = Ve.c(j13, j2, j12, (j10 + (j5 * j7)) << 1);
        long j14 = (j8 * j7) << 1;
        long j15 = i10;
        long j16 = i9;
        long c2 = Ve.c(j16, j2, (j13 * j4) + (j5 * j11) + (j * j15), j14);
        long j17 = ((j16 * j4) + ((j13 * j7) + ((j8 * j11) + (j5 * j15)))) << 1;
        long j18 = (j13 * j11) + (((j16 * j7) + (j8 * j15)) << 1);
        long j19 = (j16 * j11) + (j13 * j15);
        long j20 = (j16 * j15) << 1;
        long j21 = i11;
        long j22 = i12;
        long j23 = j21 * j22;
        long j24 = i14;
        long j25 = i13;
        long j26 = (j25 * j22) + (j21 * j24);
        long j27 = i16;
        long j28 = i15;
        long j29 = (j28 * j22) + (j25 * j24) + (j21 * j27);
        long j30 = j28 * j24;
        long j31 = i18;
        long j32 = i17;
        long c3 = Ve.c(j32, j22, j21 * j31, (j30 + (j25 * j27)) << 1);
        long j33 = (j28 * j27) << 1;
        long j34 = i20;
        long j35 = i19;
        long c4 = Ve.c(j35, j22, (j32 * j24) + (j25 * j31) + (j21 * j34), j33);
        long j36 = (j35 * j24) + (j32 * j27) + (j28 * j31) + (j25 * j34);
        long j37 = j3 - (j36 * 76);
        long j38 = j6 - (((j32 * j31) + (((j35 * j27) + (j28 * j34)) << 1)) * 38);
        long j39 = j9 - (((j31 * j35) + (j32 * j34)) * 38);
        long j40 = c - ((j35 * j34) * 76);
        long j41 = j17 - j23;
        long j42 = j18 - j26;
        long j43 = j19 - j29;
        long j44 = j20 - c3;
        int i21 = i + i11;
        int i22 = i2 + i12;
        int i23 = i3 + i13;
        int i24 = i4 + i14;
        int i25 = i5 + i15;
        int i26 = i6 + i16;
        int i27 = i7 + i17;
        int i28 = i8 + i18;
        int i29 = i9 + i19;
        int i30 = i10 + i20;
        long j45 = i21;
        long j46 = i22;
        long j47 = j45 * j46;
        long j48 = i24;
        long j49 = i23;
        long j50 = (j49 * j46) + (j45 * j48);
        long j51 = i26;
        long j52 = i25;
        long j53 = (j52 * j46) + (j49 * j48) + (j45 * j51);
        long j54 = i28;
        long j55 = i27;
        long c5 = Ve.c(j55, j46, j45 * j54, ((j52 * j48) + (j49 * j51)) << 1);
        long j56 = (j52 * j51) << 1;
        long j57 = i30;
        long j58 = (j55 * j48) + (j49 * j54) + (j45 * j57);
        long j59 = i29;
        long c6 = Ve.c(j59, j46, j58, j56);
        long j60 = ((j48 * j59) + ((j55 * j51) + ((j52 * j54) + (j49 * j57)))) << 1;
        long j61 = (j55 * j54) + (((j59 * j51) + (j52 * j57)) << 1);
        long j62 = (j54 * j59) + (j55 * j57);
        long j63 = (j59 * j57) << 1;
        long j64 = (c5 - j40) + j44;
        int i31 = ((int) j64) & M26;
        long j65 = ((c6 - c2) - c4) + (j64 >> 26);
        int i32 = ((int) j65) & M25;
        long j66 = ((((j65 >> 25) + j60) - j41) * 38) + j37;
        iArr3[0] = ((int) j66) & M26;
        long j67 = ((j61 - j42) * 38) + j38 + (j66 >> 26);
        iArr3[1] = ((int) j67) & M26;
        long j68 = ((j62 - j43) * 38) + j39 + (j67 >> 26);
        iArr3[2] = ((int) j68) & M25;
        long j69 = ((j63 - j44) * 38) + j40 + (j68 >> 25);
        iArr3[3] = ((int) j69) & M26;
        long c7 = Ve.c(c4, 38L, c2, j69 >> 26);
        iArr3[4] = ((int) c7) & M25;
        long j70 = (j47 - j37) + j41 + (c7 >> 25);
        iArr3[5] = ((int) j70) & M26;
        long j71 = (j50 - j38) + j42 + (j70 >> 26);
        iArr3[6] = ((int) j71) & M26;
        long j72 = (j53 - j39) + j43 + (j71 >> 26);
        iArr3[7] = M25 & ((int) j72);
        long j73 = (j72 >> 25) + i31;
        iArr3[8] = ((int) j73) & M26;
        iArr3[9] = i32 + ((int) (j73 >> 26));
    }

    public static void sqr(int[] iArr, int[] iArr2) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = iArr[8];
        int i10 = iArr[9];
        long j = i;
        long j2 = j * j;
        long j3 = i2 * 2;
        long j4 = j * j3;
        long j5 = i3 * 2;
        long j6 = i2;
        long j7 = (j6 * j6) + (j * j5);
        long j8 = i4 * 2;
        long j9 = (j * j8) + (j3 * j5);
        long j10 = i5 * 2;
        long j11 = (j6 * j8) + (j * j10) + (i3 * j5);
        long j12 = (j8 * j5) + (j3 * j10);
        long j13 = i4;
        long j14 = (j13 * j13) + (j5 * j10);
        long j15 = j13 * j10;
        long j16 = i5 * j10;
        long j17 = i6;
        long j18 = j17 * j17;
        long j19 = i7 * 2;
        long j20 = j17 * j19;
        long j21 = i8 * 2;
        long j22 = i7;
        long j23 = (j22 * j22) + (j17 * j21);
        long j24 = i9 * 2;
        long j25 = (j17 * j24) + (j19 * j21);
        long j26 = i10 * 2;
        long j27 = (j22 * j24) + (j17 * j26) + (i8 * j21);
        long j28 = i9;
        long j29 = j2 - (((j24 * j21) + (j19 * j26)) * 38);
        long j30 = j4 - (((j28 * j28) + (j21 * j26)) * 38);
        long j31 = j7 - ((j28 * j26) * 38);
        long j32 = j9 - ((i10 * j26) * 38);
        long j33 = j12 - j18;
        long j34 = j14 - j20;
        long j35 = j15 - j23;
        long j36 = j16 - j25;
        int i11 = i2 + i7;
        int i12 = i3 + i8;
        int i13 = i4 + i9;
        int i14 = i5 + i10;
        long j37 = i + i6;
        long j38 = i11 * 2;
        long j39 = j37 * j38;
        long j40 = i12 * 2;
        long j41 = i11;
        long j42 = (j41 * j41) + (j37 * j40);
        long j43 = i13 * 2;
        long j44 = (j37 * j43) + (j38 * j40);
        long j45 = i14 * 2;
        long j46 = (j41 * j43) + (j37 * j45) + (i12 * j40);
        long j47 = (j43 * j40) + (j38 * j45);
        long j48 = i13;
        long j49 = (j48 * j48) + (j40 * j45);
        long j50 = j48 * j45;
        long j51 = i14 * j45;
        long j52 = (j44 - j32) + j36;
        int i15 = ((int) j52) & M26;
        long j53 = ((j46 - j11) - j27) + (j52 >> 26);
        int i16 = ((int) j53) & M25;
        long j54 = ((((j53 >> 25) + j47) - j33) * 38) + j29;
        iArr2[0] = ((int) j54) & M26;
        long j55 = ((j49 - j34) * 38) + j30 + (j54 >> 26);
        iArr2[1] = ((int) j55) & M26;
        long j56 = ((j50 - j35) * 38) + j31 + (j55 >> 26);
        iArr2[2] = ((int) j56) & M25;
        long j57 = ((j51 - j36) * 38) + j32 + (j56 >> 25);
        iArr2[3] = ((int) j57) & M26;
        long c = Ve.c(j27, 38L, j11, j57 >> 26);
        iArr2[4] = ((int) c) & M25;
        long j58 = ((j37 * j37) - j29) + j33 + (c >> 25);
        iArr2[5] = ((int) j58) & M26;
        long j59 = (j39 - j30) + j34 + (j58 >> 26);
        iArr2[6] = ((int) j59) & M26;
        long j60 = (j42 - j31) + j35 + (j59 >> 26);
        iArr2[7] = M25 & ((int) j60);
        long j61 = (j60 >> 25) + i15;
        iArr2[8] = ((int) j61) & M26;
        iArr2[9] = i16 + ((int) (j61 >> 26));
    }

    public static void decode(byte[] bArr, int[] iArr) {
        decode128(bArr, 0, iArr, 0);
        decode128(bArr, 16, iArr, 5);
        iArr[9] = iArr[9] & M24;
    }

    public static void encode(int[] iArr, byte[] bArr, int i) {
        encode128(iArr, 0, bArr, i);
        encode128(iArr, 5, bArr, i + 16);
    }

    public static void decode(int[] iArr, int i, int[] iArr2) {
        decode128(iArr, i, iArr2, 0);
        decode128(iArr, i + 4, iArr2, 5);
        iArr2[9] = iArr2[9] & M24;
    }

    public static void encode(int[] iArr, int[] iArr2, int i) {
        encode128(iArr, 0, iArr2, i);
        encode128(iArr, 5, iArr2, i + 4);
    }
}
