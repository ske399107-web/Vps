package o;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Ja extends C0424u6 {

    /* renamed from: f, reason: collision with root package name */
    public final float f114f;

    public Ja(float f2) {
        super(0);
        this.f114f = f2 - 0.001f;
    }

    @Override // o.C0424u6
    public final void f(float f2, float f3, float f4, Ke ke) {
        double d = this.f114f;
        float sqrt = (float) ((Math.sqrt(2.0d) * d) / 2.0d);
        float sqrt2 = (float) Math.sqrt(Math.pow(d, 2.0d) - Math.pow(sqrt, 2.0d));
        ke.d(f3 - sqrt, ((float) (-((Math.sqrt(2.0d) * d) - d))) + sqrt2, 270.0f, 0.0f);
        ke.c(f3, (float) (-((Math.sqrt(2.0d) * d) - d)));
        ke.c(f3 + sqrt, ((float) (-((Math.sqrt(2.0d) * d) - d))) + sqrt2);
    }
}
