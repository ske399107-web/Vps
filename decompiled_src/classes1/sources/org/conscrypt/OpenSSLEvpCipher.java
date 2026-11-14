package org.conscrypt;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import org.conscrypt.NativeRef;
import org.conscrypt.OpenSSLCipher;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class OpenSSLEvpCipher extends OpenSSLCipher {
    private boolean calledUpdate;
    private final NativeRef.EVP_CIPHER_CTX cipherCtx;
    private int modeBlockSize;

    public OpenSSLEvpCipher(OpenSSLCipher.Mode mode, OpenSSLCipher.Padding padding) {
        super(mode, padding);
        this.cipherCtx = new NativeRef.EVP_CIPHER_CTX(NativeCrypto.EVP_CIPHER_CTX_new());
    }

    private void reset() {
        NativeCrypto.EVP_CipherInit_ex(this.cipherCtx, 0L, this.encodedKey, this.iv, isEncrypting());
        this.calledUpdate = false;
    }

    @Override // org.conscrypt.OpenSSLCipher
    public int doFinalInternal(byte[] bArr, int i, int i2) throws IllegalBlockSizeException, BadPaddingException, ShortBufferException {
        int i3;
        if (!isEncrypting() && !this.calledUpdate) {
            return 0;
        }
        int length = bArr.length - i;
        if (length >= i2) {
            i3 = NativeCrypto.EVP_CipherFinal_ex(this.cipherCtx, bArr, i);
        } else {
            byte[] bArr2 = new byte[i2];
            int EVP_CipherFinal_ex = NativeCrypto.EVP_CipherFinal_ex(this.cipherCtx, bArr2, 0);
            if (EVP_CipherFinal_ex <= length) {
                if (EVP_CipherFinal_ex > 0) {
                    System.arraycopy(bArr2, 0, bArr, i, EVP_CipherFinal_ex);
                }
                i3 = EVP_CipherFinal_ex;
            } else {
                throw new ShortBufferWithoutStackTraceException("buffer is too short: " + EVP_CipherFinal_ex + " > " + length);
            }
        }
        reset();
        return (i3 + i) - i;
    }

    @Override // org.conscrypt.OpenSSLCipher
    public void engineInitInternal(byte[] bArr, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        byte[] bArr2;
        boolean z;
        if (algorithmParameterSpec instanceof IvParameterSpec) {
            bArr2 = ((IvParameterSpec) algorithmParameterSpec).getIV();
        } else {
            bArr2 = null;
        }
        long EVP_get_cipherbyname = NativeCrypto.EVP_get_cipherbyname(getCipherName(bArr.length, this.mode));
        if (EVP_get_cipherbyname != 0) {
            boolean isEncrypting = isEncrypting();
            int EVP_CIPHER_iv_length = NativeCrypto.EVP_CIPHER_iv_length(EVP_get_cipherbyname);
            if (bArr2 == null && EVP_CIPHER_iv_length != 0) {
                if (isEncrypting) {
                    bArr2 = new byte[EVP_CIPHER_iv_length];
                    if (secureRandom != null) {
                        secureRandom.nextBytes(bArr2);
                    } else {
                        NativeCrypto.RAND_bytes(bArr2);
                    }
                } else {
                    throw new InvalidAlgorithmParameterException("IV must be specified in " + this.mode + " mode");
                }
            } else {
                if (EVP_CIPHER_iv_length == 0 && bArr2 != null) {
                    throw new InvalidAlgorithmParameterException("IV not used in " + this.mode + " mode");
                }
                if (bArr2 != null && bArr2.length != EVP_CIPHER_iv_length) {
                    throw new InvalidAlgorithmParameterException("expected IV length of " + EVP_CIPHER_iv_length + " but was " + bArr2.length);
                }
            }
            this.iv = bArr2;
            if (supportsVariableSizeKey()) {
                NativeCrypto.EVP_CipherInit_ex(this.cipherCtx, EVP_get_cipherbyname, null, null, isEncrypting);
                NativeCrypto.EVP_CIPHER_CTX_set_key_length(this.cipherCtx, bArr.length);
                NativeCrypto.EVP_CipherInit_ex(this.cipherCtx, 0L, bArr, bArr2, isEncrypting());
            } else {
                NativeCrypto.EVP_CipherInit_ex(this.cipherCtx, EVP_get_cipherbyname, bArr, bArr2, isEncrypting);
            }
            NativeRef.EVP_CIPHER_CTX evp_cipher_ctx = this.cipherCtx;
            if (getPadding() == OpenSSLCipher.Padding.PKCS5PADDING) {
                z = true;
            } else {
                z = false;
            }
            NativeCrypto.EVP_CIPHER_CTX_set_padding(evp_cipher_ctx, z);
            this.modeBlockSize = NativeCrypto.EVP_CIPHER_CTX_block_size(this.cipherCtx);
            this.calledUpdate = false;
            return;
        }
        throw new InvalidAlgorithmParameterException("Cannot find name for key length = " + (bArr.length * 8) + " and mode = " + this.mode);
    }

    public abstract String getCipherName(int i, OpenSSLCipher.Mode mode);

    @Override // org.conscrypt.OpenSSLCipher
    public int getOutputSizeForFinal(int i) {
        int i2;
        if (this.modeBlockSize == 1) {
            return i;
        }
        int i3 = NativeCrypto.get_EVP_CIPHER_CTX_buf_len(this.cipherCtx);
        if (getPadding() == OpenSSLCipher.Padding.NOPADDING) {
            return i3 + i;
        }
        int i4 = i + i3;
        int i5 = 0;
        if (NativeCrypto.get_EVP_CIPHER_CTX_final_used(this.cipherCtx)) {
            i2 = this.modeBlockSize;
        } else {
            i2 = 0;
        }
        int i6 = i4 + i2;
        if (i6 % this.modeBlockSize != 0 || isEncrypting()) {
            i5 = this.modeBlockSize;
        }
        int i7 = i6 + i5;
        return i7 - (i7 % this.modeBlockSize);
    }

    @Override // org.conscrypt.OpenSSLCipher
    public int getOutputSizeForUpdate(int i) {
        return getOutputSizeForFinal(i);
    }

    @Override // org.conscrypt.OpenSSLCipher
    public int updateInternal(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) throws ShortBufferException {
        int length = bArr2.length - i3;
        if (length >= i4) {
            int EVP_CipherUpdate = NativeCrypto.EVP_CipherUpdate(this.cipherCtx, bArr2, i3, bArr, i, i2) + i3;
            this.calledUpdate = true;
            return EVP_CipherUpdate - i3;
        }
        throw new ShortBufferWithoutStackTraceException("output buffer too small during update: " + length + " < " + i4);
    }
}
