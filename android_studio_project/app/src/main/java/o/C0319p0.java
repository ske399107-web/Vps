package o;

/* renamed from: o.p0, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0319p0 {
    public int a;
    public int b;
    public int c;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0319p0.class != obj.getClass()) {
            return false;
        }
        C0319p0 c0319p0 = (C0319p0) obj;
        int i = this.a;
        if (i != c0319p0.a) {
            return false;
        }
        if (i == 8 && Math.abs(this.c - this.b) == 1 && this.c == c0319p0.b && this.b == c0319p0.c) {
            return true;
        }
        if (this.c == c0319p0.c && this.b == c0319p0.b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (((this.a * 31) + this.b) * 31) + this.c;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[");
        int i = this.a;
        if (i != 1) {
            if (i != 2) {
                if (i != 4) {
                    if (i != 8) {
                        str = "??";
                    } else {
                        str = "mv";
                    }
                } else {
                    str = "up";
                }
            } else {
                str = "rm";
            }
        } else {
            str = "add";
        }
        sb.append(str);
        sb.append(",s:");
        sb.append(this.b);
        sb.append("c:");
        return Ve.j(sb, this.c, ",p:null]");
    }
}
