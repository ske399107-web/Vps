package io.github.muntashirakon.adb;

import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;
import java.util.Objects;
import javax.crypto.Cipher;
import o.AbstractC0304o5;
import org.bouncycastle.pqc.crypto.rainbow.GF2Field;
import org.bouncycastle.util.encoders.Base64;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class AndroidPubkey {
    public static final int ANDROID_PUBKEY_ENCODED_SIZE = 524;
    public static final int ANDROID_PUBKEY_MODULUS_SIZE = 256;
    public static final int ANDROID_PUBKEY_MODULUS_SIZE_WORDS = 64;
    private static final byte[] RSA_SHA_PKCS1_SIGNATURE_PADDING;
    private static final int[] SIGNATURE_PADDING_AS_INT;

    static {
        int i = 0;
        int[] iArr = {0, 1, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, GF2Field.MASK, 0, 48, 33, 48, 9, 6, 5, 43, 14, 3, 2, 26, 5, 0, 4, 20};
        SIGNATURE_PADDING_AS_INT = iArr;
        RSA_SHA_PKCS1_SIGNATURE_PADDING = new byte[iArr.length];
        while (true) {
            byte[] bArr = RSA_SHA_PKCS1_SIGNATURE_PADDING;
            if (i < bArr.length) {
                bArr[i] = (byte) SIGNATURE_PADDING_AS_INT[i];
                i++;
            } else {
                return;
            }
        }
    }

    private static byte[] BigEndianToLittleEndianPadded(int i, BigInteger bigInteger) {
        byte[] bArr = new byte[i];
        byte[] swapEndianness = swapEndianness(bigInteger.toByteArray());
        int length = swapEndianness.length;
        if (i < length) {
            if (!fitsInBytes(swapEndianness, length, i)) {
                return null;
            }
        } else {
            i = length;
        }
        System.arraycopy(swapEndianness, 0, bArr, 0, i);
        return bArr;
    }

    public static byte[] adbAuthSign(PrivateKey privateKey, byte[] bArr) throws GeneralSecurityException {
        Cipher cipher = Cipher.getInstance("RSA/ECB/NoPadding");
        cipher.init(1, privateKey);
        cipher.update(RSA_SHA_PKCS1_SIGNATURE_PADDING);
        return cipher.doFinal(bArr);
    }

    public static RSAPublicKey decode(byte[] bArr) throws InvalidKeyException, NoSuchAlgorithmException, InvalidKeySpecException {
        if (bArr.length >= 524) {
            ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            if (order.getInt() == 64) {
                byte[] bArr2 = new byte[256];
                order.position(8);
                order.get(bArr2);
                BigInteger bigInteger = new BigInteger(1, swapEndianness(bArr2));
                order.position(520);
                return (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new RSAPublicKeySpec(bigInteger, BigInteger.valueOf(order.getInt())));
            }
            throw new InvalidKeyException("Invalid modulus length.");
        }
        throw new InvalidKeyException("Invalid key length");
    }

    public static byte[] encode(RSAPublicKey rSAPublicKey) throws InvalidKeyException {
        if (rSAPublicKey.getModulus().toByteArray().length >= 256) {
            ByteBuffer order = ByteBuffer.allocate(ANDROID_PUBKEY_ENCODED_SIZE).order(ByteOrder.LITTLE_ENDIAN);
            order.putInt(64);
            BigInteger bigInteger = BigInteger.ZERO;
            BigInteger bit = bigInteger.setBit(32);
            order.putInt(bit.subtract(rSAPublicKey.getModulus().mod(bit).modInverse(bit)).intValue());
            byte[] BigEndianToLittleEndianPadded = BigEndianToLittleEndianPadded(256, rSAPublicKey.getModulus());
            Objects.requireNonNull(BigEndianToLittleEndianPadded);
            order.put(BigEndianToLittleEndianPadded);
            byte[] BigEndianToLittleEndianPadded2 = BigEndianToLittleEndianPadded(256, bigInteger.setBit(2048).modPow(BigInteger.valueOf(2L), rSAPublicKey.getModulus()));
            Objects.requireNonNull(BigEndianToLittleEndianPadded2);
            order.put(BigEndianToLittleEndianPadded2);
            order.putInt(rSAPublicKey.getPublicExponent().intValue());
            return order.array();
        }
        throw new InvalidKeyException("Invalid key length " + rSAPublicKey.getModulus().toByteArray().length);
    }

    public static byte[] encodeWithName(RSAPublicKey rSAPublicKey, String str) throws InvalidKeyException {
        ByteArrayNoThrowOutputStream byteArrayNoThrowOutputStream = new ByteArrayNoThrowOutputStream(str.length() + (((int) Math.ceil(174.66666666666666d)) * 4) + 2);
        try {
            byteArrayNoThrowOutputStream.write(Base64.encode(encode(rSAPublicKey)));
            byteArrayNoThrowOutputStream.write(getUserInfo(str));
            byte[] byteArray = byteArrayNoThrowOutputStream.toByteArray();
            byteArrayNoThrowOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayNoThrowOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static boolean fitsInBytes(byte[] bArr, int i, int i2) {
        byte b = 0;
        while (i2 < i) {
            b = (byte) (b | bArr[i2]);
            i2++;
        }
        if (b != 0) {
            return false;
        }
        return true;
    }

    public static byte[] getUserInfo(String str) {
        return StringCompat.getBytes(AbstractC0304o5.h(" ", str, "\u0000"), "UTF-8");
    }

    private static byte[] swapEndianness(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr2[i] = bArr[(length - i) - 1];
        }
        return bArr2;
    }
}
