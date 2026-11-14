package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.digests.Blake2xsDigest;
import org.bouncycastle.crypto.digests.SparkleDigest;
import org.bouncycastle.crypto.engines.AEADBaseEngine;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class SparkleEngine extends AEADBaseEngine {
    private static final int[] RCON = {-1209970334, -1083090816, 951376470, 844003128, -1156479509, 1333558103, -809524792, -1028445891};
    private final int CAP_MASK;
    private final int KEY_WORDS;
    private final int RATE_WORDS;
    private final int SPARKLE_STEPS_BIG;
    private final int SPARKLE_STEPS_SLIM;
    private final int STATE_WORDS;
    private final int TAG_WORDS;
    private final int _A0;
    private final int _A1;
    private final int _M2;
    private final int _M3;
    private boolean encrypted;
    private final int[] k;
    private final int[] npub;
    private final int[] state;

    /* renamed from: org.bouncycastle.crypto.engines.SparkleEngine$1, reason: invalid class name */
    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters;

        static {
            int[] iArr = new int[SparkleParameters.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters = iArr;
            try {
                iArr[SparkleParameters.SCHWAEMM128_128.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters[SparkleParameters.SCHWAEMM256_128.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters[SparkleParameters.SCHWAEMM192_192.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters[SparkleParameters.SCHWAEMM256_256.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public enum SparkleParameters {
        SCHWAEMM128_128,
        SCHWAEMM256_128,
        SCHWAEMM192_192,
        SCHWAEMM256_256
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SparkleEngine(org.bouncycastle.crypto.engines.SparkleEngine.SparkleParameters r9) {
        /*
            Method dump skipped, instructions count: 182
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.engines.SparkleEngine.<init>(org.bouncycastle.crypto.engines.SparkleEngine$SparkleParameters):void");
    }

    private static int ELL(int i) {
        return (i & Blake2xsDigest.UNKNOWN_DIGEST_LENGTH) ^ Integers.rotateRight(i, 16);
    }

    private static void sparkle_opt(int[] iArr, int i) {
        int length = iArr.length;
        if (length == 8) {
            sparkle_opt8(iArr, i);
        } else if (length == 12) {
            sparkle_opt12(iArr, i);
        } else {
            if (length != 16) {
                throw new IllegalStateException();
            }
            sparkle_opt16(iArr, i);
        }
    }

    public static void sparkle_opt12(SparkleDigest.Friend friend, int[] iArr, int i) {
        if (friend == null) {
            throw new NullPointerException("This method is only for use by SparkleDigest");
        }
        sparkle_opt12(iArr, i);
    }

    public static void sparkle_opt16(SparkleDigest.Friend friend, int[] iArr, int i) {
        if (friend == null) {
            throw new NullPointerException("This method is only for use by SparkleDigest");
        }
        sparkle_opt16(iArr, i);
    }

    public static void sparkle_opt8(int[] iArr, int i) {
        char c = 0;
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = iArr[2];
        int i5 = iArr[3];
        int i6 = iArr[4];
        int i7 = iArr[5];
        int i8 = iArr[6];
        int i9 = iArr[7];
        int i10 = 0;
        while (i10 < i) {
            int[] iArr2 = RCON;
            int i11 = i3 ^ iArr2[i10 & 7];
            int i12 = i5 ^ i10;
            int i13 = iArr2[c];
            int rotateRight = Integers.rotateRight(i11, 31) + i2;
            int rotateRight2 = i11 ^ Integers.rotateRight(rotateRight, 24);
            int rotateRight3 = Integers.rotateRight(rotateRight2, 17) + (rotateRight ^ i13);
            int rotateRight4 = rotateRight2 ^ Integers.rotateRight(rotateRight3, 17);
            int i14 = (rotateRight3 ^ i13) + rotateRight4;
            int rotateRight5 = rotateRight4 ^ Integers.rotateRight(i14, 31);
            int rotateRight6 = Integers.rotateRight(rotateRight5, 24) + (i14 ^ i13);
            int rotateRight7 = rotateRight5 ^ Integers.rotateRight(rotateRight6, 16);
            int i15 = rotateRight6 ^ i13;
            int i16 = iArr2[1];
            int rotateRight8 = Integers.rotateRight(i12, 31) + i4;
            int rotateRight9 = i12 ^ Integers.rotateRight(rotateRight8, 24);
            int rotateRight10 = Integers.rotateRight(rotateRight9, 17) + (rotateRight8 ^ i16);
            int rotateRight11 = rotateRight9 ^ Integers.rotateRight(rotateRight10, 17);
            int i17 = (rotateRight10 ^ i16) + rotateRight11;
            int rotateRight12 = rotateRight11 ^ Integers.rotateRight(i17, 31);
            int rotateRight13 = Integers.rotateRight(rotateRight12, 24) + (i17 ^ i16);
            int rotateRight14 = rotateRight12 ^ Integers.rotateRight(rotateRight13, 16);
            int i18 = rotateRight13 ^ i16;
            int i19 = iArr2[2];
            int rotateRight15 = Integers.rotateRight(i7, 31) + i6;
            int rotateRight16 = i7 ^ Integers.rotateRight(rotateRight15, 24);
            int rotateRight17 = Integers.rotateRight(rotateRight16, 17) + (rotateRight15 ^ i19);
            int rotateRight18 = rotateRight16 ^ Integers.rotateRight(rotateRight17, 17);
            int i20 = (rotateRight17 ^ i19) + rotateRight18;
            int rotateRight19 = rotateRight18 ^ Integers.rotateRight(i20, 31);
            int rotateRight20 = Integers.rotateRight(rotateRight19, 24) + (i20 ^ i19);
            int rotateRight21 = rotateRight19 ^ Integers.rotateRight(rotateRight20, 16);
            int i21 = iArr2[3];
            int rotateRight22 = Integers.rotateRight(i9, 31) + i8;
            int rotateRight23 = i9 ^ Integers.rotateRight(rotateRight22, 24);
            int rotateRight24 = Integers.rotateRight(rotateRight23, 17) + (rotateRight22 ^ i21);
            int rotateRight25 = Integers.rotateRight(rotateRight24, 17) ^ rotateRight23;
            int i22 = (rotateRight24 ^ i21) + rotateRight25;
            int rotateRight26 = rotateRight25 ^ Integers.rotateRight(i22, 31);
            int rotateRight27 = Integers.rotateRight(rotateRight26, 24) + (i22 ^ i21);
            int rotateRight28 = rotateRight26 ^ Integers.rotateRight(rotateRight27, 16);
            int i23 = rotateRight27 ^ i21;
            int ELL = ELL(i15 ^ i18);
            int ELL2 = ELL(rotateRight7 ^ rotateRight14);
            int i24 = (i23 ^ i18) ^ ELL2;
            int i25 = (rotateRight28 ^ rotateRight14) ^ ELL;
            int i26 = ELL ^ (rotateRight21 ^ rotateRight7);
            i10++;
            i7 = rotateRight7;
            i8 = i18;
            i9 = rotateRight14;
            i5 = i26;
            i4 = ((rotateRight20 ^ i19) ^ i15) ^ ELL2;
            i3 = i25;
            i6 = i15;
            i2 = i24;
            c = 0;
        }
        iArr[c] = i2;
        iArr[1] = i3;
        iArr[2] = i4;
        iArr[3] = i5;
        iArr[4] = i6;
        iArr[5] = i7;
        iArr[6] = i8;
        iArr[7] = i9;
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ int doFinal(byte[] bArr, int i) throws IllegalStateException, InvalidCipherTextException {
        return super.doFinal(bArr, i);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void finishAAD(AEADBaseEngine.State state, boolean z) {
        finishAAD2(state);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ String getAlgorithmName() {
        return super.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public /* bridge */ /* synthetic */ int getIVBytesSize() {
        return super.getIVBytesSize();
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public /* bridge */ /* synthetic */ int getKeyBytesSize() {
        return super.getKeyBytesSize();
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ byte[] getMac() {
        return super.getMac();
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ int getOutputSize(int i) {
        return super.getOutputSize(i);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ int getUpdateOutputSize(int i) {
        return super.getUpdateOutputSize(i);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void init(boolean z, CipherParameters cipherParameters) {
        super.init(z, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void processAADByte(byte b) {
        super.processAADByte(b);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void processAADBytes(byte[] bArr, int i, int i2) {
        super.processAADBytes(bArr, i, i2);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferAAD(byte[] bArr, int i) {
        int i2 = 0;
        while (true) {
            int i3 = this.RATE_WORDS;
            if (i2 >= i3 / 2) {
                sparkle_opt(this.state, this.SPARKLE_STEPS_SLIM);
                return;
            }
            int i4 = (i3 / 2) + i2;
            int[] iArr = this.state;
            int i5 = iArr[i2];
            int i6 = iArr[i4];
            int littleEndianToInt = Pack.littleEndianToInt(bArr, (i2 * 4) + i);
            int littleEndianToInt2 = Pack.littleEndianToInt(bArr, (i4 * 4) + i);
            int[] iArr2 = this.state;
            int i7 = this.RATE_WORDS;
            iArr2[i2] = (littleEndianToInt ^ i6) ^ iArr2[i7 + i2];
            iArr2[i4] = ((i6 ^ i5) ^ littleEndianToInt2) ^ iArr2[i7 + (this.CAP_MASK & i4)];
            i2++;
        }
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferDecrypt(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = 0;
        while (true) {
            int i4 = this.RATE_WORDS;
            if (i3 >= i4 / 2) {
                sparkle_opt(this.state, this.SPARKLE_STEPS_SLIM);
                this.encrypted = true;
                return;
            }
            int i5 = (i4 / 2) + i3;
            int[] iArr = this.state;
            int i6 = iArr[i3];
            int i7 = iArr[i5];
            int i8 = i3 * 4;
            int littleEndianToInt = Pack.littleEndianToInt(bArr, i + i8);
            int i9 = i5 * 4;
            int littleEndianToInt2 = Pack.littleEndianToInt(bArr, i + i9);
            int[] iArr2 = this.state;
            int i10 = this.RATE_WORDS;
            iArr2[i3] = ((i6 ^ i7) ^ littleEndianToInt) ^ iArr2[i10 + i3];
            iArr2[i5] = (i6 ^ littleEndianToInt2) ^ iArr2[i10 + (this.CAP_MASK & i5)];
            Pack.intToLittleEndian(littleEndianToInt ^ i6, bArr2, i2 + i8);
            Pack.intToLittleEndian(littleEndianToInt2 ^ i7, bArr2, i2 + i9);
            i3++;
        }
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferEncrypt(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = 0;
        while (true) {
            int i4 = this.RATE_WORDS;
            if (i3 >= i4 / 2) {
                sparkle_opt(this.state, this.SPARKLE_STEPS_SLIM);
                this.encrypted = true;
                return;
            }
            int i5 = (i4 / 2) + i3;
            int[] iArr = this.state;
            int i6 = iArr[i3];
            int i7 = iArr[i5];
            int i8 = i3 * 4;
            int littleEndianToInt = Pack.littleEndianToInt(bArr, i + i8);
            int i9 = i5 * 4;
            int littleEndianToInt2 = Pack.littleEndianToInt(bArr, i + i9);
            int[] iArr2 = this.state;
            int i10 = this.RATE_WORDS;
            iArr2[i3] = (i7 ^ littleEndianToInt) ^ iArr2[i10 + i3];
            iArr2[i5] = ((i6 ^ i7) ^ littleEndianToInt2) ^ iArr2[i10 + (this.CAP_MASK & i5)];
            Pack.intToLittleEndian(littleEndianToInt ^ i6, bArr2, i2 + i8);
            Pack.intToLittleEndian(littleEndianToInt2 ^ i7, bArr2, i2 + i9);
            i3++;
        }
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ int processByte(byte b, byte[] bArr, int i) throws DataLengthException {
        return super.processByte(b, bArr, i);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException {
        return super.processBytes(bArr, i, i2, bArr2, i3);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processFinalAAD() {
        int i = this.m_aadPos;
        int i2 = this.BlockSize;
        int i3 = 0;
        if (i < i2) {
            int[] iArr = this.state;
            int i4 = this.STATE_WORDS - 1;
            iArr[i4] = iArr[i4] ^ this._A0;
            byte[] bArr = this.m_aad;
            int i5 = i + 1;
            this.m_aadPos = i5;
            bArr[i] = Byte.MIN_VALUE;
            Arrays.fill(bArr, i5, i2, (byte) 0);
        } else {
            int[] iArr2 = this.state;
            int i6 = this.STATE_WORDS - 1;
            iArr2[i6] = iArr2[i6] ^ this._A1;
        }
        while (true) {
            int i7 = this.RATE_WORDS;
            if (i3 >= i7 / 2) {
                sparkle_opt(this.state, this.SPARKLE_STEPS_BIG);
                return;
            }
            int i8 = (i7 / 2) + i3;
            int[] iArr3 = this.state;
            int i9 = iArr3[i3];
            int i10 = iArr3[i8];
            int littleEndianToInt = Pack.littleEndianToInt(this.m_aad, i3 * 4);
            int littleEndianToInt2 = Pack.littleEndianToInt(this.m_aad, i8 * 4);
            int[] iArr4 = this.state;
            int i11 = this.RATE_WORDS;
            iArr4[i3] = (littleEndianToInt ^ i10) ^ iArr4[i11 + i3];
            iArr4[i8] = ((i10 ^ i9) ^ littleEndianToInt2) ^ iArr4[i11 + (this.CAP_MASK & i8)];
            i3++;
        }
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processFinalBlock(byte[] bArr, int i) {
        int i2;
        if (this.encrypted || this.m_bufPos > 0) {
            int[] iArr = this.state;
            int i3 = this.STATE_WORDS - 1;
            iArr[i3] = iArr[i3] ^ (this.m_bufPos < this.IV_SIZE ? this._M2 : this._M3);
            int[] iArr2 = new int[this.RATE_WORDS];
            int i4 = 0;
            while (true) {
                i2 = this.m_bufPos;
                if (i4 >= i2) {
                    break;
                }
                int i5 = i4 >>> 2;
                iArr2[i5] = iArr2[i5] | ((this.m_buf[i4] & 255) << ((i4 & 3) << 3));
                i4++;
            }
            if (i2 < this.IV_SIZE) {
                if (!this.forEncryption) {
                    int i6 = (i2 & 3) << 3;
                    int i7 = i2 >>> 2;
                    int i8 = iArr2[i7];
                    int[] iArr3 = this.state;
                    iArr2[i7] = ((iArr3[i2 >>> 2] >>> i6) << i6) | i8;
                    int i9 = (i2 >>> 2) + 1;
                    System.arraycopy(iArr3, i9, iArr2, i9, this.RATE_WORDS - i9);
                }
                int i10 = this.m_bufPos;
                int i11 = i10 >>> 2;
                iArr2[i11] = (128 << ((i10 & 3) << 3)) ^ iArr2[i11];
            }
            int i12 = 0;
            while (true) {
                int i13 = this.RATE_WORDS;
                if (i12 >= i13 / 2) {
                    break;
                }
                int i14 = (i13 / 2) + i12;
                int[] iArr4 = this.state;
                int i15 = iArr4[i12];
                int i16 = iArr4[i14];
                if (this.forEncryption) {
                    iArr4[i12] = (iArr2[i12] ^ i16) ^ iArr4[i13 + i12];
                    iArr4[i14] = iArr4[i13 + (this.CAP_MASK & i14)] ^ ((i15 ^ i16) ^ iArr2[i14]);
                } else {
                    iArr4[i12] = ((i15 ^ i16) ^ iArr2[i12]) ^ iArr4[i13 + i12];
                    iArr4[i14] = iArr4[i13 + (this.CAP_MASK & i14)] ^ (iArr2[i14] ^ i15);
                }
                iArr2[i12] = iArr2[i12] ^ i15;
                iArr2[i14] = iArr2[i14] ^ i16;
                i12++;
            }
            int i17 = 0;
            while (i17 < this.m_bufPos) {
                bArr[i] = (byte) (iArr2[i17 >>> 2] >>> ((i17 & 3) << 3));
                i17++;
                i++;
            }
            sparkle_opt(this.state, this.SPARKLE_STEPS_BIG);
        }
        for (int i18 = 0; i18 < this.KEY_WORDS; i18++) {
            int[] iArr5 = this.state;
            int i19 = this.RATE_WORDS + i18;
            iArr5[i19] = iArr5[i19] ^ this.k[i18];
        }
        Pack.intToLittleEndian(this.state, this.RATE_WORDS, this.TAG_WORDS, this.mac, 0);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void reset() {
        super.reset();
    }

    public static void sparkle_opt12(int[] iArr, int i) {
        char c = 0;
        int i2 = iArr[0];
        char c2 = 1;
        int i3 = iArr[1];
        int i4 = iArr[2];
        int i5 = iArr[3];
        int i6 = iArr[4];
        int i7 = iArr[5];
        int i8 = iArr[6];
        int i9 = iArr[7];
        int i10 = iArr[8];
        int i11 = iArr[9];
        int i12 = iArr[10];
        int i13 = 0;
        int i14 = i11;
        int i15 = iArr[11];
        while (i13 < i) {
            int[] iArr2 = RCON;
            int i16 = i3 ^ iArr2[i13 & 7];
            int i17 = i5 ^ i13;
            int i18 = iArr2[c];
            int rotateRight = Integers.rotateRight(i16, 31) + i2;
            int rotateRight2 = i16 ^ Integers.rotateRight(rotateRight, 24);
            int rotateRight3 = Integers.rotateRight(rotateRight2, 17) + (rotateRight ^ i18);
            int rotateRight4 = rotateRight2 ^ Integers.rotateRight(rotateRight3, 17);
            int i19 = (rotateRight3 ^ i18) + rotateRight4;
            int rotateRight5 = rotateRight4 ^ Integers.rotateRight(i19, 31);
            int rotateRight6 = Integers.rotateRight(rotateRight5, 24) + (i19 ^ i18);
            int rotateRight7 = rotateRight5 ^ Integers.rotateRight(rotateRight6, 16);
            int i20 = rotateRight6 ^ i18;
            int i21 = iArr2[c2];
            int rotateRight8 = Integers.rotateRight(i17, 31) + i4;
            int rotateRight9 = i17 ^ Integers.rotateRight(rotateRight8, 24);
            int rotateRight10 = Integers.rotateRight(rotateRight9, 17) + (rotateRight8 ^ i21);
            int rotateRight11 = rotateRight9 ^ Integers.rotateRight(rotateRight10, 17);
            int i22 = (rotateRight10 ^ i21) + rotateRight11;
            int rotateRight12 = rotateRight11 ^ Integers.rotateRight(i22, 31);
            int rotateRight13 = Integers.rotateRight(rotateRight12, 24) + (i22 ^ i21);
            int rotateRight14 = rotateRight12 ^ Integers.rotateRight(rotateRight13, 16);
            int i23 = rotateRight13 ^ i21;
            int i24 = iArr2[2];
            int rotateRight15 = Integers.rotateRight(i7, 31) + i6;
            int rotateRight16 = Integers.rotateRight(rotateRight15, 24) ^ i7;
            int rotateRight17 = Integers.rotateRight(rotateRight16, 17) + (rotateRight15 ^ i24);
            int rotateRight18 = rotateRight16 ^ Integers.rotateRight(rotateRight17, 17);
            int i25 = (rotateRight17 ^ i24) + rotateRight18;
            int rotateRight19 = rotateRight18 ^ Integers.rotateRight(i25, 31);
            int rotateRight20 = Integers.rotateRight(rotateRight19, 24) + (i25 ^ i24);
            int rotateRight21 = Integers.rotateRight(rotateRight20, 16) ^ rotateRight19;
            int i26 = rotateRight20 ^ i24;
            int i27 = iArr2[3];
            int rotateRight22 = Integers.rotateRight(i9, 31) + i8;
            int rotateRight23 = Integers.rotateRight(rotateRight22, 24) ^ i9;
            int rotateRight24 = Integers.rotateRight(rotateRight23, 17) + (rotateRight22 ^ i27);
            int rotateRight25 = rotateRight23 ^ Integers.rotateRight(rotateRight24, 17);
            int i28 = (rotateRight24 ^ i27) + rotateRight25;
            int rotateRight26 = rotateRight25 ^ Integers.rotateRight(i28, 31);
            int rotateRight27 = Integers.rotateRight(rotateRight26, 24) + (i28 ^ i27);
            int rotateRight28 = Integers.rotateRight(rotateRight27, 16) ^ rotateRight26;
            int i29 = rotateRight27 ^ i27;
            int i30 = iArr2[4];
            int rotateRight29 = Integers.rotateRight(i14, 31) + i10;
            int rotateRight30 = i14 ^ Integers.rotateRight(rotateRight29, 24);
            int rotateRight31 = Integers.rotateRight(rotateRight30, 17) + (rotateRight29 ^ i30);
            int rotateRight32 = rotateRight30 ^ Integers.rotateRight(rotateRight31, 17);
            int i31 = (rotateRight31 ^ i30) + rotateRight32;
            int rotateRight33 = rotateRight32 ^ Integers.rotateRight(i31, 31);
            int rotateRight34 = Integers.rotateRight(rotateRight33, 24) + (i31 ^ i30);
            int rotateRight35 = rotateRight33 ^ Integers.rotateRight(rotateRight34, 16);
            int i32 = rotateRight34 ^ i30;
            int i33 = iArr2[5];
            int rotateRight36 = Integers.rotateRight(i15, 31) + i12;
            int rotateRight37 = i15 ^ Integers.rotateRight(rotateRight36, 24);
            int rotateRight38 = Integers.rotateRight(rotateRight37, 17) + (rotateRight36 ^ i33);
            int rotateRight39 = Integers.rotateRight(rotateRight38, 17) ^ rotateRight37;
            int i34 = (rotateRight38 ^ i33) + rotateRight39;
            int rotateRight40 = Integers.rotateRight(i34, 31) ^ rotateRight39;
            int rotateRight41 = Integers.rotateRight(rotateRight40, 24) + (i34 ^ i33);
            int rotateRight42 = rotateRight40 ^ Integers.rotateRight(rotateRight41, 16);
            int i35 = rotateRight41 ^ i33;
            int ELL = ELL((i20 ^ i23) ^ i26);
            int ELL2 = ELL((rotateRight7 ^ rotateRight14) ^ rotateRight21);
            int i36 = (i32 ^ i23) ^ ELL2;
            int i37 = (i35 ^ i26) ^ ELL2;
            int i38 = (rotateRight42 ^ rotateRight21) ^ ELL;
            int i39 = (i29 ^ i20) ^ ELL2;
            i7 = (rotateRight28 ^ rotateRight7) ^ ELL;
            i13++;
            i9 = rotateRight7;
            i3 = (rotateRight35 ^ rotateRight14) ^ ELL;
            i10 = i23;
            i4 = i37;
            i15 = rotateRight21;
            i12 = i26;
            i6 = i39;
            i5 = i38;
            i8 = i20;
            i2 = i36;
            c = 0;
            i14 = rotateRight14;
            c2 = 1;
        }
        iArr[c] = i2;
        iArr[1] = i3;
        iArr[2] = i4;
        iArr[3] = i5;
        iArr[4] = i6;
        iArr[5] = i7;
        iArr[6] = i8;
        iArr[7] = i9;
        iArr[8] = i10;
        iArr[9] = i14;
        iArr[10] = i12;
        iArr[11] = i15;
    }

    public static void sparkle_opt16(int[] iArr, int i) {
        char c = 0;
        int i2 = iArr[0];
        char c2 = 1;
        int i3 = iArr[1];
        int i4 = iArr[2];
        int i5 = iArr[3];
        int i6 = iArr[4];
        int i7 = iArr[5];
        int i8 = iArr[6];
        int i9 = iArr[7];
        int i10 = iArr[8];
        int i11 = iArr[9];
        int i12 = iArr[10];
        int i13 = iArr[11];
        int i14 = iArr[12];
        int i15 = iArr[13];
        int i16 = iArr[14];
        int i17 = i;
        int i18 = 0;
        int i19 = i11;
        int i20 = i13;
        int i21 = i15;
        int i22 = iArr[15];
        while (i18 < i17) {
            int[] iArr2 = RCON;
            int i23 = i3 ^ iArr2[i18 & 7];
            int i24 = i5 ^ i18;
            int i25 = iArr2[c];
            int rotateRight = Integers.rotateRight(i23, 31) + i2;
            int rotateRight2 = i23 ^ Integers.rotateRight(rotateRight, 24);
            int rotateRight3 = Integers.rotateRight(rotateRight2, 17) + (rotateRight ^ i25);
            int rotateRight4 = rotateRight2 ^ Integers.rotateRight(rotateRight3, 17);
            int i26 = (rotateRight3 ^ i25) + rotateRight4;
            int rotateRight5 = rotateRight4 ^ Integers.rotateRight(i26, 31);
            int rotateRight6 = Integers.rotateRight(rotateRight5, 24) + (i26 ^ i25);
            int rotateRight7 = rotateRight5 ^ Integers.rotateRight(rotateRight6, 16);
            int i27 = rotateRight6 ^ i25;
            int i28 = iArr2[c2];
            int rotateRight8 = Integers.rotateRight(i24, 31) + i4;
            int rotateRight9 = i24 ^ Integers.rotateRight(rotateRight8, 24);
            int rotateRight10 = Integers.rotateRight(rotateRight9, 17) + (rotateRight8 ^ i28);
            int rotateRight11 = rotateRight9 ^ Integers.rotateRight(rotateRight10, 17);
            int i29 = (rotateRight10 ^ i28) + rotateRight11;
            int rotateRight12 = rotateRight11 ^ Integers.rotateRight(i29, 31);
            int rotateRight13 = Integers.rotateRight(rotateRight12, 24) + (i29 ^ i28);
            int rotateRight14 = rotateRight12 ^ Integers.rotateRight(rotateRight13, 16);
            int i30 = rotateRight13 ^ i28;
            int i31 = iArr2[2];
            int rotateRight15 = Integers.rotateRight(i7, 31) + i6;
            int rotateRight16 = Integers.rotateRight(rotateRight15, 24) ^ i7;
            int rotateRight17 = Integers.rotateRight(rotateRight16, 17) + (rotateRight15 ^ i31);
            int rotateRight18 = rotateRight16 ^ Integers.rotateRight(rotateRight17, 17);
            int i32 = (rotateRight17 ^ i31) + rotateRight18;
            int rotateRight19 = rotateRight18 ^ Integers.rotateRight(i32, 31);
            int rotateRight20 = Integers.rotateRight(rotateRight19, 24) + (i32 ^ i31);
            int rotateRight21 = Integers.rotateRight(rotateRight20, 16) ^ rotateRight19;
            int i33 = rotateRight20 ^ i31;
            int i34 = iArr2[3];
            int rotateRight22 = Integers.rotateRight(i9, 31) + i8;
            int rotateRight23 = Integers.rotateRight(rotateRight22, 24) ^ i9;
            int rotateRight24 = Integers.rotateRight(rotateRight23, 17) + (rotateRight22 ^ i34);
            int rotateRight25 = rotateRight23 ^ Integers.rotateRight(rotateRight24, 17);
            int i35 = (rotateRight24 ^ i34) + rotateRight25;
            int rotateRight26 = rotateRight25 ^ Integers.rotateRight(i35, 31);
            int rotateRight27 = Integers.rotateRight(rotateRight26, 24) + (i35 ^ i34);
            int rotateRight28 = Integers.rotateRight(rotateRight27, 16) ^ rotateRight26;
            int i36 = rotateRight27 ^ i34;
            int i37 = iArr2[4];
            int rotateRight29 = Integers.rotateRight(i19, 31) + i10;
            int rotateRight30 = i19 ^ Integers.rotateRight(rotateRight29, 24);
            int rotateRight31 = Integers.rotateRight(rotateRight30, 17) + (rotateRight29 ^ i37);
            int rotateRight32 = rotateRight30 ^ Integers.rotateRight(rotateRight31, 17);
            int i38 = (rotateRight31 ^ i37) + rotateRight32;
            int rotateRight33 = rotateRight32 ^ Integers.rotateRight(i38, 31);
            int rotateRight34 = Integers.rotateRight(rotateRight33, 24) + (i38 ^ i37);
            int rotateRight35 = rotateRight33 ^ Integers.rotateRight(rotateRight34, 16);
            int i39 = rotateRight34 ^ i37;
            int i40 = iArr2[5];
            int rotateRight36 = Integers.rotateRight(i20, 31) + i12;
            int rotateRight37 = i20 ^ Integers.rotateRight(rotateRight36, 24);
            int rotateRight38 = Integers.rotateRight(rotateRight37, 17) + (rotateRight36 ^ i40);
            int rotateRight39 = rotateRight37 ^ Integers.rotateRight(rotateRight38, 17);
            int i41 = (rotateRight38 ^ i40) + rotateRight39;
            int rotateRight40 = rotateRight39 ^ Integers.rotateRight(i41, 31);
            int rotateRight41 = Integers.rotateRight(rotateRight40, 24) + (i41 ^ i40);
            int rotateRight42 = rotateRight40 ^ Integers.rotateRight(rotateRight41, 16);
            int i42 = rotateRight41 ^ i40;
            int i43 = iArr2[6];
            int i44 = i21;
            int rotateRight43 = Integers.rotateRight(i44, 31) + i14;
            int rotateRight44 = i44 ^ Integers.rotateRight(rotateRight43, 24);
            int rotateRight45 = Integers.rotateRight(rotateRight44, 17) + (rotateRight43 ^ i43);
            int rotateRight46 = rotateRight44 ^ Integers.rotateRight(rotateRight45, 17);
            int i45 = (rotateRight45 ^ i43) + rotateRight46;
            int rotateRight47 = rotateRight46 ^ Integers.rotateRight(i45, 31);
            int rotateRight48 = Integers.rotateRight(rotateRight47, 24) + (i45 ^ i43);
            int rotateRight49 = rotateRight47 ^ Integers.rotateRight(rotateRight48, 16);
            int i46 = rotateRight48 ^ i43;
            int i47 = iArr2[7];
            int i48 = i18;
            int i49 = i22;
            int rotateRight50 = Integers.rotateRight(i49, 31) + i16;
            int rotateRight51 = i49 ^ Integers.rotateRight(rotateRight50, 24);
            int rotateRight52 = Integers.rotateRight(rotateRight51, 17) + (rotateRight50 ^ i47);
            int rotateRight53 = rotateRight51 ^ Integers.rotateRight(rotateRight52, 17);
            int i50 = (rotateRight52 ^ i47) + rotateRight53;
            int rotateRight54 = rotateRight53 ^ Integers.rotateRight(i50, 31);
            int rotateRight55 = Integers.rotateRight(rotateRight54, 24) + (i50 ^ i47);
            int rotateRight56 = Integers.rotateRight(rotateRight55, 16) ^ rotateRight54;
            int i51 = rotateRight55 ^ i47;
            int ELL = ELL(((i27 ^ i30) ^ i33) ^ i36);
            int ELL2 = ELL(((rotateRight7 ^ rotateRight14) ^ rotateRight21) ^ rotateRight28);
            int i52 = (i42 ^ i30) ^ ELL2;
            int i53 = (rotateRight42 ^ rotateRight14) ^ ELL;
            int i54 = (i46 ^ i33) ^ ELL2;
            int i55 = (rotateRight21 ^ rotateRight49) ^ ELL;
            int i56 = (i51 ^ i36) ^ ELL2;
            int i57 = (rotateRight56 ^ rotateRight28) ^ ELL;
            int i58 = (i39 ^ i27) ^ ELL2;
            i9 = ELL ^ (rotateRight35 ^ rotateRight7);
            int i59 = i48 + 1;
            i10 = i27;
            i21 = rotateRight21;
            i14 = i33;
            i6 = i56;
            i22 = rotateRight28;
            i2 = i52;
            i16 = i36;
            i8 = i58;
            i5 = i55;
            i17 = i;
            i20 = rotateRight14;
            i19 = rotateRight7;
            i12 = i30;
            i3 = i53;
            i7 = i57;
            c2 = 1;
            i4 = i54;
            i18 = i59;
            c = 0;
        }
        iArr[c] = i2;
        iArr[1] = i3;
        iArr[2] = i4;
        iArr[3] = i5;
        iArr[4] = i6;
        iArr[5] = i7;
        iArr[6] = i8;
        iArr[7] = i9;
        iArr[8] = i10;
        iArr[9] = i19;
        iArr[10] = i12;
        iArr[11] = i20;
        iArr[12] = i14;
        iArr[13] = i21;
        iArr[14] = i16;
        iArr[15] = i22;
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void init(byte[] bArr, byte[] bArr2) throws IllegalArgumentException {
        Pack.littleEndianToInt(bArr, 0, this.k);
        Pack.littleEndianToInt(bArr2, 0, this.npub);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void reset(boolean z) {
        this.encrypted = false;
        System.arraycopy(this.npub, 0, this.state, 0, this.RATE_WORDS);
        System.arraycopy(this.k, 0, this.state, this.RATE_WORDS, this.KEY_WORDS);
        sparkle_opt(this.state, this.SPARKLE_STEPS_BIG);
        super.reset(z);
    }
}
