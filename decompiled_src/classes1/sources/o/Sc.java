package o;

import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Sc extends T6 {
    final /* synthetic */ Tc this$0;

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static final class a extends T6 {
        final /* synthetic */ Tc this$0;

        public a(Tc tc) {
            this.this$0 = tc;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            AbstractC0487x9.o(activity, "activity");
            this.this$0.a();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            AbstractC0487x9.o(activity, "activity");
            Tc tc = this.this$0;
            int i = tc.a + 1;
            tc.a = i;
            if (i == 1 && tc.d) {
                tc.f149f.d(L9.ON_START);
                tc.d = false;
            }
        }
    }

    public Sc(Tc tc) {
        this.this$0 = tc;
    }

    @Override // o.T6, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        AbstractC0487x9.o(activity, "activity");
        if (Build.VERSION.SDK_INT < 29) {
            int i = Rd.b;
            Fragment findFragmentByTag = activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
            AbstractC0487x9.m(findFragmentByTag, "null cannot be cast to non-null type androidx.lifecycle.ReportFragment");
            ((Rd) findFragmentByTag).a = this.this$0.h;
        }
    }

    @Override // o.T6, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        AbstractC0487x9.o(activity, "activity");
        Tc tc = this.this$0;
        int i = tc.b - 1;
        tc.b = i;
        if (i == 0) {
            Handler handler = tc.e;
            AbstractC0487x9.l(handler);
            handler.postDelayed(tc.g, 700L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreCreated(Activity activity, Bundle bundle) {
        AbstractC0487x9.o(activity, "activity");
        Rc.a(activity, new a(this.this$0));
    }

    @Override // o.T6, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        AbstractC0487x9.o(activity, "activity");
        Tc tc = this.this$0;
        int i = tc.a - 1;
        tc.a = i;
        if (i == 0 && tc.c) {
            tc.f149f.d(L9.ON_STOP);
            tc.d = true;
        }
    }
}
