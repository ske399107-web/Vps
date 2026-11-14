package com.ffrt.proxyread;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import com.ffrt.proxyread.LoginActivity;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import o.Ha;
import o.InterfaceC0426u8;
import o.L1;
import o.U0;
import com.ffrt.proxyread.BuildConfig;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class LoginActivity extends U0 {
    public static final /* synthetic */ int y = 0;
    public final Handler x = new Handler(Looper.getMainLooper());

    public static final void r(TextInputEditText textInputEditText, final MaterialButton materialButton, final TextView textView, final LoginActivity loginActivity) {
        final String str;
        Editable text = textInputEditText.getText();
        if (text != null) {
            str = text.toString();
        } else {
            str = null;
        }
        if (str == null) {
            str = BuildConfig.FLAVOR;
        }
        materialButton.setEnabled(false);
        textView.setTextColor(loginActivity.getColor(2131034867));
        textView.setText("Verificando…");
        Ha.y0("crg-login", new InterfaceC0426u8() { // from class: o.xa
            @Override // o.InterfaceC0426u8
            public final Object a() {
                final LoginActivity loginActivity2 = LoginActivity.this;
                Handler handler = loginActivity2.x;
                String str2 = str;
                final TextView textView2 = textView;
                int i = LoginActivity.y;
                try {
                    C0264m5 f2 = AbstractC0284n5.f(loginActivity2, str2);
                    L1.W(loginActivity2, f2);
                    handler.post(new D6(textView2, loginActivity2, f2, 1));
                } catch (Exception e) {
                    final MaterialButton materialButton2 = materialButton;
                    handler.post(new Runnable() { // from class: o.ya
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = LoginActivity.y;
                            MaterialButton.this.setEnabled(true);
                            int color = loginActivity2.getColor(2131034162);
                            TextView textView3 = textView2;
                            textView3.setTextColor(color);
                            String message = e.getMessage();
                            if (message == null) {
                                message = "Đăng nhập thất bại";
                            }
                            textView3.setText(message);
                        }
                    });
                }
                return Ug.a;
            }
        }, 23);
    }

    @Override // o.U0, androidx.activity.a, o.AbstractActivityC0402t4, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Integrity.c(this);
        if (L1.b && L1.b) {
            startActivity(new Intent(this, (Class<?>) MainActivity.class));
            finish();
            return;
        }
        setContentView(2131427356);
        final TextInputEditText textInputEditText = (TextInputEditText) findViewById(2131230961);
        final MaterialButton materialButton = (MaterialButton) findViewById(2131230824);
        final TextView textView = (TextView) findViewById(2131230972);
        SharedPreferences sharedPreferences = getSharedPreferences("crg_auth", 0);
        String str = BuildConfig.FLAVOR;
        String string = sharedPreferences.getString("license", BuildConfig.FLAVOR);
        if (string != null) {
            str = string;
        }
        if (str.length() > 0) {
            textInputEditText.setText(str);
        }
        materialButton.setOnClickListener(new View.OnClickListener() { // from class: o.va
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginActivity.r(TextInputEditText.this, materialButton, textView, this);
            }
        });
        textInputEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: o.wa
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView2, int i, KeyEvent keyEvent) {
                if (i == 6) {
                    LoginActivity.r(TextInputEditText.this, materialButton, textView, this);
                    return true;
                }
                int i2 = LoginActivity.y;
                return false;
            }
        });
    }
}
