package o;

import android.graphics.RectF;
import java.util.Arrays;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0 implements InterfaceC0085d5 {
    public final InterfaceC0085d5 a;
    public final float b;

    public C0(float f2, InterfaceC0085d5 interfaceC0085d5) {
        while (interfaceC0085d5 instanceof C0) {
            interfaceC0085d5 = ((C0) interfaceC0085d5).a;
            f2 += ((C0) interfaceC0085d5).b;
        }
        this.a = interfaceC0085d5;
        this.b = f2;
    }

    @Override // o.InterfaceC0085d5
    public final float a(RectF rectF) {
        return Math.max(0.0f, this.a.a(rectF) + this.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0)) {
            return false;
        }
        C0 c0 = (C0) obj;
        if (this.a.equals(c0.a) && this.b == c0.b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, Float.valueOf(this.b)});
    }
}
