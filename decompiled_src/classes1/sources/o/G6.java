package o;

import android.text.Editable;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class G6 extends Editable.Factory {
    public static final Object a = new Object();
    public static volatile G6 b;
    public static Class c;

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class cls = c;
        if (cls != null) {
            return new Ye(cls, charSequence);
        }
        return super.newEditable(charSequence);
    }
}
