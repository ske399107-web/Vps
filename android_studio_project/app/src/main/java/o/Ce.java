package o;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.BitSet;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Ce {
    public final Ke[] a = new Ke[4];
    public final Matrix[] b = new Matrix[4];
    public final Matrix[] c = new Matrix[4];
    public final PointF d = new PointF();
    public final Path e = new Path();

    /* renamed from: f, reason: collision with root package name */
    public final Path f77f = new Path();
    public final Ke g = new Ke();
    public final float[] h = new float[2];
    public final float[] i = new float[2];
    public final Path j = new Path();
    public final Path k = new Path();
    public final boolean l = true;

    public Ce() {
        for (int i = 0; i < 4; i++) {
            this.a[i] = new Ke();
            this.b[i] = new Matrix();
            this.c[i] = new Matrix();
        }
    }

    public final void a(Ae ae, float f2, RectF rectF, C c, Path path) {
        Matrix[] matrixArr;
        Matrix[] matrixArr2;
        Ke[] keArr;
        int i;
        float[] fArr;
        float abs;
        C0424u6 c0424u6;
        Path path2;
        InterfaceC0085d5 interfaceC0085d5;
        L1 l1;
        Path path3;
        Ce ce = this;
        Ae ae2 = ae;
        C c2 = c;
        path.rewind();
        Path path4 = ce.e;
        path4.rewind();
        Path path5 = ce.f77f;
        path5.rewind();
        path5.addRect(rectF, Path.Direction.CW);
        int i2 = 0;
        while (true) {
            matrixArr = ce.c;
            matrixArr2 = ce.b;
            keArr = ce.a;
            fArr = ce.h;
            if (i2 >= 4) {
                break;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        interfaceC0085d5 = ae2.f65f;
                    } else {
                        interfaceC0085d5 = ae2.e;
                    }
                } else {
                    interfaceC0085d5 = ae2.h;
                }
            } else {
                interfaceC0085d5 = ae2.g;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        l1 = ae2.b;
                    } else {
                        l1 = ae2.a;
                    }
                } else {
                    l1 = ae2.d;
                }
            } else {
                l1 = ae2.c;
            }
            Ke ke = keArr[i2];
            l1.getClass();
            l1.x(ke, f2, interfaceC0085d5.a(rectF));
            int i3 = i2 + 1;
            float f3 = (i3 % 4) * 90;
            matrixArr2[i2].reset();
            PointF pointF = ce.d;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        path3 = path4;
                        pointF.set(rectF.right, rectF.top);
                    } else {
                        path3 = path4;
                        pointF.set(rectF.left, rectF.top);
                    }
                } else {
                    path3 = path4;
                    pointF.set(rectF.left, rectF.bottom);
                }
            } else {
                path3 = path4;
                pointF.set(rectF.right, rectF.bottom);
            }
            matrixArr2[i2].setTranslate(pointF.x, pointF.y);
            matrixArr2[i2].preRotate(f3);
            Ke ke2 = keArr[i2];
            fArr[0] = ke2.c;
            fArr[1] = ke2.d;
            matrixArr2[i2].mapPoints(fArr);
            matrixArr[i2].reset();
            matrixArr[i2].setTranslate(fArr[0], fArr[1]);
            matrixArr[i2].preRotate(f3);
            i2 = i3;
            path4 = path3;
        }
        Path path6 = path4;
        int i4 = 0;
        for (i = 4; i4 < i; i = 4) {
            Ke ke3 = keArr[i4];
            fArr[0] = ke3.a;
            fArr[1] = ke3.b;
            matrixArr2[i4].mapPoints(fArr);
            if (i4 == 0) {
                path.moveTo(fArr[0], fArr[1]);
            } else {
                path.lineTo(fArr[0], fArr[1]);
            }
            keArr[i4].b(matrixArr2[i4], path);
            if (c2 != null) {
                Ke ke4 = keArr[i4];
                Matrix matrix = matrixArr2[i4];
                C0111eb c0111eb = (C0111eb) c2.b;
                BitSet bitSet = c0111eb.d;
                ke4.getClass();
                bitSet.set(i4, false);
                ke4.a(ke4.f116f);
                c0111eb.b[i4] = new De(new ArrayList(ke4.h), new Matrix(matrix));
            }
            int i5 = i4 + 1;
            int i6 = i5 % 4;
            Ke ke5 = keArr[i4];
            fArr[0] = ke5.c;
            fArr[1] = ke5.d;
            matrixArr2[i4].mapPoints(fArr);
            Ke ke6 = keArr[i6];
            float f4 = ke6.a;
            float[] fArr2 = ce.i;
            fArr2[0] = f4;
            fArr2[1] = ke6.b;
            matrixArr2[i6].mapPoints(fArr2);
            float max = Math.max(((float) Math.hypot(fArr[0] - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, 0.0f);
            Ke ke7 = keArr[i4];
            fArr[0] = ke7.c;
            fArr[1] = ke7.d;
            matrixArr2[i4].mapPoints(fArr);
            if (i4 != 1 && i4 != 3) {
                abs = Math.abs(rectF.centerY() - fArr[1]);
            } else {
                abs = Math.abs(rectF.centerX() - fArr[0]);
            }
            Ke ke8 = ce.g;
            ke8.d(0.0f, 0.0f, 270.0f, 0.0f);
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        c0424u6 = ae2.j;
                    } else {
                        c0424u6 = ae2.i;
                    }
                } else {
                    c0424u6 = ae2.l;
                }
            } else {
                c0424u6 = ae2.k;
            }
            c0424u6.f(max, abs, f2, ke8);
            Path path7 = ce.j;
            path7.reset();
            ke8.b(matrixArr[i4], path7);
            if (!ce.l || (!c0424u6.c() && !ce.b(path7, i4) && !ce.b(path7, i6))) {
                path2 = path6;
                ke8.b(matrixArr[i4], path);
            } else {
                path7.op(path7, path5, Path.Op.DIFFERENCE);
                fArr[0] = ke8.a;
                fArr[1] = ke8.b;
                matrixArr[i4].mapPoints(fArr);
                path2 = path6;
                path2.moveTo(fArr[0], fArr[1]);
                ke8.b(matrixArr[i4], path2);
            }
            if (c != null) {
                Matrix matrix2 = matrixArr[i4];
                C0111eb c0111eb2 = (C0111eb) c.b;
                c0111eb2.d.set(i4 + 4, false);
                ke8.a(ke8.f116f);
                c0111eb2.c[i4] = new De(new ArrayList(ke8.h), new Matrix(matrix2));
            }
            ce = this;
            ae2 = ae;
            c2 = c;
            path6 = path2;
            i4 = i5;
        }
        Path path8 = path6;
        path.close();
        path8.close();
        if (!path8.isEmpty()) {
            path.op(path8, Path.Op.UNION);
        }
    }

    public final boolean b(Path path, int i) {
        Path path2 = this.k;
        path2.reset();
        this.a[i].b(this.b[i], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (!rectF.isEmpty()) {
            return true;
        }
        if (rectF.width() > 1.0f && rectF.height() > 1.0f) {
            return true;
        }
        return false;
    }
}
