package o;

import android.graphics.RectF;
import java.util.Arrays;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Nd implements InterfaceC0085d5 {
    public final float a;

    public Nd(float f2) {
        this.a = f2;
    }

    @Override // o.InterfaceC0085d5
    public final float a(RectF rectF) {
        return Math.min(rectF.width(), rectF.height()) * this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof Nd) && this.a == ((Nd) obj).a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.a)});
    }
}
