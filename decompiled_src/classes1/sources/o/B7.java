package o;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class B7 implements B6 {
    public final Context a;
    public final A7 b;
    public final C0424u6 c;
    public final Object d;
    public Handler e;

    /* renamed from: f, reason: collision with root package name */
    public ThreadPoolExecutor f72f;
    public ThreadPoolExecutor g;
    public L1 h;

    public B7(Context context, A7 a7) {
        C0424u6 c0424u6 = C7.d;
        this.d = new Object();
        Ha.g(context, "Context cannot be null");
        this.a = context.getApplicationContext();
        this.b = a7;
        this.c = c0424u6;
    }

    public final void a() {
        synchronized (this.d) {
            try {
                this.h = null;
                Handler handler = this.e;
                if (handler != null) {
                    handler.removeCallbacks(null);
                }
                this.e = null;
                ThreadPoolExecutor threadPoolExecutor = this.g;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f72f = null;
                this.g = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final L7 b() {
        try {
            C0424u6 c0424u6 = this.c;
            Context context = this.a;
            A7 a7 = this.b;
            c0424u6.getClass();
            Object[] objArr = {a7};
            ArrayList arrayList = new ArrayList(1);
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            arrayList.add(obj);
            I0 a = AbstractC0523z7.a(context, Collections.unmodifiableList(arrayList));
            int i = a.a;
            if (i == 0) {
                L7[] l7Arr = (L7[]) ((List) a.b).get(0);
                if (l7Arr != null && l7Arr.length != 0) {
                    return l7Arr[0];
                }
                throw new RuntimeException("fetchFonts failed (empty result)");
            }
            throw new RuntimeException(AbstractC0304o5.e("fetchFonts failed (", i, ")"));
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("provider not found", e);
        }
    }

    @Override // o.B6
    public final void f(L1 l1) {
        synchronized (this.d) {
            this.h = l1;
        }
        synchronized (this.d) {
            try {
                if (this.h != null) {
                    if (this.f72f == null) {
                        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadFactoryC0442v4("emojiCompat"));
                        threadPoolExecutor.allowCoreThreadTimeOut(true);
                        this.g = threadPoolExecutor;
                        this.f72f = threadPoolExecutor;
                    }
                    this.f72f.execute(new RunnableC0180i0(8, this));
                }
            } finally {
            }
        }
    }
}
