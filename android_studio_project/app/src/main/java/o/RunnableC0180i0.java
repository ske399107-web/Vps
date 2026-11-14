package o;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Trace;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.ffrt.proxyread.HudAccessService;
import com.ffrt.proxyread.WirelessPair;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.android.material.textfield.TextInputLayout;
import io.github.muntashirakon.adb.AdbConnection;
import java.lang.reflect.Method;
import java.nio.MappedByteBuffer;

/* renamed from: o.i0, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class RunnableC0180i0 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ RunnableC0180i0(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [int] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [android.os.Handler] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v6 */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        Object obj;
        boolean z2 = true;
        switch (this.a) {
            case 0:
                Activity activity = (Activity) this.b;
                if (!activity.isFinishing()) {
                    ?? r5 = Build.VERSION.SDK_INT;
                    if (r5 >= 28) {
                        Class cls = AbstractC0219k0.a;
                        activity.recreate();
                        return;
                    }
                    Class cls2 = AbstractC0219k0.a;
                    ?? r6 = 27;
                    ?? r7 = 26;
                    if (r5 != 26 && r5 != 27) {
                        z = false;
                    } else {
                        z = true;
                    }
                    Method method = AbstractC0219k0.f241f;
                    if ((!z || method != null) && (AbstractC0219k0.e != null || AbstractC0219k0.d != null)) {
                        try {
                            Object obj2 = AbstractC0219k0.c.get(activity);
                            if (obj2 != null && (obj = AbstractC0219k0.b.get(activity)) != null) {
                                Application application = activity.getApplication();
                                C0199j0 c0199j0 = new C0199j0(activity);
                                application.registerActivityLifecycleCallbacks(c0199j0);
                                Handler handler = AbstractC0219k0.g;
                                handler.post(new RunnableC0040b0(c0199j0, 1, obj2));
                                if (r5 != 26 && r5 != 27) {
                                    z2 = false;
                                }
                                try {
                                    if (z2) {
                                        try {
                                            Boolean bool = Boolean.FALSE;
                                            r5 = handler;
                                            r6 = c0199j0;
                                            r7 = application;
                                            method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                                        } catch (Throwable th) {
                                            th = th;
                                            Handler handler2 = handler;
                                            C0199j0 c0199j02 = c0199j0;
                                            Application application2 = application;
                                            handler2.post(new RunnableC0040b0(application2, 2, c0199j02));
                                            throw th;
                                        }
                                    } else {
                                        r5 = handler;
                                        r6 = c0199j0;
                                        r7 = application;
                                        activity.recreate();
                                    }
                                    r5.post(new RunnableC0040b0((Object) r7, 2, (Object) r6));
                                    return;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            }
                        } catch (Throwable unused) {
                        }
                    }
                    activity.recreate();
                    return;
                }
                return;
            case 1:
                ((AdbConnection) this.b).lambda$createConnectionThread$0();
                return;
            case 2:
                ((CarouselLayoutManager) this.b).l0();
                return;
            case 3:
                ((C0024a4) this.b).t(true);
                return;
            case 4:
                ((U0) this.b).invalidateOptionsMenu();
                return;
            case 5:
                ExecutorC0382s4 executorC0382s4 = (ExecutorC0382s4) this.b;
                Runnable runnable = executorC0382s4.b;
                if (runnable != null) {
                    runnable.run();
                    executorC0382s4.b = null;
                    return;
                }
                return;
            case 6:
                DialogC0422u4.a((DialogC0422u4) this.b);
                return;
            case 7:
                C0364r6 c0364r6 = (C0364r6) this.b;
                boolean isPopupShowing = c0364r6.h.isPopupShowing();
                c0364r6.t(isPopupShowing);
                c0364r6.m = isPopupShowing;
                return;
            case 8:
                B7 b7 = (B7) this.b;
                synchronized (b7.d) {
                    try {
                        if (b7.h != null) {
                            try {
                                L7 b = b7.b();
                                int i = b.e;
                                if (i == 2) {
                                    synchronized (b7.d) {
                                    }
                                }
                                if (i == 0) {
                                    try {
                                        int i2 = AbstractC0335pg.a;
                                        Trace.beginSection("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                                        C0424u6 c0424u6 = b7.c;
                                        Context context = b7.a;
                                        c0424u6.getClass();
                                        L7[] l7Arr = {b};
                                        Ha ha = Fg.a;
                                        Ha.a("TypefaceCompat.createFromFontInfo");
                                        try {
                                            Typeface u = Fg.a.u(context, l7Arr, 0);
                                            Trace.endSection();
                                            MappedByteBuffer f0 = Ha.f0(b7.a, b.a);
                                            if (f0 != null && u != null) {
                                                try {
                                                    Trace.beginSection("EmojiCompat.MetadataRepo.create");
                                                    H5 h5 = new H5(u, Ha.l0(f0));
                                                    Trace.endSection();
                                                    synchronized (b7.d) {
                                                        try {
                                                            L1 l1 = b7.h;
                                                            if (l1 != null) {
                                                                l1.N(h5);
                                                            }
                                                        } finally {
                                                        }
                                                    }
                                                    b7.a();
                                                    return;
                                                } finally {
                                                    int i3 = AbstractC0335pg.a;
                                                }
                                            }
                                            throw new RuntimeException("Unable to open file.");
                                        } finally {
                                            Trace.endSection();
                                        }
                                    } finally {
                                    }
                                }
                                throw new RuntimeException("fetchFonts result is not OK. (" + i + ")");
                            } catch (Throwable th3) {
                                synchronized (b7.d) {
                                    try {
                                        L1 l12 = b7.h;
                                        if (l12 != null) {
                                            l12.K(th3);
                                        }
                                        b7.a();
                                        return;
                                    } finally {
                                    }
                                }
                            }
                        }
                        return;
                    } finally {
                    }
                }
            case 9:
                if (AbstractC0149g9.d) {
                    AbstractC0149g9.b();
                }
                AbstractC0149g9.a((HudAccessService) this.b);
                return;
            case 10:
                Tc tc = (Tc) this.b;
                AbstractC0487x9.o(tc, "this$0");
                int i4 = tc.b;
                androidx.lifecycle.a aVar = tc.f149f;
                if (i4 == 0) {
                    tc.c = true;
                    aVar.d(L9.ON_PAUSE);
                }
                if (tc.a == 0 && tc.c) {
                    aVar.d(L9.ON_STOP);
                    tc.d = true;
                    return;
                }
                return;
            case 11:
                ((AbstractC0173hd) this.b).m();
                return;
            case 12:
                C0222k3 c0222k3 = (C0222k3) this.b;
                c0222k3.c = false;
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) c0222k3.e;
                Fh fh = sideSheetBehavior.i;
                if (fh != null && fh.f()) {
                    c0222k3.a(c0222k3.b);
                    return;
                } else {
                    if (sideSheetBehavior.h == 2) {
                        sideSheetBehavior.r(c0222k3.b);
                        return;
                    }
                    return;
                }
            case 13:
                ((TextInputLayout) this.b).d.requestLayout();
                return;
            case 14:
                View view = (View) this.b;
                ((InputMethodManager) view.getContext().getSystemService(InputMethodManager.class)).showSoftInput(view, 1);
                return;
            default:
                WirelessPair.push$lambda$0((String) this.b);
                return;
        }
    }
}
