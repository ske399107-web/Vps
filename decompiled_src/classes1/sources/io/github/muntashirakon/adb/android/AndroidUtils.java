package io.github.muntashirakon.adb.android;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import java.net.InetAddress;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class AndroidUtils {
    private static final String GOLDFISH = "goldfish";
    private static final String RANCHU = "ranchu";
    private static final String SDK = "sdk";

    public static String getHostIpAddress(Context context) {
        if (isEmulator(context)) {
            return "10.0.2.2";
        }
        String hostAddress = InetAddress.getLoopbackAddress().getHostAddress();
        if (hostAddress != null && !hostAddress.equals("::1")) {
            return hostAddress;
        }
        return "127.0.0.1";
    }

    public static boolean isEmulator(Context context) {
        if (Build.PRODUCT.contains(SDK)) {
            return true;
        }
        String str = Build.HARDWARE;
        if (str.contains(GOLDFISH) || str.contains(RANCHU) || Settings.Secure.getString(context.getContentResolver(), "android_id") == null) {
            return true;
        }
        return false;
    }
}
