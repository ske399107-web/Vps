package o;

/* renamed from: o.w9, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0467w9 extends AbstractC0427u9 {
    public static final C0467w9 d = new AbstractC0427u9(1, 0, 1);

    public final boolean equals(Object obj) {
        if (obj instanceof C0467w9) {
            if (!isEmpty() || !((C0467w9) obj).isEmpty()) {
                C0467w9 c0467w9 = (C0467w9) obj;
                if (this.a == c0467w9.a) {
                    if (this.b == c0467w9.b) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.a * 31) + this.b;
    }

    public final boolean isEmpty() {
        if (this.a > this.b) {
            return true;
        }
        return false;
    }

    public final String toString() {
        return this.a + ".." + this.b;
    }
}
