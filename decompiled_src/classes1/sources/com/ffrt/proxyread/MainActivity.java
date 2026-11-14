package com.ffrt.proxyread;

import android.content.Intent;
import android.net.Uri;
import android.net.VpnService;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.ffrt.proxyread.MainActivity;
import com.ffrt.proxyread.VpnCaptureService;
import com.ffrt.proxyread.WirelessPair;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.slider.Slider;
import com.google.android.material.switchmaterial.SwitchMaterial;
import o.AbstractC0149g9;
import o.AbstractC0408ta;
import o.AbstractC0487x9;
import o.C0378s0;
import o.Ca;
import o.Da;
import o.Ga;
import o.Ha;
import o.Hb;
import o.L1;
import o.U0;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class MainActivity extends U0 {
    public static final /* synthetic */ int I = 0;
    public TextView A;
    public TextView B;
    public TextView C;
    public MaterialButton D;
    public MaterialButton E;
    public EditText F;
    public boolean G;
    public TextView y;
    public TextView z;
    public final Handler x = new Handler(Looper.getMainLooper());
    public final C0378s0 H = new C0378s0(3, this);

    @Override // o.U0, androidx.activity.a, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        boolean canDrawOverlays;
        super.onActivityResult(i, i2, intent);
        if (i == 7 && i2 == -1) {
            v();
            return;
        }
        if (i == 7) {
            int i3 = AbstractC0408ta.a;
            return;
        }
        if (i == 9) {
            Handler handler = AbstractC0149g9.a;
            if (AbstractC0149g9.f215f != null) {
                canDrawOverlays = true;
            } else {
                canDrawOverlays = Settings.canDrawOverlays(this);
            }
            if (!canDrawOverlays) {
                int i4 = AbstractC0408ta.a;
            }
            v();
        }
    }

    @Override // o.U0, androidx.activity.a, o.AbstractActivityC0402t4, android.app.Activity
    public final void onCreate(Bundle bundle) {
        boolean z;
        final int i = 1;
        final int i2 = 0;
        super.onCreate(bundle);
        if (!L1.b) {
            startActivity(new Intent(this, (Class<?>) LoginActivity.class));
            finish();
            return;
        }
        setContentView(2131427357);
        this.y = (TextView) findViewById(2131231231);
        this.z = (TextView) findViewById(2131230791);
        this.A = (TextView) findViewById(2131230792);
        this.B = (TextView) findViewById(2131231128);
        this.C = (TextView) findViewById(2131231096);
        this.D = (MaterialButton) findViewById(2131230825);
        this.E = (MaterialButton) findViewById(2131230823);
        this.F = (EditText) findViewById(2131231073);
        Integrity.c(this);
        Integrity.a();
        if (1 == 0) {
            r();
        }
        MaterialButton materialButton = this.D;
        if (materialButton != null) {
            materialButton.setOnClickListener(new View.OnClickListener(this) { // from class: o.Ea
                public final /* synthetic */ MainActivity b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    boolean z2;
                    switch (i2) {
                        case 0:
                            MainActivity mainActivity = this.b;
                            if (!mainActivity.G) {
                                VpnCaptureService.Companion.getClass();
                                z2 = VpnCaptureService.running;
                                if (z2) {
                                    mainActivity.w();
                                    return;
                                } else {
                                    mainActivity.s();
                                    return;
                                }
                            }
                            return;
                        default:
                            MainActivity mainActivity2 = this.b;
                            if (!mainActivity2.G) {
                                WirelessPair wirelessPair = WirelessPair.INSTANCE;
                                EditText editText = mainActivity2.F;
                                if (editText != null) {
                                    wirelessPair.start(editText.getText().toString());
                                    return;
                                } else {
                                    AbstractC0487x9.e0("pairCode");
                                    throw null;
                                }
                            }
                            return;
                    }
                }
            });
            Slider slider = (Slider) findViewById(2131231090);
            TextView textView = (TextView) findViewById(2131231091);
            int l = Ha.l(getSharedPreferences("proxy_read", 0).getInt("radar_size", 100), 70, 180);
            slider.setValueFrom(70.0f);
            slider.setValueTo(180.0f);
            slider.setStepSize(5.0f);
            slider.setValue(l);
            textView.setText(l + "%");
            slider.m.add(new Ca(textView, this));
            SwitchMaterial switchMaterial = (SwitchMaterial) findViewById(2131231092);
            switchMaterial.setChecked(getSharedPreferences("proxy_read", 0).getBoolean("radar_on", true));
            switchMaterial.setOnCheckedChangeListener(new Da(this, i));
            SwitchMaterial switchMaterial2 = (SwitchMaterial) findViewById(2131230908);
            switchMaterial2.setChecked(getSharedPreferences("proxy_read", 0).getBoolean("esp_on", false));
            switchMaterial2.setOnCheckedChangeListener(new Da(this, 2));
            SwitchMaterial switchMaterial3 = (SwitchMaterial) findViewById(2131231002);
            switchMaterial3.setChecked(getSharedPreferences("proxy_read", 0).getBoolean("moco_on", false));
            byte[] bArr = Hb.a;
            Hb.k(switchMaterial3.isChecked());
            switchMaterial3.setOnCheckedChangeListener(new Da(this, i2));
            MaterialButton materialButton2 = this.E;
            if (materialButton2 != null) {
                materialButton2.setOnClickListener(new View.OnClickListener(this) { // from class: o.Ea
                    public final /* synthetic */ MainActivity b;

                    {
                        this.b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        boolean z2;
                        switch (i) {
                            case 0:
                                MainActivity mainActivity = this.b;
                                if (!mainActivity.G) {
                                    VpnCaptureService.Companion.getClass();
                                    z2 = VpnCaptureService.running;
                                    if (z2) {
                                        mainActivity.w();
                                        return;
                                    } else {
                                        mainActivity.s();
                                        return;
                                    }
                                }
                                return;
                            default:
                                MainActivity mainActivity2 = this.b;
                                if (!mainActivity2.G) {
                                    WirelessPair wirelessPair = WirelessPair.INSTANCE;
                                    EditText editText = mainActivity2.F;
                                    if (editText != null) {
                                        wirelessPair.start(editText.getText().toString());
                                        return;
                                    } else {
                                        AbstractC0487x9.e0("pairCode");
                                        throw null;
                                    }
                                }
                                return;
                        }
                    }
                });
                EditText editText = this.F;
                if (editText != null) {
                    editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: o.Fa
                        @Override // android.widget.TextView.OnEditorActionListener
                        public final boolean onEditorAction(TextView textView2, int i3, KeyEvent keyEvent) {
                            if (i3 == 6) {
                                MainActivity mainActivity = MainActivity.this;
                                if (!mainActivity.G) {
                                    WirelessPair wirelessPair = WirelessPair.INSTANCE;
                                    EditText editText2 = mainActivity.F;
                                    if (editText2 != null) {
                                        wirelessPair.start(editText2.getText().toString());
                                    } else {
                                        AbstractC0487x9.e0("pairCode");
                                        throw null;
                                    }
                                }
                                return true;
                            }
                            int i4 = MainActivity.I;
                            return false;
                        }
                    });
                    if (Build.VERSION.SDK_INT >= 33 && checkSelfPermission("android.permission.POST_NOTIFICATIONS") != 0) {
                        requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 33);
                    }
                    WirelessPair.INSTANCE.attach(this.H);
                    t();
                    u();
                    if (!this.G && getSharedPreferences("proxy_read", 0).getBoolean("vpn_auto", true)) {
                        VpnCaptureService.Companion.getClass();
                        z = VpnCaptureService.running;
                        if (!z) {
                            this.x.post(new Ga(this, i2));
                            return;
                        }
                        return;
                    }
                    return;
                }
                AbstractC0487x9.e0("pairCode");
                throw null;
            }
            AbstractC0487x9.e0("btnAdb");
            throw null;
        }
        AbstractC0487x9.e0("btnVpn");
        throw null;
    }

    @Override // o.U0, android.app.Activity
    public final void onResume() {
        super.onResume();
        Integrity.c(this);
        Integrity.a();
        if (1 == 0) {
            r();
        }
        t();
        u();
    }

    public final void r() {
        boolean z;
        boolean z2 = this.G;
        this.G = true;
        TextView textView = this.C;
        if (textView != null) {
            textView.setVisibility(0);
            TextView textView2 = this.C;
            if (textView2 != null) {
                textView2.setTextColor(getColor(2131034162));
                if (!z2) {
                    TextView textView3 = this.C;
                    if (textView3 != null) {
                        textView3.setText(VpsSession.connectProxy());
                    } else {
                        AbstractC0487x9.e0("refuseLine");
                        throw null;
                    }
                }
                MaterialButton materialButton = this.D;
                if (materialButton != null) {
                    materialButton.setEnabled(false);
                    MaterialButton materialButton2 = this.E;
                    if (materialButton2 != null) {
                        materialButton2.setEnabled(false);
                        EditText editText = this.F;
                        if (editText != null) {
                            editText.setEnabled(false);
                            getSharedPreferences("proxy_read", 0).edit().putBoolean("vpn_auto", false).apply();
                            VpnCaptureService.Companion.getClass();
                            z = VpnCaptureService.running;
                            if (z) {
                                w();
                                return;
                            }
                            return;
                        }
                        AbstractC0487x9.e0("pairCode");
                        throw null;
                    }
                    AbstractC0487x9.e0("btnAdb");
                    throw null;
                }
                AbstractC0487x9.e0("btnVpn");
                throw null;
            }
            AbstractC0487x9.e0("refuseLine");
            throw null;
        }
        AbstractC0487x9.e0("refuseLine");
        throw null;
    }

    public final void s() {
        if (!Settings.canDrawOverlays(this)) {
            startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + getPackageName())), 9);
            int i = AbstractC0408ta.a;
            return;
        }
        v();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0039, code lost:
    
        if (o.AbstractC0413tf.G0(r1) != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0044, code lost:
    
        if (o.AbstractC0413tf.G0(r0) != false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void t() {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ffrt.proxyread.MainActivity.t():void");
    }

    public final void u() {
        if (WirelessPair.INSTANCE.getPainted()) {
            TextView textView = this.z;
            if (textView != null) {
                textView.setText("Conectado");
                TextView textView2 = this.z;
                if (textView2 != null) {
                    textView2.setTextColor(getColor(2131034137));
                    return;
                } else {
                    AbstractC0487x9.e0("adbChip");
                    throw null;
                }
            }
            AbstractC0487x9.e0("adbChip");
            throw null;
        }
        TextView textView3 = this.z;
        if (textView3 != null) {
            textView3.setText("Sin conexión");
            TextView textView4 = this.z;
            if (textView4 != null) {
                textView4.setTextColor(getColor(2131034867));
                return;
            } else {
                AbstractC0487x9.e0("adbChip");
                throw null;
            }
        }
        AbstractC0487x9.e0("adbChip");
        throw null;
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public final void v() {
        int i = 1;
        Integrity.c(this);
        Intent prepare = VpnService.prepare(this);
        if (prepare != null) {
            startActivityForResult(prepare, 7);
            return;
        }
        getSharedPreferences("proxy_read", 0).edit().putBoolean("vpn_auto", true).apply();
        Intent intent = new Intent(this, (Class<?>) VpnCaptureService.class);
        if (Build.VERSION.SDK_INT >= 26) {
            startForegroundService(intent);
        } else {
            startService(intent);
        }
        int i2 = AbstractC0408ta.a;
        Handler handler = this.x;
        handler.postDelayed(new Ga(this, i), 400L);
        handler.postDelayed(new Ga(this, 2), 600L);
    }

    public final void w() {
        getSharedPreferences("proxy_read", 0).edit().putBoolean("vpn_auto", false).apply();
        startService(new Intent(this, (Class<?>) VpnCaptureService.class).setAction(VpnCaptureService.ACTION_STOP));
        this.x.postDelayed(new Ga(this, 3), 300L);
    }
}
