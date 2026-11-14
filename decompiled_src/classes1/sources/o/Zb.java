package o;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import java.util.ArrayList;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Zb {
    public final Context a;
    public CharSequence e;

    /* renamed from: f, reason: collision with root package name */
    public CharSequence f174f;
    public PendingIntent g;
    public int h;
    public String j;
    public Bundle k;
    public final String n;

    /* renamed from: o, reason: collision with root package name */
    public final boolean f175o;
    public final Notification p;
    public boolean q;
    public final ArrayList r;
    public final ArrayList b = new ArrayList();
    public final ArrayList c = new ArrayList();
    public final ArrayList d = new ArrayList();
    public final boolean i = true;
    public int l = 0;
    public int m = 0;

    public Zb(Context context, String str) {
        Notification notification = new Notification();
        this.p = notification;
        this.a = context;
        this.n = str;
        notification.when = System.currentTimeMillis();
        notification.audioStreamType = -1;
        this.h = 0;
        this.r = new ArrayList();
        this.f175o = true;
    }

    public static CharSequence b(CharSequence charSequence) {
        if (charSequence == null) {
            return charSequence;
        }
        if (charSequence.length() > 5120) {
            return charSequence.subSequence(0, 5120);
        }
        return charSequence;
    }

    public final Notification a() {
        C0052bc c0052bc = new C0052bc(this);
        c0052bc.b.getClass();
        int i = Build.VERSION.SDK_INT;
        Notification.Builder builder = c0052bc.a;
        if (i >= 26) {
            return builder.build();
        }
        Notification build = builder.build();
        int i2 = c0052bc.d;
        if (i2 != 0) {
            if (build.getGroup() != null && (build.flags & 512) != 0 && i2 == 2) {
                build.sound = null;
                build.vibrate = null;
                build.defaults &= -4;
            }
            if (build.getGroup() != null && (build.flags & 512) == 0 && i2 == 1) {
                build.sound = null;
                build.vibrate = null;
                build.defaults &= -4;
            }
        }
        return build;
    }

    public final void c(int i, boolean z) {
        Notification notification = this.p;
        if (z) {
            notification.flags = i | notification.flags;
        } else {
            notification.flags = (~i) & notification.flags;
        }
    }
}
