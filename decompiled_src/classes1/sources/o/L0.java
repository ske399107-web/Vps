package o;

import android.content.res.ColorStateList;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class L0 extends Animatable2.AnimationCallback {
    public final /* synthetic */ Wa a;

    public L0(Wa wa) {
        this.a = wa;
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationEnd(Drawable drawable) {
        ColorStateList colorStateList = this.a.b.f169o;
        if (colorStateList != null) {
            drawable.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationStart(Drawable drawable) {
        Ya ya = this.a.b;
        ColorStateList colorStateList = ya.f169o;
        if (colorStateList != null) {
            drawable.setTint(colorStateList.getColorForState(ya.s, colorStateList.getDefaultColor()));
        }
    }
}
