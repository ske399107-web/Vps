package o;

import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class T7 implements ComponentCallbacks, View.OnCreateContextMenuListener, R9, Mh, Z8, InterfaceC0412te {
    public static final Object S = new Object();
    public boolean A;
    public boolean C;
    public ViewGroup D;
    public View E;
    public boolean F;
    public R7 H;
    public boolean I;
    public boolean J;
    public String K;
    public androidx.lifecycle.a M;
    public C0386s8 N;
    public C0406t8 P;
    public final ArrayList Q;
    public final P7 R;
    public Bundle b;
    public SparseArray c;
    public Bundle d;

    /* renamed from: f, reason: collision with root package name */
    public Bundle f146f;
    public T7 g;
    public int i;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f147o;
    public boolean p;
    public int q;
    public C0188i8 r;
    public V7 s;
    public T7 u;
    public int v;
    public int w;
    public String x;
    public boolean y;
    public boolean z;
    public int a = -1;
    public String e = UUID.randomUUID().toString();
    public String h = null;
    public Boolean j = null;
    public C0188i8 t = new C0188i8();
    public final boolean B = true;
    public boolean G = true;
    public M9 L = M9.e;
    public final androidx.lifecycle.b O = new androidx.lifecycle.b();

    public T7() {
        new AtomicInteger();
        this.Q = new ArrayList();
        this.R = new P7(this);
        k();
    }

    public void A(Bundle bundle) {
        this.C = true;
    }

    public void B(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.t.L();
        this.p = true;
        this.N = new C0386s8(this, d());
        View t = t(layoutInflater, viewGroup);
        this.E = t;
        if (t != null) {
            this.N.f();
            Ng.s(this.E, this.N);
            View view = this.E;
            C0386s8 c0386s8 = this.N;
            AbstractC0487x9.o(view, "<this>");
            view.setTag(2131231228, c0386s8);
            Ng.u(this.E, this.N);
            androidx.lifecycle.b bVar = this.O;
            C0386s8 c0386s82 = this.N;
            bVar.getClass();
            androidx.lifecycle.b.a("setValue");
            bVar.g++;
            bVar.e = c0386s82;
            bVar.c(null);
            return;
        }
        if (this.N.c == null) {
            this.N = null;
            return;
        }
        throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
    }

    public final Context C() {
        Context h = h();
        if (h != null) {
            return h;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    public final View D() {
        View view = this.E;
        if (view != null) {
            return view;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    public final void E(int i, int i2, int i3, int i4) {
        if (this.H == null && i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return;
        }
        f().b = i;
        f().c = i2;
        f().d = i3;
        f().e = i4;
    }

    public final void F(Bundle bundle) {
        C0188i8 c0188i8 = this.r;
        if (c0188i8 != null && (c0188i8.E || c0188i8.F)) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.f146f = bundle;
    }

    @Override // o.Z8
    public final Pb a() {
        Application application;
        Context applicationContext = C().getApplicationContext();
        while (true) {
            if (applicationContext instanceof ContextWrapper) {
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            } else {
                application = null;
                break;
            }
        }
        if (application == null && Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "Could not find Application instance from Context " + C().getApplicationContext() + ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
        }
        Pb pb = new Pb();
        LinkedHashMap linkedHashMap = pb.a;
        if (application != null) {
            linkedHashMap.put(C0424u6.d, application);
        }
        linkedHashMap.put(AbstractC0487x9.M, this);
        linkedHashMap.put(AbstractC0487x9.N, this);
        Bundle bundle = this.f146f;
        if (bundle != null) {
            linkedHashMap.put(AbstractC0487x9.O, bundle);
        }
        return pb;
    }

    @Override // o.InterfaceC0412te
    public final C0041b1 b() {
        return (C0041b1) this.P.c;
    }

    public L1 c() {
        return new Q7(this);
    }

    @Override // o.Mh
    public final Lh d() {
        if (this.r != null) {
            if (i() != 1) {
                HashMap hashMap = this.r.L.e;
                Lh lh = (Lh) hashMap.get(this.e);
                if (lh == null) {
                    Lh lh2 = new Lh();
                    hashMap.put(this.e, lh2);
                    return lh2;
                }
                return lh;
            }
            throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    @Override // o.R9
    public final androidx.lifecycle.a e() {
        return this.M;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [o.R7, java.lang.Object] */
    public final R7 f() {
        if (this.H == null) {
            ?? obj = new Object();
            Object obj2 = S;
            obj.g = obj2;
            obj.h = obj2;
            obj.i = obj2;
            obj.j = 1.0f;
            obj.k = null;
            this.H = obj;
        }
        return this.H;
    }

    public final C0188i8 g() {
        if (this.s != null) {
            return this.t;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    public final Context h() {
        V7 v7 = this.s;
        if (v7 == null) {
            return null;
        }
        return v7.h;
    }

    public final int i() {
        M9 m9 = this.L;
        if (m9 != M9.b && this.u != null) {
            return Math.min(m9.ordinal(), this.u.i());
        }
        return m9.ordinal();
    }

    public final C0188i8 j() {
        C0188i8 c0188i8 = this.r;
        if (c0188i8 != null) {
            return c0188i8;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    public final void k() {
        this.M = new androidx.lifecycle.a(this);
        this.P = new C0406t8(this);
        ArrayList arrayList = this.Q;
        P7 p7 = this.R;
        if (!arrayList.contains(p7)) {
            if (this.a >= 0) {
                p7.a();
            } else {
                arrayList.add(p7);
            }
        }
    }

    public final void l() {
        k();
        this.K = this.e;
        this.e = UUID.randomUUID().toString();
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = false;
        this.f147o = false;
        this.q = 0;
        this.r = null;
        this.t = new C0188i8();
        this.s = null;
        this.v = 0;
        this.w = 0;
        this.x = null;
        this.y = false;
        this.z = false;
    }

    public final boolean m() {
        if (this.s != null && this.k) {
            return true;
        }
        return false;
    }

    public final boolean n() {
        boolean n;
        if (!this.y) {
            C0188i8 c0188i8 = this.r;
            if (c0188i8 == null) {
                return false;
            }
            T7 t7 = this.u;
            c0188i8.getClass();
            if (t7 == null) {
                n = false;
            } else {
                n = t7.n();
            }
            if (!n) {
                return false;
            }
        }
        return true;
    }

    public final boolean o() {
        if (this.q > 0) {
            return true;
        }
        return false;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        this.C = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        U0 u0;
        V7 v7 = this.s;
        if (v7 == null) {
            u0 = null;
        } else {
            u0 = v7.g;
        }
        if (u0 != null) {
            u0.onCreateContextMenu(contextMenu, view, contextMenuInfo);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        this.C = true;
    }

    public void p() {
        this.C = true;
    }

    public final void q(int i, int i2, Intent intent) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i + " resultCode: " + i2 + " data: " + intent);
        }
    }

    public void r(U0 u0) {
        U0 u02;
        this.C = true;
        V7 v7 = this.s;
        if (v7 == null) {
            u02 = null;
        } else {
            u02 = v7.g;
        }
        if (u02 != null) {
            this.C = true;
        }
    }

    public void s(Bundle bundle) {
        Parcelable parcelable;
        this.C = true;
        if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
            this.t.R(parcelable);
            this.t.j();
        }
        C0188i8 c0188i8 = this.t;
        if (c0188i8.s < 1) {
            c0188i8.j();
        }
    }

    public View t(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} (");
        sb.append(this.e);
        if (this.v != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.v));
        }
        if (this.x != null) {
            sb.append(" tag=");
            sb.append(this.x);
        }
        sb.append(")");
        return sb.toString();
    }

    public void u() {
        this.C = true;
    }

    public void v() {
        this.C = true;
    }

    public LayoutInflater w(Bundle bundle) {
        V7 v7 = this.s;
        if (v7 != null) {
            U0 u0 = v7.k;
            LayoutInflater cloneInContext = u0.getLayoutInflater().cloneInContext(u0);
            cloneInContext.setFactory2(this.t.f230f);
            return cloneInContext;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    public abstract void x(Bundle bundle);

    public void y() {
        this.C = true;
    }

    public void z() {
        this.C = true;
    }
}
