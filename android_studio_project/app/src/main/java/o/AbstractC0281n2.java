package o;

import android.text.StaticLayout;
import android.widget.TextView;

/* renamed from: o.n2, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0281n2 {
    public abstract void a(StaticLayout.Builder builder, TextView textView);

    public boolean b(TextView textView) {
        return ((Boolean) C0301o2.e("getHorizontallyScrolling", textView, Boolean.FALSE)).booleanValue();
    }
}
