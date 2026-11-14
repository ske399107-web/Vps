package org.conscrypt;

import javax.net.ssl.SSLSession;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
interface SSLServerSessionCache {
    byte[] getSessionData(byte[] bArr);

    void putSessionData(SSLSession sSLSession, byte[] bArr);
}
