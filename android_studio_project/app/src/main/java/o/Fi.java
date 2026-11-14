package o;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Fi extends Ki {
    public static boolean h;
    public static Method i;
    public static Class j;
    public static Field k;
    public static Field l;
    public final WindowInsets c;
    public C0407t9[] d;
    public C0407t9 e;

    /* renamed from: f, reason: collision with root package name */
    public Mi f91f;
    public C0407t9 g;

    public Fi(Mi mi, WindowInsets windowInsets) {
        super(mi);
        this.e = null;
        this.c = windowInsets;
    }

    @SuppressLint({"WrongConstant"})
    private C0407t9 r(int i2, boolean z) {
        C0407t9 c0407t9 = C0407t9.e;
        for (int i3 = 1; i3 <= 256; i3 <<= 1) {
            if ((i2 & i3) != 0) {
                c0407t9 = C0407t9.a(c0407t9, s(i3, z));
            }
        }
        return c0407t9;
    }

    private C0407t9 t() {
        Mi mi = this.f91f;
        if (mi != null) {
            return mi.a.h();
        }
        return C0407t9.e;
    }

    private C0407t9 u(View view) {
        if (Build.VERSION.SDK_INT < 30) {
            if (!h) {
                v();
            }
            Method method = i;
            if (method != null && j != null && k != null) {
                try {
                    Object invoke = method.invoke(view, new Object[0]);
                    if (invoke == null) {
                        Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                        return null;
                    }
                    Rect rect = (Rect) k.get(l.get(invoke));
                    if (rect == null) {
                        return null;
                    }
                    return C0407t9.b(rect.left, rect.top, rect.right, rect.bottom);
                } catch (ReflectiveOperationException e) {
                    Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
                }
            }
            return null;
        }
        throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
    }

    @SuppressLint({"PrivateApi"})
    private static void v() {
        try {
            i = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            j = cls;
            k = cls.getDeclaredField("mVisibleInsets");
            l = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
            k.setAccessible(true);
            l.setAccessible(true);
        } catch (ReflectiveOperationException e) {
            Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
        }
        h = true;
    }

    @Override // o.Ki
    public void d(View view) {
        C0407t9 u = u(view);
        if (u == null) {
            u = C0407t9.e;
        }
        w(u);
    }

    @Override // o.Ki
    public boolean equals(Object obj) {
        if (!super.equals(obj)) {
            return false;
        }
        return Objects.equals(this.g, ((Fi) obj).g);
    }

    @Override // o.Ki
    public C0407t9 f(int i2) {
        return r(i2, false);
    }

    @Override // o.Ki
    public final C0407t9 j() {
        if (this.e == null) {
            WindowInsets windowInsets = this.c;
            this.e = C0407t9.b(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        return this.e;
    }

    @Override // o.Ki
    public Mi l(int i2, int i3, int i4, int i5) {
        Ei ai;
        Mi g = Mi.g(null, this.c);
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 30) {
            ai = new Di(g);
        } else if (i6 >= 29) {
            ai = new Ci(g);
        } else {
            ai = new Ai(g);
        }
        ai.g(Mi.e(j(), i2, i3, i4, i5));
        ai.e(Mi.e(h(), i2, i3, i4, i5));
        return ai.b();
    }

    @Override // o.Ki
    public boolean n() {
        return this.c.isRound();
    }

    @Override // o.Ki
    public void o(C0407t9[] c0407t9Arr) {
        this.d = c0407t9Arr;
    }

    @Override // o.Ki
    public void p(Mi mi) {
        this.f91f = mi;
    }

    public C0407t9 s(int i2, boolean z) {
        int i3;
        C0066c6 e;
        int i4;
        int i5;
        int i6;
        int i7 = 0;
        if (i2 != 1) {
            C0407t9 c0407t9 = null;
            if (i2 != 2) {
                C0407t9 c0407t92 = C0407t9.e;
                if (i2 != 8) {
                    if (i2 != 16) {
                        if (i2 != 32) {
                            if (i2 != 64) {
                                if (i2 != 128) {
                                    return c0407t92;
                                }
                                Mi mi = this.f91f;
                                if (mi != null) {
                                    e = mi.a.e();
                                } else {
                                    e = e();
                                }
                                if (e != null) {
                                    int i8 = Build.VERSION.SDK_INT;
                                    if (i8 >= 28) {
                                        i4 = AbstractC0046b6.e(e.a);
                                    } else {
                                        i4 = 0;
                                    }
                                    if (i8 >= 28) {
                                        i5 = AbstractC0046b6.g(e.a);
                                    } else {
                                        i5 = 0;
                                    }
                                    if (i8 >= 28) {
                                        i6 = AbstractC0046b6.f(e.a);
                                    } else {
                                        i6 = 0;
                                    }
                                    if (i8 >= 28) {
                                        i7 = AbstractC0046b6.d(e.a);
                                    }
                                    return C0407t9.b(i4, i5, i6, i7);
                                }
                                return c0407t92;
                            }
                            return k();
                        }
                        return g();
                    }
                    return i();
                }
                C0407t9[] c0407t9Arr = this.d;
                if (c0407t9Arr != null) {
                    c0407t9 = c0407t9Arr[Ng.k(8)];
                }
                if (c0407t9 != null) {
                    return c0407t9;
                }
                C0407t9 j2 = j();
                C0407t9 t = t();
                int i9 = j2.d;
                if (i9 > t.d) {
                    return C0407t9.b(0, 0, 0, i9);
                }
                C0407t9 c0407t93 = this.g;
                if (c0407t93 != null && !c0407t93.equals(c0407t92) && (i3 = this.g.d) > t.d) {
                    return C0407t9.b(0, 0, 0, i3);
                }
                return c0407t92;
            }
            if (z) {
                C0407t9 t2 = t();
                C0407t9 h2 = h();
                return C0407t9.b(Math.max(t2.a, h2.a), 0, Math.max(t2.c, h2.c), Math.max(t2.d, h2.d));
            }
            C0407t9 j3 = j();
            Mi mi2 = this.f91f;
            if (mi2 != null) {
                c0407t9 = mi2.a.h();
            }
            int i10 = j3.d;
            if (c0407t9 != null) {
                i10 = Math.min(i10, c0407t9.d);
            }
            return C0407t9.b(j3.a, 0, j3.c, i10);
        }
        if (z) {
            return C0407t9.b(0, Math.max(t().b, j().b), 0, 0);
        }
        return C0407t9.b(0, j().b, 0, 0);
    }

    public void w(C0407t9 c0407t9) {
        this.g = c0407t9;
    }
}
