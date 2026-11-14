package o;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* renamed from: o.i5, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0185i5 extends C0091db {
    public final RectF r;

    public C0185i5(Ae ae, RectF rectF) {
        super(ae);
        this.r = rectF;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [o.j5, android.graphics.drawable.Drawable, o.eb] */
    @Override // o.C0091db, android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        ?? c0111eb = new C0111eb(this);
        c0111eb.x = this;
        c0111eb.invalidateSelf();
        return c0111eb;
    }

    public C0185i5(C0185i5 c0185i5) {
        super(c0185i5);
        this.r = c0185i5.r;
    }
}
