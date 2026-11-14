package o;

import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Qi extends Ng {
    public final WindowInsetsController e;

    /* renamed from: f, reason: collision with root package name */
    public Window f141f;

    public Qi(WindowInsetsController windowInsetsController, C0424u6 c0424u6) {
        this.e = windowInsetsController;
    }

    @Override // o.Ng
    public final void v(boolean z) {
        Window window = this.f141f;
        if (z) {
            if (window != null) {
                View decorView = window.getDecorView();
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 16);
            }
            this.e.setSystemBarsAppearance(16, 16);
            return;
        }
        if (window != null) {
            View decorView2 = window.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-17));
        }
        this.e.setSystemBarsAppearance(0, 16);
    }

    @Override // o.Ng
    public final void w(boolean z) {
        Window window = this.f141f;
        if (z) {
            if (window != null) {
                View decorView = window.getDecorView();
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 8192);
            }
            this.e.setSystemBarsAppearance(8, 8);
            return;
        }
        if (window != null) {
            View decorView2 = window.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-8193));
        }
        this.e.setSystemBarsAppearance(0, 8);
    }
}
