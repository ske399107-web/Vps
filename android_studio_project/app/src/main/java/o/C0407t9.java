package o;

import android.graphics.Insets;

/* renamed from: o.t9, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0407t9 {
    public static final C0407t9 e = new C0407t9(0, 0, 0, 0);
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public C0407t9(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public static C0407t9 a(C0407t9 c0407t9, C0407t9 c0407t92) {
        return b(Math.max(c0407t9.a, c0407t92.a), Math.max(c0407t9.b, c0407t92.b), Math.max(c0407t9.c, c0407t92.c), Math.max(c0407t9.d, c0407t92.d));
    }

    public static C0407t9 b(int i, int i2, int i3, int i4) {
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return e;
        }
        return new C0407t9(i, i2, i3, i4);
    }

    public static C0407t9 c(Insets insets) {
        int i;
        int i2;
        int i3;
        int i4;
        i = insets.left;
        i2 = insets.top;
        i3 = insets.right;
        i4 = insets.bottom;
        return b(i, i2, i3, i4);
    }

    public final Insets d() {
        return AbstractC0440v2.b(this.a, this.b, this.c, this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0407t9.class != obj.getClass()) {
            return false;
        }
        C0407t9 c0407t9 = (C0407t9) obj;
        if (this.d == c0407t9.d && this.a == c0407t9.a && this.c == c0407t9.c && this.b == c0407t9.b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (((((this.a * 31) + this.b) * 31) + this.c) * 31) + this.d;
    }

    public final String toString() {
        return "Insets{left=" + this.a + ", top=" + this.b + ", right=" + this.c + ", bottom=" + this.d + '}';
    }
}
