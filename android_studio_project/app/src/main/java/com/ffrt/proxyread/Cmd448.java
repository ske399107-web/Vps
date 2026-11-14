package com.ffrt.proxyread;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.crypto.digests.Blake2xsDigest;
import org.bouncycastle.pqc.crypto.rainbow.GF2Field;
import com.ffrt.proxyread.BuildConfig;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Cmd448 {
    static ConcurrentHashMap matchInfo = new ConcurrentHashMap();
    static ConcurrentHashMap tcpBufs = new ConcurrentHashMap();

    static byte[] cbcDec(byte[] bArr, byte[] bArr2) {
        int[] iArr = {ri(bArr2, 0), ri(bArr2, 4), ri(bArr2, 8), ri(bArr2, 12)};
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        byte[] bArr4 = new byte[8];
        byte[] bArr5 = new byte[8];
        int[] iArr2 = new int[2];
        for (int i = 0; i < length; i += 8) {
            iArr2[0] = ri(bArr, i) ^ ri(bArr5, 0);
            int i2 = i + 4;
            iArr2[1] = ri(bArr, i2) ^ ri(bArr5, 4);
            teaD(iArr2, iArr);
            wi(bArr3, i, iArr2[0] ^ ri(bArr4, 0));
            wi(bArr3, i2, iArr2[1] ^ ri(bArr4, 4));
            System.arraycopy(bArr, i, bArr4, 0, 8);
            wi(bArr5, 0, iArr2[0]);
            wi(bArr5, 4, iArr2[1]);
        }
        return bArr3;
    }

    static byte[] cbcEnc(byte[] bArr, byte[] bArr2) {
        int[] iArr = {ri(bArr2, 0), ri(bArr2, 4), ri(bArr2, 8), ri(bArr2, 12)};
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        byte[] bArr4 = new byte[8];
        byte[] bArr5 = new byte[8];
        int[] iArr2 = new int[4];
        for (int i = 0; i < length; i += 8) {
            int ri = ri(bArr, i) ^ ri(bArr4, 0);
            iArr2[0] = ri;
            iArr2[2] = ri;
            int i2 = i + 4;
            int ri2 = ri(bArr, i2) ^ ri(bArr4, 4);
            iArr2[1] = ri2;
            iArr2[3] = ri2;
            teaE(iArr2, iArr);
            wi(bArr3, i, iArr2[0] ^ ri(bArr5, 0));
            wi(bArr3, i2, iArr2[1] ^ ri(bArr5, 4));
            System.arraycopy(bArr3, i, bArr4, 0, 8);
            wi(bArr5, 0, iArr2[2]);
            wi(bArr5, 4, iArr2[3]);
        }
        return bArr3;
    }

    static int crc7(byte[] bArr, int i, int i2) {
        int i3 = 0;
        int i4 = i + i2;
        for (int i5 = i; i5 < i4; i5++) {
            i3 ^= bArr[i5] & 255;
            for (int i6 = 0; i6 < 8; i6++) {
                int i7 = i3 & 128;
                int i8 = i3 << 1;
                if (i7 != 0) {
                    i8 ^= 18;
                }
                i3 = i8 & GF2Field.MASK;
            }
        }
        return (i3 >>> 1) & CertificateBody.profileType;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004b, code lost:
    
        r3 = new byte[0];
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void handleTcp(java.lang.String r8, byte[] r9) {
        /*
            java.util.concurrent.ConcurrentHashMap r0 = com.ffrt.proxyread.Cmd448.tcpBufs
            java.lang.Object r1 = r0.get(r8)
            byte[] r1 = (byte[]) r1
            if (r1 != 0) goto Ld
            r2 = 0
            byte[] r1 = new byte[r2]
        Ld:
            int r2 = r1.length
            int r3 = r9.length
            int r3 = r3 + r2
            byte[] r3 = new byte[r3]
            r4 = 0
            java.lang.System.arraycopy(r1, r4, r3, r4, r2)
            int r2 = r1.length
            int r5 = r9.length
            java.lang.System.arraycopy(r9, r4, r3, r2, r5)
        L1b:
            int r1 = r3.length
            r2 = 5
            if (r1 < r2) goto L4d
            r1 = r3[r4]
            r5 = 3
            if (r1 == r5) goto L27
            byte[] r3 = new byte[r4]
            goto L4d
        L27:
            r1 = 1
            r1 = r3[r1]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << 24
            r5 = 2
            r5 = r3[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            int r5 = r5 << 16
            r1 = r1 | r5
            r5 = 3
            r5 = r3[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            int r5 = r5 << 8
            r1 = r1 | r5
            r5 = 4
            r5 = r3[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            r1 = r1 | r5
            if (r1 <= 0) goto L4b
            r5 = 10485760(0xa00000, float:1.469368E-38)
            if (r1 <= r5) goto L51
        L4b:
            byte[] r3 = new byte[r4]
        L4d:
            r0.put(r8, r3)
            return
        L51:
            int r5 = r1 + 5
            int r6 = r3.length
            if (r6 >= r5) goto L57
            goto L4d
        L57:
            byte[] r6 = java.util.Arrays.copyOfRange(r3, r2, r5)
            parseMatch(r6)
            int r6 = r3.length
            byte[] r3 = java.util.Arrays.copyOfRange(r3, r5, r6)
            goto L1b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ffrt.proxyread.Cmd448.handleTcp(java.lang.String, byte[]):void");
    }

    static byte[] hex2b(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        int i = 0;
        while (i < length) {
            int digit = Character.digit(str.charAt(i), 16) << 4;
            int i2 = i + 1;
            bArr[i2 / 2] = (byte) (digit + Character.digit(str.charAt(i2), 16));
            i = i2 + 1;
        }
        return bArr;
    }

    static int[] pHdr(byte[] bArr, int i, int i2, int[] iArr, int i3, int i4) {
        int[] iArr2 = new int[6];
        int i5 = i + 2;
        for (int i6 = 0; i6 < 5; i6++) {
            int i7 = iArr[i6];
            int i8 = (i7 == 0 || i7 == 3) ? 1 : 2;
            int i9 = i5 + i8;
            if (i9 > i + i2) {
                return null;
            }
            iArr2[i7] = i8 == 1 ? (bArr[i5] & GF2Field.MASK) ^ i3 : (((bArr[i5] & GF2Field.MASK) | ((bArr[i5 + 1] & GF2Field.MASK) << 8)) ^ i4) & Blake2xsDigest.UNKNOWN_DIGEST_LENGTH;
            i5 = i9;
        }
        iArr2[5] = i5 - i;
        return iArr2;
    }

    static byte[] pad(byte[] bArr) {
        int length = bArr.length;
        int i = (8 - ((length + 10) % 8)) % 8;
        byte[] bArr2 = new byte[i + 10 + length];
        bArr2[0] = (byte) i;
        System.arraycopy(bArr, 0, bArr2, i + 3, length);
        return bArr2;
    }

    static void parseMatch(byte[] bArr) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        while (wrap.hasRemaining()) {
            long rv = rv(wrap);
            int i = (int) (rv >>> 3);
            int i2 = (int) (rv & 7);
            if (i == 5 && i2 == 2) {
                byte[] bArr2 = new byte[(int) rv(wrap)];
                wrap.get(bArr2);
                ByteBuffer wrap2 = ByteBuffer.wrap(bArr2);
                String str = null;
                String str2 = null;
                String str3 = BuildConfig.FLAVOR;
                String str4 = BuildConfig.FLAVOR;
                long j = 0;
                while (wrap2.hasRemaining()) {
                    long rv2 = rv(wrap2);
                    int i3 = (int) (rv2 >>> 3);
                    int i4 = (int) (rv2 & 7);
                    if (i3 == 2 && i4 == 2) {
                        byte[] bArr3 = new byte[(int) rv(wrap2)];
                        wrap2.get(bArr3);
                        str2 = new String(bArr3);
                    } else if (i3 == 3 && i4 == 2) {
                        byte[] bArr4 = new byte[(int) rv(wrap2)];
                        wrap2.get(bArr4);
                        str = new String(bArr4);
                    } else if (i3 == 42) {
                        if (i4 == 2) {
                            byte[] bArr5 = new byte[(int) rv(wrap2)];
                            wrap2.get(bArr5);
                            str3 = new String(bArr5);
                        } else if (i4 == 0) {
                            str3 = String.valueOf(rv(wrap2));
                        } else {
                            skipWt(wrap2, i4);
                        }
                    } else if (i3 != 1) {
                        if (i3 == 4 && i4 == 2) {
                            byte[] bArr6 = new byte[(int) rv(wrap2)];
                            wrap2.get(bArr6);
                            str4 = new String(bArr6);
                        }
                        skipWt(wrap2, i4);
                    } else if (i4 == 0) {
                        j = rv(wrap2);
                    } else {
                        skipWt(wrap2, i4);
                    }
                }
                if (str2 == null || str == null) {
                    return;
                }
                matchInfo.put(str2, new String[]{str, str3, str2});
                try {
                    String str5 = "{\n  \"match_id\": " + j + ",\n  \"server_addr\": \"" + str2 + "\",\n  \"secret\": \"" + str + "\",\n  \"prepare_token\": \"" + str4 + "\",\n  \"field_42\": \"" + str3 + "\"\n}\n";
                    File file = new File("/storage/emulated/0/Android/data/com.ffrt.proxyread/files/#DUMP/");
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(file, "Matchinfo.json"), false);
                    fileOutputStream.write(str5.getBytes());
                    fileOutputStream.close();
                } catch (Exception unused) {
                }
                return;
            }
            skipWt(wrap, i2);
        }
    }

    static long readV(byte[] bArr, int[] iArr) {
        int i = iArr[0];
        long j = 0;
        int i2 = 0;
        while (true) {
            byte b = bArr[i];
            i++;
            int i3 = b & 255;
            j |= (i3 & 127) << i2;
            if ((i3 & 128) == 0) {
                iArr[0] = i;
                return j;
            }
            i2 += 7;
        }
    }

    public static byte[] rewriteUdp(byte[] bArr, int i, int i2, String str, int i3) {
        int i4;
        if (i2 < 8) {
            return Arrays.copyOfRange(bArr, i, i + i2);
        }
        String[] strArr = (String[]) matchInfo.get(str + ":" + i3);
        if (strArr == null) {
            return Arrays.copyOfRange(bArr, i, i + i2);
        }
        String str2 = strArr[0];
        String str3 = strArr[1];
        byte[] hex2b = hex2b(str2);
        int i5 = hex2b[0] & GF2Field.MASK;
        int i6 = (i5 << 8) | i5;
        int[][] iArr = new int[2];
        int[] iArr2 = {0, 3, 1, 4, 2};
        if (str3 != null && str3.length() == 5) {
            for (int i7 = 0; i7 < 5; i7++) {
                iArr2[i7] = str3.charAt(i7) - '0';
            }
        }
        iArr[0] = iArr2;
        iArr[1] = new int[]{0, 2, 3, 4, 1};
        int i8 = 0;
        for (int i9 = 2; i8 < i9; i9 = 2) {
            int[] iArr3 = iArr[i8];
            int[] pHdr = pHdr(bArr, i, i2, iArr3, i5, i6);
            if (pHdr != null && pHdr[1] == 448 && (i4 = pHdr[3]) <= 7) {
                int i10 = pHdr[5];
                if (pHdr[4] != i2 - i10) {
                    continue;
                } else {
                    byte[] copyOfRange = Arrays.copyOfRange(bArr, i + i10, i + i2);
                    int i11 = i4 & 1;
                    if (i11 == 0 || (copyOfRange.length % 8 == 0 && (copyOfRange = unpad(cbcDec(copyOfRange, hex2b))) != null)) {
                        byte[] rw = rw(copyOfRange);
                        if (i11 != 0) {
                            rw = cbcEnc(pad(rw), hex2b);
                        }
                        byte[] bArr2 = new byte[rw.length + i10];
                        bArr2[0] = bArr[i];
                        int i12 = 2;
                        for (int i13 = 0; i13 < 5; i13++) {
                            int i14 = iArr3[i13];
                            int length = i14 == 4 ? rw.length : pHdr[i14];
                            if (i14 == 0 || i14 == 3) {
                                bArr2[i12] = (byte) (length ^ i5);
                                i12++;
                            } else {
                                int i15 = length ^ i6;
                                bArr2[i12] = (byte) i15;
                                bArr2[i12 + 1] = (byte) (i15 >> 8);
                                i12 += 2;
                            }
                        }
                        System.arraycopy(rw, 0, bArr2, i10, rw.length);
                        bArr2[1] = (byte) (crc7(bArr2, 2, bArr2.length - 2) | (bArr[i + 1] & 128));
                        return bArr2;
                    }
                }
            }
            i8++;
        }
        return Arrays.copyOfRange(bArr, i, i + i2);
    }

    static int ri(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    static long rv(ByteBuffer byteBuffer) {
        long j = 0;
        int i = 0;
        while (true) {
            int i2 = byteBuffer.get() & 255;
            j |= (i2 & 127) << i;
            if ((i2 & 128) == 0) {
                return j;
            }
            i += 7;
        }
    }

    static byte[] rw(byte[] bArr) {
        int[] iArr = {0};
        for (int i = 0; i < 65; i++) {
            char charAt = "uuuuuuuuuuuuuuuuusuuuuuuuusssuuuuusussuLLuuuLsLuuuuuLuusuuuuuuzuu".charAt(i);
            long readV = readV(bArr, iArr);
            if (charAt == 's' || charAt == 'L') {
                iArr[0] = iArr[0] + ((int) zag(readV));
            }
        }
        iArr[0] = iArr[0] + ((int) zag(readV(bArr, iArr)));
        int i2 = iArr[0];
        iArr[0] = iArr[0] + ((int) zag(readV(bArr, iArr)));
        int i3 = iArr[0];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(bArr, 0, i2);
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write(bArr, i3, bArr.length - i3);
        return byteArrayOutputStream.toByteArray();
    }

    static void skipWt(ByteBuffer byteBuffer, int i) {
        if (i == 0) {
            rv(byteBuffer);
            return;
        }
        if (i == 1) {
            byteBuffer.position(byteBuffer.position() + 8);
            return;
        }
        if (i == 2) {
            byteBuffer.position(byteBuffer.position() + ((int) rv(byteBuffer)));
        } else if (i == 5) {
            byteBuffer.position(byteBuffer.position() + 4);
        }
    }

    static void teaD(int[] iArr, int[] iArr2) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = -478700656;
        for (int i4 = 0; i4 < 16; i4++) {
            i2 -= (((i << 4) + iArr2[2]) ^ (i + i3)) ^ ((i >>> 5) + iArr2[3]);
            i -= (((i2 << 4) + iArr2[0]) ^ (i2 + i3)) ^ ((i2 >>> 5) + iArr2[1]);
            i3 -= -1640531527;
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    static void teaE(int[] iArr, int[] iArr2) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = 0;
        for (int i4 = 0; i4 < 16; i4++) {
            i3 -= 1640531527;
            i += (((i2 << 4) + iArr2[0]) ^ (i2 + i3)) ^ ((i2 >>> 5) + iArr2[1]);
            i2 += (((i << 4) + iArr2[2]) ^ (i + i3)) ^ ((i >>> 5) + iArr2[3]);
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    static byte[] unpad(byte[] bArr) {
        int length = bArr.length;
        if (length < 8) {
            return null;
        }
        int i = (bArr[0] & 7) + 3;
        int i2 = length - 7;
        return i >= i2 ? new byte[0] : Arrays.copyOfRange(bArr, i, i2);
    }

    static void wi(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) i2;
        bArr[i + 1] = (byte) (i2 >> 8);
        bArr[i + 2] = (byte) (i2 >> 16);
        bArr[i + 3] = (byte) (i2 >> 24);
    }

    static long zag(long j) {
        return (j >>> 1) ^ (-(j & 1));
    }
}
