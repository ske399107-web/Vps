package o;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

/* renamed from: o.h1, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0161h1 {
    public static final ExecutorC0121f1 a = new ExecutorC0121f1(new Object());
    public static final int b = -100;
    public static C0368ra c = null;
    public static C0368ra d = null;
    public static Boolean e = null;

    /* renamed from: f, reason: collision with root package name */
    public static boolean f221f = false;
    public static final G2 g = new G2(0);
    public static final Object h = new Object();
    public static final Object i = new Object();

    public static boolean b(Context context) {
        if (e == null) {
            try {
                int i2 = AbstractServiceC0420u2.a;
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) AbstractServiceC0420u2.class), AbstractC0400t2.a() | 128).metaData;
                if (bundle != null) {
                    e = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("AppCompatDelegate", "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                e = Boolean.FALSE;
            }
        }
        return e.booleanValue();
    }

    public static void e(LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1) {
        synchronized (h) {
            try {
                G2 g2 = g;
                g2.getClass();
                A2 a2 = new A2(g2);
                while (a2.hasNext()) {
                    AbstractC0161h1 abstractC0161h1 = (AbstractC0161h1) ((WeakReference) a2.next()).get();
                    if (abstractC0161h1 == layoutInflaterFactory2C0439v1 || abstractC0161h1 == null) {
                        a2.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void a();

    public abstract void c();

    public abstract void d();

    public abstract boolean f(int i2);

    public abstract void g(int i2);

    public abstract void h(View view);

    public abstract void i(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void j(CharSequence charSequence);
}
