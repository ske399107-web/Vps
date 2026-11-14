package o;

import android.graphics.Paint;

/* renamed from: o.ah, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0037ah extends AbstractC0097dh {
    public D1 d;
    public float e;

    /* renamed from: f, reason: collision with root package name */
    public D1 f180f;
    public float g;
    public float h;
    public float i;
    public float j;
    public float k;
    public Paint.Cap l;
    public Paint.Join m;
    public float n;

    @Override // o.AbstractC0077ch
    public final boolean a() {
        if (!this.f180f.c() && !this.d.c()) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    @Override // o.AbstractC0077ch
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(int[] r7) {
        /*
            r6 = this;
            o.D1 r0 = r6.f180f
            boolean r1 = r0.c()
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L1e
            java.lang.Object r1 = r0.c
            android.content.res.ColorStateList r1 = (android.content.res.ColorStateList) r1
            int r4 = r1.getDefaultColor()
            int r1 = r1.getColorForState(r7, r4)
            int r4 = r0.a
            if (r1 == r4) goto L1e
            r0.a = r1
            r0 = r3
            goto L1f
        L1e:
            r0 = r2
        L1f:
            o.D1 r1 = r6.d
            boolean r4 = r1.c()
            if (r4 == 0) goto L3a
            java.lang.Object r4 = r1.c
            android.content.res.ColorStateList r4 = (android.content.res.ColorStateList) r4
            int r5 = r4.getDefaultColor()
            int r7 = r4.getColorForState(r7, r5)
            int r4 = r1.a
            if (r7 == r4) goto L3a
            r1.a = r7
            r2 = r3
        L3a:
            r7 = r0 | r2
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: o.C0037ah.b(int[]):boolean");
    }

    public float getFillAlpha() {
        return this.h;
    }

    public int getFillColor() {
        return this.f180f.a;
    }

    public float getStrokeAlpha() {
        return this.g;
    }

    public int getStrokeColor() {
        return this.d.a;
    }

    public float getStrokeWidth() {
        return this.e;
    }

    public float getTrimPathEnd() {
        return this.j;
    }

    public float getTrimPathOffset() {
        return this.k;
    }

    public float getTrimPathStart() {
        return this.i;
    }

    public void setFillAlpha(float f2) {
        this.h = f2;
    }

    public void setFillColor(int i) {
        this.f180f.a = i;
    }

    public void setStrokeAlpha(float f2) {
        this.g = f2;
    }

    public void setStrokeColor(int i) {
        this.d.a = i;
    }

    public void setStrokeWidth(float f2) {
        this.e = f2;
    }

    public void setTrimPathEnd(float f2) {
        this.j = f2;
    }

    public void setTrimPathOffset(float f2) {
        this.k = f2;
    }

    public void setTrimPathStart(float f2) {
        this.i = f2;
    }
}
