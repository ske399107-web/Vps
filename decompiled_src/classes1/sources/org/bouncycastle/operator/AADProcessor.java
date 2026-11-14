package org.bouncycastle.operator;

import java.io.OutputStream;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public interface AADProcessor {
    OutputStream getAADStream();

    byte[] getMAC();
}
