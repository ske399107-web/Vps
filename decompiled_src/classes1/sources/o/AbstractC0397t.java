package o;

import android.text.PrecomputedText;
import android.text.TextPaint;

/* renamed from: o.t, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract /* synthetic */ class AbstractC0397t {
    public static /* synthetic */ PrecomputedText.Params.Builder i(TextPaint textPaint) {
        return new PrecomputedText.Params.Builder(textPaint);
    }

    public static /* bridge */ /* synthetic */ boolean t(CharSequence charSequence) {
        return charSequence instanceof PrecomputedText;
    }
}
