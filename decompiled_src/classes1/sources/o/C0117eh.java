package o;

import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import org.bouncycastle.pqc.crypto.rainbow.GF2Field;

/* renamed from: o.eh, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0117eh {
    public static final Matrix p = new Matrix();
    public final Path a;
    public final Path b;
    public final Matrix c;
    public Paint d;
    public Paint e;

    /* renamed from: f, reason: collision with root package name */
    public PathMeasure f204f;
    public final C0057bh g;
    public float h;
    public float i;
    public float j;
    public float k;
    public int l;
    public String m;
    public Boolean n;

    /* renamed from: o, reason: collision with root package name */
    public final E2 f205o;

    /* JADX WARN: Type inference failed for: r0v4, types: [o.Qe, o.E2] */
    public C0117eh() {
        this.c = new Matrix();
        this.h = 0.0f;
        this.i = 0.0f;
        this.j = 0.0f;
        this.k = 0.0f;
        this.l = GF2Field.MASK;
        this.m = null;
        this.n = null;
        this.f205o = new Qe(0);
        this.g = new C0057bh();
        this.a = new Path();
        this.b = new Path();
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00e6, code lost:
    
        if (r0.j != 1.0f) goto L33;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v18 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(o.C0057bh r19, android.graphics.Matrix r20, android.graphics.Canvas r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.C0117eh.a(o.bh, android.graphics.Matrix, android.graphics.Canvas, int, int):void");
    }

    public float getAlpha() {
        return getRootAlpha() / 255.0f;
    }

    public int getRootAlpha() {
        return this.l;
    }

    public void setAlpha(float f2) {
        setRootAlpha((int) (f2 * 255.0f));
    }

    public void setRootAlpha(int i) {
        this.l = i;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [o.Qe, o.E2] */
    public C0117eh(C0117eh c0117eh) {
        this.c = new Matrix();
        this.h = 0.0f;
        this.i = 0.0f;
        this.j = 0.0f;
        this.k = 0.0f;
        this.l = GF2Field.MASK;
        this.m = null;
        this.n = null;
        ?? qe = new Qe(0);
        this.f205o = qe;
        this.g = new C0057bh(c0117eh.g, qe);
        this.a = new Path(c0117eh.a);
        this.b = new Path(c0117eh.b);
        this.h = c0117eh.h;
        this.i = c0117eh.i;
        this.j = c0117eh.j;
        this.k = c0117eh.k;
        this.l = c0117eh.l;
        this.m = c0117eh.m;
        String str = c0117eh.m;
        if (str != null) {
            qe.put(str, this);
        }
        this.n = c0117eh.n;
    }
}
