package io.github.muntashirakon.adb;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class AdbAuthenticationFailedException extends RuntimeException {
    public AdbAuthenticationFailedException() {
        super("Initial authentication attempt rejected by peer.");
    }
}
