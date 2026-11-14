package org.bouncycastle.est;

import java.io.IOException;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public interface ESTSourceConnectionListener<T, I> {
    ESTRequest onConnection(Source<T> source, ESTRequest eSTRequest) throws IOException;
}
