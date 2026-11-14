package o;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class L9 {
    private static final /* synthetic */ L9[] $VALUES;
    public static final J9 Companion;
    public static final L9 ON_ANY;
    public static final L9 ON_CREATE;
    public static final L9 ON_DESTROY;
    public static final L9 ON_PAUSE;
    public static final L9 ON_RESUME;
    public static final L9 ON_START;
    public static final L9 ON_STOP;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, o.L9] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, o.J9] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, o.L9] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, o.L9] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, o.L9] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, o.L9] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, o.L9] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Enum, o.L9] */
    static {
        ?? r0 = new Enum("ON_CREATE", 0);
        ON_CREATE = r0;
        ?? r1 = new Enum("ON_START", 1);
        ON_START = r1;
        ?? r2 = new Enum("ON_RESUME", 2);
        ON_RESUME = r2;
        ?? r3 = new Enum("ON_PAUSE", 3);
        ON_PAUSE = r3;
        ?? r4 = new Enum("ON_STOP", 4);
        ON_STOP = r4;
        ?? r5 = new Enum("ON_DESTROY", 5);
        ON_DESTROY = r5;
        ?? r6 = new Enum("ON_ANY", 6);
        ON_ANY = r6;
        $VALUES = new L9[]{r0, r1, r2, r3, r4, r5, r6};
        Companion = new Object();
    }

    public static L9 valueOf(String str) {
        return (L9) Enum.valueOf(L9.class, str);
    }

    public static L9[] values() {
        return (L9[]) $VALUES.clone();
    }

    public final M9 a() {
        switch (K9.a[ordinal()]) {
            case 1:
            case 2:
                return M9.c;
            case 3:
            case 4:
                return M9.d;
            case 5:
                return M9.e;
            case 6:
                return M9.a;
            default:
                throw new IllegalArgumentException(this + " has no target state");
        }
    }
}
