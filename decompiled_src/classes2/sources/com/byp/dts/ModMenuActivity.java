package com.byp.dts;

import adrt.ADRTLogCatReader;
import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes2.dex */
public class ModMenuActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        ADRTLogCatReader.onContext(this, "com.goxome.aidestudio");
        super.onCreate(bundle);
        TextView textView = new TextView(this);
        textView.setText("MODDER GANG  MENU LOADED!");
        textView.setTextSize(30);
        textView.setGravity(17);
        setContentView(textView);
    }
}
