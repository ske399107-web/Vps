package o;

import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
//import org.conscrypt.BuildConfig // replaced by app BuildConfig

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Nf extends r {
    public final TextInputLayout d;

    public Nf(TextInputLayout textInputLayout) {
        this.d = textInputLayout;
    }

    @Override // o.r
    public final void d(View view, D d) {
        CharSequence charSequence;
        boolean z;
        String str;
        View.AccessibilityDelegate accessibilityDelegate = this.a;
        AccessibilityNodeInfo accessibilityNodeInfo = d.a;
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        TextInputLayout textInputLayout = this.d;
        EditText editText = textInputLayout.getEditText();
        if (editText != null) {
            charSequence = editText.getText();
        } else {
            charSequence = null;
        }
        CharSequence hint = textInputLayout.getHint();
        CharSequence error = textInputLayout.getError();
        CharSequence placeholderText = textInputLayout.getPlaceholderText();
        int counterMaxLength = textInputLayout.getCounterMaxLength();
        CharSequence counterOverflowDescription = textInputLayout.getCounterOverflowDescription();
        boolean isEmpty = TextUtils.isEmpty(charSequence);
        boolean isEmpty2 = TextUtils.isEmpty(hint);
        boolean z2 = textInputLayout.u0;
        boolean isEmpty3 = TextUtils.isEmpty(error);
        if (isEmpty3 && TextUtils.isEmpty(counterOverflowDescription)) {
            z = false;
        } else {
            z = true;
        }
        if (!isEmpty2) {
            str = hint.toString();
        } else {
            str = BuildConfig.FLAVOR;
        }
        Cif cif = textInputLayout.b;
        C0201j2 c0201j2 = cif.b;
        if (c0201j2.getVisibility() == 0) {
            accessibilityNodeInfo.setLabelFor(c0201j2);
            accessibilityNodeInfo.setTraversalAfter(c0201j2);
        } else {
            accessibilityNodeInfo.setTraversalAfter(cif.d);
        }
        if (!isEmpty) {
            d.l(charSequence);
        } else if (!TextUtils.isEmpty(str)) {
            d.l(str);
            if (!z2 && placeholderText != null) {
                d.l(str + ", " + ((Object) placeholderText));
            }
        } else if (placeholderText != null) {
            d.l(placeholderText);
        }
        if (!TextUtils.isEmpty(str)) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                d.k(str);
            } else {
                if (!isEmpty) {
                    str = ((Object) charSequence) + ", " + str;
                }
                d.l(str);
            }
            if (i >= 26) {
                accessibilityNodeInfo.setShowingHintText(isEmpty);
            } else {
                d.h(4, isEmpty);
            }
        }
        if (charSequence == null || charSequence.length() != counterMaxLength) {
            counterMaxLength = -1;
        }
        accessibilityNodeInfo.setMaxTextLength(counterMaxLength);
        if (z) {
            if (isEmpty3) {
                error = counterOverflowDescription;
            }
            accessibilityNodeInfo.setError(error);
        }
        C0201j2 c0201j22 = textInputLayout.j.y;
        if (c0201j22 != null) {
            accessibilityNodeInfo.setLabelFor(c0201j22);
        }
        textInputLayout.c.b().n(d);
    }

    @Override // o.r
    public final void e(View view, AccessibilityEvent accessibilityEvent) {
        super.e(view, accessibilityEvent);
        this.d.c.b().o(accessibilityEvent);
    }
}
