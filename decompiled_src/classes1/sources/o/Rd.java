package o;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.os.Build;
import android.os.Bundle;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Rd extends Fragment {
    public static final /* synthetic */ int b = 0;
    public C a;

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static final class a implements Application.ActivityLifecycleCallbacks {
        public static final Qd Companion = new Object();

        public static final void registerIn(Activity activity) {
            Companion.getClass();
            AbstractC0487x9.o(activity, "activity");
            activity.registerActivityLifecycleCallbacks(new a());
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            AbstractC0487x9.o(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            AbstractC0487x9.o(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            AbstractC0487x9.o(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostCreated(Activity activity, Bundle bundle) {
            AbstractC0487x9.o(activity, "activity");
            int i = Rd.b;
            Pd.a(activity, L9.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            AbstractC0487x9.o(activity, "activity");
            int i = Rd.b;
            Pd.a(activity, L9.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            AbstractC0487x9.o(activity, "activity");
            int i = Rd.b;
            Pd.a(activity, L9.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(Activity activity) {
            AbstractC0487x9.o(activity, "activity");
            int i = Rd.b;
            Pd.a(activity, L9.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(Activity activity) {
            AbstractC0487x9.o(activity, "activity");
            int i = Rd.b;
            Pd.a(activity, L9.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(Activity activity) {
            AbstractC0487x9.o(activity, "activity");
            int i = Rd.b;
            Pd.a(activity, L9.ON_STOP);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            AbstractC0487x9.o(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            AbstractC0487x9.o(activity, "activity");
            AbstractC0487x9.o(bundle, "bundle");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            AbstractC0487x9.o(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            AbstractC0487x9.o(activity, "activity");
        }
    }

    public final void a(L9 l9) {
        if (Build.VERSION.SDK_INT < 29) {
            Activity activity = getActivity();
            AbstractC0487x9.n(activity, "activity");
            Pd.a(activity, l9);
        }
    }

    @Override // android.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        a(L9.ON_CREATE);
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        a(L9.ON_DESTROY);
        this.a = null;
    }

    @Override // android.app.Fragment
    public final void onPause() {
        super.onPause();
        a(L9.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        C c = this.a;
        if (c != null) {
            ((Tc) c.b).a();
        }
        a(L9.ON_RESUME);
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        C c = this.a;
        if (c != null) {
            Tc tc = (Tc) c.b;
            int i = tc.a + 1;
            tc.a = i;
            if (i == 1 && tc.d) {
                tc.f149f.d(L9.ON_START);
                tc.d = false;
            }
        }
        a(L9.ON_START);
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        a(L9.ON_STOP);
    }
}
