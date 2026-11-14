package o;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class J9 {
    public static L9 a(M9 m9) {
        AbstractC0487x9.o(m9, "state");
        int ordinal = m9.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    return null;
                }
                return L9.ON_RESUME;
            }
            return L9.ON_START;
        }
        return L9.ON_CREATE;
    }
}
