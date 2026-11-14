package o;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Ke {
    public float a;
    public float b;
    public float c;
    public float d;
    public float e;

    /* renamed from: f, reason: collision with root package name */
    public float f116f;
    public final ArrayList g = new ArrayList();
    public final ArrayList h = new ArrayList();

    public Ke() {
        d(0.0f, 0.0f, 270.0f, 0.0f);
    }

    public final void a(float f2) {
        float f3 = this.e;
        if (f3 == f2) {
            return;
        }
        float f4 = ((f2 - f3) + 360.0f) % 360.0f;
        if (f4 > 180.0f) {
            return;
        }
        float f5 = this.c;
        float f6 = this.d;
        Ge ge = new Ge(f5, f6, f5, f6);
        ge.f96f = this.e;
        ge.g = f4;
        this.h.add(new Ee(ge));
        this.e = f2;
    }

    public final void b(Matrix matrix, Path path) {
        ArrayList arrayList = this.g;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((Ie) arrayList.get(i)).a(matrix, path);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [o.Ie, java.lang.Object, o.He] */
    public final void c(float f2, float f3) {
        ?? ie = new Ie();
        ie.b = f2;
        ie.c = f3;
        this.g.add(ie);
        Fe fe = new Fe(ie, this.c, this.d);
        float b = fe.b() + 270.0f;
        float b2 = fe.b() + 270.0f;
        a(b);
        this.h.add(fe);
        this.e = b2;
        this.c = f2;
        this.d = f3;
    }

    public final void d(float f2, float f3, float f4, float f5) {
        this.a = f2;
        this.b = f3;
        this.c = f2;
        this.d = f3;
        this.e = f4;
        this.f116f = (f4 + f5) % 360.0f;
        this.g.clear();
        this.h.clear();
    }
}
