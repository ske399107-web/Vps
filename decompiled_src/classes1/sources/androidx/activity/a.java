package androidx.activity;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import o.AbstractActivityC0402t4;
import o.AbstractC0343q4;
import o.AbstractC0487x9;
import o.C0041b1;
import o.C0068c8;
import o.C0283n4;
import o.C0303o4;
import o.C0323p4;
import o.C0358r0;
import o.C0362r4;
import o.C0380s2;
import o.C0406t8;
import o.C0424u6;
import o.ExecutorC0382s4;
import o.Gc;
import o.Ha;
import o.InterfaceC0271mc;
import o.InterfaceC0291nc;
import o.InterfaceC0412te;
import o.InterfaceC0426u8;
import o.J2;
import o.L9;
import o.Lh;
import o.Mh;
import o.Ng;
import o.O4;
import o.Ob;
import o.P9;
import o.Pb;
import o.Pd;
import o.R9;
import o.Rd;
import o.RunnableC0180i0;
import o.U0;
import o.U4;
import o.Z8;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class a extends AbstractActivityC0402t4 implements Mh, Z8, InterfaceC0412te, InterfaceC0271mc {
    public final U4 b = new U4();
    public final C0380s2 c;
    public final androidx.lifecycle.a d;
    public final C0406t8 e;

    /* renamed from: f */
    public Lh f16f;
    public b g;
    public final ExecutorC0382s4 h;
    public final C0406t8 i;
    public final C0323p4 j;
    public final CopyOnWriteArrayList k;
    public final CopyOnWriteArrayList l;
    public final CopyOnWriteArrayList m;
    public final CopyOnWriteArrayList n;

    /* renamed from: o */
    public final CopyOnWriteArrayList f17o;
    public boolean p;
    public boolean q;

    public a() {
        final U0 u0 = (U0) this;
        this.c = new C0380s2(new RunnableC0180i0(4, u0));
        androidx.lifecycle.a aVar = new androidx.lifecycle.a(this);
        this.d = aVar;
        C0406t8 c0406t8 = new C0406t8(this);
        this.e = c0406t8;
        this.g = null;
        ExecutorC0382s4 executorC0382s4 = new ExecutorC0382s4(u0);
        this.h = executorC0382s4;
        this.i = new C0406t8(executorC0382s4, new C0358r0(1, u0));
        new AtomicInteger();
        this.j = new C0323p4();
        this.k = new CopyOnWriteArrayList();
        this.l = new CopyOnWriteArrayList();
        this.m = new CopyOnWriteArrayList();
        this.n = new CopyOnWriteArrayList();
        this.f17o = new CopyOnWriteArrayList();
        this.p = false;
        this.q = false;
        aVar.a(new P9() { // from class: androidx.activity.ComponentActivity$2
            @Override // o.P9
            public final void b(R9 r9, L9 l9) {
                View view;
                if (l9 == L9.ON_STOP) {
                    Window window = U0.this.getWindow();
                    if (window != null) {
                        view = window.peekDecorView();
                    } else {
                        view = null;
                    }
                    if (view != null) {
                        view.cancelPendingInputEvents();
                    }
                }
            }
        });
        aVar.a(new P9() { // from class: androidx.activity.ComponentActivity$3
            @Override // o.P9
            public final void b(R9 r9, L9 l9) {
                if (l9 == L9.ON_DESTROY) {
                    U0.this.b.b = null;
                    if (!U0.this.isChangingConfigurations()) {
                        U0.this.d().a();
                    }
                    ExecutorC0382s4 executorC0382s42 = U0.this.h;
                    U0 u02 = executorC0382s42.d;
                    u02.getWindow().getDecorView().removeCallbacks(executorC0382s42);
                    u02.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(executorC0382s42);
                }
            }
        });
        aVar.a(new P9() { // from class: androidx.activity.ComponentActivity$4
            @Override // o.P9
            public final void b(R9 r9, L9 l9) {
                U0 u02 = U0.this;
                if (u02.f16f == null) {
                    C0362r4 c0362r4 = (C0362r4) u02.getLastNonConfigurationInstance();
                    if (c0362r4 != null) {
                        u02.f16f = c0362r4.a;
                    }
                    if (u02.f16f == null) {
                        u02.f16f = new Lh();
                    }
                }
                u02.d.f(this);
            }
        });
        c0406t8.a();
        AbstractC0487x9.v(this);
        ((C0041b1) c0406t8.c).e("android:support:activity-result", new C0283n4(0, u0));
        h(new C0303o4(u0, 0));
    }

    @Override // o.Z8
    public final Pb a() {
        Pb pb = new Pb();
        Application application = getApplication();
        LinkedHashMap linkedHashMap = pb.a;
        if (application != null) {
            linkedHashMap.put(C0424u6.d, getApplication());
        }
        linkedHashMap.put(AbstractC0487x9.M, this);
        linkedHashMap.put(AbstractC0487x9.N, this);
        if (getIntent() != null && getIntent().getExtras() != null) {
            linkedHashMap.put(AbstractC0487x9.O, getIntent().getExtras());
        }
        return pb;
    }

    @Override // o.InterfaceC0412te
    public final C0041b1 b() {
        return (C0041b1) this.e.c;
    }

    @Override // o.Mh
    public final Lh d() {
        if (getApplication() != null) {
            if (this.f16f == null) {
                C0362r4 c0362r4 = (C0362r4) getLastNonConfigurationInstance();
                if (c0362r4 != null) {
                    this.f16f = c0362r4.a;
                }
                if (this.f16f == null) {
                    this.f16f = new Lh();
                }
            }
            return this.f16f;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }

    @Override // o.R9
    public final androidx.lifecycle.a e() {
        return this.d;
    }

    public final void g(O4 o4) {
        this.k.add(o4);
    }

    public final void h(InterfaceC0291nc interfaceC0291nc) {
        U4 u4 = this.b;
        u4.getClass();
        if (u4.b != null) {
            interfaceC0291nc.a();
        }
        u4.a.add(interfaceC0291nc);
    }

    public final b i() {
        if (this.g == null) {
            this.g = new b(new J2(2, this));
            this.d.a(new P9() { // from class: androidx.activity.ComponentActivity$6
                @Override // o.P9
                public final void b(R9 r9, L9 l9) {
                    if (l9 == L9.ON_CREATE && Build.VERSION.SDK_INT >= 33) {
                        b bVar = a.this.g;
                        OnBackInvokedDispatcher a = AbstractC0343q4.a((a) r9);
                        bVar.getClass();
                        AbstractC0487x9.o(a, "invoker");
                        bVar.e = a;
                        bVar.c(bVar.g);
                    }
                }
            });
        }
        return this.g;
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (!this.j.a(i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        i().b();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            ((O4) it.next()).a(configuration);
        }
    }

    @Override // o.AbstractActivityC0402t4, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.e.b(bundle);
        U4 u4 = this.b;
        u4.getClass();
        u4.b = this;
        Iterator it = u4.a.iterator();
        while (it.hasNext()) {
            ((InterfaceC0291nc) it.next()).a();
        }
        super.onCreate(bundle);
        int i = Rd.b;
        Pd.b(this);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i, Menu menu) {
        if (i == 0) {
            super.onCreatePanelMenu(i, menu);
            getMenuInflater();
            Iterator it = ((CopyOnWriteArrayList) this.c.d).iterator();
            while (it.hasNext()) {
                ((C0068c8) it.next()).a.k();
            }
            return true;
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i != 0) {
            return false;
        }
        Iterator it = ((CopyOnWriteArrayList) this.c.d).iterator();
        while (it.hasNext()) {
            if (((C0068c8) it.next()).a.p()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z) {
        if (this.p) {
            return;
        }
        Iterator it = this.n.iterator();
        while (it.hasNext()) {
            ((O4) it.next()).a(new Ob(z));
        }
    }

    @Override // android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Iterator it = this.m.iterator();
        while (it.hasNext()) {
            ((O4) it.next()).a(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        Iterator it = ((CopyOnWriteArrayList) this.c.d).iterator();
        while (it.hasNext()) {
            ((C0068c8) it.next()).a.q();
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z) {
        if (this.q) {
            return;
        }
        Iterator it = this.f17o.iterator();
        while (it.hasNext()) {
            ((O4) it.next()).a(new Gc(z));
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onPreparePanel(int i, View view, Menu menu) {
        if (i == 0) {
            super.onPreparePanel(i, view, menu);
            Iterator it = ((CopyOnWriteArrayList) this.c.d).iterator();
            while (it.hasNext()) {
                ((C0068c8) it.next()).a.t();
            }
            return true;
        }
        return true;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (!this.j.a(i, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr))) {
            super.onRequestPermissionsResult(i, strArr, iArr);
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [o.r4, java.lang.Object] */
    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        C0362r4 c0362r4;
        Lh lh = this.f16f;
        if (lh == null && (c0362r4 = (C0362r4) getLastNonConfigurationInstance()) != null) {
            lh = c0362r4.a;
        }
        if (lh == null) {
            return null;
        }
        ?? obj = new Object();
        obj.a = lh;
        return obj;
    }

    @Override // o.AbstractActivityC0402t4, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        androidx.lifecycle.a aVar = this.d;
        if (aVar != null) {
            aVar.g();
        }
        super.onSaveInstanceState(bundle);
        this.e.c(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        super.onTrimMemory(i);
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            ((O4) it.next()).a(Integer.valueOf(i));
        }
    }

    @Override // android.app.Activity
    public final void reportFullyDrawn() {
        try {
            if (Ha.Y()) {
                Ha.a("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
            C0406t8 c0406t8 = this.i;
            synchronized (c0406t8.b) {
                try {
                    c0406t8.a = true;
                    Iterator it = ((ArrayList) c0406t8.c).iterator();
                    while (it.hasNext()) {
                        ((InterfaceC0426u8) it.next()).a();
                    }
                    ((ArrayList) c0406t8.c).clear();
                } finally {
                }
            }
            Trace.endSection();
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view) {
        Ng.s(getWindow().getDecorView(), this);
        View decorView = getWindow().getDecorView();
        AbstractC0487x9.o(decorView, "<this>");
        decorView.setTag(2131231228, this);
        Ng.u(getWindow().getDecorView(), this);
        Ng.t(getWindow().getDecorView(), this);
        View decorView2 = getWindow().getDecorView();
        AbstractC0487x9.o(decorView2, "<this>");
        decorView2.setTag(2131231097, this);
        View decorView3 = getWindow().getDecorView();
        ExecutorC0382s4 executorC0382s4 = this.h;
        if (!executorC0382s4.c) {
            executorC0382s4.c = true;
            decorView3.getViewTreeObserver().addOnDrawListener(executorC0382s4);
        }
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        this.p = true;
        try {
            super.onMultiWindowModeChanged(z, configuration);
            this.p = false;
            Iterator it = this.n.iterator();
            while (it.hasNext()) {
                O4 o4 = (O4) it.next();
                AbstractC0487x9.o(configuration, "newConfig");
                o4.a(new Ob(z));
            }
        } catch (Throwable th) {
            this.p = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        this.q = true;
        try {
            super.onPictureInPictureModeChanged(z, configuration);
            this.q = false;
            Iterator it = this.f17o.iterator();
            while (it.hasNext()) {
                O4 o4 = (O4) it.next();
                AbstractC0487x9.o(configuration, "newConfig");
                o4.a(new Gc(z));
            }
        } catch (Throwable th) {
            this.q = false;
            throw th;
        }
    }
}
