package o;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Sg {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;

    public Sg(int i, int i2, int i3, int i4, int i5) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Sg)) {
            return false;
        }
        Sg sg = (Sg) obj;
        if (this.a == sg.a && this.b == sg.b && this.c == sg.c && this.d == sg.d && this.e == sg.e) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.e) + ((Integer.hashCode(this.d) + ((Integer.hashCode(this.c) + ((Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PermH(so=");
        sb.append(this.a);
        sb.append(", cmd=");
        sb.append(this.b);
        sb.append(", oid=");
        sb.append(this.c);
        sb.append(", flags=");
        sb.append(this.d);
        sb.append(", ln=");
        return Ve.j(sb, this.e, ")");
    }
}
