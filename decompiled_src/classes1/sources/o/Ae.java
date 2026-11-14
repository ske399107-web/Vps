package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Ae {
    public L1 a = new Object();
    public L1 b = new Object();
    public L1 c = new Object();
    public L1 d = new Object();
    public InterfaceC0085d5 e = new C0139g(0.0f);

    /* renamed from: f, reason: collision with root package name */
    public InterfaceC0085d5 f65f = new C0139g(0.0f);
    public InterfaceC0085d5 g = new C0139g(0.0f);
    public InterfaceC0085d5 h = new C0139g(0.0f);
    public C0424u6 i = new C0424u6(0);
    public C0424u6 j = new C0424u6(0);
    public C0424u6 k = new C0424u6(0);
    public C0424u6 l = new C0424u6(0);

    public static C0530ze a(Context context, int i, int i2, C0139g c0139g) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i);
        if (i2 != 0) {
            contextThemeWrapper = new ContextThemeWrapper(contextThemeWrapper, i2);
        }
        TypedArray obtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(AbstractC0133fd.v);
        try {
            int i3 = obtainStyledAttributes.getInt(0, 0);
            int i4 = obtainStyledAttributes.getInt(3, i3);
            int i5 = obtainStyledAttributes.getInt(4, i3);
            int i6 = obtainStyledAttributes.getInt(2, i3);
            int i7 = obtainStyledAttributes.getInt(1, i3);
            InterfaceC0085d5 c = c(obtainStyledAttributes, 5, c0139g);
            InterfaceC0085d5 c2 = c(obtainStyledAttributes, 8, c);
            InterfaceC0085d5 c3 = c(obtainStyledAttributes, 9, c);
            InterfaceC0085d5 c4 = c(obtainStyledAttributes, 7, c);
            InterfaceC0085d5 c5 = c(obtainStyledAttributes, 6, c);
            C0530ze c0530ze = new C0530ze();
            L1 s = Ha.s(i4);
            c0530ze.a = s;
            C0530ze.b(s);
            c0530ze.e = c2;
            L1 s2 = Ha.s(i5);
            c0530ze.b = s2;
            C0530ze.b(s2);
            c0530ze.f308f = c3;
            L1 s3 = Ha.s(i6);
            c0530ze.c = s3;
            C0530ze.b(s3);
            c0530ze.g = c4;
            L1 s4 = Ha.s(i7);
            c0530ze.d = s4;
            C0530ze.b(s4);
            c0530ze.h = c5;
            return c0530ze;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static C0530ze b(Context context, AttributeSet attributeSet, int i, int i2) {
        C0139g c0139g = new C0139g(0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0133fd.p, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        return a(context, resourceId, resourceId2, c0139g);
    }

    public static InterfaceC0085d5 c(TypedArray typedArray, int i, InterfaceC0085d5 interfaceC0085d5) {
        TypedValue peekValue = typedArray.peekValue(i);
        if (peekValue == null) {
            return interfaceC0085d5;
        }
        int i2 = peekValue.type;
        if (i2 == 5) {
            return new C0139g(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics()));
        }
        if (i2 == 6) {
            return new Nd(peekValue.getFraction(1.0f, 1.0f));
        }
        return interfaceC0085d5;
    }

    public final boolean d(RectF rectF) {
        boolean z;
        boolean z2;
        boolean z3;
        if (this.l.getClass().equals(C0424u6.class) && this.j.getClass().equals(C0424u6.class) && this.i.getClass().equals(C0424u6.class) && this.k.getClass().equals(C0424u6.class)) {
            z = true;
        } else {
            z = false;
        }
        float a = this.e.a(rectF);
        if (this.f65f.a(rectF) == a && this.h.a(rectF) == a && this.g.a(rectF) == a) {
            z2 = true;
        } else {
            z2 = false;
        }
        if ((this.b instanceof C0134fe) && (this.a instanceof C0134fe) && (this.c instanceof C0134fe) && (this.d instanceof C0134fe)) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (!z || !z2 || !z3) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [o.ze, java.lang.Object] */
    public final C0530ze e() {
        ?? obj = new Object();
        obj.a = this.a;
        obj.b = this.b;
        obj.c = this.c;
        obj.d = this.d;
        obj.e = this.e;
        obj.f308f = this.f65f;
        obj.g = this.g;
        obj.h = this.h;
        obj.i = this.i;
        obj.j = this.j;
        obj.k = this.k;
        obj.l = this.l;
        return obj;
    }
}
