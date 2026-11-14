package o;

import java.nio.charset.Charset;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class I3 {
    public static final Charset a;
    public static final Charset b;

    static {
        Charset forName = Charset.forName("UTF-8");
        AbstractC0487x9.n(forName, "forName(...)");
        a = forName;
        AbstractC0487x9.n(Charset.forName("UTF-16"), "forName(...)");
        AbstractC0487x9.n(Charset.forName("UTF-16BE"), "forName(...)");
        AbstractC0487x9.n(Charset.forName("UTF-16LE"), "forName(...)");
        Charset forName2 = Charset.forName("US-ASCII");
        AbstractC0487x9.n(forName2, "forName(...)");
        b = forName2;
        AbstractC0487x9.n(Charset.forName("ISO-8859-1"), "forName(...)");
    }
}
