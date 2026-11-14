package o;

import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Z6 {
    public final /* synthetic */ C0047b7 a;

    public Z6(C0047b7 c0047b7) {
        this.a = c0047b7;
    }

    public final void a(TextInputLayout textInputLayout) {
        C0047b7 c0047b7 = this.a;
        if (c0047b7.s == textInputLayout.getEditText()) {
            return;
        }
        EditText editText = c0047b7.s;
        Y6 y6 = c0047b7.v;
        if (editText != null) {
            editText.removeTextChangedListener(y6);
            if (c0047b7.s.getOnFocusChangeListener() == c0047b7.b().e()) {
                c0047b7.s.setOnFocusChangeListener(null);
            }
        }
        EditText editText2 = textInputLayout.getEditText();
        c0047b7.s = editText2;
        if (editText2 != null) {
            editText2.addTextChangedListener(y6);
        }
        c0047b7.b().m(c0047b7.s);
        c0047b7.j(c0047b7.b());
    }
}
