package o;

import android.os.LocaleList;
import java.util.Locale;

/* renamed from: o.ra, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0368ra {
    public static final C0368ra b = new C0368ra(new C0388sa(new LocaleList(new Locale[0])));
    public final C0388sa a;

    public C0368ra(C0388sa c0388sa) {
        this.a = c0388sa;
    }

    public static C0368ra a(String str) {
        if (str != null && !str.isEmpty()) {
            String[] split = str.split(",", -1);
            int length = split.length;
            Locale[] localeArr = new Locale[length];
            for (int i = 0; i < length; i++) {
                String str2 = split[i];
                int i2 = AbstractC0349qa.a;
                localeArr[i] = Locale.forLanguageTag(str2);
            }
            return new C0368ra(new C0388sa(new LocaleList(localeArr)));
        }
        return b;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0368ra) {
            if (this.a.equals(((C0368ra) obj).a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a.a.hashCode();
    }

    public final String toString() {
        return this.a.a.toString();
    }
}
