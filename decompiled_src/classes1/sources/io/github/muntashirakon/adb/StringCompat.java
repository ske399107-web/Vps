package io.github.muntashirakon.adb;

import java.nio.charset.Charset;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
final class StringCompat {
    public static byte[] getBytes(String str, String str2) {
        return str.getBytes(Charset.forName(str2));
    }
}
