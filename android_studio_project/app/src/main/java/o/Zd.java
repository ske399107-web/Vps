package o;

import android.content.res.Resources;
import java.util.Objects;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Zd {
    public final Resources a;
    public final Resources.Theme b;

    public Zd(Resources resources, Resources.Theme theme) {
        this.a = resources;
        this.b = theme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Zd.class != obj.getClass()) {
            return false;
        }
        Zd zd = (Zd) obj;
        if (this.a.equals(zd.a) && Objects.equals(this.b, zd.b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b);
    }
}
