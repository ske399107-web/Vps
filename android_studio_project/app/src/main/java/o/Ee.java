package o;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Ee extends Je {
    public final Ge c;

    public Ee(Ge ge) {
        this.c = ge;
    }

    @Override // o.Je
    public final void a(Matrix matrix, C0511ye c0511ye, int i, Canvas canvas) {
        boolean z;
        Ge ge = this.c;
        float f2 = ge.f96f;
        float f3 = ge.g;
        RectF rectF = new RectF(ge.b, ge.c, ge.d, ge.e);
        c0511ye.getClass();
        if (f3 < 0.0f) {
            z = true;
        } else {
            z = false;
        }
        Path path = c0511ye.g;
        int[] iArr = C0511ye.k;
        if (z) {
            iArr[0] = 0;
            iArr[1] = c0511ye.f303f;
            iArr[2] = c0511ye.e;
            iArr[3] = c0511ye.d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f2, f3);
            path.close();
            float f4 = -i;
            rectF.inset(f4, f4);
            iArr[0] = 0;
            iArr[1] = c0511ye.d;
            iArr[2] = c0511ye.e;
            iArr[3] = c0511ye.f303f;
        }
        float width = rectF.width() / 2.0f;
        if (width > 0.0f) {
            float f5 = 1.0f - (i / width);
            float[] fArr = C0511ye.l;
            fArr[1] = f5;
            fArr[2] = ((1.0f - f5) / 2.0f) + f5;
            RadialGradient radialGradient = new RadialGradient(rectF.centerX(), rectF.centerY(), width, iArr, fArr, Shader.TileMode.CLAMP);
            Paint paint = c0511ye.b;
            paint.setShader(radialGradient);
            canvas.save();
            canvas.concat(matrix);
            canvas.scale(1.0f, rectF.height() / rectF.width());
            if (!z) {
                canvas.clipPath(path, Region.Op.DIFFERENCE);
                canvas.drawPath(path, c0511ye.h);
            }
            canvas.drawArc(rectF, f2, f3, true, paint);
            canvas.restore();
        }
    }
}
