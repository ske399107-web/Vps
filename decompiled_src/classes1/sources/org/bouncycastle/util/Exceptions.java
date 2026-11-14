package org.bouncycastle.util;

import java.io.IOException;
import o.AbstractC0304o5;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Exceptions {
    public static IllegalArgumentException illegalArgumentException(String str, Throwable th) {
        return new IllegalArgumentException(str, th);
    }

    public static IllegalStateException illegalStateException(String str, Throwable th) {
        return new IllegalStateException(str, th);
    }

    public static IOException ioException(String str, Throwable th) {
        StringBuilder o2 = AbstractC0304o5.o(str, "-");
        o2.append(th.getMessage());
        return new IOException(o2.toString());
    }
}
