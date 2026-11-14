package o;

import com.ffrt.proxyread.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class U0 extends androidx.activity.a implements Y0 {
    public boolean t;
    public boolean u;
    public LayoutInflaterFactory2C0439v1 w;
    public final C r = new C(15, new V7(this));
    public final androidx.lifecycle.a s = new androidx.lifecycle.a(this);
    public boolean v = true;

    public U0() {
        ((C0041b1) this.e.c).e("android:support:lifecycle", new C0283n4(1, this));
        final int i = 0;
        g(new O4(this) { // from class: o.U7
            public final /* synthetic */ U0 b;

            {
                this.b = this;
            }

            @Override // o.O4
            public final void a(Object obj) {
                switch (i) {
                    case 0:
                        this.b.r.A();
                        return;
                    default:
                        this.b.r.A();
                        return;
                }
            }
        });
        final int i2 = 1;
        this.m.add(new O4(this) { // from class: o.U7
            public final /* synthetic */ U0 b;

            {
                this.b = this;
            }

            @Override // o.O4
            public final void a(Object obj) {
                switch (i2) {
                    case 0:
                        this.b.r.A();
                        return;
                    default:
                        this.b.r.A();
                        return;
                }
            }
        });
        h(new C0303o4(this, 1));
        ((C0041b1) this.e.c).e("androidx:appcompat", new S0(this));
        h(new T0(this));
    }

    public static boolean l(C0188i8 c0188i8) {
        U0 u0;
        boolean z = false;
        for (T7 t7 : c0188i8.c.h()) {
            if (t7 != null) {
                V7 v7 = t7.s;
                if (v7 == null) {
                    u0 = null;
                } else {
                    u0 = v7.k;
                }
                if (u0 != null) {
                    z |= l(t7.g());
                }
                C0386s8 c0386s8 = t7.N;
                M9 m9 = M9.d;
                if (c0386s8 != null) {
                    c0386s8.f();
                    if (c0386s8.c.c.compareTo(m9) >= 0) {
                        t7.N.c.g();
                        z = true;
                    }
                }
                if (t7.M.c.compareTo(m9) >= 0) {
                    t7.M.g();
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // android.app.Activity
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        k();
        LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = (LayoutInflaterFactory2C0439v1) j();
        layoutInflaterFactory2C0439v1.u();
        ((ViewGroup) layoutInflaterFactory2C0439v1.A.findViewById(R.id.content)).addView(view, layoutParams);
        layoutInflaterFactory2C0439v1.m.a(layoutInflaterFactory2C0439v1.l.getCallback());
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        Configuration configuration;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = 0;
        LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = (LayoutInflaterFactory2C0439v1) j();
        layoutInflaterFactory2C0439v1.O = true;
        int i10 = layoutInflaterFactory2C0439v1.S;
        if (i10 == -100) {
            i10 = AbstractC0161h1.b;
        }
        int B = layoutInflaterFactory2C0439v1.B(context, i10);
        if (AbstractC0161h1.b(context) && AbstractC0161h1.b(context)) {
            if (Build.VERSION.SDK_INT >= 33) {
                if (!AbstractC0161h1.f221f) {
                    AbstractC0161h1.a.execute(new RunnableC0061c1(context, i9));
                }
            } else {
                synchronized (AbstractC0161h1.i) {
                    try {
                        C0368ra c0368ra = AbstractC0161h1.c;
                        if (c0368ra == null) {
                            if (AbstractC0161h1.d == null) {
                                AbstractC0161h1.d = C0368ra.a(AbstractC0487x9.P(context));
                            }
                            if (!AbstractC0161h1.d.a.a.isEmpty()) {
                                AbstractC0161h1.c = AbstractC0161h1.d;
                            }
                        } else if (!c0368ra.equals(AbstractC0161h1.d)) {
                            C0368ra c0368ra2 = AbstractC0161h1.c;
                            AbstractC0161h1.d = c0368ra2;
                            AbstractC0487x9.L(context, c0368ra2.a.a.toLanguageTags());
                        }
                    } finally {
                    }
                }
            }
        }
        C0368ra n = LayoutInflaterFactory2C0439v1.n(context);
        if (context instanceof ContextThemeWrapper) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(LayoutInflaterFactory2C0439v1.r(context, B, n, null, false));
            } catch (IllegalStateException unused) {
            }
            super.attachBaseContext(context);
        }
        if (context instanceof V4) {
            try {
                ((V4) context).a(LayoutInflaterFactory2C0439v1.r(context, B, n, null, false));
            } catch (IllegalStateException unused2) {
            }
            super.attachBaseContext(context);
        }
        if (LayoutInflaterFactory2C0439v1.j0) {
            Configuration configuration2 = new Configuration();
            configuration2.uiMode = -1;
            configuration2.fontScale = 0.0f;
            Configuration configuration3 = context.createConfigurationContext(configuration2).getResources().getConfiguration();
            Configuration configuration4 = context.getResources().getConfiguration();
            configuration3.uiMode = configuration4.uiMode;
            if (!configuration3.equals(configuration4)) {
                configuration = new Configuration();
                configuration.fontScale = 0.0f;
                if (configuration3.diff(configuration4) != 0) {
                    float f2 = configuration3.fontScale;
                    float f3 = configuration4.fontScale;
                    if (f2 != f3) {
                        configuration.fontScale = f3;
                    }
                    int i11 = configuration3.mcc;
                    int i12 = configuration4.mcc;
                    if (i11 != i12) {
                        configuration.mcc = i12;
                    }
                    int i13 = configuration3.mnc;
                    int i14 = configuration4.mnc;
                    if (i13 != i14) {
                        configuration.mnc = i14;
                    }
                    int i15 = Build.VERSION.SDK_INT;
                    AbstractC0260m1.a(configuration3, configuration4, configuration);
                    int i16 = configuration3.touchscreen;
                    int i17 = configuration4.touchscreen;
                    if (i16 != i17) {
                        configuration.touchscreen = i17;
                    }
                    int i18 = configuration3.keyboard;
                    int i19 = configuration4.keyboard;
                    if (i18 != i19) {
                        configuration.keyboard = i19;
                    }
                    int i20 = configuration3.keyboardHidden;
                    int i21 = configuration4.keyboardHidden;
                    if (i20 != i21) {
                        configuration.keyboardHidden = i21;
                    }
                    int i22 = configuration3.navigation;
                    int i23 = configuration4.navigation;
                    if (i22 != i23) {
                        configuration.navigation = i23;
                    }
                    int i24 = configuration3.navigationHidden;
                    int i25 = configuration4.navigationHidden;
                    if (i24 != i25) {
                        configuration.navigationHidden = i25;
                    }
                    int i26 = configuration3.orientation;
                    int i27 = configuration4.orientation;
                    if (i26 != i27) {
                        configuration.orientation = i27;
                    }
                    int i28 = configuration3.screenLayout & 15;
                    int i29 = configuration4.screenLayout & 15;
                    if (i28 != i29) {
                        configuration.screenLayout |= i29;
                    }
                    int i30 = configuration3.screenLayout & 192;
                    int i31 = configuration4.screenLayout & 192;
                    if (i30 != i31) {
                        configuration.screenLayout |= i31;
                    }
                    int i32 = configuration3.screenLayout & 48;
                    int i33 = configuration4.screenLayout & 48;
                    if (i32 != i33) {
                        configuration.screenLayout |= i33;
                    }
                    int i34 = configuration3.screenLayout & 768;
                    int i35 = configuration4.screenLayout & 768;
                    if (i34 != i35) {
                        configuration.screenLayout |= i35;
                    }
                    if (i15 >= 26) {
                        i = configuration3.colorMode;
                        int i36 = i & 3;
                        i2 = configuration4.colorMode;
                        if (i36 != (i2 & 3)) {
                            i7 = configuration.colorMode;
                            i8 = configuration4.colorMode;
                            configuration.colorMode = i7 | (i8 & 3);
                        }
                        i3 = configuration3.colorMode;
                        int i37 = i3 & 12;
                        i4 = configuration4.colorMode;
                        if (i37 != (i4 & 12)) {
                            i5 = configuration.colorMode;
                            i6 = configuration4.colorMode;
                            configuration.colorMode = i5 | (i6 & 12);
                        }
                    }
                    int i38 = configuration3.uiMode & 15;
                    int i39 = configuration4.uiMode & 15;
                    if (i38 != i39) {
                        configuration.uiMode |= i39;
                    }
                    int i40 = configuration3.uiMode & 48;
                    int i41 = configuration4.uiMode & 48;
                    if (i40 != i41) {
                        configuration.uiMode |= i41;
                    }
                    int i42 = configuration3.screenWidthDp;
                    int i43 = configuration4.screenWidthDp;
                    if (i42 != i43) {
                        configuration.screenWidthDp = i43;
                    }
                    int i44 = configuration3.screenHeightDp;
                    int i45 = configuration4.screenHeightDp;
                    if (i44 != i45) {
                        configuration.screenHeightDp = i45;
                    }
                    int i46 = configuration3.smallestScreenWidthDp;
                    int i47 = configuration4.smallestScreenWidthDp;
                    if (i46 != i47) {
                        configuration.smallestScreenWidthDp = i47;
                    }
                    int i48 = configuration3.densityDpi;
                    int i49 = configuration4.densityDpi;
                    if (i48 != i49) {
                        configuration.densityDpi = i49;
                    }
                }
            } else {
                configuration = null;
            }
            Configuration r = LayoutInflaterFactory2C0439v1.r(context, B, n, configuration, true);
            V4 v4 = new V4(context, 2131690008);
            v4.a(r);
            try {
                if (context.getTheme() != null) {
                    Resources.Theme theme = v4.getTheme();
                    if (Build.VERSION.SDK_INT >= 29) {
                        AbstractC0440v2.c(theme);
                    } else {
                        synchronized (AbstractC0487x9.J) {
                            if (!AbstractC0487x9.L) {
                                try {
                                    Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                                    AbstractC0487x9.K = declaredMethod;
                                    declaredMethod.setAccessible(true);
                                } catch (NoSuchMethodException e) {
                                    Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e);
                                }
                                AbstractC0487x9.L = true;
                            }
                            Method method = AbstractC0487x9.K;
                            if (method != null) {
                                try {
                                    method.invoke(theme, new Object[0]);
                                } catch (IllegalAccessException | InvocationTargetException e2) {
                                    Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e2);
                                    AbstractC0487x9.K = null;
                                }
                            }
                        }
                    }
                }
            } catch (NullPointerException unused3) {
            }
            context = v4;
        }
        super.attachBaseContext(context);
    }

    @Override // android.app.Activity
    public final void closeOptionsMenu() {
        ((LayoutInflaterFactory2C0439v1) j()).z();
        if (getWindow().hasFeature(0)) {
            super.closeOptionsMenu();
        }
    }

    @Override // o.AbstractActivityC0402t4, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        keyEvent.getKeyCode();
        ((LayoutInflaterFactory2C0439v1) j()).z();
        return super.dispatchKeyEvent(keyEvent);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003a, code lost:
    
        if (r0.equals("--list-dumpables") == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
    
        if (android.os.Build.VERSION.SDK_INT < 33) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0043, code lost:
    
        if (r0.equals("--dump-dumpable") == false) goto L37;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0010. Please report as an issue. */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void dump(java.lang.String r3, java.io.FileDescriptor r4, java.io.PrintWriter r5, java.lang.String[] r6) {
        /*
            r2 = this;
            super.dump(r3, r4, r5, r6)
            if (r6 == 0) goto L5d
            int r0 = r6.length
            if (r0 != 0) goto L9
            goto L5d
        L9:
            r0 = 0
            r0 = r6[r0]
            int r1 = r0.hashCode()
            switch(r1) {
                case -645125871: goto L4d;
                case 100470631: goto L3d;
                case 472614934: goto L34;
                case 1159329357: goto L24;
                case 1455016274: goto L14;
                default: goto L13;
            }
        L13:
            goto L5d
        L14:
            java.lang.String r1 = "--autofill"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L1d
            goto L5d
        L1d:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 26
            if (r0 < r1) goto L5d
            goto L5c
        L24:
            java.lang.String r1 = "--contentcapture"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L2d
            goto L5d
        L2d:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 29
            if (r0 < r1) goto L5d
            goto L5c
        L34:
            java.lang.String r1 = "--list-dumpables"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L46
            goto L5d
        L3d:
            java.lang.String r1 = "--dump-dumpable"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L46
            goto L5d
        L46:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 33
            if (r0 < r1) goto L5d
            goto L5c
        L4d:
            java.lang.String r1 = "--translation"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L56
            goto L5d
        L56:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 31
            if (r0 < r1) goto L5d
        L5c:
            return
        L5d:
            r5.print(r3)
            java.lang.String r0 = "Local FragmentActivity "
            r5.print(r0)
            int r0 = java.lang.System.identityHashCode(r2)
            java.lang.String r0 = java.lang.Integer.toHexString(r0)
            r5.print(r0)
            java.lang.String r0 = " State:"
            r5.println(r0)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r3)
            java.lang.String r1 = "  "
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r5.print(r0)
            java.lang.String r1 = "mCreated="
            r5.print(r1)
            boolean r1 = r2.t
            r5.print(r1)
            java.lang.String r1 = " mResumed="
            r5.print(r1)
            boolean r1 = r2.u
            r5.print(r1)
            java.lang.String r1 = " mStopped="
            r5.print(r1)
            boolean r1 = r2.v
            r5.print(r1)
            android.app.Application r1 = r2.getApplication()
            if (r1 == 0) goto Lb4
            o.H1 r1 = o.H1.v(r2)
            r1.r(r0, r5)
        Lb4:
            o.C r0 = r2.r
            java.lang.Object r0 = r0.b
            o.V7 r0 = (o.V7) r0
            o.i8 r0 = r0.j
            r0.v(r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: o.U0.dump(java.lang.String, java.io.FileDescriptor, java.io.PrintWriter, java.lang.String[]):void");
    }

    @Override // android.app.Activity
    public final View findViewById(int i) {
        LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = (LayoutInflaterFactory2C0439v1) j();
        layoutInflaterFactory2C0439v1.u();
        return layoutInflaterFactory2C0439v1.l.findViewById(i);
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        Context context;
        LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = (LayoutInflaterFactory2C0439v1) j();
        if (layoutInflaterFactory2C0439v1.p == null) {
            layoutInflaterFactory2C0439v1.z();
            C0396si c0396si = layoutInflaterFactory2C0439v1.f288o;
            if (c0396si != null) {
                context = c0396si.r0();
            } else {
                context = layoutInflaterFactory2C0439v1.k;
            }
            layoutInflaterFactory2C0439v1.p = new C0531zf(context);
        }
        return layoutInflaterFactory2C0439v1.p;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        int i = AbstractC0196ih.a;
        return super.getResources();
    }

    @Override // android.app.Activity
    public final void invalidateOptionsMenu() {
        LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = (LayoutInflaterFactory2C0439v1) j();
        if (layoutInflaterFactory2C0439v1.f288o != null) {
            layoutInflaterFactory2C0439v1.z();
            layoutInflaterFactory2C0439v1.f288o.getClass();
            layoutInflaterFactory2C0439v1.A(0);
        }
    }

    public final AbstractC0161h1 j() {
        if (this.w == null) {
            ExecutorC0121f1 executorC0121f1 = AbstractC0161h1.a;
            this.w = new LayoutInflaterFactory2C0439v1(this, null, this, this);
        }
        return this.w;
    }

    public final void k() {
        Ng.s(getWindow().getDecorView(), this);
        View decorView = getWindow().getDecorView();
        AbstractC0487x9.o(decorView, "<this>");
        decorView.setTag(2131231228, this);
        Ng.u(getWindow().getDecorView(), this);
        Ng.t(getWindow().getDecorView(), this);
    }

    public final void m() {
        super.onDestroy();
        ((V7) this.r.b).j.l();
        this.s.d(L9.ON_DESTROY);
    }

    public final boolean n(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 6) {
            return ((V7) this.r.b).j.i();
        }
        return false;
    }

    public final void o() {
        super.onPostResume();
        this.s.d(L9.ON_RESUME);
        C0188i8 c0188i8 = ((V7) this.r.b).j;
        c0188i8.E = false;
        c0188i8.F = false;
        c0188i8.L.h = false;
        c0188i8.u(7);
    }

    @Override // androidx.activity.a, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.r.A();
        super.onActivityResult(i, i2, intent);
    }

    @Override // androidx.activity.a, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = (LayoutInflaterFactory2C0439v1) j();
        if (layoutInflaterFactory2C0439v1.F && layoutInflaterFactory2C0439v1.z) {
            layoutInflaterFactory2C0439v1.z();
            C0396si c0396si = layoutInflaterFactory2C0439v1.f288o;
            if (c0396si != null) {
                c0396si.u0(c0396si.U.getResources().getBoolean(com.hda.jds.R.color.colorPrimary));
            }
        }
        C0498y1 a = C0498y1.a();
        Context context = layoutInflaterFactory2C0439v1.k;
        synchronized (a) {
            Xd xd = a.a;
            synchronized (xd) {
                C0526za c0526za = (C0526za) xd.b.get(context);
                if (c0526za != null) {
                    c0526za.a();
                }
            }
        }
        layoutInflaterFactory2C0439v1.R = new Configuration(layoutInflaterFactory2C0439v1.k.getResources().getConfiguration());
        layoutInflaterFactory2C0439v1.l(false, false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onContentChanged() {
    }

    @Override // androidx.activity.a, o.AbstractActivityC0402t4, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.s.d(L9.ON_CREATE);
        ((V7) this.r.b).j.j();
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View onCreateView = ((V7) this.r.b).j.f230f.onCreateView(view, str, context, attributeSet);
        return onCreateView == null ? super.onCreateView(view, str, context, attributeSet) : onCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        m();
        j().d();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        Window window;
        if (Build.VERSION.SDK_INT < 26 && !keyEvent.isCtrlPressed() && !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) && keyEvent.getRepeatCount() == 0 && !KeyEvent.isModifierKey(keyEvent.getKeyCode()) && (window = getWindow()) != null && window.getDecorView() != null && window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.activity.a, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        Intent P;
        if (n(i, menuItem)) {
            return true;
        }
        LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = (LayoutInflaterFactory2C0439v1) j();
        layoutInflaterFactory2C0439v1.z();
        C0396si c0396si = layoutInflaterFactory2C0439v1.f288o;
        if (menuItem.getItemId() == 16908332 && c0396si != null && (((C0195ig) c0396si.Y).b & 4) != 0 && (P = Ha.P(this)) != null) {
            if (shouldUpRecreateTask(P)) {
                ArrayList arrayList = new ArrayList();
                Intent P2 = Ha.P(this);
                if (P2 == null) {
                    P2 = Ha.P(this);
                }
                if (P2 != null) {
                    ComponentName component = P2.getComponent();
                    if (component == null) {
                        component = P2.resolveActivity(getPackageManager());
                    }
                    int size = arrayList.size();
                    try {
                        Intent Q = Ha.Q(this, component);
                        while (Q != null) {
                            arrayList.add(size, Q);
                            Q = Ha.Q(this, Q.getComponent());
                        }
                        arrayList.add(P2);
                    } catch (PackageManager.NameNotFoundException e) {
                        Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                        throw new IllegalArgumentException(e);
                    }
                }
                if (!arrayList.isEmpty()) {
                    Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
                    intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
                    startActivities(intentArr, null);
                    try {
                        finishAffinity();
                        return true;
                    } catch (IllegalStateException unused) {
                        finish();
                        return true;
                    }
                }
                throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
            }
            navigateUpTo(P);
            return true;
        }
        return false;
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        this.u = false;
        ((V7) this.r.b).j.u(5);
        this.s.d(L9.ON_PAUSE);
    }

    @Override // android.app.Activity
    public final void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((LayoutInflaterFactory2C0439v1) j()).u();
    }

    @Override // android.app.Activity
    public final void onPostResume() {
        o();
        LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = (LayoutInflaterFactory2C0439v1) j();
        layoutInflaterFactory2C0439v1.z();
        C0396si c0396si = layoutInflaterFactory2C0439v1.f288o;
        if (c0396si != null) {
            c0396si.n0 = true;
        }
    }

    @Override // androidx.activity.a, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.r.A();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        C c = this.r;
        c.A();
        super.onResume();
        this.u = true;
        ((V7) c.b).j.z(true);
    }

    @Override // android.app.Activity
    public final void onStart() {
        p();
        ((LayoutInflaterFactory2C0439v1) j()).l(true, false);
    }

    @Override // android.app.Activity
    public final void onStateNotSaved() {
        this.r.A();
    }

    @Override // android.app.Activity
    public final void onStop() {
        q();
        LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = (LayoutInflaterFactory2C0439v1) j();
        layoutInflaterFactory2C0439v1.z();
        C0396si c0396si = layoutInflaterFactory2C0439v1.f288o;
        if (c0396si != null) {
            c0396si.n0 = false;
            Qh qh = c0396si.m0;
            if (qh != null) {
                qh.a();
            }
        }
    }

    @Override // android.app.Activity
    public final void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        j().j(charSequence);
    }

    @Override // android.app.Activity
    public final void openOptionsMenu() {
        ((LayoutInflaterFactory2C0439v1) j()).z();
        if (getWindow().hasFeature(0)) {
            super.openOptionsMenu();
        }
    }

    public final void p() {
        C c = this.r;
        c.A();
        super.onStart();
        this.v = false;
        boolean z = this.t;
        V7 v7 = (V7) c.b;
        if (!z) {
            this.t = true;
            C0188i8 c0188i8 = v7.j;
            c0188i8.E = false;
            c0188i8.F = false;
            c0188i8.L.h = false;
            c0188i8.u(4);
        }
        v7.j.z(true);
        this.s.d(L9.ON_START);
        C0188i8 c0188i82 = v7.j;
        c0188i82.E = false;
        c0188i82.F = false;
        c0188i82.L.h = false;
        c0188i82.u(5);
    }

    public final void q() {
        C c;
        super.onStop();
        this.v = true;
        do {
            c = this.r;
        } while (l(((V7) c.b).j));
        C0188i8 c0188i8 = ((V7) c.b).j;
        c0188i8.F = true;
        c0188i8.L.h = true;
        c0188i8.u(4);
        this.s.d(L9.ON_STOP);
    }

    @Override // android.app.Activity
    public final void setContentView(int i) {
        k();
        j().g(i);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        super.setTheme(i);
        ((LayoutInflaterFactory2C0439v1) j()).T = i;
    }

    @Override // androidx.activity.a, android.app.Activity
    public void setContentView(View view) {
        k();
        j().h(view);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View onCreateView = ((V7) this.r.b).j.f230f.onCreateView(null, str, context, attributeSet);
        return onCreateView == null ? super.onCreateView(str, context, attributeSet) : onCreateView;
    }

    @Override // android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        k();
        j().i(view, layoutParams);
    }
}
