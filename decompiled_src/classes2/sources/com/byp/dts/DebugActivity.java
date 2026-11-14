package com.byp.dts;

import adrt.ADRTLogCatReader;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes2.dex */
public class DebugActivity extends Activity {
    String[] exceptionType = {"StringIndexOutOfBoundsException", "IndexOutOfBoundsException", "ArithmeticException", "NumberFormatException", "ActivityNotFoundException"};
    String[] errMessage = {"Invalid string operation\n", "Invalid list operation\n", "Invalid arithmetical operation\n", "Invalid toNumber block operation\n", "Invalid intent operation"};

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        ADRTLogCatReader.onContext(this, "com.goxome.aidestudio");
        super.onCreate(bundle);
        Intent intent = getIntent();
        String str = "Unknown error occurred.";
        if (intent != null) {
            String stringExtra = intent.getStringExtra("error");
            if (stringExtra != null && !stringExtra.trim().isEmpty()) {
                String[] split = stringExtra.split("\n");
                if (split.length > 0) {
                    String str2 = split[0];
                    int i = 0;
                    while (true) {
                        if (i >= this.exceptionType.length) {
                            break;
                        }
                        if (!str2.contains(this.exceptionType[i])) {
                            i++;
                        } else {
                            str = this.errMessage[i];
                            int indexOf = str2.indexOf(this.exceptionType[i]) + this.exceptionType[i].length();
                            if (indexOf < str2.length()) {
                                str = new StringBuffer().append(str).append(str2.substring(indexOf).trim()).toString();
                            }
                        }
                    }
                    if (str.equals("Unknown error occurred.")) {
                        str = str2;
                    }
                }
            }
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("An error occurred");
        builder.setMessage(str);
        builder.setNeutralButton("End Application", new DialogInterface.OnClickListener(this) { // from class: com.byp.dts.DebugActivity.100000000
            private final DebugActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                this.this$0.finishAffinity();
                System.exit(0);
            }
        });
        builder.setCancelable(false);
        builder.create().show();
    }
}
