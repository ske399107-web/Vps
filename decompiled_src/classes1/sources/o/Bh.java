package o;

import android.view.ContentInfo;
import android.view.View;
import java.util.Objects;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Bh {
    public static String[] a(View view) {
        return view.getReceiveContentMimeTypes();
    }

    public static T4 b(View view, T4 t4) {
        ContentInfo m = t4.a.m();
        Objects.requireNonNull(m);
        ContentInfo performReceiveContent = view.performReceiveContent(m);
        if (performReceiveContent == null) {
            return null;
        }
        if (performReceiveContent == m) {
            return t4;
        }
        return new T4(new C(performReceiveContent));
    }
}
