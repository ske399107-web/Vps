package o;

import android.app.Notification;
import android.app.RemoteInput;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Insets;

/* renamed from: o.v2, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0440v2 {
    public static String a(Context context) {
        return context.getOpPackageName();
    }

    public static Insets b(int i, int i2, int i3, int i4) {
        return Insets.of(i, i2, i3, i4);
    }

    public static void c(Resources.Theme theme) {
        theme.rebase();
    }

    public static void d(Notification.Builder builder, boolean z) {
        builder.setAllowSystemGeneratedContextualActions(z);
    }

    public static void e(Notification.Builder builder) {
        builder.setBubbleMetadata(null);
    }

    public static void f(Notification.Action.Builder builder) {
        builder.setContextual(false);
    }

    public static void g(RemoteInput.Builder builder) {
        builder.setEditChoicesBeforeSending(0);
    }
}
