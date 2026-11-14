package org.bouncycastle.tsp.ers;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
class IndexedHash {
    final byte[] digest;
    final int order;

    public IndexedHash(int i, byte[] bArr) {
        this.order = i;
        this.digest = bArr;
    }
}
