package androidx.lifecycle;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import java.util.HashSet;
import java.util.List;
import o.AbstractC0487x9;
import o.C0380s2;
import o.InterfaceC0288n9;
import o.L9;
import o.N9;
import o.O9;
import o.Sc;
import o.Tc;
import o.V6;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class ProcessLifecycleInitializer implements InterfaceC0288n9 {
    @Override // o.InterfaceC0288n9
    public final List a() {
        return V6.a;
    }

    @Override // o.InterfaceC0288n9
    public final Object b(Context context) {
        AbstractC0487x9.o(context, "context");
        C0380s2 r = C0380s2.r(context);
        AbstractC0487x9.n(r, "getInstance(context)");
        if (((HashSet) r.c).contains(ProcessLifecycleInitializer.class)) {
            if (!O9.a.getAndSet(true)) {
                Context applicationContext = context.getApplicationContext();
                AbstractC0487x9.m(applicationContext, "null cannot be cast to non-null type android.app.Application");
                ((Application) applicationContext).registerActivityLifecycleCallbacks(new N9());
            }
            Tc tc = Tc.i;
            tc.getClass();
            tc.e = new Handler();
            tc.f149f.d(L9.ON_CREATE);
            Context applicationContext2 = context.getApplicationContext();
            AbstractC0487x9.m(applicationContext2, "null cannot be cast to non-null type android.app.Application");
            ((Application) applicationContext2).registerActivityLifecycleCallbacks(new Sc(tc));
            return tc;
        }
        throw new IllegalStateException("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml");
    }
}
