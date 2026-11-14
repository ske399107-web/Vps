package o;

import android.content.Context;
import android.graphics.Color;
import org.bouncycastle.pqc.crypto.rainbow.GF2Field;

/* renamed from: o.w6, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0464w6 {

    /* renamed from: f, reason: collision with root package name */
    public static final int f291f = (int) Math.round(5.1000000000000005d);
    public final boolean a;
    public final int b;
    public final int c;
    public final int d;
    public final float e;

    public C0464w6(Context context) {
        boolean n0 = Ha.n0(context, 2130903455, false);
        int D = Ha.D(context, 2130903454, 0);
        int D2 = Ha.D(context, 2130903453, 0);
        int D3 = Ha.D(context, 2130903328, 0);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.a = n0;
        this.b = D;
        this.c = D2;
        this.d = D3;
        this.e = f2;
    }

    public final int a(int i, float f2) {
        float f3;
        int i2;
        if (this.a && AbstractC0263m4.d(i, GF2Field.MASK) == this.d) {
            if (this.e > 0.0f && f2 > 0.0f) {
                f3 = Math.min(((((float) Math.log1p(f2 / r1)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
            } else {
                f3 = 0.0f;
            }
            int alpha = Color.alpha(i);
            int e0 = Ha.e0(AbstractC0263m4.d(i, GF2Field.MASK), this.b, f3);
            if (f3 > 0.0f && (i2 = this.c) != 0) {
                e0 = AbstractC0263m4.b(AbstractC0263m4.d(i2, f291f), e0);
            }
            return AbstractC0263m4.d(e0, alpha);
        }
        return i;
    }
}
