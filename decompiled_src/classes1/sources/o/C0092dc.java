package o;

/* renamed from: o.dc, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0092dc extends C0424u6 {

    /* renamed from: f, reason: collision with root package name */
    public final Ja f201f;
    public final float g;

    public C0092dc(Ja ja, float f2) {
        super(0);
        this.f201f = ja;
        this.g = f2;
    }

    @Override // o.C0424u6
    public final boolean c() {
        return true;
    }

    @Override // o.C0424u6
    public final void f(float f2, float f3, float f4, Ke ke) {
        this.f201f.f(f2, f3 - this.g, f4, ke);
    }
}
