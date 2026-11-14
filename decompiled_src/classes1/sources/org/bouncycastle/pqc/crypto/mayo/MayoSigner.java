package org.bouncycastle.pqc.crypto.mayo;

import java.security.SecureRandom;
import o.Ve;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.crypto.MessageSigner;
import org.bouncycastle.pqc.crypto.rainbow.GF2Field;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Bytes;
import org.bouncycastle.util.GF16;
import org.bouncycastle.util.Longs;
import org.bouncycastle.util.Pack;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class MayoSigner implements MessageSigner {
    private static final long EVEN_2BYTES = 281470681808895L;
    private static final long EVEN_BYTES = 71777214294589695L;
    private static final int F_TAIL_LEN = 4;
    private MayoParameters params;
    private MayoPrivateKeyParameters privKey;
    private MayoPublicKeyParameters pubKey;
    private SecureRandom random;

    private static long ctCompare64(int i, int i2) {
        return (-(i ^ i2)) >> 63;
    }

    private static void mVecMultiplyBins(int i, int i2, long[] jArr, long[] jArr2) {
        int i3 = i + i;
        int i4 = i3 + i;
        int i5 = i4 + i;
        int i6 = i5 + i;
        int i7 = i6 + i;
        int i8 = i7 + i;
        int i9 = i8 + i;
        int i10 = i9 + i;
        int i11 = i10 + i;
        int i12 = i11 + i;
        int i13 = i12 + i;
        int i14 = i13 + i;
        int i15 = i14 + i;
        int i16 = i15 + i;
        int i17 = i2;
        int i18 = 0;
        int i19 = 0;
        while (i18 < i17) {
            int i20 = i19;
            int i21 = 0;
            while (i21 < i) {
                long j = jArr[i20 + i6];
                long j2 = j & 1229782938247303441L;
                long j3 = (jArr[i20 + i11] ^ ((j & (-1229782938247303442L)) >>> 1)) ^ ((j2 << 3) + j2);
                long j4 = jArr[i20 + i12];
                long j5 = (j4 & (-8608480567731124088L)) >>> 3;
                long j6 = (jArr[i20 + i13] ^ ((j4 & 8608480567731124087L) << 1)) ^ ((j5 << 1) + j5);
                long j7 = j3 & 1229782938247303441L;
                long j8 = (jArr[i20 + i8] ^ ((j3 & (-1229782938247303442L)) >>> 1)) ^ ((j7 << 3) + j7);
                long j9 = (j6 & (-8608480567731124088L)) >>> 3;
                long j10 = (jArr[i20 + i7] ^ ((j6 & 8608480567731124087L) << 1)) ^ ((j9 << 1) + j9);
                long j11 = j8 & 1229782938247303441L;
                long j12 = (jArr[i20 + i15] ^ ((j8 & (-1229782938247303442L)) >>> 1)) ^ ((j11 << 3) + j11);
                long j13 = (j10 & (-8608480567731124088L)) >>> 3;
                long j14 = (jArr[i20 + i4] ^ ((j10 & 8608480567731124087L) << 1)) ^ ((j13 << 1) + j13);
                long j15 = j12 & 1229782938247303441L;
                long j16 = (jArr[i20 + i16] ^ ((j12 & (-1229782938247303442L)) >>> 1)) ^ ((j15 << 3) + j15);
                long j17 = (j14 & (-8608480567731124088L)) >>> 3;
                long j18 = (jArr[i20 + i9] ^ ((j14 & 8608480567731124087L) << 1)) ^ ((j17 << 1) + j17);
                long j19 = j16 & 1229782938247303441L;
                long j20 = (jArr[i20 + i14] ^ ((j16 & (-1229782938247303442L)) >>> 1)) ^ ((j19 << 3) + j19);
                long j21 = (j18 & (-8608480567731124088L)) >>> 3;
                long j22 = (jArr[i20 + i5] ^ ((j18 & 8608480567731124087L) << 1)) ^ ((j21 << 1) + j21);
                long j23 = j20 & 1229782938247303441L;
                long j24 = (jArr[i20 + i10] ^ ((j20 & (-1229782938247303442L)) >>> 1)) ^ ((j23 << 3) + j23);
                long j25 = (j22 & (-8608480567731124088L)) >>> 3;
                long j26 = (jArr[i20 + i3] ^ ((j22 & 8608480567731124087L) << 1)) ^ ((j25 << 1) + j25);
                long j27 = j24 & 1229782938247303441L;
                long j28 = (jArr[i20 + i] ^ ((j24 & (-1229782938247303442L)) >>> 1)) ^ ((j27 << 3) + j27);
                long j29 = (j26 & (-8608480567731124088L)) >>> 3;
                jArr2[(i19 >> 4) + i21] = (j28 ^ ((j26 & 8608480567731124087L) << 1)) ^ ((j29 << 1) + j29);
                i21++;
                i20++;
            }
            i18++;
            i19 += i << 4;
            i17 = i2;
        }
    }

    private static void mayoGenericMCalculatePS(MayoParameters mayoParameters, long[] jArr, int i, int i2, byte[] bArr, int i3, int i4, int i5, long[] jArr2) {
        int i6 = i3;
        int i7 = i4;
        int i8 = i7 + i6;
        int mVecLimbs = mayoParameters.getMVecLimbs();
        long[] jArr3 = new long[((mayoParameters.getN() * (mayoParameters.getK() * mVecLimbs)) * mVecLimbs) << 4];
        int i9 = i7 * mVecLimbs;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i10 < i6) {
            for (int i14 = i10; i14 < i6; i14++) {
                int i15 = 0;
                int i16 = 0;
                while (i15 < i5) {
                    Longs.xorTo(mVecLimbs, jArr, i12, jArr3, (((i13 + i15) << 4) + (bArr[i16 + i14] & GF2Field.MASK)) * mVecLimbs);
                    i15++;
                    i16 += i8;
                }
                i12 += mVecLimbs;
            }
            int i17 = i11;
            int i18 = 0;
            while (i18 < i7) {
                int i19 = 0;
                int i20 = 0;
                while (i19 < i5) {
                    Longs.xorTo(mVecLimbs, jArr, i + i17, jArr3, (((i13 + i19) << 4) + (bArr[i20 + i18 + i6] & GF2Field.MASK)) * mVecLimbs);
                    i19++;
                    i20 += i8;
                    i12 = i12;
                }
                i18++;
                i17 += mVecLimbs;
                i7 = i4;
            }
            i10++;
            i13 += i5;
            i11 += i9;
            i7 = i4;
        }
        int i21 = i6 * i5;
        int i22 = 0;
        while (i6 < i8) {
            for (int i23 = i6; i23 < i8; i23++) {
                int i24 = 0;
                int i25 = 0;
                while (i24 < i5) {
                    Longs.xorTo(mVecLimbs, jArr, i2 + i22, jArr3, (((i21 + i24) << 4) + (bArr[i25 + i23] & GF2Field.MASK)) * mVecLimbs);
                    i24++;
                    i25 += i8;
                }
                i22 += mVecLimbs;
            }
            i6++;
            i21 += i5;
        }
        mVecMultiplyBins(mVecLimbs, i8 * i5, jArr3, jArr2);
    }

    private static void mayoGenericMCalculateSPS(long[] jArr, byte[] bArr, int i, int i2, int i3, long[] jArr2) {
        int i4 = i2;
        int i5 = i4 * i4;
        long[] jArr3 = new long[(i * i5) << 4];
        int i6 = i4 * i;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i7 < i4) {
            int i10 = 0;
            int i11 = 0;
            while (i10 < i3) {
                int i12 = ((bArr[i8 + i10] & GF2Field.MASK) * i) + i9;
                int i13 = 0;
                int i14 = 0;
                while (i13 < i4) {
                    Longs.xorTo(i, jArr, i11 + i14, jArr3, i12 + (i14 << 4));
                    i13++;
                    i14 += i;
                    i4 = i2;
                }
                i10++;
                i11 += i6;
                i4 = i2;
            }
            i7++;
            i8 += i3;
            i9 += i6 << 4;
            i4 = i2;
        }
        mVecMultiplyBins(i, i5, jArr3, jArr2);
    }

    private static int mulTable(int i) {
        int i2 = i * 134480385;
        int i3 = (-252645136) & i2;
        return (i2 ^ (i3 >>> 4)) ^ (i3 >>> 3);
    }

    private static void transpose16x16Nibbles(long[] jArr, int i) {
        for (int i2 = 0; i2 < 16; i2 += 2) {
            int i3 = i + i2;
            int i4 = i3 + 1;
            long j = jArr[i3];
            long j2 = ((j >>> 4) ^ jArr[i4]) & 1085102592571150095L;
            jArr[i3] = j ^ (j2 << 4);
            jArr[i4] = jArr[i4] ^ j2;
        }
        int i5 = i;
        for (int i6 = 0; i6 < 16; i6 += 4) {
            long j3 = jArr[i5];
            long j4 = ((j3 >>> 8) ^ jArr[i5 + 2]) & EVEN_BYTES;
            int i7 = i5 + 1;
            long j5 = EVEN_BYTES & ((jArr[i7] >>> 8) ^ jArr[i5 + 3]);
            jArr[i5] = j3 ^ (j4 << 8);
            int i8 = i5 + 2;
            jArr[i7] = jArr[i7] ^ (j5 << 8);
            int i9 = i5 + 3;
            jArr[i8] = jArr[i8] ^ j4;
            i5 += 4;
            jArr[i9] = jArr[i9] ^ j5;
        }
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = i + i10;
            long j6 = jArr[i11];
            int i12 = i11 + 4;
            long j7 = ((j6 >>> 16) ^ jArr[i12]) & EVEN_2BYTES;
            int i13 = i11 + 8;
            int i14 = i11 + 12;
            long j8 = EVEN_2BYTES & ((jArr[i13] >>> 16) ^ jArr[i14]);
            jArr[i11] = j6 ^ (j7 << 16);
            jArr[i13] = jArr[i13] ^ (j8 << 16);
            jArr[i12] = jArr[i12] ^ j7;
            jArr[i14] = jArr[i14] ^ j8;
        }
        for (int i15 = 0; i15 < 8; i15++) {
            int i16 = i + i15;
            long j9 = jArr[i16];
            int i17 = i16 + 8;
            long j10 = ((j9 >>> 32) ^ jArr[i17]) & BodyPartID.bodyIdMax;
            jArr[i16] = j9 ^ (j10 << 32);
            jArr[i17] = jArr[i17] ^ j10;
        }
    }

    private static void vecMulAddU64(int i, long[] jArr, byte b, long[] jArr2) {
        int mulTable = mulTable(b & 255);
        for (int i2 = 0; i2 < i; i2++) {
            long j = jArr[i2];
            jArr2[i2] = ((((j >>> 3) & 1229782938247303441L) * ((mulTable >>> 24) & 15)) ^ ((((j & 1229782938247303441L) * (mulTable & GF2Field.MASK)) ^ (((j >>> 1) & 1229782938247303441L) * ((mulTable >>> 8) & 15))) ^ (((j >>> 2) & 1229782938247303441L) * ((mulTable >>> 16) & 15)))) ^ jArr2[i2];
        }
    }

    public void computeA(long[] jArr, byte[] bArr) {
        int i;
        int i2;
        char c;
        int i3;
        int[] iArr;
        int k = this.params.getK();
        int o2 = this.params.getO();
        int m = this.params.getM();
        int mVecLimbs = this.params.getMVecLimbs();
        int aCols = this.params.getACols();
        int[] fTail = this.params.getFTail();
        int i4 = o2 * k;
        int i5 = o2 * mVecLimbs;
        int i6 = ((i4 + 15) >> 4) << 4;
        long[] jArr2 = new long[(((m + 7) >>> 3) * i6) << 4];
        int i7 = m & 15;
        if (i7 != 0) {
            long j = (1 << (i7 << 2)) - 1;
            int i8 = mVecLimbs - 1;
            int i9 = 0;
            while (i9 < i4) {
                jArr[i8] = jArr[i8] & j;
                i9++;
                i8 += mVecLimbs;
            }
        }
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i10 < k) {
            int i15 = k - 1;
            int i16 = i15 * i5;
            int i17 = i14;
            int i18 = i15;
            int i19 = i15 * o2;
            while (i18 >= i10) {
                int i20 = 0;
                int i21 = 0;
                while (true) {
                    i3 = aCols;
                    iArr = fTail;
                    if (i20 >= o2) {
                        break;
                    }
                    int i22 = 0;
                    int i23 = 0;
                    while (i22 < mVecLimbs) {
                        long j2 = jArr[i16 + i22 + i21];
                        int x = Ve.x(i11, i20, i17, i23);
                        jArr2[x] = jArr2[x] ^ (j2 << i13);
                        if (i13 > 0) {
                            int i24 = x + i6;
                            jArr2[i24] = jArr2[i24] ^ (j2 >>> (64 - i13));
                        }
                        i22++;
                        i23 += i6;
                    }
                    i20++;
                    i21 += mVecLimbs;
                    aCols = i3;
                    fTail = iArr;
                }
                if (i10 != i18) {
                    int i25 = 0;
                    int i26 = 0;
                    while (i25 < o2) {
                        int i27 = m;
                        int i28 = 0;
                        int i29 = 0;
                        while (i29 < mVecLimbs) {
                            long j3 = jArr[i12 + i29 + i26];
                            int x2 = Ve.x(i19, i25, i17, i28);
                            jArr2[x2] = jArr2[x2] ^ (j3 << i13);
                            if (i13 > 0) {
                                int i30 = x2 + i6;
                                jArr2[i30] = jArr2[i30] ^ (j3 >>> (64 - i13));
                            }
                            i29++;
                            i28 += i6;
                        }
                        i25++;
                        i26 += mVecLimbs;
                        m = i27;
                    }
                }
                int i31 = m;
                int i32 = i13 + 4;
                if (i32 == 64) {
                    i17 += i6;
                    i13 = 0;
                } else {
                    i13 = i32;
                }
                i18--;
                i16 -= i5;
                i19 -= o2;
                m = i31;
                aCols = i3;
                fTail = iArr;
            }
            i10++;
            i11 += o2;
            i12 += i5;
            i14 = i17;
        }
        int i33 = m;
        int i34 = aCols;
        int[] iArr2 = fTail;
        int i35 = 0;
        while (true) {
            i = (k + 1) * k;
            i2 = 4;
            if (i35 >= (((i33 + (i >> 1)) + 15) >>> 4) * i6) {
                break;
            }
            transpose16x16Nibbles(jArr2, i35);
            i35 += 16;
        }
        byte[] bArr2 = new byte[16];
        int i36 = 0;
        int i37 = 0;
        while (true) {
            c = 1;
            if (i36 >= i2) {
                break;
            }
            int i38 = iArr2[i36];
            bArr2[i37] = (byte) GF16.mul(i38, 1);
            bArr2[i37 + 1] = (byte) GF16.mul(i38, 2);
            int i39 = i37 + 3;
            bArr2[i37 + 2] = (byte) GF16.mul(i38, 4);
            i37 += 4;
            bArr2[i39] = (byte) GF16.mul(i38, 8);
            i36++;
            i2 = 4;
        }
        int i40 = 0;
        while (i40 < i6) {
            int i41 = i33;
            while (i41 < i33 + (i >>> 1)) {
                long j4 = jArr2[((i41 >>> 4) * i6) + i40 + (i41 & 15)];
                long j5 = j4 & 1229782938247303441L;
                long j6 = (j4 >>> c) & 1229782938247303441L;
                long j7 = (j4 >>> 2) & 1229782938247303441L;
                long j8 = (j4 >>> 3) & 1229782938247303441L;
                int i42 = 4;
                int i43 = 0;
                int i44 = 0;
                while (i43 < i42) {
                    int i45 = (i41 + i43) - i33;
                    int i46 = ((i45 >> 4) * i6) + i40 + (i45 & 15);
                    jArr2[i46] = jArr2[i46] ^ ((((bArr2[i44 + 1] * j6) ^ (bArr2[i44] * j5)) ^ (r30[i44 + 2] * j7)) ^ (r30[i44 + 3] * j8));
                    i43++;
                    i44 += 4;
                    i42 = 4;
                    bArr2 = bArr2;
                }
                i41++;
                c = 1;
            }
            i40 += 16;
            c = 1;
        }
        byte[] longToLittleEndian = Pack.longToLittleEndian(jArr2);
        for (int i47 = 0; i47 < i33; i47 += 16) {
            int i48 = 0;
            while (true) {
                int i49 = i34 - 1;
                if (i48 < i49) {
                    int i50 = 0;
                    while (true) {
                        int i51 = i50 + i47;
                        if (i51 < i33) {
                            GF16.decode(longToLittleEndian, ((((i47 * i6) >> 4) + i48) + i50) << 3, bArr, (i51 * i34) + i48, Math.min(16, i49 - i48));
                            i50++;
                        }
                    }
                    i48 += 16;
                }
            }
        }
    }

    public void computeRHS(long[] jArr, byte[] bArr, byte[] bArr2) {
        int i;
        int[] iArr;
        int m = this.params.getM();
        int mVecLimbs = this.params.getMVecLimbs();
        int k = this.params.getK();
        int[] fTail = this.params.getFTail();
        int i2 = ((m - 1) & 15) << 2;
        int i3 = m & 15;
        if (i3 != 0) {
            long j = (1 << (i3 << 2)) - 1;
            int i4 = k * k;
            int i5 = mVecLimbs - 1;
            int i6 = 0;
            while (i6 < i4) {
                jArr[i5] = jArr[i5] & j;
                i6++;
                i5 += mVecLimbs;
            }
        }
        long[] jArr2 = new long[mVecLimbs];
        byte[] bArr3 = new byte[mVecLimbs << 3];
        int i7 = k * mVecLimbs;
        int i8 = k - 1;
        int i9 = i8 * mVecLimbs;
        int i10 = i9 * k;
        while (true) {
            char c = 4;
            if (i8 < 0) {
                break;
            }
            int i11 = i8;
            int i12 = i9;
            int i13 = i10;
            while (i11 < k) {
                int i14 = mVecLimbs - 1;
                long j2 = jArr2[i14];
                byte[] bArr4 = bArr3;
                int i15 = (int) ((j2 >>> i2) & 15);
                jArr2[i14] = j2 << c;
                for (int i16 = mVecLimbs - 2; i16 >= 0; i16--) {
                    int i17 = i16 + 1;
                    jArr2[i17] = jArr2[i17] ^ (jArr2[i16] >>> 60);
                    jArr2[i16] = jArr2[i16] << c;
                }
                Pack.longToLittleEndian(jArr2, bArr4, 0);
                int i18 = 0;
                for (int i19 = 4; i18 < i19; i19 = 4) {
                    int i20 = fTail[i18];
                    if (i20 == 0) {
                        i = k;
                        iArr = fTail;
                    } else {
                        i = k;
                        iArr = fTail;
                        long mul = GF16.mul(i15, i20);
                        if ((i18 & 1) == 0) {
                            int i21 = i18 >> 1;
                            bArr4[i21] = (byte) (bArr4[i21] ^ ((byte) (mul & 15)));
                        } else {
                            int i22 = i18 >> 1;
                            bArr4[i22] = (byte) (bArr4[i22] ^ ((byte) ((mul & 15) << 4)));
                        }
                    }
                    i18++;
                    k = i;
                    fTail = iArr;
                }
                int i23 = k;
                int[] iArr2 = fTail;
                Pack.littleEndianToLong(bArr4, 0, jArr2);
                int i24 = i10 + i12;
                int i25 = i13 + i9;
                boolean z = i8 == i11;
                for (int i26 = 0; i26 < mVecLimbs; i26++) {
                    long j3 = jArr[i24 + i26];
                    if (!z) {
                        j3 ^= jArr[i25 + i26];
                    }
                    jArr2[i26] = jArr2[i26] ^ j3;
                }
                i11++;
                i12 += mVecLimbs;
                i13 += i7;
                bArr3 = bArr4;
                k = i23;
                fTail = iArr2;
                c = 4;
            }
            i8--;
            i9 -= mVecLimbs;
            i10 -= i7;
        }
        byte[] bArr5 = bArr3;
        Pack.longToLittleEndian(jArr2, bArr5, 0);
        for (int i27 = 0; i27 < m; i27 += 2) {
            int i28 = i27 >> 1;
            bArr2[i27] = (byte) (bArr[i27] ^ (bArr5[i28] & 15));
            int i29 = i27 + 1;
            bArr2[i29] = (byte) (((bArr5[i28] >>> 4) & 15) ^ bArr[i29]);
        }
    }

    public void ef(byte[] bArr, int i, int i2) {
        byte[] bArr2 = bArr;
        int i3 = i;
        int i4 = i2;
        int i5 = (i4 + 15) >> 4;
        long[] jArr = new long[i5];
        long[] jArr2 = new long[i5];
        long[] jArr3 = new long[i3 * i5];
        int i6 = 16;
        int k = (this.params.getK() * this.params.getO()) + 16;
        byte[] bArr3 = new byte[k >> 1];
        int i7 = k >> 4;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i8 < i3) {
            int i11 = 0;
            while (i11 < i5) {
                long j = 0;
                int i12 = 0;
                while (i12 < i6) {
                    if ((i11 << 4) + i12 < i4) {
                        j |= (bArr2[r8 + i9] & 15) << (i12 << 2);
                    }
                    i12++;
                    bArr2 = bArr;
                    i6 = 16;
                }
                jArr3[i11 + i10] = j;
                i11++;
                bArr2 = bArr;
                i6 = 16;
            }
            i8++;
            i9 += i4;
            i10 += i5;
            bArr2 = bArr;
            i6 = 16;
        }
        int i13 = 0;
        int i14 = 0;
        while (i13 < i4) {
            int max = Math.max(0, (i13 + i3) - i4);
            int i15 = i3 - 1;
            int min = Math.min(i15, i13);
            Arrays.clear(jArr);
            Arrays.clear(jArr2);
            int min2 = Math.min(i15, min + 32);
            int i16 = max * i5;
            int i17 = i16;
            int i18 = max;
            int i19 = i7;
            long j2 = -1;
            int i20 = 0;
            while (i18 <= min2) {
                int i21 = i19;
                long j3 = ~ctCompare64(i18, i14);
                byte[] bArr4 = bArr3;
                int i22 = min2;
                long j4 = (i14 - i18) >> 63;
                for (int i23 = 0; i23 < i5; i23++) {
                    jArr[i23] = jArr[i23] ^ ((j3 | (j4 & j2)) & jArr3[i17 + i23]);
                }
                i20 = (int) ((jArr[i13 >>> 4] >>> ((i13 & 15) << 2)) & 15);
                j2 = ~((-i20) >> 63);
                i18++;
                i17 += i5;
                i19 = i21;
                bArr3 = bArr4;
                min2 = i22;
            }
            byte[] bArr5 = bArr3;
            int i24 = i19;
            vecMulAddU64(i5, jArr, GF16.inv((byte) i20), jArr2);
            int i25 = max;
            int i26 = i16;
            while (i25 <= min) {
                int i27 = min;
                long j5 = (~ctCompare64(i25, i14)) & (~j2);
                long j6 = ~j5;
                int i28 = i26;
                long[] jArr4 = jArr;
                int i29 = 0;
                while (i29 < i5) {
                    jArr3[i28] = (j6 & jArr3[i28]) | (j5 & jArr2[i29]);
                    i29++;
                    i28++;
                }
                i25++;
                i26 += i5;
                min = i27;
                jArr = jArr4;
            }
            long[] jArr5 = jArr;
            i3 = i;
            int i30 = max;
            int i31 = i16;
            while (i30 < i3) {
                vecMulAddU64(i5, jArr2, (byte) (((int) ((jArr3[(i13 >>> 4) + i31] >>> ((i13 & 15) << 2)) & 15)) & (i30 > i14 ? -1 : 0)), jArr3, i31);
                i30++;
                i31 += i5;
            }
            if (i20 != 0) {
                i14++;
            }
            i13++;
            i4 = i2;
            jArr = jArr5;
            i7 = i24;
            bArr3 = bArr5;
        }
        int i32 = i7;
        byte[] bArr6 = bArr3;
        int i33 = 0;
        int i34 = 0;
        int i35 = 0;
        while (i35 < i3) {
            Pack.longToLittleEndian(jArr3, i33, i32, bArr6, 0);
            GF16.decode(bArr6, 0, bArr, i34, i2);
            i34 += i2;
            i35++;
            i33 += i5;
        }
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        byte[] bArr5;
        byte[] bArr6;
        byte[] bArr7;
        byte[] bArr8;
        byte[] bArr9;
        byte[] bArr10;
        byte[] bArr11;
        byte[] bArr12;
        int i;
        int i2;
        int i3;
        int i4;
        byte[] bArr13;
        byte[] bArr14;
        int i5;
        byte[] bArr15;
        int i6;
        byte[] bArr16;
        byte[] bArr17;
        byte[] bArr18;
        byte[] bArr19;
        byte[] bArr20;
        int i7;
        int i8;
        int i9;
        int i10;
        SHAKEDigest sHAKEDigest;
        long[] jArr;
        int i11;
        long[] jArr2;
        long[] jArr3;
        long[] jArr4;
        int i12;
        int i13;
        int k = this.params.getK();
        int v = this.params.getV();
        int o2 = this.params.getO();
        int n = this.params.getN();
        int m = this.params.getM();
        int vBytes = this.params.getVBytes();
        int oBytes = this.params.getOBytes();
        int saltBytes = this.params.getSaltBytes();
        int mVecLimbs = this.params.getMVecLimbs();
        int p1Limbs = this.params.getP1Limbs();
        int pkSeedBytes = this.params.getPkSeedBytes();
        int digestBytes = this.params.getDigestBytes();
        int skSeedBytes = this.params.getSkSeedBytes();
        byte[] bArr21 = new byte[this.params.getMBytes()];
        byte[] bArr22 = new byte[m];
        byte[] bArr23 = new byte[m];
        byte[] bArr24 = new byte[saltBytes];
        int i14 = k * vBytes;
        int rBytes = this.params.getRBytes() + i14;
        int i15 = i14;
        byte[] bArr25 = new byte[rBytes];
        int i16 = v * k;
        int i17 = rBytes;
        byte[] bArr26 = new byte[i16];
        int i18 = k * o2;
        int i19 = k * n;
        int i20 = i18 + 1;
        byte[] bArr27 = new byte[((m + 7) / 8) * 8 * i20];
        byte[] bArr28 = new byte[i20];
        byte[] bArr29 = new byte[i19];
        int i21 = digestBytes + saltBytes;
        byte[] bArr30 = new byte[i19];
        int i22 = i21 + skSeedBytes;
        int i23 = i19;
        int i24 = i22 + 1;
        byte[] bArr31 = bArr21;
        byte[] bArr32 = new byte[i24];
        int i25 = i24;
        int sigBytes = this.params.getSigBytes();
        byte[] bArr33 = new byte[sigBytes];
        int i26 = sigBytes;
        long[] jArr5 = new long[this.params.getP2Limbs() + p1Limbs];
        int i27 = v * o2;
        byte[] bArr34 = new byte[i27];
        long[] jArr6 = new long[i18 * mVecLimbs];
        int i28 = i18;
        long[] jArr7 = new long[k * k * mVecLimbs];
        SHAKEDigest sHAKEDigest2 = new SHAKEDigest(256);
        try {
            byte[] seedSk = this.privKey.getSeedSk();
            int i29 = oBytes + pkSeedBytes;
            i = k;
            byte[] bArr35 = new byte[i29];
            try {
                sHAKEDigest2.update(seedSk, 0, seedSk.length);
                sHAKEDigest2.doFinal(bArr35, 0, i29);
                GF16.decode(bArr35, pkSeedBytes, bArr34, 0, i27);
                Utils.expandP1P2(this.params, jArr5, bArr35);
                int i30 = o2 * mVecLimbs;
                int i31 = 0;
                int i32 = 0;
                int i33 = 0;
                int i34 = 0;
                while (i31 < v) {
                    byte[] bArr36 = seedSk;
                    int i35 = i32;
                    int i36 = i33;
                    int i37 = i31;
                    while (i37 < v) {
                        if (i37 == i31) {
                            i34 += mVecLimbs;
                            i13 = v;
                        } else {
                            i13 = v;
                            int i38 = p1Limbs;
                            int i39 = 0;
                            while (i39 < o2) {
                                GF16Utils.mVecMulAdd(mVecLimbs, jArr5, i34, bArr34[i35 + i39], jArr5, i33 + i38);
                                GF16Utils.mVecMulAdd(mVecLimbs, jArr5, i34, bArr34[i32 + i39], jArr5, i36 + i38);
                                i39++;
                                i38 += mVecLimbs;
                            }
                            i34 += mVecLimbs;
                        }
                        i37++;
                        i35 += o2;
                        i36 += i30;
                        v = i13;
                    }
                    i31++;
                    i32 += o2;
                    i33 += i30;
                    seedSk = bArr36;
                }
                byte[] bArr37 = seedSk;
                i2 = v;
                Arrays.fill(bArr35, (byte) 0);
                sHAKEDigest2.update(bArr, 0, bArr.length);
                sHAKEDigest2.doFinal(bArr32, 0, digestBytes);
                bArr24 = bArr24;
                this.random.nextBytes(bArr24);
                i3 = saltBytes;
                System.arraycopy(bArr24, 0, bArr32, digestBytes, i3);
                System.arraycopy(bArr37, 0, bArr32, i21, skSeedBytes);
                i4 = i22;
                sHAKEDigest2.update(bArr32, 0, i4);
                sHAKEDigest2.doFinal(bArr24, 0, i3);
                System.arraycopy(bArr24, 0, bArr32, digestBytes, i3);
                sHAKEDigest2.update(bArr32, 0, i21);
                bArr13 = bArr31;
                try {
                    sHAKEDigest2.doFinal(bArr13, 0, this.params.getMBytes());
                    bArr14 = bArr22;
                } catch (Throwable th) {
                    th = th;
                    bArr2 = bArr24;
                    bArr3 = bArr32;
                    bArr11 = bArr13;
                    bArr4 = bArr23;
                    bArr5 = bArr22;
                }
            } catch (Throwable th2) {
                th = th2;
                bArr3 = bArr32;
                bArr4 = bArr23;
                bArr5 = bArr22;
                bArr6 = bArr25;
                bArr7 = bArr26;
                bArr8 = bArr27;
                bArr9 = bArr28;
                bArr12 = bArr29;
                bArr10 = bArr30;
                bArr11 = bArr31;
                bArr2 = bArr24;
            }
        } catch (Throwable th3) {
            th = th3;
            bArr2 = bArr24;
            bArr3 = bArr32;
            bArr4 = bArr23;
            bArr5 = bArr22;
            bArr6 = bArr25;
            bArr7 = bArr26;
        }
        try {
            GF16.decode(bArr13, bArr14, m);
            long[] jArr8 = new long[i16 * mVecLimbs];
            int i40 = i2;
            byte[] bArr38 = new byte[i40];
            int i41 = 0;
            while (true) {
                if (i41 > 255) {
                    i5 = i3;
                    bArr15 = bArr38;
                    i6 = i40;
                    bArr16 = bArr24;
                    bArr17 = bArr32;
                    bArr18 = bArr13;
                    bArr5 = bArr14;
                    bArr4 = bArr23;
                    bArr6 = bArr25;
                    bArr7 = bArr26;
                    bArr8 = bArr27;
                    bArr19 = bArr28;
                    bArr20 = bArr29;
                    i7 = i23;
                    i8 = i26;
                    i9 = i;
                    break;
                }
                try {
                    bArr32[i4] = (byte) i41;
                    int i42 = i4;
                    int i43 = i25;
                    int i44 = 0;
                    sHAKEDigest2.update(bArr32, 0, i43);
                    byte[] bArr39 = bArr32;
                    bArr6 = bArr25;
                    int i45 = i17;
                    try {
                        sHAKEDigest2.doFinal(bArr6, 0, i45);
                        i17 = i45;
                        i9 = i;
                        while (i44 < i9) {
                            int i46 = i41;
                            byte[] bArr40 = bArr38;
                            bArr31 = bArr13;
                            bArr7 = bArr26;
                            try {
                                GF16.decode(bArr6, i44 * vBytes, bArr7, i44 * i40, i40);
                                i44++;
                                bArr26 = bArr7;
                                i41 = i46;
                                bArr38 = bArr40;
                                bArr13 = bArr31;
                            } catch (Throwable th4) {
                                th = th4;
                                bArr2 = bArr24;
                                bArr5 = bArr14;
                                bArr3 = bArr39;
                                bArr4 = bArr23;
                                bArr8 = bArr27;
                                bArr9 = bArr28;
                                bArr12 = bArr29;
                                bArr10 = bArr30;
                                bArr11 = bArr31;
                                Arrays.fill(bArr11, (byte) 0);
                                Arrays.fill(bArr5, (byte) 0);
                                Arrays.fill(bArr4, (byte) 0);
                                Arrays.fill(bArr2, (byte) 0);
                                Arrays.fill(bArr6, (byte) 0);
                                Arrays.fill(bArr7, (byte) 0);
                                Arrays.fill(bArr8, (byte) 0);
                                Arrays.fill(bArr12, (byte) 0);
                                Arrays.fill(bArr9, (byte) 0);
                                Arrays.fill(bArr10, (byte) 0);
                                Arrays.fill(bArr3, (byte) 0);
                                throw th;
                            }
                        }
                        i10 = i41;
                        byte[] bArr41 = bArr13;
                        bArr7 = bArr26;
                        sHAKEDigest = sHAKEDigest2;
                        byte[] bArr42 = bArr14;
                        bArr15 = bArr38;
                        bArr8 = bArr27;
                        i6 = i40;
                        i5 = i3;
                        jArr = jArr8;
                        bArr16 = bArr24;
                        bArr4 = bArr23;
                        bArr29 = bArr29;
                        i11 = i15;
                        i7 = i23;
                        jArr2 = jArr5;
                        i8 = i26;
                        bArr17 = bArr39;
                        bArr18 = bArr41;
                        bArr5 = bArr42;
                        try {
                            GF16Utils.mulAddMatXMMat(mVecLimbs, bArr7, jArr5, p1Limbs, jArr6, i9, i6, o2);
                            GF16Utils.mulAddMUpperTriangularMatXMatTrans(mVecLimbs, jArr2, bArr7, jArr, i6, i9);
                            GF16Utils.mulAddMatXMMat(mVecLimbs, bArr7, jArr, jArr7, i9, i6);
                            jArr3 = jArr7;
                            computeRHS(jArr3, bArr5, bArr4);
                            jArr4 = jArr6;
                            computeA(jArr4, bArr8);
                            bArr6 = bArr6;
                            bArr19 = bArr28;
                            i12 = i28;
                            try {
                                GF16.decode(bArr6, i11, bArr19, 0, i12);
                                bArr20 = bArr29;
                            } catch (Throwable th5) {
                                th = th5;
                                bArr20 = bArr29;
                                bArr12 = bArr20;
                                bArr9 = bArr19;
                                bArr10 = bArr30;
                                bArr2 = bArr16;
                                bArr11 = bArr18;
                                bArr3 = bArr17;
                                Arrays.fill(bArr11, (byte) 0);
                                Arrays.fill(bArr5, (byte) 0);
                                Arrays.fill(bArr4, (byte) 0);
                                Arrays.fill(bArr2, (byte) 0);
                                Arrays.fill(bArr6, (byte) 0);
                                Arrays.fill(bArr7, (byte) 0);
                                Arrays.fill(bArr8, (byte) 0);
                                Arrays.fill(bArr12, (byte) 0);
                                Arrays.fill(bArr9, (byte) 0);
                                Arrays.fill(bArr10, (byte) 0);
                                Arrays.fill(bArr3, (byte) 0);
                                throw th;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            bArr6 = bArr6;
                            bArr19 = bArr28;
                            bArr20 = bArr29;
                            bArr12 = bArr20;
                            bArr9 = bArr19;
                            bArr10 = bArr30;
                            bArr2 = bArr16;
                            bArr11 = bArr18;
                            bArr3 = bArr17;
                            Arrays.fill(bArr11, (byte) 0);
                            Arrays.fill(bArr5, (byte) 0);
                            Arrays.fill(bArr4, (byte) 0);
                            Arrays.fill(bArr2, (byte) 0);
                            Arrays.fill(bArr6, (byte) 0);
                            Arrays.fill(bArr7, (byte) 0);
                            Arrays.fill(bArr8, (byte) 0);
                            Arrays.fill(bArr12, (byte) 0);
                            Arrays.fill(bArr9, (byte) 0);
                            Arrays.fill(bArr10, (byte) 0);
                            Arrays.fill(bArr3, (byte) 0);
                            throw th;
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        bArr16 = bArr24;
                        bArr18 = bArr13;
                        bArr5 = bArr14;
                        bArr17 = bArr39;
                        bArr4 = bArr23;
                        bArr7 = bArr26;
                        bArr8 = bArr27;
                        bArr19 = bArr28;
                        bArr20 = bArr29;
                        bArr12 = bArr20;
                        bArr9 = bArr19;
                        bArr10 = bArr30;
                        bArr2 = bArr16;
                        bArr11 = bArr18;
                        bArr3 = bArr17;
                        Arrays.fill(bArr11, (byte) 0);
                        Arrays.fill(bArr5, (byte) 0);
                        Arrays.fill(bArr4, (byte) 0);
                        Arrays.fill(bArr2, (byte) 0);
                        Arrays.fill(bArr6, (byte) 0);
                        Arrays.fill(bArr7, (byte) 0);
                        Arrays.fill(bArr8, (byte) 0);
                        Arrays.fill(bArr12, (byte) 0);
                        Arrays.fill(bArr9, (byte) 0);
                        Arrays.fill(bArr10, (byte) 0);
                        Arrays.fill(bArr3, (byte) 0);
                        throw th;
                    }
                    try {
                        if (sampleSolution(bArr8, bArr4, bArr19, bArr20)) {
                            break;
                        }
                        Arrays.fill(jArr4, 0L);
                        Arrays.fill(jArr3, 0L);
                        jArr7 = jArr3;
                        jArr6 = jArr4;
                        i28 = i12;
                        i41 = i10 + 1;
                        bArr29 = bArr20;
                        bArr28 = bArr19;
                        bArr25 = bArr6;
                        i = i9;
                        bArr26 = bArr7;
                        bArr27 = bArr8;
                        bArr38 = bArr15;
                        i40 = i6;
                        jArr8 = jArr;
                        i25 = i43;
                        i26 = i8;
                        jArr5 = jArr2;
                        i4 = i42;
                        bArr24 = bArr16;
                        i23 = i7;
                        bArr13 = bArr18;
                        bArr32 = bArr17;
                        i15 = i11;
                        bArr23 = bArr4;
                        bArr14 = bArr5;
                        sHAKEDigest2 = sHAKEDigest;
                        i3 = i5;
                    } catch (Throwable th8) {
                        th = th8;
                        bArr12 = bArr20;
                        bArr9 = bArr19;
                        bArr10 = bArr30;
                        bArr2 = bArr16;
                        bArr11 = bArr18;
                        bArr3 = bArr17;
                        Arrays.fill(bArr11, (byte) 0);
                        Arrays.fill(bArr5, (byte) 0);
                        Arrays.fill(bArr4, (byte) 0);
                        Arrays.fill(bArr2, (byte) 0);
                        Arrays.fill(bArr6, (byte) 0);
                        Arrays.fill(bArr7, (byte) 0);
                        Arrays.fill(bArr8, (byte) 0);
                        Arrays.fill(bArr12, (byte) 0);
                        Arrays.fill(bArr9, (byte) 0);
                        Arrays.fill(bArr10, (byte) 0);
                        Arrays.fill(bArr3, (byte) 0);
                        throw th;
                    }
                } catch (Throwable th9) {
                    th = th9;
                    bArr16 = bArr24;
                    bArr17 = bArr32;
                    bArr18 = bArr13;
                    bArr5 = bArr14;
                    bArr4 = bArr23;
                    bArr6 = bArr25;
                }
            }
            int i47 = 0;
            int i48 = 0;
            int i49 = 0;
            int i50 = 0;
            while (i47 < i9) {
                bArr12 = bArr20;
                int i51 = i9;
                bArr9 = bArr19;
                try {
                    GF16Utils.matMul(bArr34, bArr20, i48, bArr15, o2, i6);
                    Bytes.xor(i6, bArr7, i49, bArr15, bArr30, i50);
                    bArr10 = bArr30;
                    try {
                        System.arraycopy(bArr12, i48, bArr10, i50 + i6, o2);
                        i47++;
                        i48 += o2;
                        i50 += n;
                        i49 += i6;
                        bArr20 = bArr12;
                        bArr30 = bArr10;
                        bArr19 = bArr9;
                        i9 = i51;
                    } catch (Throwable th10) {
                        th = th10;
                        bArr2 = bArr16;
                        bArr11 = bArr18;
                        bArr3 = bArr17;
                        Arrays.fill(bArr11, (byte) 0);
                        Arrays.fill(bArr5, (byte) 0);
                        Arrays.fill(bArr4, (byte) 0);
                        Arrays.fill(bArr2, (byte) 0);
                        Arrays.fill(bArr6, (byte) 0);
                        Arrays.fill(bArr7, (byte) 0);
                        Arrays.fill(bArr8, (byte) 0);
                        Arrays.fill(bArr12, (byte) 0);
                        Arrays.fill(bArr9, (byte) 0);
                        Arrays.fill(bArr10, (byte) 0);
                        Arrays.fill(bArr3, (byte) 0);
                        throw th;
                    }
                } catch (Throwable th11) {
                    th = th11;
                    bArr10 = bArr30;
                    bArr2 = bArr16;
                    bArr11 = bArr18;
                    bArr3 = bArr17;
                    Arrays.fill(bArr11, (byte) 0);
                    Arrays.fill(bArr5, (byte) 0);
                    Arrays.fill(bArr4, (byte) 0);
                    Arrays.fill(bArr2, (byte) 0);
                    Arrays.fill(bArr6, (byte) 0);
                    Arrays.fill(bArr7, (byte) 0);
                    Arrays.fill(bArr8, (byte) 0);
                    Arrays.fill(bArr12, (byte) 0);
                    Arrays.fill(bArr9, (byte) 0);
                    Arrays.fill(bArr10, (byte) 0);
                    Arrays.fill(bArr3, (byte) 0);
                    throw th;
                }
            }
            bArr12 = bArr20;
            bArr9 = bArr19;
            bArr10 = bArr30;
            GF16.encode(bArr10, bArr33, i7);
            bArr2 = bArr16;
            try {
                System.arraycopy(bArr2, 0, bArr33, i8 - i5, i5);
                byte[] concatenate = Arrays.concatenate(bArr33, bArr);
                Arrays.fill(bArr18, (byte) 0);
                Arrays.fill(bArr5, (byte) 0);
                Arrays.fill(bArr4, (byte) 0);
                Arrays.fill(bArr2, (byte) 0);
                Arrays.fill(bArr6, (byte) 0);
                Arrays.fill(bArr7, (byte) 0);
                Arrays.fill(bArr8, (byte) 0);
                Arrays.fill(bArr12, (byte) 0);
                Arrays.fill(bArr9, (byte) 0);
                Arrays.fill(bArr10, (byte) 0);
                Arrays.fill(bArr17, (byte) 0);
                return concatenate;
            } catch (Throwable th12) {
                th = th12;
                bArr11 = bArr18;
                bArr3 = bArr17;
                Arrays.fill(bArr11, (byte) 0);
                Arrays.fill(bArr5, (byte) 0);
                Arrays.fill(bArr4, (byte) 0);
                Arrays.fill(bArr2, (byte) 0);
                Arrays.fill(bArr6, (byte) 0);
                Arrays.fill(bArr7, (byte) 0);
                Arrays.fill(bArr8, (byte) 0);
                Arrays.fill(bArr12, (byte) 0);
                Arrays.fill(bArr9, (byte) 0);
                Arrays.fill(bArr10, (byte) 0);
                Arrays.fill(bArr3, (byte) 0);
                throw th;
            }
        } catch (Throwable th13) {
            th = th13;
            bArr2 = bArr24;
            bArr3 = bArr32;
            bArr11 = bArr13;
            bArr5 = bArr14;
            bArr4 = bArr23;
            bArr6 = bArr25;
            bArr7 = bArr26;
            bArr8 = bArr27;
            bArr9 = bArr28;
            bArr12 = bArr29;
            bArr10 = bArr30;
            Arrays.fill(bArr11, (byte) 0);
            Arrays.fill(bArr5, (byte) 0);
            Arrays.fill(bArr4, (byte) 0);
            Arrays.fill(bArr2, (byte) 0);
            Arrays.fill(bArr6, (byte) 0);
            Arrays.fill(bArr7, (byte) 0);
            Arrays.fill(bArr8, (byte) 0);
            Arrays.fill(bArr12, (byte) 0);
            Arrays.fill(bArr9, (byte) 0);
            Arrays.fill(bArr10, (byte) 0);
            Arrays.fill(bArr3, (byte) 0);
            throw th;
        }
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z, CipherParameters cipherParameters) {
        SecureRandom secureRandom;
        if (!z) {
            MayoPublicKeyParameters mayoPublicKeyParameters = (MayoPublicKeyParameters) cipherParameters;
            this.pubKey = mayoPublicKeyParameters;
            this.params = mayoPublicKeyParameters.getParameters();
            this.privKey = null;
            this.random = null;
            return;
        }
        this.pubKey = null;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.privKey = (MayoPrivateKeyParameters) parametersWithRandom.getParameters();
            secureRandom = parametersWithRandom.getRandom();
        } else {
            this.privKey = (MayoPrivateKeyParameters) cipherParameters;
            secureRandom = CryptoServicesRegistrar.getSecureRandom();
        }
        this.random = secureRandom;
        this.params = this.privKey.getParameters();
    }

    public boolean sampleSolution(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        int i;
        boolean z;
        int i2;
        byte[] bArr5 = bArr4;
        int k = this.params.getK();
        int o2 = this.params.getO();
        int m = this.params.getM();
        int aCols = this.params.getACols();
        int i3 = k * o2;
        byte b = 0;
        System.arraycopy(bArr3, 0, bArr5, 0, i3);
        byte[] bArr6 = new byte[m];
        int i4 = i3 + 1;
        GF16Utils.matMul(bArr, bArr3, 0, bArr6, i4, m);
        int i5 = i3;
        int i6 = 0;
        while (i6 < m) {
            bArr[i5] = (byte) (bArr2[i6] ^ bArr6[i6]);
            i6++;
            i5 += i4;
        }
        ef(bArr, m, aCols);
        int i7 = m - 1;
        int i8 = i7 * aCols;
        int i9 = i8;
        int i10 = 0;
        boolean z2 = false;
        while (true) {
            i = aCols - 1;
            z = true;
            if (i10 >= i) {
                break;
            }
            if (bArr[i9] == 0) {
                z = false;
            }
            z2 |= z;
            i10++;
            i9++;
        }
        if (!z2) {
            return false;
        }
        while (i7 >= 0) {
            int min = Math.min((32 / (m - i7)) + i7, i3);
            int i11 = i7;
            byte b2 = b;
            while (i11 <= min) {
                byte b3 = (byte) ((-(bArr[i8 + i11] & 255)) >> 31);
                byte b4 = (byte) ((~b2) & b3 & bArr[(i8 + aCols) - 1]);
                bArr5[i11] = (byte) (bArr5[i11] ^ b4);
                int i12 = i11;
                int i13 = i;
                int i14 = 0;
                while (i14 < i7) {
                    byte b5 = b3;
                    long j = 0;
                    int i15 = 0;
                    int i16 = 0;
                    int i17 = min;
                    while (true) {
                        if (i15 >= 8) {
                            break;
                        }
                        j ^= (bArr[i12 + i16] & 255) << (i15 << 3);
                        i15++;
                        i16 += aCols;
                        m = m;
                    }
                    int i18 = m;
                    long mulFx8 = GF16Utils.mulFx8(b4, j);
                    int i19 = 0;
                    int i20 = 0;
                    for (i2 = 8; i19 < i2; i2 = 8) {
                        int i21 = i13 + i20;
                        bArr[i21] = (byte) (bArr[i21] ^ ((byte) ((mulFx8 >> (i19 << 3)) & 15)));
                        i19++;
                        i20 += aCols;
                        i11 = i11;
                    }
                    i14 += 8;
                    int i22 = aCols << 3;
                    i12 += i22;
                    i13 += i22;
                    b3 = b5;
                    min = i17;
                    m = i18;
                }
                b2 = (byte) (b2 | b3);
                i11++;
                bArr5 = bArr4;
            }
            i7--;
            i8 -= aCols;
            bArr5 = bArr4;
            b = 0;
            z = true;
        }
        return z;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        int m = this.params.getM();
        int n = this.params.getN();
        int k = this.params.getK();
        int i = k * n;
        int p1Limbs = this.params.getP1Limbs();
        int p2Limbs = this.params.getP2Limbs();
        int p3Limbs = this.params.getP3Limbs();
        int mBytes = this.params.getMBytes();
        int sigBytes = this.params.getSigBytes();
        int digestBytes = this.params.getDigestBytes();
        int saltBytes = this.params.getSaltBytes();
        int mVecLimbs = this.params.getMVecLimbs();
        byte[] bArr3 = new byte[mBytes];
        byte[] bArr4 = new byte[m];
        byte[] bArr5 = new byte[m << 1];
        byte[] bArr6 = new byte[i];
        int i2 = p1Limbs + p2Limbs;
        long[] jArr = new long[i2 + p3Limbs];
        byte[] bArr7 = new byte[digestBytes + saltBytes];
        byte[] encoded = this.pubKey.getEncoded();
        Utils.expandP1P2(this.params, jArr, encoded);
        Utils.unpackMVecs(encoded, this.params.getPkSeedBytes(), jArr, i2, p3Limbs / mVecLimbs, m);
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update(bArr, 0, bArr.length);
        sHAKEDigest.doFinal(bArr7, 0, digestBytes);
        sHAKEDigest.update(bArr7, 0, digestBytes);
        sHAKEDigest.update(bArr2, sigBytes - saltBytes, saltBytes);
        sHAKEDigest.doFinal(bArr3, 0, mBytes);
        GF16.decode(bArr3, bArr4, m);
        GF16.decode(bArr2, bArr6, i);
        long[] jArr2 = new long[k * k * mVecLimbs];
        long[] jArr3 = new long[i * mVecLimbs];
        MayoParameters mayoParameters = this.params;
        mayoGenericMCalculatePS(mayoParameters, jArr, p1Limbs, i2, bArr6, mayoParameters.getV(), this.params.getO(), k, jArr3);
        mayoGenericMCalculateSPS(jArr3, bArr6, mVecLimbs, k, n, jArr2);
        computeRHS(jArr2, new byte[m], bArr5);
        return Arrays.constantTimeAreEqual(m, bArr5, 0, bArr4, 0);
    }

    private static void vecMulAddU64(int i, long[] jArr, byte b, long[] jArr2, int i2) {
        int mulTable = mulTable(b & 255);
        for (int i3 = 0; i3 < i; i3++) {
            long j = jArr[i3];
            int i4 = i2 + i3;
            jArr2[i4] = ((((j >>> 3) & 1229782938247303441L) * ((mulTable >>> 24) & 15)) ^ ((((j & 1229782938247303441L) * (mulTable & GF2Field.MASK)) ^ (((j >>> 1) & 1229782938247303441L) * ((mulTable >>> 8) & 15))) ^ (((j >>> 2) & 1229782938247303441L) * ((mulTable >>> 16) & 15)))) ^ jArr2[i4];
        }
    }
}
