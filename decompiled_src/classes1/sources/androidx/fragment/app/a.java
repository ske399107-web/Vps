package androidx.fragment.app;

import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AndroidRuntimeException;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.lifecycle.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;
import o.AbstractC0304o5;
import o.AbstractC0347q8;
import o.AbstractC0415th;
import o.C0055bf;
import o.C0088d8;
import o.C0188i8;
import o.C0227k8;
import o.C0267m8;
import o.C0287n8;
import o.C0327p8;
import o.C0329pa;
import o.C0386s8;
import o.Dh;
import o.H1;
import o.H5;
import o.InterfaceC0247l8;
import o.K5;
import o.L9;
import o.M9;
import o.P7;
import o.P9;
import o.R7;
import o.R9;
import o.T7;
import o.U0;
import o.V7;
import o.Ve;
import o.ViewOnAttachStateChangeListenerC0481x3;
import o.Ze;
import org.bouncycastle.asn1.isismtt.ocsp.RequestedCertificate;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class a {
    public final H1 a;
    public final H5 b;
    public final T7 c;
    public boolean d = false;
    public int e = -1;

    public a(H1 h1, H5 h5, T7 t7) {
        this.a = h1;
        this.b = h5;
        this.c = t7;
    }

    public final void a() {
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        T7 t7 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + t7);
        }
        Bundle bundle = t7.b;
        t7.t.L();
        t7.a = 3;
        t7.C = false;
        t7.p();
        if (t7.C) {
            if (Log.isLoggable("FragmentManager", 3)) {
                Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + t7);
            }
            View view = t7.E;
            if (view != null) {
                Bundle bundle2 = t7.b;
                SparseArray<Parcelable> sparseArray = t7.c;
                if (sparseArray != null) {
                    view.restoreHierarchyState(sparseArray);
                    t7.c = null;
                }
                if (t7.E != null) {
                    t7.N.d.b(t7.d);
                    t7.d = null;
                }
                t7.C = false;
                t7.A(bundle2);
                if (t7.C) {
                    if (t7.E != null) {
                        t7.N.c(L9.ON_CREATE);
                    }
                } else {
                    throw new AndroidRuntimeException("Fragment " + t7 + " did not call through to super.onViewStateRestored()");
                }
            }
            t7.b = null;
            C0188i8 c0188i8 = t7.t;
            c0188i8.E = false;
            c0188i8.F = false;
            c0188i8.L.h = false;
            c0188i8.u(4);
            this.a.c(false);
            return;
        }
        throw new AndroidRuntimeException("Fragment " + t7 + " did not call through to super.onActivityCreated()");
    }

    public final void b() {
        View view;
        View view2;
        H5 h5 = this.b;
        h5.getClass();
        T7 t7 = this.c;
        ViewGroup viewGroup = t7.D;
        int i = -1;
        if (viewGroup != null) {
            ArrayList arrayList = (ArrayList) h5.a;
            int indexOf = arrayList.indexOf(t7);
            int i2 = indexOf - 1;
            while (true) {
                if (i2 < 0) {
                    while (true) {
                        indexOf++;
                        if (indexOf >= arrayList.size()) {
                            break;
                        }
                        T7 t72 = (T7) arrayList.get(indexOf);
                        if (t72.D == viewGroup && (view = t72.E) != null) {
                            i = viewGroup.indexOfChild(view);
                            break;
                        }
                    }
                } else {
                    T7 t73 = (T7) arrayList.get(i2);
                    if (t73.D == viewGroup && (view2 = t73.E) != null) {
                        i = viewGroup.indexOfChild(view2) + 1;
                        break;
                    }
                    i2--;
                }
            }
        }
        t7.D.addView(t7.E, i);
    }

    public final void c() {
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        T7 t7 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "moveto ATTACHED: " + t7);
        }
        T7 t72 = t7.g;
        a aVar = null;
        H5 h5 = this.b;
        if (t72 != null) {
            a aVar2 = (a) ((HashMap) h5.b).get(t72.e);
            if (aVar2 != null) {
                t7.h = t7.g.e;
                t7.g = null;
                aVar = aVar2;
            } else {
                throw new IllegalStateException("Fragment " + t7 + " declared target fragment " + t7.g + " that does not belong to this FragmentManager!");
            }
        } else {
            String str = t7.h;
            if (str != null && (aVar = (a) ((HashMap) h5.b).get(str)) == null) {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(t7);
                sb.append(" declared target fragment ");
                throw new IllegalStateException(Ve.k(sb, t7.h, " that does not belong to this FragmentManager!"));
            }
        }
        if (aVar != null) {
            aVar.k();
        }
        C0188i8 c0188i8 = t7.r;
        t7.s = c0188i8.t;
        t7.u = c0188i8.v;
        H1 h1 = this.a;
        h1.i(false);
        ArrayList arrayList = t7.Q;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((P7) it.next()).a();
        }
        arrayList.clear();
        t7.t.b(t7.s, t7.c(), t7);
        t7.a = 0;
        t7.C = false;
        t7.r(t7.s.h);
        if (t7.C) {
            Iterator it2 = t7.r.m.iterator();
            while (it2.hasNext()) {
                ((InterfaceC0247l8) it2.next()).a();
            }
            C0188i8 c0188i82 = t7.t;
            c0188i82.E = false;
            c0188i82.F = false;
            c0188i82.L.h = false;
            c0188i82.u(0);
            h1.d(false);
            return;
        }
        throw new AndroidRuntimeException("Fragment " + t7 + " did not call through to super.onAttach()");
    }

    public final int d() {
        C0055bf c0055bf;
        T7 t7 = this.c;
        if (t7.r == null) {
            return t7.a;
        }
        int i = this.e;
        int ordinal = t7.L.ordinal();
        int i2 = 0;
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        i = Math.min(i, -1);
                    }
                } else {
                    i = Math.min(i, 5);
                }
            } else {
                i = Math.min(i, 1);
            }
        } else {
            i = Math.min(i, 0);
        }
        if (t7.m) {
            if (t7.n) {
                i = Math.max(this.e, 2);
                View view = t7.E;
                if (view != null && view.getParent() == null) {
                    i = Math.min(i, 2);
                }
            } else {
                i = this.e < 4 ? Math.min(i, t7.a) : Math.min(i, 1);
            }
        }
        if (!t7.k) {
            i = Math.min(i, 1);
        }
        ViewGroup viewGroup = t7.D;
        if (viewGroup != null) {
            K5 f2 = K5.f(viewGroup, t7.j().E());
            f2.getClass();
            C0055bf d = f2.d(t7);
            if (d != null) {
                i2 = d.b;
            }
            Iterator it = f2.c.iterator();
            while (true) {
                if (it.hasNext()) {
                    c0055bf = (C0055bf) it.next();
                    if (c0055bf.c.equals(t7) && !c0055bf.f186f) {
                        break;
                    }
                } else {
                    c0055bf = null;
                    break;
                }
            }
            if (c0055bf != null && (i2 == 0 || i2 == 1)) {
                i2 = c0055bf.b;
            }
        }
        if (i2 == 2) {
            i = Math.min(i, 6);
        } else if (i2 == 3) {
            i = Math.max(i, 3);
        } else if (t7.l) {
            if (t7.o()) {
                i = Math.min(i, 1);
            } else {
                i = Math.min(i, -1);
            }
        }
        if (t7.F && t7.a < 5) {
            i = Math.min(i, 4);
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + i + " for " + t7);
        }
        return i;
    }

    public final void e() {
        Parcelable parcelable;
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        final T7 t7 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "moveto CREATED: " + t7);
        }
        if (!t7.J) {
            H1 h1 = this.a;
            h1.k(false);
            Bundle bundle = t7.b;
            t7.t.L();
            t7.a = 1;
            t7.C = false;
            t7.M.a(new P9() { // from class: androidx.fragment.app.Fragment$6
                @Override // o.P9
                public final void b(R9 r9, L9 l9) {
                    View view;
                    if (l9 == L9.ON_STOP && (view = T7.this.E) != null) {
                        view.cancelPendingInputEvents();
                    }
                }
            });
            t7.P.b(bundle);
            t7.s(bundle);
            t7.J = true;
            if (t7.C) {
                t7.M.d(L9.ON_CREATE);
                h1.e(false);
                return;
            } else {
                throw new AndroidRuntimeException("Fragment " + t7 + " did not call through to super.onCreate()");
            }
        }
        Bundle bundle2 = t7.b;
        if (bundle2 != null && (parcelable = bundle2.getParcelable("android:support:fragments")) != null) {
            t7.t.R(parcelable);
            t7.t.j();
        }
        t7.a = 1;
    }

    public final void f() {
        String str;
        int i = 2;
        T7 t7 = this.c;
        if (t7.m) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + t7);
        }
        LayoutInflater w = t7.w(t7.b);
        ViewGroup viewGroup = t7.D;
        if (viewGroup == null) {
            int i2 = t7.w;
            if (i2 != 0) {
                if (i2 != -1) {
                    viewGroup = (ViewGroup) t7.r.u.L(i2);
                    if (viewGroup == null) {
                        if (!t7.f147o) {
                            try {
                                str = t7.C().getResources().getResourceName(t7.w);
                            } catch (Resources.NotFoundException unused) {
                                str = "unknown";
                            }
                            throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(t7.w) + " (" + str + ") for fragment " + t7);
                        }
                    } else if (!(viewGroup instanceof FragmentContainerView)) {
                        C0327p8 c0327p8 = AbstractC0347q8.a;
                        AbstractC0347q8.b(new C0267m8(t7, "Attempting to add fragment " + t7 + " to container " + viewGroup + " which is not a FragmentContainerView"));
                        AbstractC0347q8.a(t7).getClass();
                    }
                } else {
                    throw new IllegalArgumentException("Cannot create fragment " + t7 + " for a container view with no id");
                }
            } else {
                viewGroup = null;
            }
        }
        t7.D = viewGroup;
        t7.B(w, viewGroup, t7.b);
        View view = t7.E;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            t7.E.setTag(2131230926, t7);
            if (viewGroup != null) {
                b();
            }
            if (t7.y) {
                t7.E.setVisibility(8);
            }
            View view2 = t7.E;
            WeakHashMap weakHashMap = Dh.a;
            if (view2.isAttachedToWindow()) {
                AbstractC0415th.c(t7.E);
            } else {
                View view3 = t7.E;
                view3.addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC0481x3(i, view3));
            }
            t7.t.u(2);
            this.a.p(false);
            int visibility = t7.E.getVisibility();
            t7.f().j = t7.E.getAlpha();
            if (t7.D != null && visibility == 0) {
                View findFocus = t7.E.findFocus();
                if (findFocus != null) {
                    t7.f().k = findFocus;
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + t7);
                    }
                }
                t7.E.setAlpha(0.0f);
            }
        }
        t7.a = 2;
    }

    public final void g() {
        boolean z;
        boolean z2;
        boolean z3;
        T7 c;
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        T7 t7 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "movefrom CREATED: " + t7);
        }
        if (t7.l && !t7.o()) {
            z = true;
        } else {
            z = false;
        }
        H5 h5 = this.b;
        if (z) {
        }
        if (!z) {
            C0227k8 c0227k8 = (C0227k8) h5.d;
            if (!c0227k8.c.containsKey(t7.e) || !c0227k8.f243f) {
                z3 = true;
            } else {
                z3 = c0227k8.g;
            }
            if (!z3) {
                String str = t7.h;
                if (str != null && (c = h5.c(str)) != null && c.A) {
                    t7.g = c;
                }
                t7.a = 0;
                return;
            }
        }
        V7 v7 = t7.s;
        if (v7 != null) {
            z2 = ((C0227k8) h5.d).g;
        } else {
            U0 u0 = v7.h;
            if (u0 != null) {
                z2 = !u0.isChangingConfigurations();
            } else {
                z2 = true;
            }
        }
        if (z || z2) {
            ((C0227k8) h5.d).b(t7);
        }
        t7.t.l();
        t7.M.d(L9.ON_DESTROY);
        t7.a = 0;
        t7.J = false;
        t7.C = true;
        this.a.f(false);
        Iterator it = h5.f().iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar != null) {
                String str2 = t7.e;
                T7 t72 = aVar.c;
                if (str2.equals(t72.h)) {
                    t72.g = t7;
                    t72.h = null;
                }
            }
        }
        String str3 = t7.h;
        if (str3 != null) {
            t7.g = h5.c(str3);
        }
        h5.j(this);
    }

    public final void h() {
        View view;
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        T7 t7 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + t7);
        }
        ViewGroup viewGroup = t7.D;
        if (viewGroup != null && (view = t7.E) != null) {
            viewGroup.removeView(view);
        }
        t7.t.u(1);
        if (t7.E != null) {
            C0386s8 c0386s8 = t7.N;
            c0386s8.f();
            if (c0386s8.c.c.compareTo(M9.c) >= 0) {
                t7.N.c(L9.ON_DESTROY);
            }
        }
        t7.a = 1;
        t7.C = false;
        t7.u();
        if (t7.C) {
            Ze ze = ((C0329pa) H1.v(t7).c).c;
            if (ze.c <= 0) {
                t7.p = false;
                this.a.q(false);
                t7.D = null;
                t7.E = null;
                t7.N = null;
                b bVar = t7.O;
                bVar.getClass();
                b.a("setValue");
                bVar.g++;
                bVar.e = null;
                bVar.c(null);
                t7.n = false;
                return;
            }
            ze.b[0].getClass();
            throw new ClassCastException();
        }
        throw new AndroidRuntimeException("Fragment " + t7 + " did not call through to super.onDestroyView()");
    }

    public final void i() {
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        T7 t7 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + t7);
        }
        t7.a = -1;
        t7.C = false;
        t7.v();
        if (t7.C) {
            C0188i8 c0188i8 = t7.t;
            if (!c0188i8.G) {
                c0188i8.l();
                t7.t = new C0188i8();
            }
            this.a.g(false);
            t7.a = -1;
            t7.s = null;
            t7.u = null;
            t7.r = null;
            if (!t7.l || t7.o()) {
                C0227k8 c0227k8 = (C0227k8) this.b.d;
                boolean z = true;
                if (c0227k8.c.containsKey(t7.e) && c0227k8.f243f) {
                    z = c0227k8.g;
                }
                if (!z) {
                    return;
                }
            }
            if (Log.isLoggable("FragmentManager", 3)) {
                Log.d("FragmentManager", "initState called for fragment: " + t7);
            }
            t7.l();
            return;
        }
        throw new AndroidRuntimeException("Fragment " + t7 + " did not call through to super.onDetach()");
    }

    public final void j() {
        T7 t7 = this.c;
        if (t7.m && t7.n && !t7.p) {
            if (Log.isLoggable("FragmentManager", 3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + t7);
            }
            t7.B(t7.w(t7.b), null, t7.b);
            View view = t7.E;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                t7.E.setTag(2131230926, t7);
                if (t7.y) {
                    t7.E.setVisibility(8);
                }
                t7.t.u(2);
                this.a.p(false);
                t7.a = 2;
            }
        }
    }

    public final void k() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        H5 h5 = this.b;
        boolean z = this.d;
        T7 t7 = this.c;
        if (z) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + t7);
                return;
            }
            return;
        }
        try {
            this.d = true;
            boolean z2 = false;
            while (true) {
                int d = d();
                int i = t7.a;
                if (d != i) {
                    if (d > i) {
                        switch (i + 1) {
                            case 0:
                                c();
                                break;
                            case 1:
                                e();
                                break;
                            case 2:
                                j();
                                f();
                                break;
                            case 3:
                                a();
                                break;
                            case 4:
                                if (t7.E != null && (viewGroup3 = t7.D) != null) {
                                    K5 f2 = K5.f(viewGroup3, t7.j().E());
                                    int b = AbstractC0304o5.b(t7.E.getVisibility());
                                    f2.getClass();
                                    if (Log.isLoggable("FragmentManager", 2)) {
                                        Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + t7);
                                    }
                                    f2.a(b, 2, this);
                                }
                                t7.a = 4;
                                break;
                            case 5:
                                p();
                                break;
                            case 6:
                                t7.a = 6;
                                break;
                            case 7:
                                n();
                                break;
                        }
                    } else {
                        switch (i - 1) {
                            case RequestedCertificate.certificate /* -1 */:
                                i();
                                break;
                            case 0:
                                g();
                                break;
                            case 1:
                                h();
                                t7.a = 1;
                                break;
                            case 2:
                                t7.n = false;
                                t7.a = 2;
                                break;
                            case 3:
                                if (Log.isLoggable("FragmentManager", 3)) {
                                    Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + t7);
                                }
                                if (t7.E != null && t7.c == null) {
                                    o();
                                }
                                if (t7.E != null && (viewGroup2 = t7.D) != null) {
                                    K5 f3 = K5.f(viewGroup2, t7.j().E());
                                    f3.getClass();
                                    if (Log.isLoggable("FragmentManager", 2)) {
                                        Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + t7);
                                    }
                                    f3.a(1, 3, this);
                                }
                                t7.a = 3;
                                break;
                            case 4:
                                q();
                                break;
                            case 5:
                                t7.a = 5;
                                break;
                            case 6:
                                l();
                                break;
                        }
                    }
                    z2 = true;
                } else {
                    if (!z2 && i == -1 && t7.l && !t7.o()) {
                        if (Log.isLoggable("FragmentManager", 3)) {
                            Log.d("FragmentManager", "Cleaning up state of never attached fragment: " + t7);
                        }
                        ((C0227k8) h5.d).b(t7);
                        h5.j(this);
                        if (Log.isLoggable("FragmentManager", 3)) {
                            Log.d("FragmentManager", "initState called for fragment: " + t7);
                        }
                        t7.l();
                    }
                    if (t7.I) {
                        if (t7.E != null && (viewGroup = t7.D) != null) {
                            K5 f4 = K5.f(viewGroup, t7.j().E());
                            if (t7.y) {
                                f4.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + t7);
                                }
                                f4.a(3, 1, this);
                            } else {
                                f4.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + t7);
                                }
                                f4.a(2, 1, this);
                            }
                        }
                        C0188i8 c0188i8 = t7.r;
                        if (c0188i8 != null && t7.k && C0188i8.G(t7)) {
                            c0188i8.D = true;
                        }
                        t7.I = false;
                        t7.t.o();
                    }
                    this.d = false;
                    return;
                }
            }
        } catch (Throwable th) {
            this.d = false;
            throw th;
        }
    }

    public final void l() {
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        T7 t7 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "movefrom RESUMED: " + t7);
        }
        t7.t.u(5);
        if (t7.E != null) {
            t7.N.c(L9.ON_PAUSE);
        }
        t7.M.d(L9.ON_PAUSE);
        t7.a = 6;
        t7.C = true;
        this.a.h(false);
    }

    public final void m(ClassLoader classLoader) {
        T7 t7 = this.c;
        Bundle bundle = t7.b;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        t7.c = t7.b.getSparseParcelableArray("android:view_state");
        t7.d = t7.b.getBundle("android:view_registry_state");
        String string = t7.b.getString("android:target_state");
        t7.h = string;
        if (string != null) {
            t7.i = t7.b.getInt("android:target_req_state", 0);
        }
        boolean z = t7.b.getBoolean("android:user_visible_hint", true);
        t7.G = z;
        if (!z) {
            t7.F = true;
        }
    }

    public final void n() {
        View view;
        String str;
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        T7 t7 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "moveto RESUMED: " + t7);
        }
        R7 r7 = t7.H;
        if (r7 == null) {
            view = null;
        } else {
            view = r7.k;
        }
        if (view != null) {
            if (view != t7.E) {
                for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                    if (parent != t7.E) {
                    }
                }
            }
            boolean requestFocus = view.requestFocus();
            if (Log.isLoggable("FragmentManager", 2)) {
                StringBuilder sb = new StringBuilder("requestFocus: Restoring focused view ");
                sb.append(view);
                sb.append(" ");
                if (requestFocus) {
                    str = "succeeded";
                } else {
                    str = "failed";
                }
                sb.append(str);
                sb.append(" on Fragment ");
                sb.append(t7);
                sb.append(" resulting in focused view ");
                sb.append(t7.E.findFocus());
                Log.v("FragmentManager", sb.toString());
            }
        }
        t7.f().k = null;
        t7.t.L();
        t7.t.z(true);
        t7.a = 7;
        t7.C = true;
        androidx.lifecycle.a aVar = t7.M;
        L9 l9 = L9.ON_RESUME;
        aVar.d(l9);
        if (t7.E != null) {
            t7.N.c.d(l9);
        }
        C0188i8 c0188i8 = t7.t;
        c0188i8.E = false;
        c0188i8.F = false;
        c0188i8.L.h = false;
        c0188i8.u(7);
        this.a.l(false);
        t7.b = null;
        t7.c = null;
        t7.d = null;
    }

    public final void o() {
        T7 t7 = this.c;
        if (t7.E == null) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Saving view state for fragment " + t7 + " with view " + t7.E);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        t7.E.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            t7.c = sparseArray;
        }
        Bundle bundle = new Bundle();
        t7.N.d.c(bundle);
        if (!bundle.isEmpty()) {
            t7.d = bundle;
        }
    }

    public final void p() {
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        T7 t7 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "moveto STARTED: " + t7);
        }
        t7.t.L();
        t7.t.z(true);
        t7.a = 5;
        t7.C = false;
        t7.y();
        if (t7.C) {
            androidx.lifecycle.a aVar = t7.M;
            L9 l9 = L9.ON_START;
            aVar.d(l9);
            if (t7.E != null) {
                t7.N.c.d(l9);
            }
            C0188i8 c0188i8 = t7.t;
            c0188i8.E = false;
            c0188i8.F = false;
            c0188i8.L.h = false;
            c0188i8.u(5);
            this.a.n(false);
            return;
        }
        throw new AndroidRuntimeException("Fragment " + t7 + " did not call through to super.onStart()");
    }

    public final void q() {
        boolean isLoggable = Log.isLoggable("FragmentManager", 3);
        T7 t7 = this.c;
        if (isLoggable) {
            Log.d("FragmentManager", "movefrom STARTED: " + t7);
        }
        C0188i8 c0188i8 = t7.t;
        c0188i8.F = true;
        c0188i8.L.h = true;
        c0188i8.u(4);
        if (t7.E != null) {
            t7.N.c(L9.ON_STOP);
        }
        t7.M.d(L9.ON_STOP);
        t7.a = 4;
        t7.C = false;
        t7.z();
        if (t7.C) {
            this.a.o(false);
            return;
        }
        throw new AndroidRuntimeException("Fragment " + t7 + " did not call through to super.onStop()");
    }

    public a(H1 h1, H5 h5, ClassLoader classLoader, C0088d8 c0088d8, C0287n8 c0287n8) {
        this.a = h1;
        this.b = h5;
        T7 a = c0088d8.a(c0287n8.a);
        Bundle bundle = c0287n8.j;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        a.F(bundle);
        a.e = c0287n8.b;
        a.m = c0287n8.c;
        a.f147o = true;
        a.v = c0287n8.d;
        a.w = c0287n8.e;
        a.x = c0287n8.f260f;
        a.A = c0287n8.g;
        a.l = c0287n8.h;
        a.z = c0287n8.i;
        a.y = c0287n8.k;
        a.L = M9.values()[c0287n8.l];
        Bundle bundle2 = c0287n8.m;
        if (bundle2 != null) {
            a.b = bundle2;
        } else {
            a.b = new Bundle();
        }
        this.c = a;
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Instantiated fragment " + a);
        }
    }

    public a(H1 h1, H5 h5, T7 t7, C0287n8 c0287n8) {
        this.a = h1;
        this.b = h5;
        this.c = t7;
        t7.c = null;
        t7.d = null;
        t7.q = 0;
        t7.n = false;
        t7.k = false;
        T7 t72 = t7.g;
        t7.h = t72 != null ? t72.e : null;
        t7.g = null;
        Bundle bundle = c0287n8.m;
        if (bundle != null) {
            t7.b = bundle;
        } else {
            t7.b = new Bundle();
        }
    }
}
