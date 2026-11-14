package org.bouncycastle.crypto.engines;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class AESWrapEngine extends RFC3394WrapEngine {
    public AESWrapEngine() {
        super(AESEngine.newInstance());
    }

    public AESWrapEngine(boolean z) {
        super(AESEngine.newInstance(), z);
    }
}
