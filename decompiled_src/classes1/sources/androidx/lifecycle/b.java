package androidx.lifecycle;

import android.os.Looper;
import android.util.Log;
import android.view.View;
import java.util.Map;
import o.AbstractC0304o5;
import o.AbstractC0309oa;
import o.C;
import o.C0213je;
import o.C0233ke;
import o.C0273me;
import o.C0460w2;
import o.R9;
import o.X5;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class b {
    public static final Object j = new Object();
    public final Object a;
    public final C0273me b = new C0273me();
    public int c = 0;
    public boolean d;
    public volatile Object e;

    /* renamed from: f, reason: collision with root package name */
    public volatile Object f40f;
    public int g;
    public boolean h;
    public boolean i;

    public b() {
        Object obj = j;
        this.f40f = obj;
        this.e = obj;
        this.g = -1;
    }

    public static void a(String str) {
        ((C0460w2) C0460w2.D0().k).getClass();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
        } else {
            throw new IllegalStateException(AbstractC0304o5.h("Cannot invoke ", str, " on a background thread"));
        }
    }

    public final void b(AbstractC0309oa abstractC0309oa) {
        if (!abstractC0309oa.b) {
            return;
        }
        if (!abstractC0309oa.e()) {
            abstractC0309oa.c(false);
            return;
        }
        int i = abstractC0309oa.c;
        int i2 = this.g;
        if (i >= i2) {
            return;
        }
        abstractC0309oa.c = i2;
        C c = abstractC0309oa.a;
        Object obj = this.e;
        c.getClass();
        if (((R9) obj) != null) {
            X5 x5 = (X5) c.b;
            if (x5.Y) {
                View D = x5.D();
                if (D.getParent() == null) {
                    if (x5.c0 != null) {
                        if (Log.isLoggable("FragmentManager", 3)) {
                            Log.d("FragmentManager", "DialogFragment " + c + " setting the content view on " + x5.c0);
                        }
                        x5.c0.setContentView(D);
                        return;
                    }
                    return;
                }
                throw new IllegalStateException("DialogFragment can not be attached to a container view");
            }
        }
    }

    public final void c(AbstractC0309oa abstractC0309oa) {
        if (this.h) {
            this.i = true;
            return;
        }
        this.h = true;
        do {
            this.i = false;
            if (abstractC0309oa != null) {
                b(abstractC0309oa);
                abstractC0309oa = null;
            } else {
                C0273me c0273me = this.b;
                c0273me.getClass();
                C0233ke c0233ke = new C0233ke(c0273me);
                c0273me.c.put(c0233ke, Boolean.FALSE);
                while (c0233ke.hasNext()) {
                    b((AbstractC0309oa) ((Map.Entry) c0233ke.next()).getValue());
                    if (this.i) {
                        break;
                    }
                }
            }
        } while (this.i);
        this.h = false;
    }

    public final void d(C c) {
        Object obj;
        a("observeForever");
        AbstractC0309oa abstractC0309oa = new AbstractC0309oa(this, c);
        C0273me c0273me = this.b;
        C0213je a = c0273me.a(c);
        if (a != null) {
            obj = a.b;
        } else {
            C0213je c0213je = new C0213je(c, abstractC0309oa);
            c0273me.d++;
            C0213je c0213je2 = c0273me.b;
            if (c0213je2 == null) {
                c0273me.a = c0213je;
                c0273me.b = c0213je;
            } else {
                c0213je2.c = c0213je;
                c0213je.d = c0213je2;
                c0273me.b = c0213je;
            }
            obj = null;
        }
        AbstractC0309oa abstractC0309oa2 = (AbstractC0309oa) obj;
        if (!(abstractC0309oa2 instanceof LiveData$LifecycleBoundObserver)) {
            if (abstractC0309oa2 != null) {
                return;
            }
            abstractC0309oa.c(true);
            return;
        }
        throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
    }
}
