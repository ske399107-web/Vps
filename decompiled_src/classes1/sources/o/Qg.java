package o;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Qg {
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public Qg(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Qg)) {
            return false;
        }
        Qg qg = (Qg) obj;
        if (this.a == qg.a && this.b == qg.b && this.c == qg.c && this.d == qg.d) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + ((Integer.hashCode(this.c) + ((Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "GameHeader(command=" + this.a + ", flags=" + this.b + ", bodyLen=" + this.c + ", dataOff=" + this.d + ")";
    }
}
