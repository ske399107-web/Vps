package o;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class M9 {
    public static final M9 a;
    public static final M9 b;
    public static final M9 c;
    public static final M9 d;
    public static final M9 e;

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ M9[] f124f;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, o.M9] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, o.M9] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, o.M9] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, o.M9] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, o.M9] */
    static {
        ?? r0 = new Enum("DESTROYED", 0);
        a = r0;
        ?? r1 = new Enum("INITIALIZED", 1);
        b = r1;
        ?? r2 = new Enum("CREATED", 2);
        c = r2;
        ?? r3 = new Enum("STARTED", 3);
        d = r3;
        ?? r4 = new Enum("RESUMED", 4);
        e = r4;
        f124f = new M9[]{r0, r1, r2, r3, r4};
    }

    public static M9 valueOf(String str) {
        return (M9) Enum.valueOf(M9.class, str);
    }

    public static M9[] values() {
        return (M9[]) f124f.clone();
    }
}
