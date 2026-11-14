package o;

/* renamed from: o.v0, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0438v0 {
    public final String a;
    public final int b;

    public C0438v0(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0438v0)) {
            return false;
        }
        C0438v0 c0438v0 = (C0438v0) obj;
        if (AbstractC0487x9.b(this.a, c0438v0.a) && this.b == c0438v0.b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "PairInput(code=" + this.a + ", port=" + this.b + ")";
    }
}
