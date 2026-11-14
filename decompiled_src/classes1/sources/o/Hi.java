package o;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import java.util.Objects;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Hi extends Gi {
    public Hi(Mi mi, WindowInsets windowInsets) {
        super(mi, windowInsets);
    }

    @Override // o.Ki
    public Mi a() {
        WindowInsets consumeDisplayCutout;
        consumeDisplayCutout = this.c.consumeDisplayCutout();
        return Mi.g(null, consumeDisplayCutout);
    }

    @Override // o.Ki
    public C0066c6 e() {
        DisplayCutout displayCutout;
        displayCutout = this.c.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new C0066c6(displayCutout);
    }

    @Override // o.Fi, o.Ki
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Hi)) {
            return false;
        }
        Hi hi = (Hi) obj;
        if (Objects.equals(this.c, hi.c) && Objects.equals(this.g, hi.g)) {
            return true;
        }
        return false;
    }

    @Override // o.Ki
    public int hashCode() {
        return this.c.hashCode();
    }
}
