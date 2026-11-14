package o;

import android.R;
import android.content.res.Configuration;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.util.WeakHashMap;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Ng implements Rh {
    public static boolean a = true;
    public static boolean b = true;
    public static Field c;
    public static boolean d;

    public static ViewGroup f(View view) {
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(R.id.content);
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rootView == view || !(rootView instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) rootView;
    }

    public static Oh g(View view) {
        ViewGroup f2 = f(view);
        if (f2 == null) {
            return null;
        }
        return new Oh(f2);
    }

    public static int k(int i) {
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            if (i == 4) {
                return 2;
            }
            if (i != 8) {
                if (i == 16) {
                    return 4;
                }
                if (i != 32) {
                    if (i != 64) {
                        if (i != 128) {
                            if (i == 256) {
                                return 8;
                            }
                            throw new IllegalArgumentException(AbstractC0214jf.a(i, "type needs to be >= FIRST and <= LAST, type="));
                        }
                        return 7;
                    }
                    return 6;
                }
                return 5;
            }
            return 3;
        }
        return 0;
    }

    public static boolean l(View view) {
        WeakHashMap weakHashMap = Dh.a;
        if (view.getLayoutDirection() == 1) {
            return true;
        }
        return false;
    }

    public static Typeface m(Configuration configuration, Typeface typeface) {
        int i;
        int i2;
        int weight;
        int i3;
        Typeface create;
        if (Build.VERSION.SDK_INT >= 31) {
            i = configuration.fontWeightAdjustment;
            if (i != Integer.MAX_VALUE) {
                i2 = configuration.fontWeightAdjustment;
                if (i2 != 0 && typeface != null) {
                    weight = typeface.getWeight();
                    i3 = configuration.fontWeightAdjustment;
                    create = Typeface.create(typeface, Ha.i(i3 + weight, 1, 1000), typeface.isItalic());
                    return create;
                }
                return null;
            }
            return null;
        }
        return null;
    }

    public static PorterDuff.Mode r(int i, PorterDuff.Mode mode) {
        if (i != 3) {
            if (i != 5) {
                if (i != 9) {
                    switch (i) {
                        case 14:
                            return PorterDuff.Mode.MULTIPLY;
                        case 15:
                            return PorterDuff.Mode.SCREEN;
                        case 16:
                            return PorterDuff.Mode.ADD;
                        default:
                            return mode;
                    }
                }
                return PorterDuff.Mode.SRC_ATOP;
            }
            return PorterDuff.Mode.SRC_IN;
        }
        return PorterDuff.Mode.SRC_OVER;
    }

    public static final void s(View view, R9 r9) {
        AbstractC0487x9.o(view, "<this>");
        view.setTag(2131231225, r9);
    }

    public static final void t(View view, InterfaceC0271mc interfaceC0271mc) {
        AbstractC0487x9.o(view, "<this>");
        view.setTag(2131231226, interfaceC0271mc);
    }

    public static final void u(View view, InterfaceC0412te interfaceC0412te) {
        AbstractC0487x9.o(view, "<this>");
        view.setTag(2131231227, interfaceC0412te);
    }

    public static void z(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            Gh.b(viewGroup, z);
        } else if (a) {
            try {
                Gh.b(viewGroup, z);
            } catch (NoSuchMethodError unused) {
                a = false;
            }
        }
    }

    public abstract boolean A(View view, int i);

    @Override // o.Rh
    public void b() {
    }

    @Override // o.Rh
    public void c() {
    }

    public abstract int d(View view, int i);

    public abstract int e(View view, int i);

    public float h(View view) {
        if (b) {
            try {
                return Yh.a(view);
            } catch (NoSuchMethodError unused) {
                b = false;
            }
        }
        return view.getAlpha();
    }

    public int i(View view) {
        return 0;
    }

    public int j() {
        return 0;
    }

    public void n(View view, int i) {
    }

    public abstract void o(int i);

    public abstract void p(View view, int i, int i2);

    public abstract void q(View view, float f2, float f3);

    public void v(boolean z) {
    }

    public abstract void w(boolean z);

    public void x(View view, float f2) {
        if (b) {
            try {
                Yh.b(view, f2);
                return;
            } catch (NoSuchMethodError unused) {
                b = false;
            }
        }
        view.setAlpha(f2);
    }

    public void y(View view, int i) {
        if (!d) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                c = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                Log.i("ViewUtilsApi19", "fetchViewFlagsField: ");
            }
            d = true;
        }
        Field field = c;
        if (field != null) {
            try {
                c.setInt(view, i | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused2) {
            }
        }
    }
}
