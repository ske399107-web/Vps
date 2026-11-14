package org.bouncycastle.crypto.threshold;

import java.io.IOException;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public interface SecretSplitter {
    SplitSecret resplit(byte[] bArr, int i, int i2);

    SplitSecret split(int i, int i2);

    SplitSecret splitAround(SecretShare secretShare, int i, int i2) throws IOException;
}
