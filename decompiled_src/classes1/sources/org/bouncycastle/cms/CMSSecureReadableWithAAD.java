package org.bouncycastle.cms;

import java.io.OutputStream;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
interface CMSSecureReadableWithAAD extends CMSSecureReadable {
    OutputStream getAADStream();

    byte[] getMAC();

    void setAADStream(OutputStream outputStream);
}
