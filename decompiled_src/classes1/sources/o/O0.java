package o;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class O0 extends Drawable.ConstantState {
    public final Drawable.ConstantState a;

    public O0(Drawable.ConstantState constantState) {
        this.a = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        return this.a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        P0 p0 = new P0(null);
        Drawable newDrawable = this.a.newDrawable();
        p0.a = newDrawable;
        newDrawable.setCallback(p0.f135f);
        return p0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        P0 p0 = new P0(null);
        Drawable newDrawable = this.a.newDrawable(resources);
        p0.a = newDrawable;
        newDrawable.setCallback(p0.f135f);
        return p0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
        P0 p0 = new P0(null);
        Drawable newDrawable = this.a.newDrawable(resources, theme);
        p0.a = newDrawable;
        newDrawable.setCallback(p0.f135f);
        return p0;
    }
}
