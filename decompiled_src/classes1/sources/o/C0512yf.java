package o;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.Log;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* renamed from: o.yf, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0512yf {
    public CharSequence A;
    public CharSequence B;
    public final /* synthetic */ C0531zf E;
    public final Menu a;
    public boolean h;
    public int i;
    public int j;
    public CharSequence k;
    public CharSequence l;
    public int m;
    public char n;

    /* renamed from: o, reason: collision with root package name */
    public int f305o;
    public char p;
    public int q;
    public int r;
    public boolean s;
    public boolean t;
    public boolean u;
    public int v;
    public int w;
    public String x;
    public String y;
    public ActionProviderVisibilityListenerC0310ob z;
    public ColorStateList C = null;
    public PorterDuff.Mode D = null;
    public int b = 0;
    public int c = 0;
    public int d = 0;
    public int e = 0;

    /* renamed from: f, reason: collision with root package name */
    public boolean f304f = true;
    public boolean g = true;

    public C0512yf(C0531zf c0531zf, Menu menu) {
        this.E = c0531zf;
        this.a = menu;
    }

    public final Object a(String str, Class[] clsArr, Object[] objArr) {
        try {
            Constructor<?> constructor = Class.forName(str, false, this.E.c.getClassLoader()).getConstructor(clsArr);
            constructor.setAccessible(true);
            return constructor.newInstance(objArr);
        } catch (Exception e) {
            Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e);
            return null;
        }
    }

    public final void b(MenuItem menuItem) {
        boolean z;
        MenuItem enabled = menuItem.setChecked(this.s).setVisible(this.t).setEnabled(this.u);
        boolean z2 = false;
        if (this.r >= 1) {
            z = true;
        } else {
            z = false;
        }
        enabled.setCheckable(z).setTitleCondensed(this.l).setIcon(this.m);
        int i = this.v;
        if (i >= 0) {
            menuItem.setShowAsAction(i);
        }
        String str = this.y;
        C0531zf c0531zf = this.E;
        if (str != null) {
            if (!c0531zf.c.isRestricted()) {
                if (c0531zf.d == null) {
                    c0531zf.d = C0531zf.a(c0531zf.c);
                }
                Object obj = c0531zf.d;
                String str2 = this.y;
                MenuItemOnMenuItemClickListenerC0493xf menuItemOnMenuItemClickListenerC0493xf = new MenuItemOnMenuItemClickListenerC0493xf();
                menuItemOnMenuItemClickListenerC0493xf.b = obj;
                Class<?> cls = obj.getClass();
                try {
                    menuItemOnMenuItemClickListenerC0493xf.c = cls.getMethod(str2, MenuItemOnMenuItemClickListenerC0493xf.d);
                    menuItem.setOnMenuItemClickListener(menuItemOnMenuItemClickListenerC0493xf);
                } catch (Exception e) {
                    StringBuilder p = Ve.p("Couldn't resolve menu item onClick handler ", str2, " in class ");
                    p.append(cls.getName());
                    InflateException inflateException = new InflateException(p.toString());
                    inflateException.initCause(e);
                    throw inflateException;
                }
            } else {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
        }
        if (this.r >= 2) {
            if (menuItem instanceof C0290nb) {
                C0290nb c0290nb = (C0290nb) menuItem;
                c0290nb.x = (c0290nb.x & (-5)) | 4;
            } else if (menuItem instanceof MenuItemC0369rb) {
                MenuItemC0369rb menuItemC0369rb = (MenuItemC0369rb) menuItem;
                try {
                    Method method = menuItemC0369rb.d;
                    Af af = menuItemC0369rb.c;
                    if (method == null) {
                        menuItemC0369rb.d = af.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                    }
                    menuItemC0369rb.d.invoke(af, Boolean.TRUE);
                } catch (Exception e2) {
                    Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e2);
                }
            }
        }
        String str3 = this.x;
        if (str3 != null) {
            menuItem.setActionView((View) a(str3, C0531zf.e, c0531zf.a));
            z2 = true;
        }
        int i2 = this.w;
        if (i2 > 0) {
            if (!z2) {
                menuItem.setActionView(i2);
            } else {
                Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
            }
        }
        ActionProviderVisibilityListenerC0310ob actionProviderVisibilityListenerC0310ob = this.z;
        if (actionProviderVisibilityListenerC0310ob != null) {
            if (menuItem instanceof Af) {
                ((Af) menuItem).a(actionProviderVisibilityListenerC0310ob);
            } else {
                Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
            }
        }
        CharSequence charSequence = this.A;
        boolean z3 = menuItem instanceof Af;
        if (z3) {
            ((Af) menuItem).setContentDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            AbstractC0208j9.h(menuItem, charSequence);
        }
        CharSequence charSequence2 = this.B;
        if (z3) {
            ((Af) menuItem).setTooltipText(charSequence2);
        } else if (Build.VERSION.SDK_INT >= 26) {
            AbstractC0208j9.p(menuItem, charSequence2);
        }
        char c = this.n;
        int i3 = this.f305o;
        if (z3) {
            ((Af) menuItem).setAlphabeticShortcut(c, i3);
        } else if (Build.VERSION.SDK_INT >= 26) {
            AbstractC0208j9.f(menuItem, c, i3);
        }
        char c2 = this.p;
        int i4 = this.q;
        if (z3) {
            ((Af) menuItem).setNumericShortcut(c2, i4);
        } else if (Build.VERSION.SDK_INT >= 26) {
            AbstractC0208j9.l(menuItem, c2, i4);
        }
        PorterDuff.Mode mode = this.D;
        if (mode != null) {
            if (z3) {
                ((Af) menuItem).setIconTintMode(mode);
            } else if (Build.VERSION.SDK_INT >= 26) {
                AbstractC0208j9.k(menuItem, mode);
            }
        }
        ColorStateList colorStateList = this.C;
        if (colorStateList != null) {
            if (z3) {
                ((Af) menuItem).setIconTintList(colorStateList);
            } else if (Build.VERSION.SDK_INT >= 26) {
                AbstractC0208j9.j(menuItem, colorStateList);
            }
        }
    }
}
