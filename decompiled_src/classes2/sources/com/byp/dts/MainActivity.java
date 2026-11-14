package com.byp.dts;

import adrt.ADRTLogCatReader;
import android.animation.StateListAnimator;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.StrictMode;
import android.provider.Settings;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import f.f.Mainactivity;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.security.MessageDigest;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONObject;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes2.dex */
public class MainActivity extends Activity {
    private static final String API_KEY = "X7B4N2P8Q9W3Z6M5";
    private static final String TARGET_GAME = "com.dts.freefiremax";
    private static MainActivity instance;
    private View floatingExitButton;
    private WindowManager windowManager;
    private static final String SERVER_URL = decode("aHR0cHM6Ly92aWt1LnVybGtpbmcuaW4vY29ubmVjdC9nZXRrZXltMW54");
    private static final String GAME_NAME = decode("UFVCRw==");
    private final String GAME_ACTIVITY = decode("Y29tLmR0cy5mcmVlZmlyZXRoaC5GRk1haW5BY3Rpdml0eQ==");
    private boolean hasLaunched = false;
    private boolean isExitButtonRemoved = false;

    private static String decode(String str) {
        return new String(Base64.decode(str, 0));
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        Mainactivity.check(this);
        ADRTLogCatReader.onContext(this, "com.goxome.aidestudio");
        super.onCreate(bundle);
        setContentView(R.layout.activity_main);
        instance = this;
        this.windowManager = (WindowManager) getSystemService("window");
        Start(this);
        if (!this.hasLaunched) {
            try {
                startActivity(new Intent(this, Class.forName(this.GAME_ACTIVITY)));
                this.hasLaunched = true;
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
        startGameWatcherService();
    }

    public static void Start(Context context) {
        if (Build.VERSION.SDK_INT >= 23 && !Settings.canDrawOverlays(context)) {
            Toast.makeText(context, "Overlay permission required!", 1).show();
            context.startActivity(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse(new StringBuffer().append("package:").append(context.getPackageName()).toString())));
            new Handler().postDelayed(new Runnable() { // from class: com.byp.dts.MainActivity.100000000
                @Override // java.lang.Runnable
                public void run() {
                    System.exit(1);
                }
            }, 5000);
            return;
        }
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().permitAll().build());
        SharedPreferences sharedPreferences = context.getSharedPreferences("SavePref", 0);
        String string = sharedPreferences.getString("Key", (String) null);
        Boolean bool = new Boolean(sharedPreferences.getBoolean("RememberMe", false));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(Color.parseColor("#101010"));
        linearLayout.setPadding(8, 10, 8, 10);
        linearLayout.setGravity(17);
        TextView textView = new TextView(context);
        textView.setText("LOGIN");
        textView.setTextColor(Color.parseColor("#ffd700"));
        textView.setTextSize(15);
        textView.setTypeface((Typeface) null, 1);
        textView.setGravity(17);
        textView.setPadding(0, 0, 0, 4);
        TextView textView2 = new TextView(context);
        textView2.setText("Login Key Required");
        textView2.setTextColor(Color.parseColor("#bbbbbb"));
        textView2.setTextSize(11);
        textView2.setGravity(17);
        textView2.setPadding(0, 0, 0, 8);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        linearLayout2.setPadding(8, 8, 8, 8);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#1f1f1f"));
        gradientDrawable.setCornerRadius(20.0f);
        gradientDrawable.setStroke(4, Color.parseColor("#ffd700"));
        linearLayout2.setBackground(gradientDrawable);
        TextView textView3 = new TextView(context);
        textView3.setText("KEY");
        textView3.setTextColor(Color.parseColor("#ffd700"));
        textView3.setTextSize(12);
        textView3.setTypeface((Typeface) null, 1);
        textView3.setPadding(0, 0, 0, 4);
        EditText editText = new EditText(context);
        if (string != null && !string.isEmpty()) {
            editText.setText(string);
        }
        editText.setHint("Enter license key");
        editText.setHintTextColor(Color.parseColor("#777777"));
        editText.setTextColor(-1);
        editText.setTextSize(12);
        editText.setPadding(10, 8, 10, 8);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(Color.parseColor("#2c2c2c"));
        gradientDrawable2.setCornerRadius(16.0f);
        gradientDrawable2.setStroke(2, Color.parseColor("#555555"));
        editText.setBackground(gradientDrawable2);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, 0, 0, 4);
        editText.setLayoutParams(layoutParams);
        CheckBox checkBox = new CheckBox(context);
        checkBox.setPadding(0, 2, 0, 6);
        checkBox.setTextSize(11);
        checkBox.setChecked(bool.booleanValue());
        checkBox.setTextColor(Color.parseColor("#00ff88"));
        checkBox.setText("Remember key");
        if (Build.VERSION.SDK_INT >= 21) {
            checkBox.setButtonTintList(ColorStateList.valueOf(Color.parseColor("#00ff88")));
        }
        LinearLayout linearLayout3 = new LinearLayout(context);
        linearLayout3.setOrientation(0);
        linearLayout3.setPadding(0, 0, 0, 4);
        Button button = new Button(context);
        button.setBackground(pill("#1b1b1b", "#ffd700"));
        stylize(button, "PASTE");
        Button button2 = new Button(context);
        button2.setBackground(pill("#1b1b1b", "#ffd700"));
        stylize(button2, "LOGIN");
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2, 1);
        layoutParams2.setMargins(0, 0, 2, 0);
        linearLayout3.addView(button, layoutParams2);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -2, 1);
        layoutParams3.setMargins(2, 0, 0, 0);
        linearLayout3.addView(button2, layoutParams3);
        LinearLayout linearLayout4 = new LinearLayout(context);
        linearLayout4.setOrientation(0);
        linearLayout4.setPadding(0, 4, 0, 4);
        Button button3 = new Button(context);
        button3.setBackground(pill("#1b1b1b", "#ffd700"));
        stylize(button3, "GET KEY");
        Button button4 = new Button(context);
        button4.setBackground(pill("#1b1b1b", "#ffd700"));
        stylize(button4, "TELEGRAM");
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -2, 1);
        layoutParams4.setMargins(0, 0, 2, 0);
        linearLayout4.addView(button3, layoutParams4);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, -2, 1);
        layoutParams5.setMargins(2, 0, 0, 0);
        linearLayout4.addView(button4, layoutParams5);
        TextView textView4 = new TextView(context);
        textView4.setText("Enter your license key");
        textView4.setTextColor(Color.parseColor("#00ff88"));
        textView4.setTextSize(11);
        textView4.setGravity(17);
        textView4.setPadding(0, 6, 0, 0);
        textView4.setTypeface((Typeface) null, 1);
        linearLayout2.addView(textView3);
        linearLayout2.addView(editText);
        linearLayout2.addView(checkBox);
        linearLayout2.addView(linearLayout3);
        linearLayout2.addView(linearLayout4);
        linearLayout2.addView(textView4);
        linearLayout.addView(textView);
        linearLayout.addView(textView2);
        linearLayout.addView(linearLayout2);
        TextView textView5 = new TextView(context);
        textView5.setText("MODDER GANG  2025");
        textView5.setTextColor(Color.parseColor("#666666"));
        textView5.setTextSize(9);
        textView5.setGravity(17);
        textView5.setPadding(0, 8, 0, 0);
        linearLayout.addView(textView5);
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setView(linearLayout);
        builder.setCancelable(false);
        AlertDialog show = builder.show();
        View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.byp.dts.MainActivity.100000001
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    view.setAlpha(0.8f);
                } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                    view.setAlpha(1.0f);
                }
                return false;
            }
        };
        button.setOnTouchListener(onTouchListener);
        button2.setOnTouchListener(onTouchListener);
        button3.setOnTouchListener(onTouchListener);
        button4.setOnTouchListener(onTouchListener);
        button.setOnClickListener(new View.OnClickListener(context, editText, textView4) { // from class: com.byp.dts.MainActivity.100000002
            private final Context val$context;
            private final EditText val$editTextKey;
            private final TextView val$textStatus;

            {
                this.val$context = context;
                this.val$editTextKey = editText;
                this.val$textStatus = textView4;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    ClipboardManager clipboardManager = (ClipboardManager) this.val$context.getSystemService("clipboard");
                    if (clipboardManager != null && clipboardManager.hasPrimaryClip() && clipboardManager.getPrimaryClip().getItemCount() > 0) {
                        CharSequence text = clipboardManager.getPrimaryClip().getItemAt(0).getText();
                        if (text != null) {
                            this.val$editTextKey.setText(text.toString());
                            this.val$textStatus.setTextColor(Color.parseColor("#00ff88"));
                            this.val$textStatus.setText("Key pasted.");
                        }
                    } else {
                        Toast.makeText(this.val$context, "Clipboard empty", 0).show();
                    }
                } catch (Exception e) {
                    Toast.makeText(this.val$context, "Clipboard error!", 0).show();
                }
            }
        });
        button3.setOnClickListener(new View.OnClickListener(context) { // from class: com.byp.dts.MainActivity.100000003
            private final Context val$context;

            {
                this.val$context = context;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.val$context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://viku.urlking.in/getkeym1nx")));
            }
        });
        button4.setOnClickListener(new View.OnClickListener(context) { // from class: com.byp.dts.MainActivity.100000004
            private final Context val$context;

            {
                this.val$context = context;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.val$context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://t.me/+9ySEojAble43ZDll")));
            }
        });
        button2.setOnClickListener(new View.OnClickListener(editText, textView4, sharedPreferences, checkBox, button2, context, show) { // from class: com.byp.dts.MainActivity.100000009
            private final AlertDialog val$alertDialog;
            private final Button val$btnLogin;
            private final CheckBox val$checkSaveLogin;
            private final Context val$context;
            private final EditText val$editTextKey;
            private final SharedPreferences val$sharedPreferences;
            private final TextView val$textStatus;

            {
                this.val$editTextKey = editText;
                this.val$textStatus = textView4;
                this.val$sharedPreferences = sharedPreferences;
                this.val$checkSaveLogin = checkBox;
                this.val$btnLogin = button2;
                this.val$context = context;
                this.val$alertDialog = show;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String trim = this.val$editTextKey.getText().toString().trim();
                if (trim.isEmpty()) {
                    this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                    this.val$textStatus.setText("Enter key!");
                    return;
                }
                SharedPreferences.Editor edit = this.val$sharedPreferences.edit();
                if (this.val$checkSaveLogin.isChecked()) {
                    edit.putString("Key", trim);
                } else {
                    edit.remove("Key");
                }
                edit.putBoolean("RememberMe", this.val$checkSaveLogin.isChecked());
                edit.apply();
                this.val$textStatus.setTextColor(Color.parseColor("#ffd700"));
                this.val$textStatus.setText("Verifying...");
                this.val$btnLogin.setEnabled(false);
                new Thread(new Runnable(this, this.val$context, trim, this.val$alertDialog, this.val$textStatus, this.val$btnLogin) { // from class: com.byp.dts.MainActivity.100000009.100000008
                    private final AnonymousClass100000009 this$0;
                    private final AlertDialog val$alertDialog;
                    private final Button val$btnLogin;
                    private final Context val$context;
                    private final String val$key;
                    private final TextView val$textStatus;

                    {
                        this.this$0 = this;
                        this.val$context = r12;
                        this.val$key = trim;
                        this.val$alertDialog = r14;
                        this.val$textStatus = r15;
                        this.val$btnLogin = r16;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            String deviceSerial = MainActivity.getDeviceSerial(this.val$context);
                            try {
                                JSONObject jSONObject = new JSONObject(MainActivity.urlRequest(MainActivity.SERVER_URL, new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append("game=").append(MainActivity.GAME_NAME).toString()).append("&user_key=").toString()).append(this.val$key).toString()).append("&serial=").toString()).append(deviceSerial).toString()));
                                ((Activity) this.val$context).runOnUiThread(new Runnable(this, jSONObject.getBoolean("status"), jSONObject, this.val$key, deviceSerial, this.val$alertDialog, this.val$context, this.val$textStatus, this.val$btnLogin) { // from class: com.byp.dts.MainActivity.100000009.100000008.100000005
                                    private final AnonymousClass100000008 this$0;
                                    private final AlertDialog val$alertDialog;
                                    private final Button val$btnLogin;
                                    private final Context val$context;
                                    private final JSONObject val$json;
                                    private final String val$key;
                                    private final String val$serial;
                                    private final boolean val$status;
                                    private final TextView val$textStatus;

                                    {
                                        this.this$0 = this;
                                        this.val$status = r15;
                                        this.val$json = jSONObject;
                                        this.val$key = r17;
                                        this.val$serial = deviceSerial;
                                        this.val$alertDialog = r19;
                                        this.val$context = r20;
                                        this.val$textStatus = r21;
                                        this.val$btnLogin = r22;
                                    }

                                    @Override // java.lang.Runnable
                                    public void run() {
                                        try {
                                            if (this.val$status) {
                                                if (this.val$json.getJSONObject("data").getString("token").equals(MainActivity.MD5_Hash(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append("PUBG-").append(this.val$key).toString()).append("-").toString()).append(this.val$serial).toString()).append("-Vm8Lk7Uj2JmsjCPVPVjrLa7zgfx3uz9E").toString()))) {
                                                    this.val$alertDialog.dismiss();
                                                    Toast.makeText(this.val$context, "LOGIN SUCCESS!", 1).show();
                                                    MainActivity.startModMenu(this.val$context);
                                                    if (MainActivity.instance != null) {
                                                        MainActivity.instance.showFloatingExitButton();
                                                    }
                                                } else {
                                                    this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                                                    this.val$textStatus.setText("Invalid Token!");
                                                }
                                            } else {
                                                String optString = this.val$json.optString("reason", "Failed");
                                                this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                                                this.val$textStatus.setText(optString);
                                            }
                                        } catch (Exception e) {
                                            this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                                            this.val$textStatus.setText("Server Error");
                                        }
                                        this.val$btnLogin.setEnabled(true);
                                    }
                                });
                            } catch (Exception e) {
                                ((Activity) this.val$context).runOnUiThread(new Runnable(this, this.val$textStatus, this.val$btnLogin) { // from class: com.byp.dts.MainActivity.100000009.100000008.100000006
                                    private final AnonymousClass100000008 this$0;
                                    private final Button val$btnLogin;
                                    private final TextView val$textStatus;

                                    {
                                        this.this$0 = this;
                                        this.val$textStatus = r9;
                                        this.val$btnLogin = r10;
                                    }

                                    @Override // java.lang.Runnable
                                    public void run() {
                                        this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                                        this.val$textStatus.setText("Response error");
                                        this.val$btnLogin.setEnabled(true);
                                    }
                                });
                            }
                        } catch (Exception e2) {
                            ((Activity) this.val$context).runOnUiThread(new Runnable(this, this.val$textStatus, this.val$btnLogin) { // from class: com.byp.dts.MainActivity.100000009.100000008.100000007
                                private final AnonymousClass100000008 this$0;
                                private final Button val$btnLogin;
                                private final TextView val$textStatus;

                                {
                                    this.this$0 = this;
                                    this.val$textStatus = r9;
                                    this.val$btnLogin = r10;
                                }

                                @Override // java.lang.Runnable
                                public void run() {
                                    this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                                    this.val$textStatus.setText("No internet");
                                    this.val$btnLogin.setEnabled(true);
                                }
                            });
                        }
                    }
                }).start();
            }
        });
    }

    /* renamed from: com.byp.dts.MainActivity$100000007, reason: invalid class name */
    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes2.dex */
    class AnonymousClass100000007 implements View.OnClickListener {
        private final MainActivity this$0;
        private final Button val$btnLogin;
        private final CheckBox val$checkSaveLogin;
        private final Context val$context;
        private final EditText val$editTextKey;
        private final SharedPreferences val$sharedPreferences;
        private final TextView val$textStatus;

        AnonymousClass100000007(MainActivity mainActivity, EditText editText, TextView textView, SharedPreferences sharedPreferences, CheckBox checkBox, Button button, Context context) {
            this.this$0 = mainActivity;
            this.val$editTextKey = editText;
            this.val$textStatus = textView;
            this.val$sharedPreferences = sharedPreferences;
            this.val$checkSaveLogin = checkBox;
            this.val$btnLogin = button;
            this.val$context = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String trim = this.val$editTextKey.getText().toString().trim();
            if (trim.isEmpty()) {
                this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                this.val$textStatus.setText("Please enter license key!");
                return;
            }
            SharedPreferences.Editor edit = this.val$sharedPreferences.edit();
            if (this.val$checkSaveLogin.isChecked()) {
                edit.putString("Key", trim);
            } else {
                edit.remove("Key");
            }
            edit.putBoolean("RememberMe", this.val$checkSaveLogin.isChecked());
            edit.apply();
            this.val$textStatus.setTextColor(Color.parseColor("#ffd700"));
            this.val$textStatus.setText("Verifying key...");
            this.val$btnLogin.setEnabled(false);
            new Thread(new AnonymousClass100000006(this, this.val$context, trim, this.val$textStatus, this.val$btnLogin)).start();
        }

        /* renamed from: com.byp.dts.MainActivity$100000007$100000006, reason: invalid class name */
        /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes2.dex */
        class AnonymousClass100000006 implements Runnable {
            private final AnonymousClass100000007 this$0;
            private final Button val$btnLogin;
            private final Context val$context;
            private final String val$key;
            private final TextView val$textStatus;

            AnonymousClass100000006(AnonymousClass100000007 anonymousClass100000007, Context context, String str, TextView textView, Button button) {
                this.this$0 = anonymousClass100000007;
                this.val$context = context;
                this.val$key = str;
                this.val$textStatus = textView;
                this.val$btnLogin = button;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = "";
                boolean z = false;
                try {
                    str = MainActivity.urlRequest(MainActivity.SERVER_URL, new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append("game=").append(MainActivity.GAME_NAME).toString()).append("&user_key=").toString()).append(this.val$key).toString()).append("&serial=").toString()).append(MainActivity.access$1000027(this.val$context)).toString());
                } catch (Exception e) {
                    z = true;
                }
                this.this$0.this$0.runOnUiThread(new Runnable(this, z, this.val$textStatus, this.val$btnLogin, str, this.val$key, this.val$context) { // from class: com.byp.dts.MainActivity.100000007.100000006.100000005
                    private final AnonymousClass100000006 this$0;
                    private final Button val$btnLogin;
                    private final Context val$context;
                    private final boolean val$finalNetworkError;
                    private final String val$finalResponse;
                    private final String val$key;
                    private final TextView val$textStatus;

                    {
                        this.this$0 = this;
                        this.val$finalNetworkError = z;
                        this.val$textStatus = r14;
                        this.val$btnLogin = r15;
                        this.val$finalResponse = str;
                        this.val$key = r17;
                        this.val$context = r18;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                        } catch (Exception e2) {
                            this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                            this.val$textStatus.setText("Server Error");
                        }
                        if (this.val$finalNetworkError) {
                            this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                            this.val$textStatus.setText("Connection failed");
                            this.val$btnLogin.setEnabled(true);
                            return;
                        }
                        JSONObject jSONObject = new JSONObject(this.val$finalResponse);
                        if (!jSONObject.optBoolean("status", false)) {
                            this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                            this.val$textStatus.setText(jSONObject.optString("reason", "Login Failed"));
                            this.val$btnLogin.setEnabled(true);
                            return;
                        }
                        if (!jSONObject.has("data")) {
                            this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                            this.val$textStatus.setText("Invalid server response");
                            this.val$btnLogin.setEnabled(true);
                            return;
                        }
                        JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                        if (!jSONObject2.has("token")) {
                            this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                            this.val$textStatus.setText("Invalid token data");
                            this.val$btnLogin.setEnabled(true);
                            return;
                        }
                        if (jSONObject2.getString("token").equals(MainActivity.MD5_Hash(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append("PUBG-").append(this.val$key).toString()).append("-").toString()).append(MainActivity.access$1000027(this.val$context)).toString()).append("-Vm8Lk7Uj2JmsjCPVPVjrLa7zgfx3uz9E").toString()))) {
                            Toast.makeText(this.val$context, "LOGIN SUCCESSFUL! WELCOME TO MODDER GANG ", 1).show();
                            this.val$textStatus.setTextColor(Color.parseColor("#00ff88"));
                            this.val$textStatus.setText("Logged in! Tap EXIT to exit.");
                            if (!this.this$0.this$0.this$0.floatingExitButton) {
                                MainActivity.access$1000020(this.this$0.this$0.this$0);
                            }
                            MainActivity.access$1000024(this.this$0.this$0.this$0);
                        } else {
                            this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                            this.val$textStatus.setText("Invalid Token!");
                        }
                        this.val$btnLogin.setEnabled(true);
                    }
                });
            }
        }
    }

    /* renamed from: com.byp.dts.MainActivity$100000005, reason: invalid class name */
    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes2.dex */
    class AnonymousClass100000005 implements View.OnClickListener {
        private final Context val$context;

        AnonymousClass100000005(Context context) {
            this.val$context = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainActivity.access$1000017(this.val$context, MainActivity.TARGET_GAME);
            MainActivity.access$1000018(this.val$context, MainActivity.TARGET_GAME);
            Toast.makeText(this.val$context, "Game closed! Please tap 'Clear Data'", 1).show();
        }
    }

    /* renamed from: com.byp.dts.MainActivity$100000008, reason: invalid class name */
    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes2.dex */
    class AnonymousClass100000008 implements View.OnTouchListener {
        private final MainActivity this$0;
        private final int[] val$delta;
        private final WindowManager.LayoutParams val$params;

        AnonymousClass100000008(MainActivity mainActivity, int[] iArr, WindowManager.LayoutParams layoutParams) {
            this.this$0 = mainActivity;
            this.val$delta = iArr;
            this.val$params = layoutParams;
        }

        /* renamed from: com.byp.dts.MainActivity$100000008$100000007, reason: invalid class name */
        /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes2.dex */
        class AnonymousClass100000007 implements Runnable {
            private final AnonymousClass100000008 this$0;
            private final Button val$btnLogin;
            private final Context val$context;
            private final String val$key;
            private final TextView val$textStatus;

            AnonymousClass100000007(AnonymousClass100000008 anonymousClass100000008, Context context, String str, TextView textView, Button button) {
                this.this$0 = anonymousClass100000008;
                this.val$context = context;
                this.val$key = str;
                this.val$textStatus = textView;
                this.val$btnLogin = button;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    String access$1000028 = MainActivity.access$1000028(this.val$context);
                    JSONObject jSONObject = new JSONObject(MainActivity.urlRequest(MainActivity.SERVER_URL, new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append("game=").append(MainActivity.GAME_NAME).toString()).append("&user_key=").toString()).append(this.val$key).toString()).append("&serial=").toString()).append(access$1000028).toString()));
                    this.this$0.this$0.runOnUiThread(new Runnable(this, jSONObject.optBoolean("status", false), jSONObject, this.val$key, access$1000028, this.val$context, this.val$textStatus, this.val$btnLogin) { // from class: com.byp.dts.MainActivity.100000008.100000007.100000005
                        private final AnonymousClass100000007 this$0;
                        private final Button val$btnLogin;
                        private final Context val$context;
                        private final JSONObject val$json;
                        private final String val$key;
                        private final String val$serial;
                        private final boolean val$status;
                        private final TextView val$textStatus;

                        {
                            this.this$0 = this;
                            this.val$status = r14;
                            this.val$json = jSONObject;
                            this.val$key = r16;
                            this.val$serial = access$1000028;
                            this.val$context = r18;
                            this.val$textStatus = r19;
                            this.val$btnLogin = r20;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                if (this.val$status && this.val$json.has("data")) {
                                    JSONObject jSONObject2 = this.val$json.getJSONObject("data");
                                    if (jSONObject2.has("token")) {
                                        if (jSONObject2.getString("token").equals(MainActivity.MD5_Hash(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append("PUBG-").append(this.val$key).toString()).append("-").toString()).append(this.val$serial).toString()).append("-Vm8Lk7Uj2JmsjCPVPVjrLa7zgfx3uz9E").toString()))) {
                                            Toast.makeText(this.val$context, "LOGIN SUCCESSFUL! WELCOME TO MODDER GANG ", 1).show();
                                            this.val$textStatus.setTextColor(Color.parseColor("#00ff88"));
                                            this.val$textStatus.setText("Logged in! Tap EXIT to exit.");
                                            MainActivity.access$1000021(this.this$0.this$0.this$0);
                                            MainActivity.access$1000025(this.this$0.this$0.this$0);
                                        } else {
                                            this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                                            this.val$textStatus.setText("Invalid Token!");
                                        }
                                    } else {
                                        this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                                        this.val$textStatus.setText("Invalid server response");
                                    }
                                } else {
                                    this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                                    this.val$textStatus.setText(this.val$json.optString("reason", "Login Failed"));
                                }
                            } catch (Exception e) {
                                this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                                this.val$textStatus.setText("Server Error");
                            }
                            this.val$btnLogin.setEnabled(true);
                        }
                    });
                } catch (Exception e) {
                    this.this$0.this$0.runOnUiThread(new Runnable(this, this.val$textStatus, this.val$btnLogin) { // from class: com.byp.dts.MainActivity.100000008.100000007.100000006
                        private final AnonymousClass100000007 this$0;
                        private final Button val$btnLogin;
                        private final TextView val$textStatus;

                        {
                            this.this$0 = this;
                            this.val$textStatus = r9;
                            this.val$btnLogin = r10;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                            this.val$textStatus.setText("Connection failed");
                            this.val$btnLogin.setEnabled(true);
                        }
                    });
                }
            }
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            switch (motionEvent.getAction()) {
                case 0:
                    this.val$delta[0] = (int) (this.val$params.x - motionEvent.getRawX());
                    this.val$delta[1] = (int) (this.val$params.y - motionEvent.getRawY());
                    view.setAlpha(0.7f);
                    break;
                case 1:
                    view.setAlpha(1.0f);
                    break;
                case 2:
                    this.val$params.x = (int) (motionEvent.getRawX() + this.val$delta[0]);
                    this.val$params.y = (int) (motionEvent.getRawY() + this.val$delta[1]);
                    MainActivity.access$L1000005(this.this$0).updateViewLayout(this.this$0.windowManager, this.val$params);
                    break;
            }
            return false;
        }
    }

    public void showFloatingExitButton() {
        if (this.floatingExitButton == null && !this.isExitButtonRemoved && this.windowManager != null) {
            this.floatingExitButton = new Button(this);
            Button button = (Button) this.floatingExitButton;
            button.setText("EXIT");
            button.setTextColor(-1);
            button.setTextSize(12.0f);
            button.setTypeface((Typeface) null, 1);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(Color.parseColor("#ff4444"));
            gradientDrawable.setCornerRadius(80.0f);
            button.setBackground(gradientDrawable);
            button.setPadding(20, 20, 20, 20);
            if (Build.VERSION.SDK_INT >= 21) {
                button.setElevation(10.0f);
            }
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, Build.VERSION.SDK_INT >= 26 ? 2038 : 2002, 8, -3);
            layoutParams.gravity = 53;
            layoutParams.x = 30;
            layoutParams.y = 100;
            try {
                this.windowManager.addView(this.floatingExitButton, layoutParams);
                this.floatingExitButton.setOnTouchListener(new View.OnTouchListener(this, new int[2], layoutParams) { // from class: com.byp.dts.MainActivity.100000010
                    private final MainActivity this$0;
                    private final int[] val$delta;
                    private final WindowManager.LayoutParams val$params;

                    {
                        this.this$0 = this;
                        this.val$delta = r9;
                        this.val$params = layoutParams;
                    }

                    /* renamed from: com.byp.dts.MainActivity$100000010$100000009, reason: invalid class name */
                    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes2.dex */
                    class AnonymousClass100000009 implements Runnable {
                        private final AnonymousClass100000010 this$0;
                        private final Button val$btnLogin;
                        private final Context val$context;
                        private final String val$key;
                        private final TextView val$textStatus;

                        AnonymousClass100000009(AnonymousClass100000010 anonymousClass100000010, Context context, String str, TextView textView, Button button) {
                            this.this$0 = anonymousClass100000010;
                            this.val$context = context;
                            this.val$key = str;
                            this.val$textStatus = textView;
                            this.val$btnLogin = button;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                String access$1000022 = MainActivity.access$1000022(this.val$context);
                                try {
                                    JSONObject jSONObject = new JSONObject(MainActivity.urlRequest(MainActivity.SERVER_URL, new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append("game=").append(MainActivity.GAME_NAME).toString()).append("&user_key=").toString()).append(this.val$key).toString()).append("&serial=").toString()).append(access$1000022).toString()));
                                    ((Activity) this.val$context).runOnUiThread(new Runnable(this, jSONObject.getBoolean("status"), jSONObject, this.val$key, access$1000022, this.val$context, this.val$textStatus, this.val$btnLogin) { // from class: com.byp.dts.MainActivity.100000010.100000009.100000006
                                        private final AnonymousClass100000009 this$0;
                                        private final Button val$btnLogin;
                                        private final Context val$context;
                                        private final JSONObject val$json;
                                        private final String val$key;
                                        private final String val$serial;
                                        private final boolean val$status;
                                        private final TextView val$textStatus;

                                        {
                                            this.this$0 = this;
                                            this.val$status = r14;
                                            this.val$json = jSONObject;
                                            this.val$key = r16;
                                            this.val$serial = access$1000022;
                                            this.val$context = r18;
                                            this.val$textStatus = r19;
                                            this.val$btnLogin = r20;
                                        }

                                        @Override // java.lang.Runnable
                                        public void run() {
                                            try {
                                                if (this.val$status) {
                                                    if (this.val$json.getJSONObject("data").getString("token").equals(MainActivity.MD5_Hash(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append("PUBG-").append(this.val$key).toString()).append("-").toString()).append(this.val$serial).toString()).append("-Vm8Lk7Uj2JmsjCPVPVjrLa7zgfx3uz9E").toString()))) {
                                                        Toast.makeText(this.val$context, "LOGIN SUCCESSFUL! WELCOME TO MODDER GANG ", 1).show();
                                                        this.val$textStatus.setTextColor(Color.parseColor("#00ff88"));
                                                        this.val$textStatus.setText("Logged in! Use EXIT button anytime.");
                                                        MainActivity.access$1000019(this.val$context);
                                                    } else {
                                                        this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                                                        this.val$textStatus.setText("Invalid Token! Contact Admin");
                                                    }
                                                } else {
                                                    String optString = this.val$json.optString("reason", "Login Failed");
                                                    this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                                                    this.val$textStatus.setText(optString);
                                                }
                                            } catch (Exception e) {
                                                this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                                                this.val$textStatus.setText("Server Error");
                                            }
                                            this.val$btnLogin.setEnabled(true);
                                        }
                                    });
                                } catch (Exception e) {
                                    ((Activity) this.val$context).runOnUiThread(new Runnable(this, this.val$textStatus, this.val$btnLogin) { // from class: com.byp.dts.MainActivity.100000010.100000009.100000007
                                        private final AnonymousClass100000009 this$0;
                                        private final Button val$btnLogin;
                                        private final TextView val$textStatus;

                                        {
                                            this.this$0 = this;
                                            this.val$textStatus = r9;
                                            this.val$btnLogin = r10;
                                        }

                                        @Override // java.lang.Runnable
                                        public void run() {
                                            this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                                            this.val$textStatus.setText("Server response error");
                                            this.val$btnLogin.setEnabled(true);
                                        }
                                    });
                                }
                            } catch (Exception e2) {
                                ((Activity) this.val$context).runOnUiThread(new Runnable(this, this.val$textStatus, this.val$btnLogin) { // from class: com.byp.dts.MainActivity.100000010.100000009.100000008
                                    private final AnonymousClass100000009 this$0;
                                    private final Button val$btnLogin;
                                    private final TextView val$textStatus;

                                    {
                                        this.this$0 = this;
                                        this.val$textStatus = r9;
                                        this.val$btnLogin = r10;
                                    }

                                    @Override // java.lang.Runnable
                                    public void run() {
                                        this.val$textStatus.setTextColor(Color.parseColor("#ff4444"));
                                        this.val$textStatus.setText("Connection failed");
                                        this.val$btnLogin.setEnabled(true);
                                    }
                                });
                            }
                        }
                    }

                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        switch (motionEvent.getAction()) {
                            case 0:
                                this.val$delta[0] = (int) (this.val$params.x - motionEvent.getRawX());
                                this.val$delta[1] = (int) (this.val$params.y - motionEvent.getRawY());
                                view.setAlpha(0.7f);
                                break;
                            case 1:
                                view.setAlpha(1.0f);
                                break;
                            case 2:
                                this.val$params.x = (int) (motionEvent.getRawX() + this.val$delta[0]);
                                this.val$params.y = (int) (motionEvent.getRawY() + this.val$delta[1]);
                                this.this$0.windowManager.updateViewLayout(this.this$0.floatingExitButton, this.val$params);
                                break;
                        }
                        return false;
                    }
                });
                this.floatingExitButton.setOnClickListener(new View.OnClickListener(this) { // from class: com.byp.dts.MainActivity.100000011
                    private final MainActivity this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        this.this$0.forceKillGame(MainActivity.TARGET_GAME);
                        this.this$0.openClearDataScreen(MainActivity.TARGET_GAME);
                        Toast.makeText(this.this$0, "Game closed! Clear Data now", 1).show();
                        if (this.this$0.floatingExitButton != null) {
                            try {
                                this.this$0.windowManager.removeView(this.this$0.floatingExitButton);
                            } catch (Exception e) {
                            }
                            this.this$0.floatingExitButton = (View) null;
                        }
                        this.this$0.isExitButtonRemoved = true;
                    }
                });
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.byp.dts.MainActivity$100000012, reason: invalid class name */
    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes2.dex */
    class AnonymousClass100000012 implements Runnable {
        private final Context val$context;
        private final String val$targetPackage;

        AnonymousClass100000012(Context context, String str) {
            this.val$context = context;
            this.val$targetPackage = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ActivityManager activityManager = (ActivityManager) this.val$context.getSystemService("activity");
                if (activityManager != null) {
                    activityManager.killBackgroundProcesses(this.val$targetPackage);
                }
                ((Activity) this.val$context).runOnUiThread(new Runnable(this, this.val$targetPackage, this.val$context) { // from class: com.byp.dts.MainActivity.100000012.100000011
                    private final AnonymousClass100000012 this$0;
                    private final Context val$context;
                    private final String val$targetPackage;

                    {
                        this.this$0 = this;
                        this.val$targetPackage = r9;
                        this.val$context = r10;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                            intent.setData(Uri.parse(new StringBuffer().append("package:").append(this.val$targetPackage).toString()));
                            intent.addFlags(268435456);
                            this.val$context.startActivity(intent);
                            Toast.makeText(this.val$context, "Please tap 'Clear Data' to continue", 1).show();
                        } catch (Exception e) {
                            Toast.makeText(this.val$context, "Cannot open settings", 0).show();
                        }
                    }
                });
            } catch (Exception e) {
            }
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        if (this.floatingExitButton != null && this.windowManager != null) {
            try {
                this.windowManager.removeView(this.floatingExitButton);
            } catch (Exception e) {
            }
            this.floatingExitButton = (View) null;
        }
        instance = (MainActivity) null;
        super.onDestroy();
    }

    private void startGameWatcherService() {
        try {
            Intent intent = new Intent(this, Class.forName("com.byp.dts.GameWatcherService"));
            if (Build.VERSION.SDK_INT >= 26) {
                startForegroundService(intent);
            } else {
                startService(intent);
            }
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void startModMenu(Context context) {
        try {
            Intent intent = new Intent(context, Class.forName("com.byp.dts.ModMenuActivity"));
            intent.addFlags(268435456);
            context.startActivity(intent);
            Intent intent2 = new Intent();
            intent2.setClassName(context.getPackageName(), "com.srp.patch.Init");
            if (Build.VERSION.SDK_INT >= 26) {
                context.startForegroundService(intent2);
            } else {
                context.startService(intent2);
            }
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void forceKillGame(String str) {
        try {
            ActivityManager activityManager = (ActivityManager) getSystemService("activity");
            if (activityManager != null) {
                activityManager.killBackgroundProcesses(str);
            }
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openClearDataScreen(String str) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse(new StringBuffer().append("package:").append(str).toString()));
            intent.addFlags(268435456);
            startActivity(intent);
        } catch (Exception e) {
        }
    }

    private static GradientDrawable pill(String str, String str2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(30.0f);
        gradientDrawable.setColor(Color.parseColor(str));
        gradientDrawable.setStroke(2, Color.parseColor(str2));
        return gradientDrawable;
    }

    private static void stylize(Button button, String str) {
        button.setText(str);
        button.setAllCaps(false);
        button.setTextColor(-1);
        button.setTypeface((Typeface) null, 1);
        button.setTextSize(12.0f);
        button.setPadding(0, 10, 0, 10);
        if (Build.VERSION.SDK_INT >= 21) {
            button.setStateListAnimator((StateListAnimator) null);
        }
    }

    public static String urlRequest(String str, String str2) throws IOException {
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) null;
        BufferedReader bufferedReader = (BufferedReader) null;
        try {
            try {
                HttpsURLConnection httpsURLConnection2 = (HttpsURLConnection) new URL(str).openConnection();
                httpsURLConnection2.setDoOutput(true);
                httpsURLConnection2.setRequestMethod("POST");
                httpsURLConnection2.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                httpsURLConnection2.setRequestProperty("X-API-Key", API_KEY);
                httpsURLConnection2.setConnectTimeout(60000);
                httpsURLConnection2.setReadTimeout(60000);
                httpsURLConnection2.setFixedLengthStreamingMode(str2.getBytes().length);
                PrintWriter printWriter = new PrintWriter(httpsURLConnection2.getOutputStream());
                printWriter.print(str2);
                printWriter.close();
                httpsURLConnection2.connect();
                int responseCode = httpsURLConnection2.getResponseCode();
                if (responseCode != 200) {
                    throw new IOException(new StringBuffer().append("HTTP ").append(responseCode).toString());
                }
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(httpsURLConnection2.getInputStream()));
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader2.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                }
                String trim = sb.toString().trim();
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Exception e) {
                    }
                }
                if (httpsURLConnection2 != null) {
                    httpsURLConnection2.disconnect();
                }
                return trim;
            } catch (Throwable th) {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception e2) {
                    }
                }
                if (httpsURLConnection != null) {
                    httpsURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Exception e3) {
            throw new IOException(new StringBuffer().append("Connection failed: ").append(e3.getMessage()).toString());
        }
    }

    public static String MD5_Hash(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                String hexString = Integer.toHexString(255 & b);
                if (hexString.length() == 1) {
                    sb.append('0');
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (Exception e) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getDeviceSerial(Context context) {
        try {
            String stringBuffer = new StringBuffer().append(new StringBuffer().append(Settings.Secure.getString(context.getContentResolver(), "android_id")).append(Build.MODEL).toString()).append(Build.BRAND).toString();
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(stringBuffer.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                String hexString = Integer.toHexString(255 & b);
                if (hexString.length() == 1) {
                    sb.append('0');
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (Exception e) {
            return "default_device_serial_md5";
        }
    }
}
