package o;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class O1 extends O7 {
    public final /* synthetic */ V1 j;
    public final /* synthetic */ Y1 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public O1(Y1 y1, Y1 y12, V1 v1) {
        super(y12);
        this.k = y1;
        this.j = v1;
    }

    @Override // o.O7
    public final Ne b() {
        return this.j;
    }

    @Override // o.O7
    public final boolean c() {
        Y1 y1 = this.k;
        if (!y1.getInternalPopup().b()) {
            y1.f165f.e(y1.getTextDirection(), y1.getTextAlignment());
            return true;
        }
        return true;
    }
}
