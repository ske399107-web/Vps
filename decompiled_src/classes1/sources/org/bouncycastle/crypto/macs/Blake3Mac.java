package org.bouncycastle.crypto.macs;

import o.Ve;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.digests.Blake3Digest;
import org.bouncycastle.crypto.params.Blake3Parameters;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Blake3Mac implements Mac {
    private final Blake3Digest theDigest;

    public Blake3Mac(Blake3Digest blake3Digest) {
        this.theDigest = blake3Digest;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) {
        return this.theDigest.doFinal(bArr, i);
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return this.theDigest.getAlgorithmName() + "Mac";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.theDigest.getDigestSize();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) {
        CipherParameters cipherParameters2;
        if (cipherParameters instanceof KeyParameter) {
            cipherParameters2 = Blake3Parameters.key(((KeyParameter) cipherParameters).getKey());
        } else {
            cipherParameters2 = cipherParameters;
        }
        if (cipherParameters2 instanceof Blake3Parameters) {
            Blake3Parameters blake3Parameters = (Blake3Parameters) cipherParameters2;
            if (blake3Parameters.getKey() != null) {
                this.theDigest.init(blake3Parameters);
                return;
            }
            throw new IllegalArgumentException("Blake3Mac requires a key parameter.");
        }
        throw new IllegalArgumentException(Ve.i("Invalid parameter passed to Blake3Mac init - ", cipherParameters));
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        this.theDigest.reset();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) {
        this.theDigest.update(b);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) {
        this.theDigest.update(bArr, i, i2);
    }
}
