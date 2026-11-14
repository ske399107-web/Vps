package o;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.TextView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class B1 {
    public final TextView a;
    public final C b;

    public B1(TextView textView) {
        this.a = textView;
        this.b = new C(textView);
    }

    public final InputFilter[] a(InputFilter[] inputFilterArr) {
        return ((L1) this.b.b).B(inputFilterArr);
    }

    public final void b(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = this.a.getContext().obtainStyledAttributes(attributeSet, AbstractC0153gd.i, i, 0);
        try {
            boolean z = true;
            if (obtainStyledAttributes.hasValue(14)) {
                z = obtainStyledAttributes.getBoolean(14, true);
            }
            obtainStyledAttributes.recycle();
            d(z);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void c(boolean z) {
        ((L1) this.b.b).X(z);
    }

    public final void d(boolean z) {
        ((L1) this.b.b).Y(z);
    }
}
