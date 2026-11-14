package o;

import android.content.res.Configuration;
import android.os.LocaleList;

/* renamed from: o.m1, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0260m1 {
    public static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
        LocaleList locales = configuration.getLocales();
        LocaleList locales2 = configuration2.getLocales();
        if (!locales.equals(locales2)) {
            configuration3.setLocales(locales2);
            configuration3.locale = configuration2.locale;
        }
    }

    public static C0368ra b(Configuration configuration) {
        return C0368ra.a(configuration.getLocales().toLanguageTags());
    }

    public static void c(C0368ra c0368ra) {
        LocaleList.setDefault(LocaleList.forLanguageTags(c0368ra.a.a.toLanguageTags()));
    }

    public static void d(Configuration configuration, C0368ra c0368ra) {
        configuration.setLocales(LocaleList.forLanguageTags(c0368ra.a.a.toLanguageTags()));
    }
}
