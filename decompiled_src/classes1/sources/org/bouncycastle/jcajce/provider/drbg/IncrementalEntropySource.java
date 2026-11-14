package org.bouncycastle.jcajce.provider.drbg;

import org.bouncycastle.crypto.prng.EntropySource;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
interface IncrementalEntropySource extends EntropySource {
    byte[] getEntropy(long j) throws InterruptedException;
}
