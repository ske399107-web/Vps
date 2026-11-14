package o;

import android.os.Build;
import java.util.Locale;

/* renamed from: o.l3, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0242l3 {
    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            AbstractC0515z.b(30);
        }
        if (i >= 30) {
            AbstractC0515z.b(31);
        }
        if (i >= 30) {
            AbstractC0515z.b(33);
        }
        if (i >= 30) {
            AbstractC0515z.b(1000000);
        }
    }

    public static final boolean a() {
        int i = Build.VERSION.SDK_INT;
        if (i < 35) {
            if (i >= 34) {
                String str = Build.VERSION.CODENAME;
                AbstractC0487x9.n(str, "CODENAME");
                if (!"REL".equals(str)) {
                    Locale locale = Locale.ROOT;
                    String upperCase = str.toUpperCase(locale);
                    AbstractC0487x9.n(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
                    String upperCase2 = "VanillaIceCream".toUpperCase(locale);
                    AbstractC0487x9.n(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
                    if (upperCase.compareTo(upperCase2) >= 0) {
                    }
                }
            }
            return false;
        }
        return true;
    }
}
