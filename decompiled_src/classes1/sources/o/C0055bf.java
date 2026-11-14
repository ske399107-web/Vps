package o;

import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: o.bf, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0055bf {
    public int a;
    public int b;
    public final T7 c;
    public final ArrayList d = new ArrayList();
    public final HashSet e = new HashSet();

    /* renamed from: f, reason: collision with root package name */
    public boolean f186f = false;
    public boolean g = false;
    public final androidx.fragment.app.a h;

    public C0055bf(int i, int i2, androidx.fragment.app.a aVar, C0381s3 c0381s3) {
        this.a = i;
        this.b = i2;
        this.c = aVar.c;
        c0381s3.a(new C(27, this));
        this.h = aVar;
    }

    public final void a() {
        if (this.f186f) {
            return;
        }
        this.f186f = true;
        HashSet hashSet = this.e;
        if (hashSet.isEmpty()) {
            b();
            return;
        }
        Iterator it = new ArrayList(hashSet).iterator();
        while (it.hasNext()) {
            C0381s3 c0381s3 = (C0381s3) it.next();
            synchronized (c0381s3) {
                try {
                    if (!c0381s3.a) {
                        c0381s3.a = true;
                        c0381s3.c = true;
                        InterfaceC0361r3 interfaceC0361r3 = c0381s3.b;
                        if (interfaceC0361r3 != null) {
                            try {
                                interfaceC0361r3.t();
                            } catch (Throwable th) {
                                synchronized (c0381s3) {
                                    c0381s3.c = false;
                                    c0381s3.notifyAll();
                                    throw th;
                                }
                            }
                        }
                        synchronized (c0381s3) {
                            c0381s3.c = false;
                            c0381s3.notifyAll();
                        }
                    }
                } finally {
                }
            }
        }
    }

    public final void b() {
        if (!this.g) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.g = true;
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }
        this.h.k();
    }

    public final void c(int i, int i2) {
        int C = Ve.C(i2);
        T7 t7 = this.c;
        if (C != 0) {
            if (C != 1) {
                if (C == 2) {
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: For fragment " + t7 + " mFinalState = " + AbstractC0304o5.E(this.a) + " -> REMOVED. mLifecycleImpact  = " + AbstractC0304o5.D(this.b) + " to REMOVING.");
                    }
                    this.a = 1;
                    this.b = 3;
                    return;
                }
                return;
            }
            if (this.a == 1) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + t7 + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + AbstractC0304o5.D(this.b) + " to ADDING.");
                }
                this.a = 2;
                this.b = 2;
                return;
            }
            return;
        }
        if (this.a != 1) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "SpecialEffectsController: For fragment " + t7 + " mFinalState = " + AbstractC0304o5.E(this.a) + " -> " + AbstractC0304o5.E(i) + ". ");
            }
            this.a = i;
        }
    }

    public final void d() {
        float f2;
        int i = this.b;
        androidx.fragment.app.a aVar = this.h;
        if (i == 2) {
            T7 t7 = aVar.c;
            View findFocus = t7.E.findFocus();
            if (findFocus != null) {
                t7.f().k = findFocus;
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + t7);
                }
            }
            View D = this.c.D();
            if (D.getParent() == null) {
                aVar.b();
                D.setAlpha(0.0f);
            }
            if (D.getAlpha() == 0.0f && D.getVisibility() == 0) {
                D.setVisibility(4);
            }
            R7 r7 = t7.H;
            if (r7 == null) {
                f2 = 1.0f;
            } else {
                f2 = r7.j;
            }
            D.setAlpha(f2);
            return;
        }
        if (i == 3) {
            T7 t72 = aVar.c;
            View D2 = t72.D();
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "Clearing focus " + D2.findFocus() + " on view " + D2 + " for Fragment " + t72);
            }
            D2.clearFocus();
        }
    }

    public final String toString() {
        return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + AbstractC0304o5.E(this.a) + "} {mLifecycleImpact = " + AbstractC0304o5.D(this.b) + "} {mFragment = " + this.c + "}";
    }
}
