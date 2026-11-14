package o;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Ge extends Ie {
    public static final RectF h = new RectF();
    public final float b;
    public final float c;
    public final float d;
    public final float e;

    /* renamed from: f, reason: collision with root package name */
    public float f96f;
    public float g;

    public Ge(float f2, float f3, float f4, float f5) {
        this.b = f2;
        this.c = f3;
        this.d = f4;
        this.e = f5;
    }

    @Override // o.Ie
    public final void a(Matrix matrix, Path path) {
        Matrix matrix2 = this.a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        RectF rectF = h;
        rectF.set(this.b, this.c, this.d, this.e);
        path.arcTo(rectF, this.f96f, this.g, false);
        path.transform(matrix);
    }
}
