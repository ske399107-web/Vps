package o;

/* renamed from: o.jd, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0212jd {
    public static final C0193id a = new AbstractC0212jd();
    public static final AbstractC0159h b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [o.id, o.jd] */
    /* JADX WARN: Type inference failed for: r0v3, types: [o.h] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    static {
        ?? r0;
        Integer num = AbstractC0525z9.a;
        if (num != null && num.intValue() < 34) {
            r0 = new C0286n7();
        } else {
            r0 = new AbstractC0212jd();
        }
        b = r0;
    }

    public abstract int a();

    public int b() {
        int a2;
        int i;
        do {
            a2 = a() >>> 1;
            i = a2 % 65534;
        } while ((a2 - i) + 65533 < 0);
        return 1 + i;
    }
}
