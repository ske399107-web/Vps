package o;

import android.graphics.RectF;
import java.util.Arrays;

/* renamed from: o.g, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0139g implements InterfaceC0085d5 {
    public final float a;

    public C0139g(float f2) {
        this.a = f2;
    }

    @Override // o.InterfaceC0085d5
    public final float a(RectF rectF) {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof C0139g) && this.a == ((C0139g) obj).a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.a)});
    }
}
