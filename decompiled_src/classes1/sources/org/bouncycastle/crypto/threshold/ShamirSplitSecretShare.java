package org.bouncycastle.crypto.threshold;

import java.io.IOException;
import org.bouncycastle.util.Arrays;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class ShamirSplitSecretShare implements SecretShare {
    final int r;
    private final byte[] secretShare;

    public ShamirSplitSecretShare(byte[] bArr) {
        this.secretShare = Arrays.clone(bArr);
        this.r = 1;
    }

    @Override // org.bouncycastle.util.Encodable
    public byte[] getEncoded() throws IOException {
        return Arrays.clone(this.secretShare);
    }

    public ShamirSplitSecretShare(byte[] bArr, int i) {
        this.secretShare = Arrays.clone(bArr);
        this.r = i;
    }
}
