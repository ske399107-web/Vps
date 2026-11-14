package com.hda.jds;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class DebugActivity extends Activity {
    String[] exceptionType = {"StringIndexOutOfBoundsException", "IndexOutOfBoundsException", "ArithmeticException", "NumberFormatException", "ActivityNotFoundException"};
    String[] errMessage = {"Invalid string operation\n", "Invalid list operation\n", "Invalid arithmetical operation\n", "Invalid toNumber block operation\n", "Invalid intent operation"};

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String str = org.conscrypt.BuildConfig.FLAVOR;
        if (intent != null) {
            String stringExtra = intent.getStringExtra("error");
            String[] split = stringExtra.split("\n");
            int i = 0;
            while (true) {
                try {
                    if (i >= this.exceptionType.length) {
                        break;
                    }
                    if (!split[0].contains(this.exceptionType[i])) {
                        i++;
                    } else {
                        str = new StringBuffer().append(this.errMessage[i]).append(split[0].substring(split[0].indexOf(this.exceptionType[i]) + this.exceptionType[i].length(), split[0].length())).toString();
                        break;
                    }
                } catch (Exception e) {
                }
            }
            if (str.isEmpty()) {
                str = stringExtra;
            }
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("An error occured");
        builder.setMessage(str);
        builder.setNeutralButton("End Application", new DialogInterface.OnClickListener(this) { // from class: com.hda.jds.DebugActivity.100000000
            private final DebugActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                this.this$0.finish();
            }
        });
        builder.create().show();
    }
}
