package o;

/* renamed from: o.hg, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0176hg extends Ng {
    public final /* synthetic */ int e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f225f;
    public int g;
    public final /* synthetic */ Object h;

    public C0176hg(C0195ig c0195ig, int i) {
        this.e = 0;
        this.h = c0195ig;
        this.g = i;
        this.f225f = false;
    }

    @Override // o.Rh
    public final void a() {
        switch (this.e) {
            case 0:
                if (!this.f225f) {
                    ((C0195ig) this.h).a.setVisibility(this.g);
                    return;
                }
                return;
            default:
                int i = this.g + 1;
                this.g = i;
                Qh qh = (Qh) this.h;
                if (i == qh.a.size()) {
                    Ng ng = qh.d;
                    if (ng != null) {
                        ng.a();
                    }
                    this.g = 0;
                    this.f225f = false;
                    qh.e = false;
                    return;
                }
                return;
        }
    }

    @Override // o.Ng, o.Rh
    public void b() {
        switch (this.e) {
            case 0:
                this.f225f = true;
                return;
            default:
                return;
        }
    }

    @Override // o.Ng, o.Rh
    public final void c() {
        switch (this.e) {
            case 0:
                ((C0195ig) this.h).a.setVisibility(0);
                return;
            default:
                if (!this.f225f) {
                    this.f225f = true;
                    Ng ng = ((Qh) this.h).d;
                    if (ng != null) {
                        ng.c();
                        return;
                    }
                    return;
                }
                return;
        }
    }

    public C0176hg(Qh qh) {
        this.e = 1;
        this.h = qh;
        this.f225f = false;
        this.g = 0;
    }
}
