package o;

import android.view.KeyEvent;
import android.widget.CompoundButton;
import com.ffrt.proxyread.MainActivity;
import com.google.android.material.chip.Chip;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class Da implements CompoundButton.OnCheckedChangeListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ KeyEvent.Callback b;

    public /* synthetic */ Da(KeyEvent.Callback callback, int i) {
        this.a = i;
        this.b = callback;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, final boolean z) {
        final int i = 0;
        KeyEvent.Callback callback = this.b;
        switch (this.a) {
            case 0:
                int i2 = MainActivity.I;
                ((MainActivity) callback).getSharedPreferences("proxy_read", 0).edit().putBoolean("moco_on", z).apply();
                byte[] bArr = Hb.a;
                Hb.k(z);
                return;
            case 1:
                int i3 = MainActivity.I;
                ((MainActivity) callback).getSharedPreferences("proxy_read", 0).edit().putBoolean("radar_on", z).apply();
                AbstractC0149g9.a.post(new Runnable() { // from class: o.e9
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i) {
                            case 0:
                                C0147g7 c0147g7 = AbstractC0149g9.c;
                                if (c0147g7 != null) {
                                    c0147g7.setRadarEnabled(z);
                                    return;
                                }
                                return;
                            default:
                                C0147g7 c0147g72 = AbstractC0149g9.c;
                                if (c0147g72 != null) {
                                    c0147g72.setEspEnabled(z);
                                    return;
                                }
                                return;
                        }
                    }
                });
                return;
            case 2:
                int i4 = MainActivity.I;
                ((MainActivity) callback).getSharedPreferences("proxy_read", 0).edit().putBoolean("esp_on", z).apply();
                final int i5 = 1;
                AbstractC0149g9.a.post(new Runnable() { // from class: o.e9
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i5) {
                            case 0:
                                C0147g7 c0147g7 = AbstractC0149g9.c;
                                if (c0147g7 != null) {
                                    c0147g7.setRadarEnabled(z);
                                    return;
                                }
                                return;
                            default:
                                C0147g7 c0147g72 = AbstractC0149g9.c;
                                if (c0147g72 != null) {
                                    c0147g72.setEspEnabled(z);
                                    return;
                                }
                                return;
                        }
                    }
                });
                return;
            default:
                CompoundButton.OnCheckedChangeListener onCheckedChangeListener = ((Chip) callback).i;
                if (onCheckedChangeListener != null) {
                    onCheckedChangeListener.onCheckedChanged(compoundButton, z);
                    return;
                }
                return;
        }
    }
}
