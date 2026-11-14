package o;

import android.window.BackEvent;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class L2 {
    public final float a;
    public final float b;
    public final float c;
    public final int d;

    public L2(BackEvent backEvent) {
        R0 r0 = R0.a;
        float d = r0.d(backEvent);
        float e = r0.e(backEvent);
        float b = r0.b(backEvent);
        int c = r0.c(backEvent);
        this.a = d;
        this.b = e;
        this.c = b;
        this.d = c;
    }

    public final String toString() {
        return "BackEventCompat{touchX=" + this.a + ", touchY=" + this.b + ", progress=" + this.c + ", swipeEdge=" + this.d + '}';
    }
}
