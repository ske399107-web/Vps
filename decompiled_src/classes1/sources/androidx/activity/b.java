package androidx.activity;

import android.os.Build;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import java.util.Iterator;
import java.util.ListIterator;
import o.AbstractC0487x9;
import o.C0048b8;
import o.C0132fc;
import o.C0152gc;
import o.C0172hc;
import o.C0188i8;
import o.C0211jc;
import o.C0251lc;
import o.C0480x2;
import o.M9;
import o.R9;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class b {
    public final Runnable a;
    public final C0480x2 b = new C0480x2();
    public C0048b8 c;
    public final OnBackInvokedCallback d;
    public OnBackInvokedDispatcher e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f18f;
    public boolean g;

    public b(Runnable runnable) {
        OnBackInvokedCallback a;
        this.a = runnable;
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            if (i >= 34) {
                a = C0211jc.a.a(new C0132fc(this, 0), new C0132fc(this, 1), new C0152gc(0, this), new C0152gc(1, this));
            } else {
                a = C0172hc.a.a(new C0152gc(2, this));
            }
            this.d = a;
        }
    }

    public final void a(R9 r9, C0048b8 c0048b8) {
        AbstractC0487x9.o(c0048b8, "onBackPressedCallback");
        androidx.lifecycle.a e = r9.e();
        if (e.c == M9.a) {
            return;
        }
        c0048b8.b.add(new OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(this, e, c0048b8));
        d();
        c0048b8.c = new C0251lc(0, this);
    }

    public final void b() {
        Object obj;
        C0480x2 c0480x2 = this.b;
        c0480x2.getClass();
        ListIterator listIterator = c0480x2.listIterator(c0480x2.c);
        while (true) {
            if (listIterator.hasPrevious()) {
                obj = listIterator.previous();
                if (((C0048b8) obj).a) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        C0048b8 c0048b8 = (C0048b8) obj;
        this.c = null;
        if (c0048b8 != null) {
            C0188i8 c0188i8 = c0048b8.d;
            c0188i8.z(true);
            if (c0188i8.h.a) {
                c0188i8.M();
                return;
            } else {
                c0188i8.g.b();
                return;
            }
        }
        this.a.run();
    }

    public final void c(boolean z) {
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.e;
        OnBackInvokedCallback onBackInvokedCallback = this.d;
        if (onBackInvokedDispatcher != null && onBackInvokedCallback != null) {
            C0172hc c0172hc = C0172hc.a;
            if (z && !this.f18f) {
                c0172hc.b(onBackInvokedDispatcher, 0, onBackInvokedCallback);
                this.f18f = true;
            } else if (!z && this.f18f) {
                c0172hc.c(onBackInvokedDispatcher, onBackInvokedCallback);
                this.f18f = false;
            }
        }
    }

    public final void d() {
        boolean z = this.g;
        boolean z2 = false;
        C0480x2 c0480x2 = this.b;
        if (c0480x2 == null || !c0480x2.isEmpty()) {
            Iterator<E> it = c0480x2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((C0048b8) it.next()).a) {
                    z2 = true;
                    break;
                }
            }
        }
        this.g = z2;
        if (z2 != z && Build.VERSION.SDK_INT >= 33) {
            c(z2);
        }
    }
}
