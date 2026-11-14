package o;

import java.util.Set;

/* renamed from: o.m5, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0264m5 {
    public final String a;
    public final String b;
    public final String c;
    public final Object d;
    public final long e;

    /* renamed from: f, reason: collision with root package name */
    public final long f251f;
    public final String g;

    public C0264m5(String str, String str2, String str3, Set set, long j, long j2, String str4) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = set;
        this.e = j;
        this.f251f = j2;
        this.g = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0264m5)) {
            return false;
        }
        C0264m5 c0264m5 = (C0264m5) obj;
        if (this.a.equals(c0264m5.a) && this.b.equals(c0264m5.b) && this.c.equals(c0264m5.c) && this.d.equals(c0264m5.d) && this.e == c0264m5.e && this.f251f == c0264m5.f251f && this.g.equals(c0264m5.g)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.g.hashCode() + ((Long.hashCode(this.f251f) + ((Long.hashCode(this.e) + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CyperSession(sessionJws=");
        sb.append(this.a);
        sb.append(", license=");
        sb.append(this.b);
        sb.append(", user=");
        sb.append(this.c);
        sb.append(", features=");
        sb.append(this.d);
        sb.append(", expiresAt=");
        sb.append(this.e);
        sb.append(", keyExpiresAt=");
        sb.append(this.f251f);
        sb.append(", timeRemaining=");
        return Ve.k(sb, this.g, ")");
    }
}
