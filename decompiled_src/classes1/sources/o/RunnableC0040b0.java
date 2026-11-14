package o;

import android.app.Application;
import android.graphics.Typeface;
import android.util.Log;
import android.view.View;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* renamed from: o.b0, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class RunnableC0040b0 implements Runnable {
    public final /* synthetic */ int a;
    public final Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ RunnableC0040b0(Object obj, int i, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC0191ib interfaceC0191ib;
        Object obj = this.b;
        Object obj2 = this.c;
        switch (this.a) {
            case 0:
                C0080d0 c0080d0 = (C0080d0) obj2;
                MenuC0230kb menuC0230kb = c0080d0.c;
                if (menuC0230kb != null && (interfaceC0191ib = menuC0230kb.e) != null) {
                    interfaceC0191ib.v(menuC0230kb);
                }
                View view = (View) c0080d0.h;
                if (view != null && view.getWindowToken() != null) {
                    Z z = (Z) obj;
                    if (!z.b()) {
                        if (z.e != null) {
                            z.d(0, 0, false, false);
                        }
                    }
                    c0080d0.s = z;
                }
                c0080d0.u = null;
                return;
            case 1:
                ((C0199j0) obj).a = obj2;
                return;
            case 2:
                ((Application) obj).unregisterActivityLifecycleCallbacks((C0199j0) obj2);
                return;
            case 3:
                try {
                    Method method = AbstractC0219k0.d;
                    if (method != null) {
                        method.invoke(obj, obj2, Boolean.FALSE, "AppCompat recreation");
                    } else {
                        AbstractC0219k0.e.invoke(obj, obj2, Boolean.FALSE);
                    }
                    return;
                } catch (RuntimeException e) {
                    if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                        throw e;
                    }
                    return;
                } catch (Throwable th) {
                    Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
                    return;
                }
            case 4:
                Ha ha = (Ha) ((C) obj).b;
                if (ha != null) {
                    ha.i0((Typeface) obj2);
                    return;
                }
                return;
            case 5:
                ((E7) obj).a(obj2);
                return;
            default:
                Fh fh = ((SwipeDismissBehavior) obj2).a;
                if (fh != null && fh.f()) {
                    WeakHashMap weakHashMap = Dh.a;
                    ((View) obj).postOnAnimation(this);
                    return;
                }
                return;
        }
    }

    public RunnableC0040b0(SwipeDismissBehavior swipeDismissBehavior, View view, boolean z) {
        this.a = 6;
        this.c = swipeDismissBehavior;
        this.b = view;
    }

    public RunnableC0040b0(C0080d0 c0080d0, Z z) {
        this.a = 0;
        this.c = c0080d0;
        this.b = z;
    }
}
