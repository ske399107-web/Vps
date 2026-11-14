package o;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* renamed from: o.j5, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0204j5 extends C0111eb {
    public static final /* synthetic */ int y = 0;
    public C0185i5 x;

    @Override // o.C0111eb
    public final void f(Canvas canvas) {
        if (this.x.r.isEmpty()) {
            super.f(canvas);
            return;
        }
        canvas.save();
        if (Build.VERSION.SDK_INT >= 26) {
            canvas.clipOutRect(this.x.r);
        } else {
            canvas.clipRect(this.x.r, Region.Op.DIFFERENCE);
        }
        super.f(canvas);
        canvas.restore();
    }

    @Override // o.C0111eb, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.x = new C0185i5(this.x);
        return this;
    }

    public final void q(float f2, float f3, float f4, float f5) {
        RectF rectF = this.x.r;
        if (f2 != rectF.left || f3 != rectF.top || f4 != rectF.right || f5 != rectF.bottom) {
            rectF.set(f2, f3, f4, f5);
            invalidateSelf();
        }
    }
}
