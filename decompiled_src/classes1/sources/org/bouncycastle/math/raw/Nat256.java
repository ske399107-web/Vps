package org.bouncycastle.math.raw;

import java.math.BigInteger;
import o.Ve;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.rainbow.GF2Field;
import org.bouncycastle.util.Pack;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Nat256 {
    private static final long M = 4294967295L;

    public static int add(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = (iArr[i] & 4294967295L) + (iArr2[i2] & 4294967295L);
        iArr3[i3] = (int) j;
        long j2 = (iArr[i + 1] & 4294967295L) + (iArr2[i2 + 1] & 4294967295L) + (j >>> 32);
        iArr3[i3 + 1] = (int) j2;
        long j3 = (iArr[i + 2] & 4294967295L) + (iArr2[i2 + 2] & 4294967295L) + (j2 >>> 32);
        iArr3[i3 + 2] = (int) j3;
        long j4 = (iArr[i + 3] & 4294967295L) + (iArr2[i2 + 3] & 4294967295L) + (j3 >>> 32);
        iArr3[i3 + 3] = (int) j4;
        long j5 = (iArr[i + 4] & 4294967295L) + (iArr2[i2 + 4] & 4294967295L) + (j4 >>> 32);
        iArr3[i3 + 4] = (int) j5;
        long j6 = (iArr[i + 5] & 4294967295L) + (iArr2[i2 + 5] & 4294967295L) + (j5 >>> 32);
        iArr3[i3 + 5] = (int) j6;
        long j7 = (iArr[i + 6] & 4294967295L) + (iArr2[i2 + 6] & 4294967295L) + (j6 >>> 32);
        iArr3[i3 + 6] = (int) j7;
        long j8 = (iArr[i + 7] & 4294967295L) + (iArr2[i2 + 7] & 4294967295L) + (j7 >>> 32);
        iArr3[i3 + 7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int addBothTo(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = (iArr[i] & 4294967295L) + (iArr2[i2] & 4294967295L) + (iArr3[i3] & 4294967295L);
        iArr3[i3] = (int) j;
        long j2 = (iArr[i + 1] & 4294967295L) + (iArr2[i2 + 1] & 4294967295L) + (iArr3[r7] & 4294967295L) + (j >>> 32);
        iArr3[i3 + 1] = (int) j2;
        long j3 = (iArr[i + 2] & 4294967295L) + (iArr2[i2 + 2] & 4294967295L) + (iArr3[r7] & 4294967295L) + (j2 >>> 32);
        iArr3[i3 + 2] = (int) j3;
        long j4 = (iArr[i + 3] & 4294967295L) + (iArr2[i2 + 3] & 4294967295L) + (iArr3[r7] & 4294967295L) + (j3 >>> 32);
        iArr3[i3 + 3] = (int) j4;
        long j5 = (iArr[i + 4] & 4294967295L) + (iArr2[i2 + 4] & 4294967295L) + (iArr3[r7] & 4294967295L) + (j4 >>> 32);
        iArr3[i3 + 4] = (int) j5;
        long j6 = (iArr[i + 5] & 4294967295L) + (iArr2[i2 + 5] & 4294967295L) + (iArr3[r7] & 4294967295L) + (j5 >>> 32);
        iArr3[i3 + 5] = (int) j6;
        long j7 = (iArr[i + 6] & 4294967295L) + (iArr2[i2 + 6] & 4294967295L) + (iArr3[r7] & 4294967295L) + (j6 >>> 32);
        iArr3[i3 + 6] = (int) j7;
        long j8 = (iArr[i + 7] & 4294967295L) + (iArr2[i2 + 7] & 4294967295L) + (iArr3[r15] & 4294967295L) + (j7 >>> 32);
        iArr3[i3 + 7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int addTo(int[] iArr, int i, int[] iArr2, int i2, int i3) {
        long j = (iArr[i] & 4294967295L) + (iArr2[i2] & 4294967295L) + (i3 & 4294967295L);
        iArr2[i2] = (int) j;
        long j2 = (iArr[i + 1] & 4294967295L) + (iArr2[r6] & 4294967295L) + (j >>> 32);
        iArr2[i2 + 1] = (int) j2;
        long j3 = (iArr[i + 2] & 4294967295L) + (iArr2[r6] & 4294967295L) + (j2 >>> 32);
        iArr2[i2 + 2] = (int) j3;
        long j4 = (iArr[i + 3] & 4294967295L) + (iArr2[r6] & 4294967295L) + (j3 >>> 32);
        iArr2[i2 + 3] = (int) j4;
        long j5 = (iArr[i + 4] & 4294967295L) + (iArr2[r6] & 4294967295L) + (j4 >>> 32);
        iArr2[i2 + 4] = (int) j5;
        long j6 = (iArr[i + 5] & 4294967295L) + (iArr2[r6] & 4294967295L) + (j5 >>> 32);
        iArr2[i2 + 5] = (int) j6;
        long j7 = (iArr[i + 6] & 4294967295L) + (iArr2[r6] & 4294967295L) + (j6 >>> 32);
        iArr2[i2 + 6] = (int) j7;
        long j8 = (iArr[i + 7] & 4294967295L) + (4294967295L & iArr2[r12]) + (j7 >>> 32);
        iArr2[i2 + 7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int addToEachOther(int[] iArr, int i, int[] iArr2, int i2) {
        long j = (iArr[i] & 4294967295L) + (iArr2[i2] & 4294967295L);
        int i3 = (int) j;
        iArr[i] = i3;
        iArr2[i2] = i3;
        long j2 = (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L) + (j >>> 32);
        int i4 = (int) j2;
        iArr[i + 1] = i4;
        iArr2[i2 + 1] = i4;
        long j3 = (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L) + (j2 >>> 32);
        int i5 = (int) j3;
        iArr[i + 2] = i5;
        iArr2[i2 + 2] = i5;
        long j4 = (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L) + (j3 >>> 32);
        int i6 = (int) j4;
        iArr[i + 3] = i6;
        iArr2[i2 + 3] = i6;
        long j5 = (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L) + (j4 >>> 32);
        int i7 = (int) j5;
        iArr[i + 4] = i7;
        iArr2[i2 + 4] = i7;
        long j6 = (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L) + (j5 >>> 32);
        int i8 = (int) j6;
        iArr[i + 5] = i8;
        iArr2[i2 + 5] = i8;
        long j7 = (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L) + (j6 >>> 32);
        int i9 = (int) j7;
        iArr[i + 6] = i9;
        iArr2[i2 + 6] = i9;
        long j8 = (iArr[r12] & 4294967295L) + (4294967295L & iArr2[r14]) + (j7 >>> 32);
        int i10 = (int) j8;
        iArr[i + 7] = i10;
        iArr2[i2 + 7] = i10;
        return (int) (j8 >>> 32);
    }

    public static void copy(int[] iArr, int i, int[] iArr2, int i2) {
        iArr2[i2] = iArr[i];
        iArr2[i2 + 1] = iArr[i + 1];
        iArr2[i2 + 2] = iArr[i + 2];
        iArr2[i2 + 3] = iArr[i + 3];
        iArr2[i2 + 4] = iArr[i + 4];
        iArr2[i2 + 5] = iArr[i + 5];
        iArr2[i2 + 6] = iArr[i + 6];
        iArr2[i2 + 7] = iArr[i + 7];
    }

    public static void copy64(long[] jArr, int i, long[] jArr2, int i2) {
        jArr2[i2] = jArr[i];
        jArr2[i2 + 1] = jArr[i + 1];
        jArr2[i2 + 2] = jArr[i + 2];
        jArr2[i2 + 3] = jArr[i + 3];
    }

    public static int[] create() {
        return new int[8];
    }

    public static long[] create64() {
        return new long[4];
    }

    public static int[] createExt() {
        return new int[16];
    }

    public static long[] createExt64() {
        return new long[8];
    }

    public static boolean diff(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        boolean gte = gte(iArr, i, iArr2, i2);
        if (gte) {
            sub(iArr, i, iArr2, i2, iArr3, i3);
        } else {
            sub(iArr2, i2, iArr, i, iArr3, i3);
        }
        return gte;
    }

    public static boolean eq(int[] iArr, int[] iArr2) {
        for (int i = 7; i >= 0; i--) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static boolean eq64(long[] jArr, long[] jArr2) {
        for (int i = 3; i >= 0; i--) {
            if (jArr[i] != jArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 256) {
            throw new IllegalArgumentException();
        }
        int[] create = create();
        for (int i = 0; i < 8; i++) {
            create[i] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return create;
    }

    public static long[] fromBigInteger64(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 256) {
            throw new IllegalArgumentException();
        }
        long[] create64 = create64();
        for (int i = 0; i < 4; i++) {
            create64[i] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
        }
        return create64;
    }

    public static int getBit(int[] iArr, int i) {
        int i2;
        if (i == 0) {
            i2 = iArr[0];
        } else {
            if ((i & GF2Field.MASK) != i) {
                return 0;
            }
            i2 = iArr[i >>> 5] >>> (i & 31);
        }
        return i2 & 1;
    }

    public static boolean gte(int[] iArr, int i, int[] iArr2, int i2) {
        for (int i3 = 7; i3 >= 0; i3--) {
            int i4 = iArr[i + i3] ^ PKIFailureInfo.systemUnavail;
            int i5 = Integer.MIN_VALUE ^ iArr2[i2 + i3];
            if (i4 < i5) {
                return false;
            }
            if (i4 > i5) {
                return true;
            }
        }
        return true;
    }

    public static boolean isOne(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 8; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isOne64(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 4; i++) {
            if (jArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int[] iArr) {
        for (int i = 0; i < 8; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero64(long[] jArr) {
        for (int i = 0; i < 4; i++) {
            if (jArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void mul(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = iArr2[i2] & 4294967295L;
        long j2 = iArr2[i2 + 1] & 4294967295L;
        long j3 = iArr2[i2 + 2] & 4294967295L;
        long j4 = iArr2[i2 + 3] & 4294967295L;
        long j5 = iArr2[i2 + 4] & 4294967295L;
        long j6 = iArr2[i2 + 5] & 4294967295L;
        long j7 = iArr2[i2 + 6] & 4294967295L;
        long j8 = iArr[i] & 4294967295L;
        long j9 = j8 * j;
        iArr3[i3] = (int) j9;
        long j10 = (j8 * j2) + (j9 >>> 32);
        iArr3[i3 + 1] = (int) j10;
        long j11 = (j8 * j3) + (j10 >>> 32);
        iArr3[i3 + 2] = (int) j11;
        long j12 = (j8 * j4) + (j11 >>> 32);
        iArr3[i3 + 3] = (int) j12;
        long j13 = (j8 * j5) + (j12 >>> 32);
        iArr3[i3 + 4] = (int) j13;
        long j14 = (j8 * j6) + (j13 >>> 32);
        iArr3[i3 + 5] = (int) j14;
        long j15 = (j8 * j7) + (j14 >>> 32);
        iArr3[i3 + 6] = (int) j15;
        long j16 = j15 >>> 32;
        long j17 = iArr2[i2 + 7] & 4294967295L;
        long j18 = (j8 * j17) + j16;
        iArr3[i3 + 7] = (int) j18;
        iArr3[i3 + 8] = (int) (j18 >>> 32);
        int i4 = 1;
        int i5 = i3;
        while (i4 < 8) {
            int i6 = i5 + 1;
            long j19 = iArr[i + i4] & 4294967295L;
            long j20 = j17;
            int i7 = i4;
            long j21 = (j19 * j) + (iArr3[i6] & 4294967295L);
            iArr3[i6] = (int) j21;
            long j22 = (j19 * j2) + (iArr3[r16] & 4294967295L) + (j21 >>> 32);
            iArr3[i5 + 2] = (int) j22;
            long j23 = j3;
            long j24 = (j19 * j3) + (iArr3[r16] & 4294967295L) + (j22 >>> 32);
            iArr3[i5 + 3] = (int) j24;
            int i8 = i5;
            long j25 = (j19 * j4) + (iArr3[r6] & 4294967295L) + (j24 >>> 32);
            iArr3[i5 + 4] = (int) j25;
            long j26 = (j19 * j5) + (iArr3[r5] & 4294967295L) + (j25 >>> 32);
            iArr3[i8 + 5] = (int) j26;
            long j27 = (j19 * j6) + (iArr3[r5] & 4294967295L) + (j26 >>> 32);
            iArr3[i8 + 6] = (int) j27;
            long j28 = (j19 * j7) + (iArr3[r5] & 4294967295L) + (j27 >>> 32);
            iArr3[i8 + 7] = (int) j28;
            long j29 = j28 >>> 32;
            long j30 = (j19 * j20) + (iArr3[r3] & 4294967295L) + j29;
            iArr3[i8 + 8] = (int) j30;
            iArr3[i8 + 9] = (int) (j30 >>> 32);
            i4 = i7 + 1;
            i5 = i6;
            j3 = j23;
            j17 = j20;
        }
    }

    public static void mul128(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = iArr[0] & 4294967295L;
        long j2 = iArr[1] & 4294967295L;
        long j3 = iArr[2] & 4294967295L;
        long j4 = iArr[3] & 4294967295L;
        long j5 = iArr[4] & 4294967295L;
        long j6 = iArr[5] & 4294967295L;
        long j7 = iArr[6] & 4294967295L;
        long j8 = iArr[7] & 4294967295L;
        long j9 = iArr2[0] & 4294967295L;
        long j10 = j9 * j;
        iArr3[0] = (int) j10;
        char c = ' ';
        long j11 = (j9 * j2) + (j10 >>> 32);
        iArr3[1] = (int) j11;
        long j12 = (j9 * j3) + (j11 >>> 32);
        iArr3[2] = (int) j12;
        long j13 = (j9 * j4) + (j12 >>> 32);
        iArr3[3] = (int) j13;
        long j14 = (j9 * j5) + (j13 >>> 32);
        iArr3[4] = (int) j14;
        long j15 = (j9 * j6) + (j14 >>> 32);
        iArr3[5] = (int) j15;
        long j16 = (j9 * j7) + (j15 >>> 32);
        iArr3[6] = (int) j16;
        long j17 = (j9 * j8) + (j16 >>> 32);
        iArr3[7] = (int) j17;
        iArr3[8] = (int) (j17 >>> 32);
        int i = 1;
        while (i < 4) {
            long j18 = iArr2[i] & 4294967295L;
            long j19 = (j18 * j) + (iArr3[i] & 4294967295L);
            long j20 = j;
            iArr3[i] = (int) j19;
            int i2 = i + 1;
            long j21 = j2;
            long j22 = (j18 * j2) + (iArr3[i2] & 4294967295L) + (j19 >>> c);
            iArr3[i2] = (int) j22;
            long j23 = (j18 * j3) + (iArr3[r6] & 4294967295L) + (j22 >>> 32);
            iArr3[i + 2] = (int) j23;
            long j24 = (j18 * j4) + (iArr3[r6] & 4294967295L) + (j23 >>> 32);
            iArr3[i + 3] = (int) j24;
            long j25 = (j18 * j5) + (iArr3[r6] & 4294967295L) + (j24 >>> 32);
            iArr3[i + 4] = (int) j25;
            long j26 = (j18 * j6) + (iArr3[r6] & 4294967295L) + (j25 >>> 32);
            iArr3[i + 5] = (int) j26;
            long j27 = (j18 * j7) + (iArr3[r6] & 4294967295L) + (j26 >>> 32);
            iArr3[i + 6] = (int) j27;
            c = ' ';
            long j28 = j27 >>> 32;
            long j29 = (j18 * j8) + (iArr3[r3] & 4294967295L) + j28;
            iArr3[i + 7] = (int) j29;
            iArr3[i + 8] = (int) (j29 >>> 32);
            j = j20;
            i = i2;
            j2 = j21;
        }
    }

    public static long mul33Add(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j = i & 4294967295L;
        long j2 = iArr[i2] & 4294967295L;
        long j3 = (j * j2) + (iArr2[i3] & 4294967295L);
        iArr3[i4] = (int) j3;
        long j4 = iArr[i2 + 1] & 4294967295L;
        long j5 = (j * j4) + j2 + (iArr2[i3 + 1] & 4294967295L) + (j3 >>> 32);
        iArr3[i4 + 1] = (int) j5;
        long j6 = iArr[i2 + 2] & 4294967295L;
        long j7 = (j * j6) + j4 + (iArr2[i3 + 2] & 4294967295L) + (j5 >>> 32);
        iArr3[i4 + 2] = (int) j7;
        long j8 = iArr[i2 + 3] & 4294967295L;
        long j9 = (j * j8) + j6 + (iArr2[i3 + 3] & 4294967295L) + (j7 >>> 32);
        iArr3[i4 + 3] = (int) j9;
        long j10 = iArr[i2 + 4] & 4294967295L;
        long j11 = (j * j10) + j8 + (iArr2[i3 + 4] & 4294967295L) + (j9 >>> 32);
        iArr3[i4 + 4] = (int) j11;
        long j12 = iArr[i2 + 5] & 4294967295L;
        long j13 = (j * j12) + j10 + (iArr2[i3 + 5] & 4294967295L) + (j11 >>> 32);
        iArr3[i4 + 5] = (int) j13;
        long j14 = iArr[i2 + 6] & 4294967295L;
        long j15 = (j * j14) + j12 + (iArr2[i3 + 6] & 4294967295L) + (j13 >>> 32);
        iArr3[i4 + 6] = (int) j15;
        long j16 = iArr[i2 + 7] & 4294967295L;
        long j17 = (j * j16) + j14 + (4294967295L & iArr2[i3 + 7]) + (j15 >>> 32);
        iArr3[i4 + 7] = (int) j17;
        return (j17 >>> 32) + j16;
    }

    public static int mul33DWordAdd(int i, long j, int[] iArr, int i2) {
        long j2 = i & 4294967295L;
        long j3 = j & 4294967295L;
        long j4 = (j2 * j3) + (iArr[i2] & 4294967295L);
        iArr[i2] = (int) j4;
        long j5 = j >>> 32;
        long j6 = (j2 * j5) + j3;
        long j7 = j6 + (iArr[r4] & 4294967295L) + (j4 >>> 32);
        iArr[i2 + 1] = (int) j7;
        long j8 = j5 + (iArr[r4] & 4294967295L) + (j7 >>> 32);
        iArr[i2 + 2] = (int) j8;
        long j9 = (j8 >>> 32) + (iArr[r0] & 4294967295L);
        iArr[i2 + 3] = (int) j9;
        if ((j9 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(8, iArr, i2, 4);
    }

    public static int mul33WordAdd(int i, int i2, int[] iArr, int i3) {
        long j = i & 4294967295L;
        long j2 = i2 & 4294967295L;
        long j3 = (j * j2) + (iArr[i3] & 4294967295L);
        iArr[i3] = (int) j3;
        long j4 = j2 + (iArr[r5] & 4294967295L) + (j3 >>> 32);
        iArr[i3 + 1] = (int) j4;
        long j5 = (j4 >>> 32) + (iArr[r0] & 4294967295L);
        iArr[i3 + 2] = (int) j5;
        if ((j5 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(8, iArr, i3, 3);
    }

    public static int mulAddTo(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = iArr2[i2] & 4294967295L;
        long j2 = iArr2[i2 + 1] & 4294967295L;
        long j3 = iArr2[i2 + 2] & 4294967295L;
        long j4 = iArr2[i2 + 3] & 4294967295L;
        long j5 = iArr2[i2 + 4] & 4294967295L;
        long j6 = iArr2[i2 + 5] & 4294967295L;
        long j7 = iArr2[i2 + 6] & 4294967295L;
        long j8 = iArr2[i2 + 7] & 4294967295L;
        int i4 = 0;
        long j9 = 0;
        int i5 = i3;
        while (i4 < 8) {
            int i6 = i4;
            long j10 = iArr[i + i4] & 4294967295L;
            long j11 = j;
            long j12 = (j10 * j) + (iArr3[i5] & 4294967295L);
            long j13 = j8;
            iArr3[i5] = (int) j12;
            int i7 = i5 + 1;
            long j14 = (j10 * j2) + (iArr3[i7] & 4294967295L) + (j12 >>> 32);
            iArr3[i7] = (int) j14;
            long j15 = (j10 * j3) + (iArr3[r5] & 4294967295L) + (j14 >>> 32);
            iArr3[i5 + 2] = (int) j15;
            long j16 = (j10 * j4) + (iArr3[r5] & 4294967295L) + (j15 >>> 32);
            iArr3[i5 + 3] = (int) j16;
            long j17 = (j10 * j5) + (iArr3[r5] & 4294967295L) + (j16 >>> 32);
            iArr3[i5 + 4] = (int) j17;
            long j18 = (j10 * j6) + (iArr3[r5] & 4294967295L) + (j17 >>> 32);
            iArr3[i5 + 5] = (int) j18;
            long j19 = (j10 * j7) + (iArr3[r5] & 4294967295L) + (j18 >>> 32);
            iArr3[i5 + 6] = (int) j19;
            long j20 = (j10 * j13) + (iArr3[r5] & 4294967295L) + (j19 >>> 32);
            iArr3[i5 + 7] = (int) j20;
            long j21 = (j20 >>> 32) + (iArr3[r16] & 4294967295L) + j9;
            iArr3[i5 + 8] = (int) j21;
            j9 = j21 >>> 32;
            i4 = i6 + 1;
            i5 = i7;
            j8 = j13;
            j = j11;
            j2 = j2;
        }
        return (int) j9;
    }

    public static int mulByWord(int i, int[] iArr) {
        long j = i & 4294967295L;
        long j2 = (iArr[0] & 4294967295L) * j;
        iArr[0] = (int) j2;
        long j3 = ((iArr[1] & 4294967295L) * j) + (j2 >>> 32);
        iArr[1] = (int) j3;
        long j4 = ((iArr[2] & 4294967295L) * j) + (j3 >>> 32);
        iArr[2] = (int) j4;
        long j5 = ((iArr[3] & 4294967295L) * j) + (j4 >>> 32);
        iArr[3] = (int) j5;
        long j6 = ((iArr[4] & 4294967295L) * j) + (j5 >>> 32);
        iArr[4] = (int) j6;
        long j7 = ((iArr[5] & 4294967295L) * j) + (j6 >>> 32);
        iArr[5] = (int) j7;
        long j8 = ((iArr[6] & 4294967295L) * j) + (j7 >>> 32);
        iArr[6] = (int) j8;
        long j9 = (j * (4294967295L & iArr[7])) + (j8 >>> 32);
        iArr[7] = (int) j9;
        return (int) (j9 >>> 32);
    }

    public static int mulByWordAddTo(int i, int[] iArr, int[] iArr2) {
        long j = i & 4294967295L;
        long j2 = ((iArr2[0] & 4294967295L) * j) + (iArr[0] & 4294967295L);
        iArr2[0] = (int) j2;
        long j3 = ((iArr2[1] & 4294967295L) * j) + (iArr[1] & 4294967295L) + (j2 >>> 32);
        iArr2[1] = (int) j3;
        long j4 = ((iArr2[2] & 4294967295L) * j) + (iArr[2] & 4294967295L) + (j3 >>> 32);
        iArr2[2] = (int) j4;
        long j5 = ((iArr2[3] & 4294967295L) * j) + (iArr[3] & 4294967295L) + (j4 >>> 32);
        iArr2[3] = (int) j5;
        long j6 = ((iArr2[4] & 4294967295L) * j) + (iArr[4] & 4294967295L) + (j5 >>> 32);
        iArr2[4] = (int) j6;
        long j7 = ((iArr2[5] & 4294967295L) * j) + (iArr[5] & 4294967295L) + (j6 >>> 32);
        iArr2[5] = (int) j7;
        long j8 = ((iArr2[6] & 4294967295L) * j) + (iArr[6] & 4294967295L) + (j7 >>> 32);
        iArr2[6] = (int) j8;
        long j9 = (j * (iArr2[7] & 4294967295L)) + (4294967295L & iArr[7]) + (j8 >>> 32);
        iArr2[7] = (int) j9;
        return (int) (j9 >>> 32);
    }

    public static int mulWord(int i, int[] iArr, int[] iArr2, int i2) {
        long j = i & 4294967295L;
        long j2 = 0;
        int i3 = 0;
        do {
            long j3 = ((iArr[i3] & 4294967295L) * j) + j2;
            iArr2[i2 + i3] = (int) j3;
            j2 = j3 >>> 32;
            i3++;
        } while (i3 < 8);
        return (int) j2;
    }

    public static int mulWordAddTo(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        long j = i & 4294967295L;
        long j2 = ((iArr[i2] & 4294967295L) * j) + (iArr2[i3] & 4294967295L);
        iArr2[i3] = (int) j2;
        long j3 = ((iArr[i2 + 1] & 4294967295L) * j) + (iArr2[r8] & 4294967295L) + (j2 >>> 32);
        iArr2[i3 + 1] = (int) j3;
        long j4 = ((iArr[i2 + 2] & 4294967295L) * j) + (iArr2[r8] & 4294967295L) + (j3 >>> 32);
        iArr2[i3 + 2] = (int) j4;
        long j5 = ((iArr[i2 + 3] & 4294967295L) * j) + (iArr2[r8] & 4294967295L) + (j4 >>> 32);
        iArr2[i3 + 3] = (int) j5;
        long j6 = ((iArr[i2 + 4] & 4294967295L) * j) + (iArr2[r8] & 4294967295L) + (j5 >>> 32);
        iArr2[i3 + 4] = (int) j6;
        long j7 = ((iArr[i2 + 5] & 4294967295L) * j) + (iArr2[r8] & 4294967295L) + (j6 >>> 32);
        iArr2[i3 + 5] = (int) j7;
        long j8 = ((iArr[i2 + 6] & 4294967295L) * j) + (iArr2[r8] & 4294967295L) + (j7 >>> 32);
        iArr2[i3 + 6] = (int) j8;
        long j9 = (j * (iArr[i2 + 7] & 4294967295L)) + (iArr2[r15] & 4294967295L) + (j8 >>> 32);
        iArr2[i3 + 7] = (int) j9;
        return (int) (j9 >>> 32);
    }

    public static int mulWordDwordAdd(int i, long j, int[] iArr, int i2) {
        long j2 = i & 4294967295L;
        long j3 = ((j & 4294967295L) * j2) + (iArr[i2] & 4294967295L);
        iArr[i2] = (int) j3;
        long j4 = j2 * (j >>> 32);
        long j5 = j4 + (iArr[r9] & 4294967295L) + (j3 >>> 32);
        iArr[i2 + 1] = (int) j5;
        long j6 = j5 >>> 32;
        long j7 = j6 + (iArr[r0] & 4294967295L);
        iArr[i2 + 2] = (int) j7;
        if ((j7 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(8, iArr, i2, 3);
    }

    public static void square(int[] iArr, int i, int[] iArr2, int i2) {
        long j = iArr[i] & 4294967295L;
        int i3 = 0;
        int i4 = 16;
        int i5 = 7;
        while (true) {
            int i6 = i5 - 1;
            long j2 = iArr[i + i5] & 4294967295L;
            long j3 = j2 * j2;
            iArr2[(i4 - 1) + i2] = (i3 << 31) | ((int) (j3 >>> 33));
            i4 -= 2;
            iArr2[i2 + i4] = (int) (j3 >>> 1);
            i3 = (int) j3;
            if (i6 <= 0) {
                long j4 = j * j;
                long j5 = (j4 >>> 33) | ((i3 << 31) & 4294967295L);
                iArr2[i2] = (int) j4;
                int i7 = ((int) (j4 >>> 32)) & 1;
                long j6 = iArr[i + 1] & 4294967295L;
                long j7 = j5 + (j6 * j);
                int i8 = (int) j7;
                iArr2[i2 + 1] = (i8 << 1) | i7;
                int i9 = i8 >>> 31;
                long j8 = (iArr2[r12] & 4294967295L) + (j7 >>> 32);
                long j9 = iArr[i + 2] & 4294967295L;
                long j10 = j8 + (j9 * j);
                int i10 = (int) j10;
                iArr2[i2 + 2] = (i10 << 1) | i9;
                long c = Ve.c(j9, j6, j10 >>> 32, iArr2[r20] & 4294967295L);
                long j11 = (iArr2[r7] & 4294967295L) + (c >>> 32);
                long j12 = iArr[i + 3] & 4294967295L;
                long j13 = (iArr2[r35] & 4294967295L) + (j11 >>> 32);
                long j14 = j11 & 4294967295L;
                long j15 = (iArr2[r8] & 4294967295L) + (j13 >>> 32);
                long j16 = j13 & 4294967295L;
                long j17 = (j12 * j) + (c & 4294967295L);
                int i11 = (int) j17;
                iArr2[i2 + 3] = (i11 << 1) | (i10 >>> 31);
                long c2 = Ve.c(j12, j6, j17 >>> 32, j14);
                long c3 = Ve.c(j12, j9, c2 >>> 32, j16);
                long j18 = j15 + (c3 >>> 32);
                long j19 = c3 & 4294967295L;
                long j20 = iArr[i + 4] & 4294967295L;
                long j21 = (iArr2[r39] & 4294967295L) + (j18 >>> 32);
                long j22 = j18 & 4294967295L;
                long j23 = (iArr2[r5] & 4294967295L) + (j21 >>> 32);
                long j24 = j21 & 4294967295L;
                long j25 = (j20 * j) + (c2 & 4294967295L);
                int i12 = (int) j25;
                iArr2[i2 + 4] = (i11 >>> 31) | (i12 << 1);
                int i13 = i12 >>> 31;
                long c4 = Ve.c(j20, j6, j25 >>> 32, j19);
                long c5 = Ve.c(j20, j9, c4 >>> 32, j22);
                long c6 = Ve.c(j20, j12, c5 >>> 32, j24);
                long j26 = c5 & 4294967295L;
                long j27 = j23 + (c6 >>> 32);
                long j28 = iArr[i + 5] & 4294967295L;
                long j29 = (iArr2[r9] & 4294967295L) + (j27 >>> 32);
                long j30 = j27 & 4294967295L;
                long j31 = (iArr2[r5] & 4294967295L) + (j29 >>> 32);
                long j32 = j29 & 4294967295L;
                long j33 = (j28 * j) + (c4 & 4294967295L);
                int i14 = (int) j33;
                iArr2[i2 + 5] = i13 | (i14 << 1);
                int i15 = i14 >>> 31;
                long c7 = Ve.c(j28, j6, j33 >>> 32, j26);
                long c8 = Ve.c(j28, j9, c7 >>> 32, c6 & 4294967295L);
                long c9 = Ve.c(j28, j12, c8 >>> 32, j30);
                long j34 = c8 & 4294967295L;
                long c10 = Ve.c(j28, j20, c9 >>> 32, j32);
                long j35 = j31 + (c10 >>> 32);
                long j36 = c10 & 4294967295L;
                long j37 = iArr[i + 6] & 4294967295L;
                long j38 = (iArr2[r35] & 4294967295L) + (j35 >>> 32);
                long j39 = (iArr2[r52] & 4294967295L) + (j38 >>> 32);
                long j40 = j38 & 4294967295L;
                long j41 = (j37 * j) + (c7 & 4294967295L);
                int i16 = (int) j41;
                iArr2[i2 + 6] = i15 | (i16 << 1);
                int i17 = i16 >>> 31;
                long c11 = Ve.c(j37, j6, j41 >>> 32, j34);
                long c12 = Ve.c(j37, j9, c11 >>> 32, c9 & 4294967295L);
                long c13 = Ve.c(j37, j12, c12 >>> 32, j36);
                long j42 = c12 & 4294967295L;
                long c14 = Ve.c(j37, j20, c13 >>> 32, j35 & 4294967295L);
                long j43 = c13 & 4294967295L;
                long c15 = Ve.c(j37, j28, c14 >>> 32, j40);
                long j44 = c14 & 4294967295L;
                long j45 = j39 + (c15 >>> 32);
                long j46 = iArr[i + 7] & 4294967295L;
                long j47 = (iArr2[r6] & 4294967295L) + (j45 >>> 32);
                long j48 = (iArr2[r36] & 4294967295L) + (j47 >>> 32);
                long j49 = j47 & 4294967295L;
                long j50 = (j * j46) + (c11 & 4294967295L);
                int i18 = (int) j50;
                iArr2[i2 + 7] = (i18 << 1) | i17;
                long c16 = Ve.c(j46, j6, j50 >>> 32, j42);
                long c17 = Ve.c(j46, j9, c16 >>> 32, j43);
                long c18 = Ve.c(j46, j12, c17 >>> 32, j44);
                long c19 = Ve.c(j46, j20, c18 >>> 32, c15 & 4294967295L);
                long c20 = Ve.c(j46, j28, c19 >>> 32, j45 & 4294967295L);
                long c21 = Ve.c(j46, j37, c20 >>> 32, j49);
                long j51 = j48 + (c21 >>> 32);
                int i19 = (int) c16;
                iArr2[i2 + 8] = (i19 << 1) | (i18 >>> 31);
                int i20 = (int) c17;
                iArr2[i2 + 9] = (i19 >>> 31) | (i20 << 1);
                int i21 = i20 >>> 31;
                int i22 = (int) c18;
                iArr2[i2 + 10] = i21 | (i22 << 1);
                int i23 = i22 >>> 31;
                int i24 = (int) c19;
                iArr2[i2 + 11] = i23 | (i24 << 1);
                int i25 = i24 >>> 31;
                int i26 = (int) c20;
                iArr2[i2 + 12] = i25 | (i26 << 1);
                int i27 = i26 >>> 31;
                int i28 = (int) c21;
                iArr2[i2 + 13] = i27 | (i28 << 1);
                int i29 = i28 >>> 31;
                int i30 = (int) j51;
                iArr2[i2 + 14] = i29 | (i30 << 1);
                int i31 = i30 >>> 31;
                int i32 = i2 + 15;
                iArr2[i32] = i31 | ((iArr2[i32] + ((int) (j51 >>> 32))) << 1);
                return;
            }
            i5 = i6;
        }
    }

    public static int sub(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = (iArr[i] & 4294967295L) - (iArr2[i2] & 4294967295L);
        iArr3[i3] = (int) j;
        long j2 = ((iArr[i + 1] & 4294967295L) - (iArr2[i2 + 1] & 4294967295L)) + (j >> 32);
        iArr3[i3 + 1] = (int) j2;
        long j3 = ((iArr[i + 2] & 4294967295L) - (iArr2[i2 + 2] & 4294967295L)) + (j2 >> 32);
        iArr3[i3 + 2] = (int) j3;
        long j4 = ((iArr[i + 3] & 4294967295L) - (iArr2[i2 + 3] & 4294967295L)) + (j3 >> 32);
        iArr3[i3 + 3] = (int) j4;
        long j5 = ((iArr[i + 4] & 4294967295L) - (iArr2[i2 + 4] & 4294967295L)) + (j4 >> 32);
        iArr3[i3 + 4] = (int) j5;
        long j6 = ((iArr[i + 5] & 4294967295L) - (iArr2[i2 + 5] & 4294967295L)) + (j5 >> 32);
        iArr3[i3 + 5] = (int) j6;
        long j7 = ((iArr[i + 6] & 4294967295L) - (iArr2[i2 + 6] & 4294967295L)) + (j6 >> 32);
        iArr3[i3 + 6] = (int) j7;
        long j8 = ((iArr[i + 7] & 4294967295L) - (iArr2[i2 + 7] & 4294967295L)) + (j7 >> 32);
        iArr3[i3 + 7] = (int) j8;
        return (int) (j8 >> 32);
    }

    public static int subBothFrom(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = ((iArr3[0] & 4294967295L) - (iArr[0] & 4294967295L)) - (iArr2[0] & 4294967295L);
        iArr3[0] = (int) j;
        long j2 = (((iArr3[1] & 4294967295L) - (iArr[1] & 4294967295L)) - (iArr2[1] & 4294967295L)) + (j >> 32);
        iArr3[1] = (int) j2;
        long j3 = (((iArr3[2] & 4294967295L) - (iArr[2] & 4294967295L)) - (iArr2[2] & 4294967295L)) + (j2 >> 32);
        iArr3[2] = (int) j3;
        long j4 = (((iArr3[3] & 4294967295L) - (iArr[3] & 4294967295L)) - (iArr2[3] & 4294967295L)) + (j3 >> 32);
        iArr3[3] = (int) j4;
        long j5 = (((iArr3[4] & 4294967295L) - (iArr[4] & 4294967295L)) - (iArr2[4] & 4294967295L)) + (j4 >> 32);
        iArr3[4] = (int) j5;
        long j6 = (((iArr3[5] & 4294967295L) - (iArr[5] & 4294967295L)) - (iArr2[5] & 4294967295L)) + (j5 >> 32);
        iArr3[5] = (int) j6;
        long j7 = (((iArr3[6] & 4294967295L) - (iArr[6] & 4294967295L)) - (iArr2[6] & 4294967295L)) + (j6 >> 32);
        iArr3[6] = (int) j7;
        long j8 = (((iArr3[7] & 4294967295L) - (iArr[7] & 4294967295L)) - (iArr2[7] & 4294967295L)) + (j7 >> 32);
        iArr3[7] = (int) j8;
        return (int) (j8 >> 32);
    }

    public static int subFrom(int[] iArr, int i, int[] iArr2, int i2) {
        long j = (iArr2[i2] & 4294967295L) - (iArr[i] & 4294967295L);
        iArr2[i2] = (int) j;
        long j2 = ((iArr2[r5] & 4294967295L) - (iArr[i + 1] & 4294967295L)) + (j >> 32);
        iArr2[i2 + 1] = (int) j2;
        long j3 = ((iArr2[r5] & 4294967295L) - (iArr[i + 2] & 4294967295L)) + (j2 >> 32);
        iArr2[i2 + 2] = (int) j3;
        long j4 = ((iArr2[r5] & 4294967295L) - (iArr[i + 3] & 4294967295L)) + (j3 >> 32);
        iArr2[i2 + 3] = (int) j4;
        long j5 = ((iArr2[r5] & 4294967295L) - (iArr[i + 4] & 4294967295L)) + (j4 >> 32);
        iArr2[i2 + 4] = (int) j5;
        long j6 = ((iArr2[r5] & 4294967295L) - (iArr[i + 5] & 4294967295L)) + (j5 >> 32);
        iArr2[i2 + 5] = (int) j6;
        long j7 = ((iArr2[r5] & 4294967295L) - (iArr[i + 6] & 4294967295L)) + (j6 >> 32);
        iArr2[i2 + 6] = (int) j7;
        long j8 = ((iArr2[r13] & 4294967295L) - (iArr[i + 7] & 4294967295L)) + (j7 >> 32);
        iArr2[i2 + 7] = (int) j8;
        return (int) (j8 >> 32);
    }

    public static BigInteger toBigInteger(int[] iArr) {
        byte[] bArr = new byte[32];
        for (int i = 0; i < 8; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                Pack.intToBigEndian(i2, bArr, (7 - i) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static BigInteger toBigInteger64(long[] jArr) {
        byte[] bArr = new byte[32];
        for (int i = 0; i < 4; i++) {
            long j = jArr[i];
            if (j != 0) {
                Pack.longToBigEndian(j, bArr, (3 - i) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void zero(int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        iArr[4] = 0;
        iArr[5] = 0;
        iArr[6] = 0;
        iArr[7] = 0;
    }

    public static int add(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L);
        iArr3[0] = (int) j;
        long j2 = (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L) + (j >>> 32);
        iArr3[1] = (int) j2;
        long j3 = (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L) + (j2 >>> 32);
        iArr3[2] = (int) j3;
        long j4 = (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L) + (j3 >>> 32);
        iArr3[3] = (int) j4;
        long j5 = (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L) + (j4 >>> 32);
        iArr3[4] = (int) j5;
        long j6 = (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L) + (j5 >>> 32);
        iArr3[5] = (int) j6;
        long j7 = (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L) + (j6 >>> 32);
        iArr3[6] = (int) j7;
        long j8 = (iArr[7] & 4294967295L) + (iArr2[7] & 4294967295L) + (j7 >>> 32);
        iArr3[7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int addBothTo(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + (iArr3[0] & 4294967295L);
        iArr3[0] = (int) j;
        long j2 = (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L) + (iArr3[1] & 4294967295L) + (j >>> 32);
        iArr3[1] = (int) j2;
        long j3 = (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L) + (iArr3[2] & 4294967295L) + (j2 >>> 32);
        iArr3[2] = (int) j3;
        long j4 = (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L) + (iArr3[3] & 4294967295L) + (j3 >>> 32);
        iArr3[3] = (int) j4;
        long j5 = (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L) + (iArr3[4] & 4294967295L) + (j4 >>> 32);
        iArr3[4] = (int) j5;
        long j6 = (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L) + (iArr3[5] & 4294967295L) + (j5 >>> 32);
        iArr3[5] = (int) j6;
        long j7 = (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L) + (iArr3[6] & 4294967295L) + (j6 >>> 32);
        iArr3[6] = (int) j7;
        long j8 = (iArr[7] & 4294967295L) + (iArr2[7] & 4294967295L) + (iArr3[7] & 4294967295L) + (j7 >>> 32);
        iArr3[7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int addTo(int[] iArr, int[] iArr2) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L);
        iArr2[0] = (int) j;
        long j2 = (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L) + (j >>> 32);
        iArr2[1] = (int) j2;
        long j3 = (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L) + (j2 >>> 32);
        iArr2[2] = (int) j3;
        long j4 = (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L) + (j3 >>> 32);
        iArr2[3] = (int) j4;
        long j5 = (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L) + (j4 >>> 32);
        iArr2[4] = (int) j5;
        long j6 = (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L) + (j5 >>> 32);
        iArr2[5] = (int) j6;
        long j7 = (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L) + (j6 >>> 32);
        iArr2[6] = (int) j7;
        long j8 = (iArr[7] & 4294967295L) + (4294967295L & iArr2[7]) + (j7 >>> 32);
        iArr2[7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static void copy(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
        iArr2[5] = iArr[5];
        iArr2[6] = iArr[6];
        iArr2[7] = iArr[7];
    }

    public static void copy64(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
    }

    public static boolean gte(int[] iArr, int[] iArr2) {
        for (int i = 7; i >= 0; i--) {
            int i2 = iArr[i] ^ PKIFailureInfo.systemUnavail;
            int i3 = Integer.MIN_VALUE ^ iArr2[i];
            if (i2 < i3) {
                return false;
            }
            if (i2 > i3) {
                return true;
            }
        }
        return true;
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = iArr2[0] & 4294967295L;
        long j2 = iArr2[1] & 4294967295L;
        long j3 = iArr2[2] & 4294967295L;
        long j4 = iArr2[3] & 4294967295L;
        long j5 = iArr2[4] & 4294967295L;
        long j6 = iArr2[5] & 4294967295L;
        long j7 = iArr2[6] & 4294967295L;
        long j8 = iArr2[7] & 4294967295L;
        long j9 = iArr[0] & 4294967295L;
        long j10 = j9 * j;
        iArr3[0] = (int) j10;
        long j11 = (j9 * j2) + (j10 >>> 32);
        iArr3[1] = (int) j11;
        long j12 = (j9 * j3) + (j11 >>> 32);
        iArr3[2] = (int) j12;
        long j13 = (j9 * j4) + (j12 >>> 32);
        iArr3[3] = (int) j13;
        long j14 = (j9 * j5) + (j13 >>> 32);
        iArr3[4] = (int) j14;
        long j15 = (j9 * j6) + (j14 >>> 32);
        iArr3[5] = (int) j15;
        long j16 = (j9 * j7) + (j15 >>> 32);
        iArr3[6] = (int) j16;
        long j17 = (j9 * j8) + (j16 >>> 32);
        iArr3[7] = (int) j17;
        iArr3[8] = (int) (j17 >>> 32);
        int i = 1;
        for (int i2 = 8; i < i2; i2 = 8) {
            long j18 = iArr[i] & 4294967295L;
            long j19 = j;
            long j20 = (j18 * j) + (iArr3[i] & 4294967295L);
            iArr3[i] = (int) j20;
            int i3 = i + 1;
            long j21 = (j18 * j2) + (iArr3[i3] & 4294967295L) + (j20 >>> 32);
            iArr3[i3] = (int) j21;
            long j22 = j2;
            long j23 = (j18 * j3) + (iArr3[r18] & 4294967295L) + (j21 >>> 32);
            iArr3[i + 2] = (int) j23;
            long j24 = (j18 * j4) + (iArr3[r6] & 4294967295L) + (j23 >>> 32);
            iArr3[i + 3] = (int) j24;
            long j25 = (j18 * j5) + (iArr3[r6] & 4294967295L) + (j24 >>> 32);
            iArr3[i + 4] = (int) j25;
            long j26 = (j18 * j6) + (iArr3[r6] & 4294967295L) + (j25 >>> 32);
            iArr3[i + 5] = (int) j26;
            long j27 = (j18 * j7) + (iArr3[r6] & 4294967295L) + (j26 >>> 32);
            iArr3[i + 6] = (int) j27;
            long j28 = j27 >>> 32;
            long j29 = (j18 * j8) + (iArr3[r3] & 4294967295L) + j28;
            iArr3[i + 7] = (int) j29;
            iArr3[i + 8] = (int) (j29 >>> 32);
            j = j19;
            i = i3;
            j2 = j22;
        }
    }

    public static int mulAddTo(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = iArr2[0] & 4294967295L;
        long j2 = iArr2[1] & 4294967295L;
        long j3 = iArr2[2] & 4294967295L;
        long j4 = iArr2[3] & 4294967295L;
        long j5 = iArr2[4] & 4294967295L;
        long j6 = iArr2[5] & 4294967295L;
        long j7 = iArr2[6] & 4294967295L;
        long j8 = iArr2[7] & 4294967295L;
        long j9 = 0;
        int i = 0;
        while (i < 8) {
            long j10 = j8;
            long j11 = iArr[i] & 4294967295L;
            long j12 = j6;
            long j13 = (iArr3[i] & 4294967295L) + (j11 * j);
            iArr3[i] = (int) j13;
            int i2 = i + 1;
            long j14 = j2;
            long j15 = (j11 * j2) + (iArr3[i2] & 4294967295L) + (j13 >>> 32);
            iArr3[i2] = (int) j15;
            long j16 = (j11 * j3) + (iArr3[r27] & 4294967295L) + (j15 >>> 32);
            iArr3[i + 2] = (int) j16;
            long j17 = (j11 * j4) + (iArr3[r8] & 4294967295L) + (j16 >>> 32);
            iArr3[i + 3] = (int) j17;
            long j18 = (j11 * j5) + (iArr3[r8] & 4294967295L) + (j17 >>> 32);
            iArr3[i + 4] = (int) j18;
            long j19 = (j11 * j12) + (iArr3[r8] & 4294967295L) + (j18 >>> 32);
            iArr3[i + 5] = (int) j19;
            long j20 = (j11 * j7) + (iArr3[r8] & 4294967295L) + (j19 >>> 32);
            iArr3[i + 6] = (int) j20;
            long j21 = (j11 * j10) + (iArr3[r8] & 4294967295L) + (j20 >>> 32);
            iArr3[i + 7] = (int) j21;
            long j22 = (j21 >>> 32) + (iArr3[r2] & 4294967295L) + j9;
            iArr3[i + 8] = (int) j22;
            j9 = j22 >>> 32;
            i = i2;
            j8 = j10;
            j6 = j12;
            j2 = j14;
            j3 = j3;
        }
        return (int) j9;
    }

    public static void square(int[] iArr, int[] iArr2) {
        long j = iArr[0] & 4294967295L;
        int i = 16;
        int i2 = 0;
        int i3 = 7;
        while (true) {
            int i4 = i3 - 1;
            long j2 = iArr[i3] & 4294967295L;
            long j3 = j2 * j2;
            iArr2[i - 1] = (i2 << 31) | ((int) (j3 >>> 33));
            i -= 2;
            iArr2[i] = (int) (j3 >>> 1);
            i2 = (int) j3;
            if (i4 <= 0) {
                long j4 = j * j;
                long j5 = (j4 >>> 33) | ((i2 << 31) & 4294967295L);
                iArr2[0] = (int) j4;
                long j6 = iArr[1] & 4294967295L;
                long j7 = j5 + (j6 * j);
                int i5 = (int) j7;
                iArr2[1] = (i5 << 1) | (((int) (j4 >>> 32)) & 1);
                int i6 = i5 >>> 31;
                long j8 = (iArr2[2] & 4294967295L) + (j7 >>> 32);
                long j9 = iArr[2] & 4294967295L;
                long j10 = j8 + (j9 * j);
                int i7 = (int) j10;
                iArr2[2] = (i7 << 1) | i6;
                long c = Ve.c(j9, j6, j10 >>> 32, iArr2[3] & 4294967295L);
                long j11 = (iArr2[4] & 4294967295L) + (c >>> 32);
                long j12 = iArr[3] & 4294967295L;
                long j13 = (iArr2[5] & 4294967295L) + (j11 >>> 32);
                long j14 = j11 & 4294967295L;
                long j15 = (iArr2[6] & 4294967295L) + (j13 >>> 32);
                long j16 = (j12 * j) + (c & 4294967295L);
                int i8 = (int) j16;
                iArr2[3] = (i8 << 1) | (i7 >>> 31);
                long c2 = Ve.c(j12, j6, j16 >>> 32, j14);
                long c3 = Ve.c(j12, j9, c2 >>> 32, j13 & 4294967295L);
                long j17 = j15 + (c3 >>> 32);
                long j18 = c3 & 4294967295L;
                long j19 = iArr[4] & 4294967295L;
                long j20 = (iArr2[7] & 4294967295L) + (j17 >>> 32);
                long j21 = j17 & 4294967295L;
                long j22 = (iArr2[8] & 4294967295L) + (j20 >>> 32);
                long j23 = j20 & 4294967295L;
                long j24 = (j19 * j) + (c2 & 4294967295L);
                int i9 = (int) j24;
                iArr2[4] = (i8 >>> 31) | (i9 << 1);
                int i10 = i9 >>> 31;
                long c4 = Ve.c(j19, j6, j24 >>> 32, j18);
                long c5 = Ve.c(j19, j9, c4 >>> 32, j21);
                long c6 = Ve.c(j19, j12, c5 >>> 32, j23);
                long j25 = j22 + (c6 >>> 32);
                long j26 = iArr[5] & 4294967295L;
                long j27 = (iArr2[9] & 4294967295L) + (j25 >>> 32);
                long j28 = j25 & 4294967295L;
                long j29 = (iArr2[10] & 4294967295L) + (j27 >>> 32);
                long j30 = j27 & 4294967295L;
                long j31 = (j26 * j) + (c4 & 4294967295L);
                int i11 = (int) j31;
                iArr2[5] = (i11 << 1) | i10;
                long c7 = Ve.c(j26, j6, j31 >>> 32, c5 & 4294967295L);
                long c8 = Ve.c(j26, j9, c7 >>> 32, c6 & 4294967295L);
                long c9 = Ve.c(j26, j12, c8 >>> 32, j28);
                long j32 = c8 & 4294967295L;
                long c10 = Ve.c(j26, j19, c9 >>> 32, j30);
                long j33 = j29 + (c10 >>> 32);
                long j34 = c10 & 4294967295L;
                long j35 = iArr[6] & 4294967295L;
                long j36 = (iArr2[11] & 4294967295L) + (j33 >>> 32);
                long j37 = j33 & 4294967295L;
                long j38 = (iArr2[12] & 4294967295L) + (j36 >>> 32);
                long j39 = j36 & 4294967295L;
                long j40 = (j35 * j) + (c7 & 4294967295L);
                int i12 = (int) j40;
                iArr2[6] = (i11 >>> 31) | (i12 << 1);
                int i13 = i12 >>> 31;
                long c11 = Ve.c(j35, j6, j40 >>> 32, j32);
                long c12 = Ve.c(j35, j9, c11 >>> 32, c9 & 4294967295L);
                long c13 = Ve.c(j35, j12, c12 >>> 32, j34);
                long j41 = c12 & 4294967295L;
                long c14 = Ve.c(j35, j19, c13 >>> 32, j37);
                long j42 = c13 & 4294967295L;
                long c15 = Ve.c(j35, j26, c14 >>> 32, j39);
                long j43 = c14 & 4294967295L;
                long j44 = j38 + (c15 >>> 32);
                long j45 = iArr[7] & 4294967295L;
                long j46 = (iArr2[13] & 4294967295L) + (j44 >>> 32);
                long j47 = j44 & 4294967295L;
                long j48 = (iArr2[14] & 4294967295L) + (j46 >>> 32);
                long j49 = 4294967295L & j46;
                long j50 = (j * j45) + (c11 & 4294967295L);
                int i14 = (int) j50;
                iArr2[7] = i13 | (i14 << 1);
                int i15 = i14 >>> 31;
                long c16 = Ve.c(j45, j6, j50 >>> 32, j41);
                long c17 = Ve.c(j45, j9, c16 >>> 32, j42);
                long c18 = Ve.c(j45, j12, c17 >>> 32, j43);
                long c19 = Ve.c(j45, j19, c18 >>> 32, c15 & 4294967295L);
                long c20 = Ve.c(j45, j26, c19 >>> 32, j47);
                long c21 = Ve.c(j45, j35, c20 >>> 32, j49);
                long j51 = j48 + (c21 >>> 32);
                int i16 = (int) c16;
                iArr2[8] = (i16 << 1) | i15;
                int i17 = (int) c17;
                iArr2[9] = (i16 >>> 31) | (i17 << 1);
                int i18 = i17 >>> 31;
                int i19 = (int) c18;
                iArr2[10] = i18 | (i19 << 1);
                int i20 = i19 >>> 31;
                int i21 = (int) c19;
                iArr2[11] = i20 | (i21 << 1);
                int i22 = i21 >>> 31;
                int i23 = (int) c20;
                iArr2[12] = i22 | (i23 << 1);
                int i24 = i23 >>> 31;
                int i25 = (int) c21;
                iArr2[13] = i24 | (i25 << 1);
                int i26 = i25 >>> 31;
                int i27 = (int) j51;
                iArr2[14] = i26 | (i27 << 1);
                iArr2[15] = ((iArr2[15] + ((int) (j51 >>> 32))) << 1) | (i27 >>> 31);
                return;
            }
            i3 = i4;
        }
    }

    public static int sub(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (iArr[0] & 4294967295L) - (iArr2[0] & 4294967295L);
        iArr3[0] = (int) j;
        long j2 = ((iArr[1] & 4294967295L) - (iArr2[1] & 4294967295L)) + (j >> 32);
        iArr3[1] = (int) j2;
        long j3 = ((iArr[2] & 4294967295L) - (iArr2[2] & 4294967295L)) + (j2 >> 32);
        iArr3[2] = (int) j3;
        long j4 = ((iArr[3] & 4294967295L) - (iArr2[3] & 4294967295L)) + (j3 >> 32);
        iArr3[3] = (int) j4;
        long j5 = ((iArr[4] & 4294967295L) - (iArr2[4] & 4294967295L)) + (j4 >> 32);
        iArr3[4] = (int) j5;
        long j6 = ((iArr[5] & 4294967295L) - (iArr2[5] & 4294967295L)) + (j5 >> 32);
        iArr3[5] = (int) j6;
        long j7 = ((iArr[6] & 4294967295L) - (iArr2[6] & 4294967295L)) + (j6 >> 32);
        iArr3[6] = (int) j7;
        long j8 = ((iArr[7] & 4294967295L) - (iArr2[7] & 4294967295L)) + (j7 >> 32);
        iArr3[7] = (int) j8;
        return (int) (j8 >> 32);
    }

    public static int subFrom(int[] iArr, int i, int[] iArr2, int i2, int i3) {
        long j = ((iArr2[i2] & 4294967295L) - (iArr[i] & 4294967295L)) + (i3 & 4294967295L);
        iArr2[i2] = (int) j;
        long j2 = j >> 32;
        long j3 = ((iArr2[r4] & 4294967295L) - (iArr[i + 1] & 4294967295L)) + j2;
        iArr2[i2 + 1] = (int) j3;
        long j4 = ((iArr2[r4] & 4294967295L) - (iArr[i + 2] & 4294967295L)) + (j3 >> 32);
        iArr2[i2 + 2] = (int) j4;
        long j5 = ((iArr2[r4] & 4294967295L) - (iArr[i + 3] & 4294967295L)) + (j4 >> 32);
        iArr2[i2 + 3] = (int) j5;
        long j6 = ((iArr2[r4] & 4294967295L) - (iArr[i + 4] & 4294967295L)) + (j5 >> 32);
        iArr2[i2 + 4] = (int) j6;
        long j7 = ((iArr2[r4] & 4294967295L) - (iArr[i + 5] & 4294967295L)) + (j6 >> 32);
        iArr2[i2 + 5] = (int) j7;
        long j8 = ((iArr2[r4] & 4294967295L) - (iArr[i + 6] & 4294967295L)) + (j7 >> 32);
        iArr2[i2 + 6] = (int) j8;
        long j9 = ((iArr2[r12] & 4294967295L) - (iArr[i + 7] & 4294967295L)) + (j8 >> 32);
        iArr2[i2 + 7] = (int) j9;
        return (int) (j9 >> 32);
    }

    public static int addTo(int[] iArr, int[] iArr2, int i) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + (i & 4294967295L);
        iArr2[0] = (int) j;
        long j2 = (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L) + (j >>> 32);
        iArr2[1] = (int) j2;
        long j3 = (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L) + (j2 >>> 32);
        iArr2[2] = (int) j3;
        long j4 = (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L) + (j3 >>> 32);
        iArr2[3] = (int) j4;
        long j5 = (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L) + (j4 >>> 32);
        iArr2[4] = (int) j5;
        long j6 = (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L) + (j5 >>> 32);
        iArr2[5] = (int) j6;
        long j7 = (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L) + (j6 >>> 32);
        iArr2[6] = (int) j7;
        long j8 = (iArr[7] & 4294967295L) + (4294967295L & iArr2[7]) + (j7 >>> 32);
        iArr2[7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int subFrom(int[] iArr, int[] iArr2) {
        long j = (iArr2[0] & 4294967295L) - (iArr[0] & 4294967295L);
        iArr2[0] = (int) j;
        long j2 = ((iArr2[1] & 4294967295L) - (iArr[1] & 4294967295L)) + (j >> 32);
        iArr2[1] = (int) j2;
        long j3 = ((iArr2[2] & 4294967295L) - (iArr[2] & 4294967295L)) + (j2 >> 32);
        iArr2[2] = (int) j3;
        long j4 = ((iArr2[3] & 4294967295L) - (iArr[3] & 4294967295L)) + (j3 >> 32);
        iArr2[3] = (int) j4;
        long j5 = ((iArr2[4] & 4294967295L) - (iArr[4] & 4294967295L)) + (j4 >> 32);
        iArr2[4] = (int) j5;
        long j6 = ((iArr2[5] & 4294967295L) - (iArr[5] & 4294967295L)) + (j5 >> 32);
        iArr2[5] = (int) j6;
        long j7 = ((iArr2[6] & 4294967295L) - (iArr[6] & 4294967295L)) + (j6 >> 32);
        iArr2[6] = (int) j7;
        long j8 = ((iArr2[7] & 4294967295L) - (4294967295L & iArr[7])) + (j7 >> 32);
        iArr2[7] = (int) j8;
        return (int) (j8 >> 32);
    }

    public static int subFrom(int[] iArr, int[] iArr2, int i) {
        long j = ((iArr2[0] & 4294967295L) - (iArr[0] & 4294967295L)) + (i & 4294967295L);
        iArr2[0] = (int) j;
        long j2 = ((iArr2[1] & 4294967295L) - (iArr[1] & 4294967295L)) + (j >> 32);
        iArr2[1] = (int) j2;
        long j3 = ((iArr2[2] & 4294967295L) - (iArr[2] & 4294967295L)) + (j2 >> 32);
        iArr2[2] = (int) j3;
        long j4 = ((iArr2[3] & 4294967295L) - (iArr[3] & 4294967295L)) + (j3 >> 32);
        iArr2[3] = (int) j4;
        long j5 = ((iArr2[4] & 4294967295L) - (iArr[4] & 4294967295L)) + (j4 >> 32);
        iArr2[4] = (int) j5;
        long j6 = ((iArr2[5] & 4294967295L) - (iArr[5] & 4294967295L)) + (j5 >> 32);
        iArr2[5] = (int) j6;
        long j7 = ((iArr2[6] & 4294967295L) - (iArr[6] & 4294967295L)) + (j6 >> 32);
        iArr2[6] = (int) j7;
        long j8 = ((iArr2[7] & 4294967295L) - (4294967295L & iArr[7])) + (j7 >> 32);
        iArr2[7] = (int) j8;
        return (int) (j8 >> 32);
    }
}
