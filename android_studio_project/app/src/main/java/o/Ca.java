package o;

import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import com.ffrt.proxyread.MainActivity;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class Ca {
    public final /* synthetic */ TextView a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ Ca(TextView textView, MainActivity mainActivity) {
        this.a = textView;
        this.b = mainActivity;
    }

    public final void a(W2 w2, float f2, boolean z) {
        int i = MainActivity.I;
        final int i2 = (int) f2;
        this.a.setText(i2 + "%");
        if (z) {
            this.b.getSharedPreferences("proxy_read", 0).edit().putInt("radar_size", Ha.l(i2, 70, 180)).apply();
            AbstractC0149g9.a.post(new Runnable() { // from class: o.f9
                @Override // java.lang.Runnable
                public final void run() {
                    WindowManager.LayoutParams layoutParams;
                    C0147g7 c0147g7 = AbstractC0149g9.c;
                    if (c0147g7 != null) {
                        c0147g7.setSizePercent(i2);
                        ViewGroup.LayoutParams layoutParams2 = c0147g7.getLayoutParams();
                        if (layoutParams2 instanceof WindowManager.LayoutParams) {
                            layoutParams = (WindowManager.LayoutParams) layoutParams2;
                        } else {
                            layoutParams = null;
                        }
                        if (layoutParams != null) {
                            try {
                                WindowManager windowManager = AbstractC0149g9.b;
                                if (windowManager != null) {
                                    windowManager.updateViewLayout(c0147g7, layoutParams);
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            });
        }
    }
}
