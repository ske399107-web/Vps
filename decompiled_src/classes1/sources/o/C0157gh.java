package o;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;

/* renamed from: o.gh, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0157gh extends Drawable.ConstantState {
    public final Drawable.ConstantState a;

    public C0157gh(Drawable.ConstantState constantState) {
        this.a = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        return this.a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        C0177hh c0177hh = new C0177hh();
        c0177hh.a = (VectorDrawable) this.a.newDrawable();
        return c0177hh;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        C0177hh c0177hh = new C0177hh();
        c0177hh.a = (VectorDrawable) this.a.newDrawable(resources);
        return c0177hh;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
        C0177hh c0177hh = new C0177hh();
        c0177hh.a = (VectorDrawable) this.a.newDrawable(resources, theme);
        return c0177hh;
    }
}
