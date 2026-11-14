package o;

/* renamed from: o.x0, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0478x0 {
    public final String a;
    public final String b;
    public final int c;

    public C0478x0(String str, int i, String str2) {
        AbstractC0487x9.o(str, "type");
        this.a = str;
        this.b = str2;
        this.c = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0478x0)) {
            return false;
        }
        C0478x0 c0478x0 = (C0478x0) obj;
        if (AbstractC0487x9.b(this.a, c0478x0.a) && AbstractC0487x9.b(this.b, c0478x0.b) && this.c == c0478x0.c) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Hit(type=");
        sb.append(this.a);
        sb.append(", host=");
        sb.append(this.b);
        sb.append(", port=");
        return Ve.j(sb, this.c, ")");
    }
}
