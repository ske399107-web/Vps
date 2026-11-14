package o;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* renamed from: o.j1, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0200j1 implements InterfaceC0112ec, P4, InterfaceC0527zb {
    public final /* synthetic */ int a;
    public final /* synthetic */ LayoutInflaterFactory2C0439v1 b;

    public /* synthetic */ C0200j1(LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1, int i) {
        this.a = i;
        this.b = layoutInflaterFactory2C0439v1;
    }

    @Override // o.InterfaceC0527zb
    public void a(MenuC0230kb menuC0230kb, boolean z) {
        boolean z2;
        int i;
        C0419u1 c0419u1;
        switch (this.a) {
            case 2:
                this.b.p(menuC0230kb);
                return;
            default:
                MenuC0230kb k = menuC0230kb.k();
                int i2 = 0;
                if (k != menuC0230kb) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    menuC0230kb = k;
                }
                LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = this.b;
                C0419u1[] c0419u1Arr = layoutInflaterFactory2C0439v1.L;
                if (c0419u1Arr != null) {
                    i = c0419u1Arr.length;
                } else {
                    i = 0;
                }
                while (true) {
                    if (i2 < i) {
                        c0419u1 = c0419u1Arr[i2];
                        if (c0419u1 == null || c0419u1.h != menuC0230kb) {
                            i2++;
                        }
                    } else {
                        c0419u1 = null;
                    }
                }
                if (c0419u1 != null) {
                    if (z2) {
                        layoutInflaterFactory2C0439v1.o(c0419u1.a, c0419u1, k);
                        layoutInflaterFactory2C0439v1.q(c0419u1, true);
                        return;
                    } else {
                        layoutInflaterFactory2C0439v1.q(c0419u1, z);
                        return;
                    }
                }
                return;
        }
    }

    @Override // o.InterfaceC0527zb
    public boolean g(MenuC0230kb menuC0230kb) {
        Window.Callback callback;
        switch (this.a) {
            case 2:
                Window.Callback callback2 = this.b.l.getCallback();
                if (callback2 != null) {
                    callback2.onMenuOpened(108, menuC0230kb);
                    return true;
                }
                return true;
            default:
                if (menuC0230kb == menuC0230kb.k()) {
                    LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = this.b;
                    if (layoutInflaterFactory2C0439v1.F && (callback = layoutInflaterFactory2C0439v1.l.getCallback()) != null && !layoutInflaterFactory2C0439v1.Q) {
                        callback.onMenuOpened(108, menuC0230kb);
                        return true;
                    }
                    return true;
                }
                return true;
        }
    }

    @Override // o.InterfaceC0112ec
    public Mi w(View view, Mi mi) {
        int i;
        boolean z;
        Mi mi2;
        Ei ai;
        int i2;
        int b;
        int c;
        boolean z2;
        int color;
        int d = mi.d();
        LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = this.b;
        layoutInflaterFactory2C0439v1.getClass();
        int d2 = mi.d();
        ActionBarContextView actionBarContextView = layoutInflaterFactory2C0439v1.v;
        if (actionBarContextView != null && (actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutInflaterFactory2C0439v1.v.getLayoutParams();
            boolean z3 = true;
            if (layoutInflaterFactory2C0439v1.v.isShown()) {
                if (layoutInflaterFactory2C0439v1.c0 == null) {
                    layoutInflaterFactory2C0439v1.c0 = new Rect();
                    layoutInflaterFactory2C0439v1.d0 = new Rect();
                }
                Rect rect = layoutInflaterFactory2C0439v1.c0;
                Rect rect2 = layoutInflaterFactory2C0439v1.d0;
                rect.set(mi.b(), mi.d(), mi.c(), mi.a());
                ViewGroup viewGroup = layoutInflaterFactory2C0439v1.A;
                if (Build.VERSION.SDK_INT >= 29) {
                    boolean z4 = Xh.a;
                    Uh.a(viewGroup, rect, rect2);
                } else {
                    if (!Xh.a) {
                        Xh.a = true;
                        try {
                            Method declaredMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
                            Xh.b = declaredMethod;
                            if (!declaredMethod.isAccessible()) {
                                Xh.b.setAccessible(true);
                            }
                        } catch (NoSuchMethodException unused) {
                            Log.d("ViewUtils", "Could not find method computeFitSystemWindows. Oh well.");
                        }
                    }
                    Method method = Xh.b;
                    if (method != null) {
                        try {
                            method.invoke(viewGroup, rect, rect2);
                        } catch (Exception e) {
                            Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e);
                        }
                    }
                }
                int i3 = rect.top;
                int i4 = rect.left;
                int i5 = rect.right;
                ViewGroup viewGroup2 = layoutInflaterFactory2C0439v1.A;
                WeakHashMap weakHashMap = Dh.a;
                Mi a = AbstractC0475wh.a(viewGroup2);
                if (a == null) {
                    b = 0;
                } else {
                    b = a.b();
                }
                if (a == null) {
                    c = 0;
                } else {
                    c = a.c();
                }
                if (marginLayoutParams.topMargin == i3 && marginLayoutParams.leftMargin == i4 && marginLayoutParams.rightMargin == i5) {
                    z2 = false;
                } else {
                    marginLayoutParams.topMargin = i3;
                    marginLayoutParams.leftMargin = i4;
                    marginLayoutParams.rightMargin = i5;
                    z2 = true;
                }
                Context context = layoutInflaterFactory2C0439v1.k;
                if (i3 > 0 && layoutInflaterFactory2C0439v1.C == null) {
                    View view2 = new View(context);
                    layoutInflaterFactory2C0439v1.C = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = b;
                    layoutParams.rightMargin = c;
                    layoutInflaterFactory2C0439v1.A.addView(layoutInflaterFactory2C0439v1.C, -1, layoutParams);
                } else {
                    View view3 = layoutInflaterFactory2C0439v1.C;
                    if (view3 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view3.getLayoutParams();
                        int i6 = marginLayoutParams2.height;
                        int i7 = marginLayoutParams.topMargin;
                        if (i6 != i7 || marginLayoutParams2.leftMargin != b || marginLayoutParams2.rightMargin != c) {
                            marginLayoutParams2.height = i7;
                            marginLayoutParams2.leftMargin = b;
                            marginLayoutParams2.rightMargin = c;
                            layoutInflaterFactory2C0439v1.C.setLayoutParams(marginLayoutParams2);
                        }
                    }
                }
                View view4 = layoutInflaterFactory2C0439v1.C;
                if (view4 == null) {
                    z3 = false;
                }
                if (z3 && view4.getVisibility() != 0) {
                    View view5 = layoutInflaterFactory2C0439v1.C;
                    if ((view5.getWindowSystemUiVisibility() & 8192) != 0) {
                        color = context.getColor(2131034118);
                    } else {
                        color = context.getColor(2131034117);
                    }
                    view5.setBackgroundColor(color);
                }
                if (!layoutInflaterFactory2C0439v1.H && z3) {
                    d2 = 0;
                }
                z = z3;
                z3 = z2;
                i = 0;
            } else {
                i = 0;
                if (marginLayoutParams.topMargin != 0) {
                    marginLayoutParams.topMargin = 0;
                    z = false;
                } else {
                    z = false;
                    z3 = false;
                }
            }
            if (z3) {
                layoutInflaterFactory2C0439v1.v.setLayoutParams(marginLayoutParams);
            }
        } else {
            i = 0;
            z = false;
        }
        View view6 = layoutInflaterFactory2C0439v1.C;
        if (view6 != null) {
            if (z) {
                i2 = i;
            } else {
                i2 = 8;
            }
            view6.setVisibility(i2);
        }
        if (d != d2) {
            int b2 = mi.b();
            int c2 = mi.c();
            int a2 = mi.a();
            int i8 = Build.VERSION.SDK_INT;
            if (i8 >= 30) {
                ai = new Di(mi);
            } else if (i8 >= 29) {
                ai = new Ci(mi);
            } else {
                ai = new Ai(mi);
            }
            ai.g(C0407t9.b(b2, d2, c2, a2));
            mi2 = ai.b();
        } else {
            mi2 = mi;
        }
        WeakHashMap weakHashMap2 = Dh.a;
        WindowInsets f2 = mi2.f();
        if (f2 != null) {
            WindowInsets b3 = AbstractC0415th.b(view, f2);
            if (!b3.equals(f2)) {
                return Mi.g(view, b3);
            }
            return mi2;
        }
        return mi2;
    }
}
