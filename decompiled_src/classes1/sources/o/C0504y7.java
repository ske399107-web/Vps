package o;

import java.util.List;
import java.util.Objects;

/* renamed from: o.y7, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0504y7 {
    public String a;
    public String b;
    public List c;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0504y7)) {
            return false;
        }
        C0504y7 c0504y7 = (C0504y7) obj;
        if (Objects.equals(this.a, c0504y7.a) && Objects.equals(this.b, c0504y7.b) && Objects.equals(this.c, c0504y7.c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b, this.c);
    }
}
