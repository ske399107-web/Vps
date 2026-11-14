package o;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import o.Rd;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Pd {
    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Activity activity, L9 l9) {
        androidx.lifecycle.a e;
        AbstractC0487x9.o(l9, "event");
        if ((activity instanceof R9) && (e = ((R9) activity).e()) != null) {
            e.d(l9);
        }
    }

    public static void b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 29) {
            Rd.a.Companion.getClass();
            activity.registerActivityLifecycleCallbacks(new Rd.a());
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new Fragment(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }
}
