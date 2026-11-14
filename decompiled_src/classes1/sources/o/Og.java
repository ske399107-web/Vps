package o;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Og {
    public final int a;
    public final int b;
    public final int c;
    public final String d;
    public final int e;

    /* renamed from: f, reason: collision with root package name */
    public final int f134f;
    public final int g;
    public final int h;
    public final int i;
    public final int j;

    public Og(int i, int i2, int i3, String str, int i4, int i5, int i6, int i7, int i8, int i9) {
        AbstractC0487x9.o(str, "optName");
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = str;
        this.e = i4;
        this.f134f = i5;
        this.g = i6;
        this.h = i7;
        this.i = i8;
        this.j = i9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Og)) {
            return false;
        }
        Og og = (Og) obj;
        if (this.a == og.a && this.b == og.b && this.c == og.c && AbstractC0487x9.b(this.d, og.d) && this.e == og.e && this.f134f == og.f134f && this.g == og.g && this.h == og.h && this.i == og.i && this.j == og.j) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (Integer.hashCode(this.j) + ((Integer.hashCode(this.i) + ((Integer.hashCode(this.h) + ((Integer.hashCode(this.g) + ((Integer.hashCode(this.f134f) + ((Integer.hashCode(this.e) + ((this.d.hashCode() + ((Integer.hashCode(this.c) + ((Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Decoded(msgKey=");
        sb.append(this.a);
        sb.append(", crc7=");
        sb.append(this.b);
        sb.append(", sendOption=");
        sb.append(this.c);
        sb.append(", optName=");
        sb.append(this.d);
        sb.append(", cmd=");
        sb.append(this.e);
        sb.append(", orderId=");
        sb.append(this.f134f);
        sb.append(", flags=");
        sb.append(this.g);
        sb.append(", dataLen=");
        sb.append(this.h);
        sb.append(", dataOff=");
        sb.append(this.i);
        sb.append(", xorKey=");
        return Ve.j(sb, this.j, ", note=)");
    }
}
