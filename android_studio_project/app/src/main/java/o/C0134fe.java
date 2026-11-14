package o;

/* renamed from: o.fe, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0134fe extends L1 {
    @Override // o.L1
    public final void x(Ke ke, float f2, float f3) {
        ke.d(0.0f, f3 * f2, 180.0f, 90.0f);
        float f4 = f3 * 2.0f * f2;
        Ge ge = new Ge(0.0f, 0.0f, f4, f4);
        ge.f96f = 180.0f;
        ge.g = 90.0f;
        ke.g.add(ge);
        Ee ee = new Ee(ge);
        ke.a(180.0f);
        ke.h.add(ee);
        ke.e = 270.0f;
        float f5 = (0.0f + f4) * 0.5f;
        float f6 = (f4 - 0.0f) / 2.0f;
        double d = 270.0f;
        ke.c = (((float) Math.cos(Math.toRadians(d))) * f6) + f5;
        ke.d = (f6 * ((float) Math.sin(Math.toRadians(d)))) + f5;
    }
}
