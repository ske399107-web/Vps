package org.bouncycastle.pqc.crypto.slhdsa;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
class NodeEntry {
    final int nodeHeight;
    final byte[] nodeValue;

    public NodeEntry(byte[] bArr, int i) {
        this.nodeValue = bArr;
        this.nodeHeight = i;
    }
}
