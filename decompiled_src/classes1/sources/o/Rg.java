package o;

import java.util.Arrays;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Rg {
    public final int a;
    public final int b;
    public final byte[] c;
    public final String d;

    public Rg(int i, int i2, String str, byte[] bArr) {
        AbstractC0487x9.o(str, "flowId");
        this.a = i;
        this.b = i2;
        this.c = bArr;
        this.d = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Rg)) {
            return false;
        }
        Rg rg = (Rg) obj;
        if (this.a == rg.a && this.b == rg.b && this.c.equals(rg.c) && AbstractC0487x9.b(this.d, rg.d)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Boolean.hashCode(true) + ((this.d.hashCode() + ((Arrays.hashCode(this.c) + ((Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        String arrays = Arrays.toString(this.c);
        StringBuilder sb = new StringBuilder("PendingGame(command=");
        sb.append(this.a);
        sb.append(", flags=");
        sb.append(this.b);
        sb.append(", body=");
        sb.append(arrays);
        sb.append(", flowId=");
        return Ve.k(sb, this.d, ", s2c=true)");
    }
}
