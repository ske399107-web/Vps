package o;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Fe extends Je {
    public final He c;
    public final float d;
    public final float e;

    public Fe(He he, float f2, float f3) {
        this.c = he;
        this.d = f2;
        this.e = f3;
    }

    @Override // o.Je
    public final void a(Matrix matrix, C0511ye c0511ye, int i, Canvas canvas) {
        He he = this.c;
        float f2 = he.c;
        float f3 = this.e;
        float f4 = he.b;
        float f5 = this.d;
        RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(f2 - f3, f4 - f5), 0.0f);
        Matrix matrix2 = this.a;
        matrix2.set(matrix);
        matrix2.preTranslate(f5, f3);
        matrix2.preRotate(b());
        c0511ye.getClass();
        rectF.bottom += i;
        rectF.offset(0.0f, -i);
        int[] iArr = C0511ye.i;
        iArr[0] = c0511ye.f303f;
        iArr[1] = c0511ye.e;
        iArr[2] = c0511ye.d;
        Paint paint = c0511ye.c;
        float f6 = rectF.left;
        paint.setShader(new LinearGradient(f6, rectF.top, f6, rectF.bottom, iArr, C0511ye.j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix2);
        canvas.drawRect(rectF, paint);
        canvas.restore();
    }

    public final float b() {
        He he = this.c;
        return (float) Math.toDegrees(Math.atan((he.c - this.e) / (he.b - this.d)));
    }
}
