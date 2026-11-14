package io.github.muntashirakon.adb;

import io.github.muntashirakon.crypto.spake2.Spake2Context;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import javax.security.auth.Destroyable;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.generators.HKDFBytesGenerator;
import org.bouncycastle.crypto.modes.GCMBlockCipher;
import org.bouncycastle.crypto.modes.GCMModeCipher;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.HKDFParameters;
import org.bouncycastle.crypto.params.KeyParameter;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class PairingAuthCtx implements Destroyable {
    public static final int GCM_IV_LENGTH = 12;
    private static final int HKDF_KEY_LENGTH = 16;
    private final byte[] mMsg;
    private final Spake2Context mSpake2Ctx;
    private static final byte[] CLIENT_NAME = StringCompat.getBytes("adb pair client\u0000", "UTF-8");
    private static final byte[] SERVER_NAME = StringCompat.getBytes("adb pair server\u0000", "UTF-8");
    private static final byte[] INFO = StringCompat.getBytes("adb pairing_auth aes-128-gcm key", "UTF-8");
    private final byte[] mSecretKey = new byte[16];
    private long mDecIv = 0;
    private long mEncIv = 0;
    private boolean mIsDestroyed = false;

    private PairingAuthCtx(Spake2Context spake2Context, byte[] bArr) throws IllegalArgumentException, IllegalStateException {
        this.mSpake2Ctx = spake2Context;
        this.mMsg = spake2Context.a(bArr);
    }

    public static PairingAuthCtx createAlice(byte[] bArr) {
        try {
            return new PairingAuthCtx(new Spake2Context(1, CLIENT_NAME, SERVER_NAME), bArr);
        } catch (IllegalArgumentException | IllegalStateException unused) {
            return null;
        }
    }

    public static PairingAuthCtx createBob(byte[] bArr) {
        try {
            return new PairingAuthCtx(new Spake2Context(2, SERVER_NAME, CLIENT_NAME), bArr);
        } catch (IllegalArgumentException | IllegalStateException unused) {
            return null;
        }
    }

    private byte[] encryptDecrypt(boolean z, byte[] bArr, byte[] bArr2) {
        if (this.mIsDestroyed) {
            return null;
        }
        AEADParameters aEADParameters = new AEADParameters(new KeyParameter(this.mSecretKey), this.mSecretKey.length * 8, bArr2);
        GCMModeCipher newInstance = GCMBlockCipher.newInstance(AESEngine.newInstance());
        newInstance.init(z, aEADParameters);
        byte[] bArr3 = new byte[newInstance.getOutputSize(bArr.length)];
        try {
            newInstance.doFinal(bArr3, newInstance.processBytes(bArr, 0, bArr.length, bArr3, 0));
            return bArr3;
        } catch (InvalidCipherTextException unused) {
            return null;
        }
    }

    public byte[] decrypt(byte[] bArr) {
        ByteBuffer order = ByteBuffer.allocate(12).order(ByteOrder.LITTLE_ENDIAN);
        long j = this.mDecIv;
        this.mDecIv = 1 + j;
        return encryptDecrypt(false, bArr, order.putLong(j).array());
    }

    @Override // javax.security.auth.Destroyable
    public void destroy() {
        this.mIsDestroyed = true;
        Arrays.fill(this.mSecretKey, (byte) 0);
        this.mSpake2Ctx.destroy();
    }

    public byte[] encrypt(byte[] bArr) {
        ByteBuffer order = ByteBuffer.allocate(12).order(ByteOrder.LITTLE_ENDIAN);
        long j = this.mEncIv;
        this.mEncIv = 1 + j;
        return encryptDecrypt(true, bArr, order.putLong(j).array());
    }

    public byte[] getMsg() {
        return this.mMsg;
    }

    public boolean initCipher(byte[] bArr) throws IllegalArgumentException, IllegalStateException {
        if (this.mIsDestroyed) {
            return false;
        }
        byte[] b = this.mSpake2Ctx.b(bArr);
        HKDFBytesGenerator hKDFBytesGenerator = new HKDFBytesGenerator(new SHA256Digest());
        hKDFBytesGenerator.init(new HKDFParameters(b, null, INFO));
        byte[] bArr2 = this.mSecretKey;
        hKDFBytesGenerator.generateBytes(bArr2, 0, bArr2.length);
        return true;
    }

    @Override // javax.security.auth.Destroyable
    public boolean isDestroyed() {
        return this.mIsDestroyed;
    }
}
