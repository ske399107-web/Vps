package o;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.WeakHashMap;

/* renamed from: o.v1, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class LayoutInflaterFactory2C0439v1 extends AbstractC0161h1 implements InterfaceC0191ib, LayoutInflater.Factory2 {
    public static final Qe h0 = new Qe(0);
    public static final int[] i0 = {R.attr.windowBackground};
    public static final boolean j0 = !"robolectric".equals(Build.FINGERPRINT);
    public ViewGroup A;
    public TextView B;
    public View C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public C0419u1[] L;
    public C0419u1 M;
    public boolean N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public Configuration R;
    public final int S;
    public int T;
    public int U;
    public boolean V;
    public C0340q1 W;
    public C0340q1 X;
    public boolean Y;
    public int Z;
    public boolean b0;
    public Rect c0;
    public Rect d0;
    public C0360r2 e0;
    public OnBackInvokedDispatcher f0;
    public OnBackInvokedCallback g0;
    public final Object j;
    public final Context k;
    public Window l;
    public WindowCallbackC0320p1 m;
    public final Object n;

    /* renamed from: o, reason: collision with root package name */
    public C0396si f288o;
    public C0531zf p;
    public CharSequence q;
    public InterfaceC0363r5 r;
    public C0200j1 s;
    public C0200j1 t;
    public AbstractC0160h0 u;
    public ActionBarContextView v;
    public PopupWindow w;
    public RunnableC0181i1 x;
    public boolean z;
    public Ph y = null;
    public final RunnableC0181i1 a0 = new RunnableC0181i1(this, 0);

    public LayoutInflaterFactory2C0439v1(Context context, Window window, Y0 y0, Object obj) {
        U0 u0 = null;
        this.S = -100;
        this.k = context;
        this.j = obj;
        if (obj instanceof Dialog) {
            while (true) {
                if (context != null) {
                    if (context instanceof U0) {
                        u0 = (U0) context;
                        break;
                    } else if (!(context instanceof ContextWrapper)) {
                        break;
                    } else {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                } else {
                    break;
                }
            }
            if (u0 != null) {
                this.S = ((LayoutInflaterFactory2C0439v1) u0.j()).S;
            }
        }
        if (this.S == -100) {
            Qe qe = h0;
            Integer num = (Integer) qe.get(this.j.getClass().getName());
            if (num != null) {
                this.S = num.intValue();
                qe.remove(this.j.getClass().getName());
            }
        }
        if (window != null) {
            m(window);
        }
        C0498y1.d();
    }

    public static C0368ra n(Context context) {
        C0368ra c0368ra;
        C0368ra c0368ra2;
        Locale locale;
        if (Build.VERSION.SDK_INT >= 33 || (c0368ra = AbstractC0161h1.c) == null) {
            return null;
        }
        C0368ra b = AbstractC0260m1.b(context.getApplicationContext().getResources().getConfiguration());
        C0388sa c0388sa = c0368ra.a;
        if (c0388sa.a.isEmpty()) {
            c0368ra2 = C0368ra.b;
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (int i = 0; i < b.a.a.size() + c0388sa.a.size(); i++) {
                if (i < c0388sa.a.size()) {
                    locale = c0388sa.a.get(i);
                } else {
                    locale = b.a.a.get(i - c0388sa.a.size());
                }
                if (locale != null) {
                    linkedHashSet.add(locale);
                }
            }
            c0368ra2 = new C0368ra(new C0388sa(new LocaleList((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]))));
        }
        if (!c0368ra2.a.a.isEmpty()) {
            return c0368ra2;
        }
        return b;
    }

    public static Configuration r(Context context, int i, C0368ra c0368ra, Configuration configuration, boolean z) {
        int i2;
        if (i != 1) {
            if (i != 2) {
                if (z) {
                    i2 = 0;
                } else {
                    i2 = context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
                }
            } else {
                i2 = 32;
            }
        } else {
            i2 = 16;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        if (c0368ra != null) {
            AbstractC0260m1.d(configuration2, c0368ra);
        }
        return configuration2;
    }

    public final void A(int i) {
        this.Z = (1 << i) | this.Z;
        if (!this.Y) {
            View decorView = this.l.getDecorView();
            RunnableC0181i1 runnableC0181i1 = this.a0;
            WeakHashMap weakHashMap = Dh.a;
            decorView.postOnAnimation(runnableC0181i1);
            this.Y = true;
        }
    }

    public final int B(Context context, int i) {
        if (i == -100) {
            return -1;
        }
        if (i != -1) {
            if (i != 0) {
                if (i != 1 && i != 2) {
                    if (i == 3) {
                        if (this.X == null) {
                            this.X = new C0340q1(this, context);
                        }
                        return this.X.f();
                    }
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
            } else {
                if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() == 0) {
                    return -1;
                }
                return x(context).f();
            }
        }
        return i;
    }

    public final boolean C() {
        InterfaceC0383s5 interfaceC0383s5;
        C0096dg c0096dg;
        C0290nb c0290nb;
        boolean z = this.N;
        this.N = false;
        C0419u1 y = y(0);
        if (y.m) {
            if (!z) {
                q(y, true);
            }
            return true;
        }
        AbstractC0160h0 abstractC0160h0 = this.u;
        if (abstractC0160h0 != null) {
            abstractC0160h0.a();
            return true;
        }
        z();
        C0396si c0396si = this.f288o;
        if (c0396si == null || (interfaceC0383s5 = c0396si.Y) == null || (c0096dg = ((C0195ig) interfaceC0383s5).a.L) == null || c0096dg.b == null) {
            return false;
        }
        C0096dg c0096dg2 = ((C0195ig) interfaceC0383s5).a.L;
        if (c0096dg2 == null) {
            c0290nb = null;
        } else {
            c0290nb = c0096dg2.b;
        }
        if (c0290nb != null) {
            c0290nb.collapseActionView();
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0173, code lost:
    
        if (r3.f198f.getCount() > 0) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0153, code lost:
    
        if (r3 != null) goto L77;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void D(o.C0419u1 r18, android.view.KeyEvent r19) {
        /*
            Method dump skipped, instructions count: 472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.LayoutInflaterFactory2C0439v1.D(o.u1, android.view.KeyEvent):void");
    }

    public final boolean E(C0419u1 c0419u1, int i, KeyEvent keyEvent) {
        MenuC0230kb menuC0230kb;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((!c0419u1.k && !F(c0419u1, keyEvent)) || (menuC0230kb = c0419u1.h) == null) {
            return false;
        }
        return menuC0230kb.performShortcut(i, keyEvent, 1);
    }

    public final boolean F(C0419u1 c0419u1, KeyEvent keyEvent) {
        boolean z;
        InterfaceC0363r5 interfaceC0363r5;
        InterfaceC0363r5 interfaceC0363r52;
        Resources.Theme theme;
        int i;
        boolean z2;
        InterfaceC0363r5 interfaceC0363r53;
        InterfaceC0363r5 interfaceC0363r54;
        if (this.Q) {
            return false;
        }
        if (c0419u1.k) {
            return true;
        }
        C0419u1 c0419u12 = this.M;
        if (c0419u12 != null && c0419u12 != c0419u1) {
            q(c0419u12, false);
        }
        Window.Callback callback = this.l.getCallback();
        int i2 = c0419u1.a;
        if (callback != null) {
            c0419u1.g = callback.onCreatePanelView(i2);
        }
        if (i2 != 0 && i2 != 108) {
            z = false;
        } else {
            z = true;
        }
        if (z && (interfaceC0363r54 = this.r) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC0363r54;
            actionBarOverlayLayout.k();
            ((C0195ig) actionBarOverlayLayout.e).l = true;
        }
        if (c0419u1.g == null) {
            MenuC0230kb menuC0230kb = c0419u1.h;
            if (menuC0230kb == null || c0419u1.f280o) {
                if (menuC0230kb == null) {
                    Context context = this.k;
                    if ((i2 == 0 || i2 == 108) && this.r != null) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme2 = context.getTheme();
                        theme2.resolveAttribute(2130903051, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            theme = context.getResources().newTheme();
                            theme.setTo(theme2);
                            theme.applyStyle(typedValue.resourceId, true);
                            theme.resolveAttribute(2130903052, typedValue, true);
                        } else {
                            theme2.resolveAttribute(2130903052, typedValue, true);
                            theme = null;
                        }
                        if (typedValue.resourceId != 0) {
                            if (theme == null) {
                                theme = context.getResources().newTheme();
                                theme.setTo(theme2);
                            }
                            theme.applyStyle(typedValue.resourceId, true);
                        }
                        if (theme != null) {
                            V4 v4 = new V4(context, 0);
                            v4.getTheme().setTo(theme);
                            context = v4;
                        }
                    }
                    MenuC0230kb menuC0230kb2 = new MenuC0230kb(context);
                    menuC0230kb2.e = this;
                    MenuC0230kb menuC0230kb3 = c0419u1.h;
                    if (menuC0230kb2 != menuC0230kb3) {
                        if (menuC0230kb3 != null) {
                            menuC0230kb3.r(c0419u1.i);
                        }
                        c0419u1.h = menuC0230kb2;
                        C0090da c0090da = c0419u1.i;
                        if (c0090da != null) {
                            menuC0230kb2.b(c0090da, menuC0230kb2.a);
                        }
                    }
                    if (c0419u1.h == null) {
                        return false;
                    }
                }
                if (z && (interfaceC0363r52 = this.r) != null) {
                    if (this.s == null) {
                        this.s = new C0200j1(this, 2);
                    }
                    ((ActionBarOverlayLayout) interfaceC0363r52).l(c0419u1.h, this.s);
                }
                c0419u1.h.w();
                if (!callback.onCreatePanelMenu(i2, c0419u1.h)) {
                    MenuC0230kb menuC0230kb4 = c0419u1.h;
                    if (menuC0230kb4 != null) {
                        if (menuC0230kb4 != null) {
                            menuC0230kb4.r(c0419u1.i);
                        }
                        c0419u1.h = null;
                    }
                    if (z && (interfaceC0363r5 = this.r) != null) {
                        ((ActionBarOverlayLayout) interfaceC0363r5).l(null, this.s);
                    }
                    return false;
                }
                c0419u1.f280o = false;
            }
            c0419u1.h.w();
            Bundle bundle = c0419u1.p;
            if (bundle != null) {
                c0419u1.h.s(bundle);
                c0419u1.p = null;
            }
            if (!callback.onPreparePanel(0, c0419u1.g, c0419u1.h)) {
                if (z && (interfaceC0363r53 = this.r) != null) {
                    ((ActionBarOverlayLayout) interfaceC0363r53).l(null, this.s);
                }
                c0419u1.h.v();
                return false;
            }
            if (keyEvent != null) {
                i = keyEvent.getDeviceId();
            } else {
                i = -1;
            }
            if (KeyCharacterMap.load(i).getKeyboardType() != 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            c0419u1.h.setQwertyMode(z2);
            c0419u1.h.v();
        }
        c0419u1.k = true;
        c0419u1.l = false;
        this.M = c0419u1;
        return true;
    }

    public final void G() {
        if (!this.z) {
        } else {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final void H() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z = false;
            if (this.f0 != null && (y(0).m || this.u != null)) {
                z = true;
            }
            if (z && this.g0 == null) {
                this.g0 = AbstractC0300o1.b(this.f0, this);
            } else if (!z && (onBackInvokedCallback = this.g0) != null) {
                AbstractC0300o1.c(this.f0, onBackInvokedCallback);
                this.g0 = null;
            }
        }
    }

    @Override // o.AbstractC0161h1
    public final void a() {
        LayoutInflater from = LayoutInflater.from(this.k);
        if (from.getFactory() == null) {
            from.setFactory2(this);
        } else if (!(from.getFactory2() instanceof LayoutInflaterFactory2C0439v1)) {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // o.AbstractC0161h1
    public final void c() {
        String str;
        this.O = true;
        l(false, true);
        w();
        Object obj = this.j;
        if (obj instanceof Activity) {
            try {
                Activity activity = (Activity) obj;
                try {
                    str = Ha.R(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e) {
                    throw new IllegalArgumentException(e);
                }
            } catch (IllegalArgumentException unused) {
                str = null;
            }
            if (str != null) {
                C0396si c0396si = this.f288o;
                if (c0396si == null) {
                    this.b0 = true;
                } else {
                    c0396si.t0(true);
                }
            }
            synchronized (AbstractC0161h1.h) {
                AbstractC0161h1.e(this);
                AbstractC0161h1.g.add(new WeakReference(this));
            }
        }
        this.R = new Configuration(this.k.getResources().getConfiguration());
        this.P = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    @Override // o.AbstractC0161h1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.j
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L11
            java.lang.Object r0 = o.AbstractC0161h1.h
            monitor-enter(r0)
            o.AbstractC0161h1.e(r3)     // Catch: java.lang.Throwable -> Le
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            goto L11
        Le:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            throw r1
        L11:
            boolean r0 = r3.Y
            if (r0 == 0) goto L20
            android.view.Window r0 = r3.l
            android.view.View r0 = r0.getDecorView()
            o.i1 r1 = r3.a0
            r0.removeCallbacks(r1)
        L20:
            r0 = 1
            r3.Q = r0
            int r0 = r3.S
            r1 = -100
            if (r0 == r1) goto L4d
            java.lang.Object r0 = r3.j
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L4d
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L4d
            o.Qe r0 = o.LayoutInflaterFactory2C0439v1.h0
            java.lang.Object r1 = r3.j
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.S
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L5c
        L4d:
            o.Qe r0 = o.LayoutInflaterFactory2C0439v1.h0
            java.lang.Object r1 = r3.j
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L5c:
            o.q1 r0 = r3.W
            if (r0 == 0) goto L63
            r0.c()
        L63:
            o.q1 r0 = r3.X
            if (r0 == 0) goto L6a
            r0.c()
        L6a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: o.LayoutInflaterFactory2C0439v1.d():void");
    }

    @Override // o.AbstractC0161h1
    public final boolean f(int i) {
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i = 108;
        } else if (i == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i = 109;
        }
        if (this.J && i == 108) {
            return false;
        }
        if (this.F && i == 1) {
            this.F = false;
        }
        if (i != 1) {
            if (i != 2) {
                if (i != 5) {
                    if (i != 10) {
                        if (i != 108) {
                            if (i != 109) {
                                return this.l.requestFeature(i);
                            }
                            G();
                            this.G = true;
                            return true;
                        }
                        G();
                        this.F = true;
                        return true;
                    }
                    G();
                    this.H = true;
                    return true;
                }
                G();
                this.E = true;
                return true;
            }
            G();
            this.D = true;
            return true;
        }
        G();
        this.J = true;
        return true;
    }

    @Override // o.AbstractC0161h1
    public final void g(int i) {
        u();
        ViewGroup viewGroup = (ViewGroup) this.A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.k).inflate(i, viewGroup);
        this.m.a(this.l.getCallback());
    }

    @Override // o.AbstractC0161h1
    public final void h(View view) {
        u();
        ViewGroup viewGroup = (ViewGroup) this.A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.m.a(this.l.getCallback());
    }

    @Override // o.AbstractC0161h1
    public final void i(View view, ViewGroup.LayoutParams layoutParams) {
        u();
        ViewGroup viewGroup = (ViewGroup) this.A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.m.a(this.l.getCallback());
    }

    @Override // o.AbstractC0161h1
    public final void j(CharSequence charSequence) {
        this.q = charSequence;
        InterfaceC0363r5 interfaceC0363r5 = this.r;
        if (interfaceC0363r5 != null) {
            interfaceC0363r5.setWindowTitle(charSequence);
            return;
        }
        C0396si c0396si = this.f288o;
        if (c0396si != null) {
            C0195ig c0195ig = (C0195ig) c0396si.Y;
            if (!c0195ig.g) {
                c0195ig.h = charSequence;
                if ((c0195ig.b & 8) != 0) {
                    Toolbar toolbar = c0195ig.a;
                    toolbar.setTitle(charSequence);
                    if (c0195ig.g) {
                        Dh.m(toolbar.getRootView(), charSequence);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        TextView textView = this.B;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // o.InterfaceC0191ib
    public final boolean k(MenuC0230kb menuC0230kb, MenuItem menuItem) {
        int i;
        C0419u1 c0419u1;
        Window.Callback callback = this.l.getCallback();
        if (callback != null && !this.Q) {
            MenuC0230kb k = menuC0230kb.k();
            C0419u1[] c0419u1Arr = this.L;
            if (c0419u1Arr != null) {
                i = c0419u1Arr.length;
            } else {
                i = 0;
            }
            int i2 = 0;
            while (true) {
                if (i2 < i) {
                    c0419u1 = c0419u1Arr[i2];
                    if (c0419u1 != null && c0419u1.h == k) {
                        break;
                    }
                    i2++;
                } else {
                    c0419u1 = null;
                    break;
                }
            }
            if (c0419u1 != null) {
                return callback.onMenuItemSelected(c0419u1.a, menuItem);
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:145:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00fe A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0192  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean l(boolean r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 622
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.LayoutInflaterFactory2C0439v1.l(boolean, boolean):boolean");
    }

    public final void m(Window window) {
        Drawable drawable;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        OnBackInvokedCallback onBackInvokedCallback;
        int resourceId;
        if (this.l == null) {
            Window.Callback callback = window.getCallback();
            if (!(callback instanceof WindowCallbackC0320p1)) {
                WindowCallbackC0320p1 windowCallbackC0320p1 = new WindowCallbackC0320p1(this, callback);
                this.m = windowCallbackC0320p1;
                window.setCallback(windowCallbackC0320p1);
                int[] iArr = i0;
                Context context = this.k;
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
                if (obtainStyledAttributes.hasValue(0) && (resourceId = obtainStyledAttributes.getResourceId(0, 0)) != 0) {
                    C0498y1 a = C0498y1.a();
                    synchronized (a) {
                        drawable = a.a.d(context, resourceId, true);
                    }
                } else {
                    drawable = null;
                }
                if (drawable != null) {
                    window.setBackgroundDrawable(drawable);
                }
                obtainStyledAttributes.recycle();
                this.l = window;
                if (Build.VERSION.SDK_INT >= 33 && (onBackInvokedDispatcher = this.f0) == null) {
                    if (onBackInvokedDispatcher != null && (onBackInvokedCallback = this.g0) != null) {
                        AbstractC0300o1.c(onBackInvokedDispatcher, onBackInvokedCallback);
                        this.g0 = null;
                    }
                    Object obj = this.j;
                    if (obj instanceof Activity) {
                        Activity activity = (Activity) obj;
                        if (activity.getWindow() != null) {
                            this.f0 = AbstractC0300o1.a(activity);
                            H();
                            return;
                        }
                    }
                    this.f0 = null;
                    H();
                    return;
                }
                return;
            }
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    public final void o(int i, C0419u1 c0419u1, MenuC0230kb menuC0230kb) {
        if (menuC0230kb == null) {
            if (c0419u1 == null && i >= 0) {
                C0419u1[] c0419u1Arr = this.L;
                if (i < c0419u1Arr.length) {
                    c0419u1 = c0419u1Arr[i];
                }
            }
            if (c0419u1 != null) {
                menuC0230kb = c0419u1.h;
            }
        }
        if ((c0419u1 == null || c0419u1.m) && !this.Q) {
            WindowCallbackC0320p1 windowCallbackC0320p1 = this.m;
            Window.Callback callback = this.l.getCallback();
            windowCallbackC0320p1.getClass();
            try {
                windowCallbackC0320p1.d = true;
                callback.onPanelClosed(i, menuC0230kb);
            } finally {
                windowCallbackC0320p1.d = false;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x011a, code lost:
    
        if (r2.equals("ImageButton") == false) goto L24;
     */
    @Override // android.view.LayoutInflater.Factory2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onCreateView(android.view.View r17, java.lang.String r18, android.content.Context r19, android.util.AttributeSet r20) {
        /*
            Method dump skipped, instructions count: 750
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.LayoutInflaterFactory2C0439v1.onCreateView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }

    public final void p(MenuC0230kb menuC0230kb) {
        C0080d0 c0080d0;
        if (this.K) {
            return;
        }
        this.K = true;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.r;
        actionBarOverlayLayout.k();
        ActionMenuView actionMenuView = ((C0195ig) actionBarOverlayLayout.e).a.a;
        if (actionMenuView != null && (c0080d0 = actionMenuView.t) != null) {
            c0080d0.f();
            Z z = c0080d0.t;
            if (z != null && z.b()) {
                z.i.dismiss();
            }
        }
        Window.Callback callback = this.l.getCallback();
        if (callback != null && !this.Q) {
            callback.onPanelClosed(108, menuC0230kb);
        }
        this.K = false;
    }

    public final void q(C0419u1 c0419u1, boolean z) {
        C0399t1 c0399t1;
        InterfaceC0363r5 interfaceC0363r5;
        C0080d0 c0080d0;
        if (z && c0419u1.a == 0 && (interfaceC0363r5 = this.r) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC0363r5;
            actionBarOverlayLayout.k();
            ActionMenuView actionMenuView = ((C0195ig) actionBarOverlayLayout.e).a.a;
            if (actionMenuView != null && (c0080d0 = actionMenuView.t) != null && c0080d0.j()) {
                p(c0419u1.h);
                return;
            }
        }
        WindowManager windowManager = (WindowManager) this.k.getSystemService("window");
        if (windowManager != null && c0419u1.m && (c0399t1 = c0419u1.e) != null) {
            windowManager.removeView(c0399t1);
            if (z) {
                o(c0419u1.a, c0419u1, null);
            }
        }
        c0419u1.k = false;
        c0419u1.l = false;
        c0419u1.m = false;
        c0419u1.f279f = null;
        c0419u1.n = true;
        if (this.M == c0419u1) {
            this.M = null;
        }
        if (c0419u1.a == 0) {
            H();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x00db, code lost:
    
        if (r7.f() != false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0101, code lost:
    
        if (r7.l() != false) goto L90;
     */
    /* JADX WARN: Removed duplicated region for block: B:64:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean s(android.view.KeyEvent r7) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.LayoutInflaterFactory2C0439v1.s(android.view.KeyEvent):boolean");
    }

    public final void t(int i) {
        C0419u1 y = y(i);
        if (y.h != null) {
            Bundle bundle = new Bundle();
            y.h.t(bundle);
            if (bundle.size() > 0) {
                y.p = bundle;
            }
            y.h.w();
            y.h.clear();
        }
        y.f280o = true;
        y.n = true;
        if ((i == 108 || i == 0) && this.r != null) {
            C0419u1 y2 = y(0);
            y2.k = false;
            F(y2, null);
        }
    }

    public final void u() {
        ViewGroup viewGroup;
        CharSequence charSequence;
        Context context;
        int i = 1;
        int i2 = 0;
        if (!this.z) {
            int[] iArr = AbstractC0153gd.j;
            Context context2 = this.k;
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(iArr);
            if (obtainStyledAttributes.hasValue(117)) {
                if (obtainStyledAttributes.getBoolean(126, false)) {
                    f(1);
                } else if (obtainStyledAttributes.getBoolean(117, false)) {
                    f(108);
                }
                if (obtainStyledAttributes.getBoolean(118, false)) {
                    f(109);
                }
                if (obtainStyledAttributes.getBoolean(119, false)) {
                    f(10);
                }
                this.I = obtainStyledAttributes.getBoolean(0, false);
                obtainStyledAttributes.recycle();
                w();
                this.l.getDecorView();
                LayoutInflater from = LayoutInflater.from(context2);
                if (!this.J) {
                    if (this.I) {
                        viewGroup = (ViewGroup) from.inflate(2131427340, (ViewGroup) null);
                        this.G = false;
                        this.F = false;
                    } else if (this.F) {
                        TypedValue typedValue = new TypedValue();
                        context2.getTheme().resolveAttribute(2130903051, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            context = new V4(context2, typedValue.resourceId);
                        } else {
                            context = context2;
                        }
                        viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(2131427351, (ViewGroup) null);
                        InterfaceC0363r5 interfaceC0363r5 = (InterfaceC0363r5) viewGroup.findViewById(2131230868);
                        this.r = interfaceC0363r5;
                        interfaceC0363r5.setWindowCallback(this.l.getCallback());
                        if (this.G) {
                            ((ActionBarOverlayLayout) this.r).j(109);
                        }
                        if (this.D) {
                            ((ActionBarOverlayLayout) this.r).j(2);
                        }
                        if (this.E) {
                            ((ActionBarOverlayLayout) this.r).j(5);
                        }
                    } else {
                        viewGroup = null;
                    }
                } else {
                    viewGroup = this.H ? (ViewGroup) from.inflate(2131427350, (ViewGroup) null) : (ViewGroup) from.inflate(2131427349, (ViewGroup) null);
                }
                if (viewGroup != null) {
                    C0200j1 c0200j1 = new C0200j1(this, i2);
                    WeakHashMap weakHashMap = Dh.a;
                    AbstractC0455vh.l(viewGroup, c0200j1);
                    if (this.r == null) {
                        this.B = (TextView) viewGroup.findViewById(2131231198);
                    }
                    boolean z = Xh.a;
                    try {
                        Method method = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
                        if (!method.isAccessible()) {
                            method.setAccessible(true);
                        }
                        method.invoke(viewGroup, new Object[0]);
                    } catch (IllegalAccessException e) {
                        Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e);
                    } catch (NoSuchMethodException unused) {
                        Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
                    } catch (InvocationTargetException e2) {
                        Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e2);
                    }
                    ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(2131230773);
                    ViewGroup viewGroup2 = (ViewGroup) this.l.findViewById(R.id.content);
                    if (viewGroup2 != null) {
                        while (viewGroup2.getChildCount() > 0) {
                            View childAt = viewGroup2.getChildAt(0);
                            viewGroup2.removeViewAt(0);
                            contentFrameLayout.addView(childAt);
                        }
                        viewGroup2.setId(-1);
                        contentFrameLayout.setId(R.id.content);
                        if (viewGroup2 instanceof FrameLayout) {
                            ((FrameLayout) viewGroup2).setForeground(null);
                        }
                    }
                    this.l.setContentView(viewGroup);
                    contentFrameLayout.setAttachListener(new C0200j1(this, i));
                    this.A = viewGroup;
                    Object obj = this.j;
                    if (obj instanceof Activity) {
                        charSequence = ((Activity) obj).getTitle();
                    } else {
                        charSequence = this.q;
                    }
                    if (!TextUtils.isEmpty(charSequence)) {
                        InterfaceC0363r5 interfaceC0363r52 = this.r;
                        if (interfaceC0363r52 != null) {
                            interfaceC0363r52.setWindowTitle(charSequence);
                        } else {
                            C0396si c0396si = this.f288o;
                            if (c0396si != null) {
                                C0195ig c0195ig = (C0195ig) c0396si.Y;
                                if (!c0195ig.g) {
                                    c0195ig.h = charSequence;
                                    if ((c0195ig.b & 8) != 0) {
                                        Toolbar toolbar = c0195ig.a;
                                        toolbar.setTitle(charSequence);
                                        if (c0195ig.g) {
                                            Dh.m(toolbar.getRootView(), charSequence);
                                        }
                                    }
                                }
                            } else {
                                TextView textView = this.B;
                                if (textView != null) {
                                    textView.setText(charSequence);
                                }
                            }
                        }
                    }
                    ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.A.findViewById(R.id.content);
                    View decorView = this.l.getDecorView();
                    contentFrameLayout2.g.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
                    if (contentFrameLayout2.isLaidOut()) {
                        contentFrameLayout2.requestLayout();
                    }
                    TypedArray obtainStyledAttributes2 = context2.obtainStyledAttributes(iArr);
                    obtainStyledAttributes2.getValue(124, contentFrameLayout2.getMinWidthMajor());
                    obtainStyledAttributes2.getValue(125, contentFrameLayout2.getMinWidthMinor());
                    if (obtainStyledAttributes2.hasValue(122)) {
                        obtainStyledAttributes2.getValue(122, contentFrameLayout2.getFixedWidthMajor());
                    }
                    if (obtainStyledAttributes2.hasValue(123)) {
                        obtainStyledAttributes2.getValue(123, contentFrameLayout2.getFixedWidthMinor());
                    }
                    if (obtainStyledAttributes2.hasValue(120)) {
                        obtainStyledAttributes2.getValue(120, contentFrameLayout2.getFixedHeightMajor());
                    }
                    if (obtainStyledAttributes2.hasValue(121)) {
                        obtainStyledAttributes2.getValue(121, contentFrameLayout2.getFixedHeightMinor());
                    }
                    obtainStyledAttributes2.recycle();
                    contentFrameLayout2.requestLayout();
                    this.z = true;
                    C0419u1 y = y(0);
                    if (!this.Q && y.h == null) {
                        A(108);
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.F + ", windowActionBarOverlay: " + this.G + ", android:windowIsFloating: " + this.I + ", windowActionModeOverlay: " + this.H + ", windowNoTitle: " + this.J + " }");
            }
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0048, code lost:
    
        if (r6.j() != false) goto L20;
     */
    @Override // o.InterfaceC0191ib
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void v(o.MenuC0230kb r6) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.LayoutInflaterFactory2C0439v1.v(o.kb):void");
    }

    public final void w() {
        if (this.l == null) {
            Object obj = this.j;
            if (obj instanceof Activity) {
                m(((Activity) obj).getWindow());
            }
        }
        if (this.l != null) {
        } else {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    public final AbstractC0379s1 x(Context context) {
        if (this.W == null) {
            if (C0380s2.g == null) {
                Context applicationContext = context.getApplicationContext();
                C0380s2.g = new C0380s2(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.W = new C0340q1(this, C0380s2.g);
        }
        return this.W;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0006, code lost:
    
        if (r2 <= r5) goto L6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [o.u1, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final o.C0419u1 y(int r5) {
        /*
            r4 = this;
            o.u1[] r0 = r4.L
            r1 = 0
            if (r0 == 0) goto L8
            int r2 = r0.length
            if (r2 > r5) goto L15
        L8:
            int r2 = r5 + 1
            o.u1[] r2 = new o.C0419u1[r2]
            if (r0 == 0) goto L12
            int r3 = r0.length
            java.lang.System.arraycopy(r0, r1, r2, r1, r3)
        L12:
            r4.L = r2
            r0 = r2
        L15:
            r2 = r0[r5]
            if (r2 != 0) goto L24
            o.u1 r2 = new o.u1
            r2.<init>()
            r2.a = r5
            r2.n = r1
            r0[r5] = r2
        L24:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: o.LayoutInflaterFactory2C0439v1.y(int):o.u1");
    }

    public final void z() {
        u();
        if (this.F && this.f288o == null) {
            Object obj = this.j;
            if (obj instanceof Activity) {
                this.f288o = new C0396si((Activity) obj, this.G);
            } else if (obj instanceof Dialog) {
                this.f288o = new C0396si((Dialog) obj);
            }
            C0396si c0396si = this.f288o;
            if (c0396si != null) {
                c0396si.t0(this.b0);
            }
        }
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
