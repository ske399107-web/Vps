package o;

import androidx.appcompat.widget.ActionBarContextView;

/* renamed from: o.a, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0019a implements Rh {
    public boolean a = false;
    public int b;
    public final /* synthetic */ ActionBarContextView c;

    public C0019a(ActionBarContextView actionBarContextView) {
        this.c = actionBarContextView;
    }

    @Override // o.Rh
    public final void a() {
        if (this.a) {
            return;
        }
        ActionBarContextView actionBarContextView = this.c;
        actionBarContextView.f23f = null;
        super/*android.view.View*/.setVisibility(this.b);
    }

    @Override // o.Rh
    public final void b() {
        this.a = true;
    }

    @Override // o.Rh
    public final void c() {
        super/*android.view.View*/.setVisibility(0);
        this.a = false;
    }
}
