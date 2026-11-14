package org.bouncycastle.pqc.crypto.picnic;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class View {
    final byte[] communicatedBits;
    final int[] inputShare;
    final int[] outputShare;

    public View(PicnicEngine picnicEngine) {
        int i = picnicEngine.stateSizeWords;
        this.inputShare = new int[i];
        this.communicatedBits = new byte[picnicEngine.andSizeBytes];
        this.outputShare = new int[i];
    }
}
