package f.f;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Mainactivity {
    public static void check(Context context) {
        if (new Date().after(new SimpleDateFormat("yyyy-MM-dd").parse("2026-09-14"))) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("https://t.me/+9ySEojAble43ZDll"));
            intent.setFlags(268435456);
            context.startActivity(intent);
            System.exit(0);
        }
    }
}
