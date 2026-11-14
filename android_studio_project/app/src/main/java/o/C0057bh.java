package o;

import android.graphics.Matrix;
import android.graphics.Paint;
import java.util.ArrayList;

/* renamed from: o.bh, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0057bh extends AbstractC0077ch {
    public final Matrix a;
    public final ArrayList b;
    public float c;
    public float d;
    public float e;

    /* renamed from: f, reason: collision with root package name */
    public float f187f;
    public float g;
    public float h;
    public float i;
    public final Matrix j;
    public String k;

    public C0057bh() {
        this.a = new Matrix();
        this.b = new ArrayList();
        this.c = 0.0f;
        this.d = 0.0f;
        this.e = 0.0f;
        this.f187f = 1.0f;
        this.g = 1.0f;
        this.h = 0.0f;
        this.i = 0.0f;
        this.j = new Matrix();
        this.k = null;
    }

    @Override // o.AbstractC0077ch
    public final boolean a() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.b;
            if (i >= arrayList.size()) {
                return false;
            }
            if (((AbstractC0077ch) arrayList.get(i)).a()) {
                return true;
            }
            i++;
        }
    }

    @Override // o.AbstractC0077ch
    public final boolean b(int[] iArr) {
        int i = 0;
        boolean z = false;
        while (true) {
            ArrayList arrayList = this.b;
            if (i < arrayList.size()) {
                z |= ((AbstractC0077ch) arrayList.get(i)).b(iArr);
                i++;
            } else {
                return z;
            }
        }
    }

    public final void c() {
        Matrix matrix = this.j;
        matrix.reset();
        matrix.postTranslate(-this.d, -this.e);
        matrix.postScale(this.f187f, this.g);
        matrix.postRotate(this.c, 0.0f, 0.0f);
        matrix.postTranslate(this.h + this.d, this.i + this.e);
    }

    public String getGroupName() {
        return this.k;
    }

    public Matrix getLocalMatrix() {
        return this.j;
    }

    public float getPivotX() {
        return this.d;
    }

    public float getPivotY() {
        return this.e;
    }

    public float getRotation() {
        return this.c;
    }

    public float getScaleX() {
        return this.f187f;
    }

    public float getScaleY() {
        return this.g;
    }

    public float getTranslateX() {
        return this.h;
    }

    public float getTranslateY() {
        return this.i;
    }

    public void setPivotX(float f2) {
        if (f2 != this.d) {
            this.d = f2;
            c();
        }
    }

    public void setPivotY(float f2) {
        if (f2 != this.e) {
            this.e = f2;
            c();
        }
    }

    public void setRotation(float f2) {
        if (f2 != this.c) {
            this.c = f2;
            c();
        }
    }

    public void setScaleX(float f2) {
        if (f2 != this.f187f) {
            this.f187f = f2;
            c();
        }
    }

    public void setScaleY(float f2) {
        if (f2 != this.g) {
            this.g = f2;
            c();
        }
    }

    public void setTranslateX(float f2) {
        if (f2 != this.h) {
            this.h = f2;
            c();
        }
    }

    public void setTranslateY(float f2) {
        if (f2 != this.i) {
            this.i = f2;
            c();
        }
    }

    /* JADX WARN: Type inference failed for: r4v5, types: [o.dh, o.ah] */
    public C0057bh(C0057bh c0057bh, E2 e2) {
        AbstractC0097dh abstractC0097dh;
        this.a = new Matrix();
        this.b = new ArrayList();
        this.c = 0.0f;
        this.d = 0.0f;
        this.e = 0.0f;
        this.f187f = 1.0f;
        this.g = 1.0f;
        this.h = 0.0f;
        this.i = 0.0f;
        Matrix matrix = new Matrix();
        this.j = matrix;
        this.k = null;
        this.c = c0057bh.c;
        this.d = c0057bh.d;
        this.e = c0057bh.e;
        this.f187f = c0057bh.f187f;
        this.g = c0057bh.g;
        this.h = c0057bh.h;
        this.i = c0057bh.i;
        String str = c0057bh.k;
        this.k = str;
        if (str != null) {
            e2.put(str, this);
        }
        matrix.set(c0057bh.j);
        ArrayList arrayList = c0057bh.b;
        for (int i = 0; i < arrayList.size(); i++) {
            Object obj = arrayList.get(i);
            if (obj instanceof C0057bh) {
                this.b.add(new C0057bh((C0057bh) obj, e2));
            } else {
                if (obj instanceof C0037ah) {
                    C0037ah c0037ah = (C0037ah) obj;
                    ?? abstractC0097dh2 = new AbstractC0097dh(c0037ah);
                    abstractC0097dh2.e = 0.0f;
                    abstractC0097dh2.g = 1.0f;
                    abstractC0097dh2.h = 1.0f;
                    abstractC0097dh2.i = 0.0f;
                    abstractC0097dh2.j = 1.0f;
                    abstractC0097dh2.k = 0.0f;
                    abstractC0097dh2.l = Paint.Cap.BUTT;
                    abstractC0097dh2.m = Paint.Join.MITER;
                    abstractC0097dh2.n = 4.0f;
                    abstractC0097dh2.d = c0037ah.d;
                    abstractC0097dh2.e = c0037ah.e;
                    abstractC0097dh2.g = c0037ah.g;
                    abstractC0097dh2.f180f = c0037ah.f180f;
                    abstractC0097dh2.c = c0037ah.c;
                    abstractC0097dh2.h = c0037ah.h;
                    abstractC0097dh2.i = c0037ah.i;
                    abstractC0097dh2.j = c0037ah.j;
                    abstractC0097dh2.k = c0037ah.k;
                    abstractC0097dh2.l = c0037ah.l;
                    abstractC0097dh2.m = c0037ah.m;
                    abstractC0097dh2.n = c0037ah.n;
                    abstractC0097dh = abstractC0097dh2;
                } else if (obj instanceof Zg) {
                    abstractC0097dh = new AbstractC0097dh((Zg) obj);
                } else {
                    throw new IllegalStateException("Unknown object in the tree!");
                }
                this.b.add(abstractC0097dh);
                Object obj2 = abstractC0097dh.b;
                if (obj2 != null) {
                    e2.put(obj2, abstractC0097dh);
                }
            }
        }
    }
}
