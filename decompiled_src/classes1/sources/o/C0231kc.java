package o;

/* renamed from: o.kc, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0231kc implements InterfaceC0342q3 {
    public final C0048b8 a;
    public final /* synthetic */ androidx.activity.b b;

    public C0231kc(androidx.activity.b bVar, C0048b8 c0048b8) {
        AbstractC0487x9.o(c0048b8, "onBackPressedCallback");
        this.b = bVar;
        this.a = c0048b8;
    }

    @Override // o.InterfaceC0342q3
    public final void cancel() {
        androidx.activity.b bVar = this.b;
        C0480x2 c0480x2 = bVar.b;
        C0048b8 c0048b8 = this.a;
        c0480x2.remove(c0048b8);
        if (AbstractC0487x9.b(bVar.c, c0048b8)) {
            c0048b8.getClass();
            bVar.c = null;
        }
        c0048b8.b.remove(this);
        C0251lc c0251lc = c0048b8.c;
        if (c0251lc != null) {
            c0251lc.a();
        }
        c0048b8.c = null;
    }
}
