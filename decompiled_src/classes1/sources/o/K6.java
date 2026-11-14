package o;

import android.text.InputFilter;
import android.text.Spanned;
import android.widget.TextView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class K6 implements InputFilter {
    public final TextView a;
    public J6 b;

    public K6(TextView textView) {
        this.a = textView;
    }

    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        TextView textView = this.a;
        if (textView.isInEditMode()) {
            return charSequence;
        }
        int b = C6.a().b();
        if (b != 0) {
            if (b != 1) {
                if (b != 3) {
                    return charSequence;
                }
            } else {
                if ((i4 != 0 || i3 != 0 || spanned.length() != 0 || charSequence != textView.getText()) && charSequence != null) {
                    if (i != 0 || i2 != charSequence.length()) {
                        charSequence = charSequence.subSequence(i, i2);
                    }
                    return C6.a().e(charSequence, 0, charSequence.length());
                }
                return charSequence;
            }
        }
        C6 a = C6.a();
        if (this.b == null) {
            this.b = new J6(textView, this);
        }
        a.f(this.b);
        return charSequence;
    }
}
