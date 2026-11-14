package o;

import com.ffrt.proxyread.R;
import android.content.res.ColorStateList;

/* renamed from: o.cb, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0071cb extends I1 {
    public static final int[][] g = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
    public ColorStateList e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f189f;

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.e == null) {
            int E = Ha.E(this, 2130903287);
            int E2 = Ha.E(this, 2130903306);
            int E3 = Ha.E(this, 2130903328);
            this.e = new ColorStateList(g, new int[]{Ha.e0(E3, E, 1.0f), Ha.e0(E3, E2, 0.54f), Ha.e0(E3, E2, 0.38f), Ha.e0(E3, E2, 0.38f)});
        }
        return this.e;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f189f && getButtonTintList() == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f189f = z;
        if (z) {
            setButtonTintList(getMaterialThemeColorsTintList());
        } else {
            setButtonTintList(null);
        }
    }
}
