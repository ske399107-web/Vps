package o;

import android.os.Build;
import java.lang.reflect.Method;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Xh {
    public static boolean a;
    public static Method b;
    public static final boolean c;

    static {
        boolean z;
        if (Build.VERSION.SDK_INT >= 27) {
            z = true;
        } else {
            z = false;
        }
        c = z;
    }
}
