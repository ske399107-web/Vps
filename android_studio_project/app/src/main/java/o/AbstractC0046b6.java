package o;

import android.app.Notification;
import android.graphics.drawable.Icon;
import android.icu.text.DecimalFormatSymbols;
import android.net.Uri;
import android.text.PrecomputedText;
import android.view.DisplayCutout;
import android.view.ViewConfiguration;
import android.widget.TextView;

/* renamed from: o.b6, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0046b6 {
    public static String[] a(DecimalFormatSymbols decimalFormatSymbols) {
        return decimalFormatSymbols.getDigitStrings();
    }

    public static int b(Object obj) {
        return ((Icon) obj).getResId();
    }

    public static String c(Object obj) {
        return ((Icon) obj).getResPackage();
    }

    public static int d(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetBottom();
    }

    public static int e(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetLeft();
    }

    public static int f(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetRight();
    }

    public static int g(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetTop();
    }

    public static int h(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledHoverSlop();
    }

    public static PrecomputedText.Params i(C0201j2 c0201j2) {
        return c0201j2.getTextMetricsParams();
    }

    public static int j(Object obj) {
        return ((Icon) obj).getType();
    }

    public static Uri k(Object obj) {
        return ((Icon) obj).getUri();
    }

    public static void l(TextView textView, int i) {
        textView.setFirstBaselineToTopHeight(i);
    }

    public static void m(Notification.Action.Builder builder, int i) {
        builder.setSemanticAction(i);
    }

    public static boolean n(ViewConfiguration viewConfiguration) {
        return viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
    }
}
