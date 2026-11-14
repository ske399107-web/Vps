package o;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: o.o8, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class EnumC0307o8 {
    public static final EnumC0307o8 a;
    public static final EnumC0307o8 b;
    public static final EnumC0307o8 c;
    public static final /* synthetic */ EnumC0307o8[] d;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC0307o8 EF0;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, o.o8] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, o.o8] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, o.o8] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, o.o8] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, o.o8] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, o.o8] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Enum, o.o8] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Enum, o.o8] */
    static {
        ?? r0 = new Enum("PENALTY_LOG", 0);
        ?? r1 = new Enum("PENALTY_DEATH", 1);
        ?? r2 = new Enum("DETECT_FRAGMENT_REUSE", 2);
        a = r2;
        ?? r3 = new Enum("DETECT_FRAGMENT_TAG_USAGE", 3);
        b = r3;
        ?? r4 = new Enum("DETECT_RETAIN_INSTANCE_USAGE", 4);
        ?? r5 = new Enum("DETECT_SET_USER_VISIBLE_HINT", 5);
        ?? r6 = new Enum("DETECT_TARGET_FRAGMENT_USAGE", 6);
        ?? r7 = new Enum("DETECT_WRONG_FRAGMENT_CONTAINER", 7);
        c = r7;
        d = new EnumC0307o8[]{r0, r1, r2, r3, r4, r5, r6, r7};
    }

    public static EnumC0307o8 valueOf(String str) {
        return (EnumC0307o8) Enum.valueOf(EnumC0307o8.class, str);
    }

    public static EnumC0307o8[] values() {
        return (EnumC0307o8[]) d.clone();
    }
}
