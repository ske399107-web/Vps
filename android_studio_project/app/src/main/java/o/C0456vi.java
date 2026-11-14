package o;

import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.PathInterpolator;
import java.util.List;

/* renamed from: o.vi, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0456vi extends yi {
    public static final PathInterpolator e = new PathInterpolator(0.0f, 1.1f, 0.0f, 1.0f);

    /* renamed from: f, reason: collision with root package name */
    public static final C0306o7 f289f = new C0306o7();
    public static final DecelerateInterpolator g = new DecelerateInterpolator();

    public static void e(View view) {
        R4 j = j(view);
        if (j != null) {
            ((View) j.e).setTranslationY(0.0f);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                e(viewGroup.getChildAt(i));
            }
        }
    }

    public static void f(View view, WindowInsets windowInsets, boolean z) {
        R4 j = j(view);
        if (j != null) {
            j.b = windowInsets;
            if (!z) {
                View view2 = (View) j.e;
                int[] iArr = (int[]) j.f142f;
                view2.getLocationOnScreen(iArr);
                z = true;
                j.c = iArr[1];
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                f(viewGroup.getChildAt(i), windowInsets, z);
            }
        }
    }

    public static void g(View view, Mi mi, List list) {
        R4 j = j(view);
        if (j != null) {
            j.a(mi, list);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                g(viewGroup.getChildAt(i), mi, list);
            }
        }
    }

    public static void h(View view, H1 h1) {
        R4 j = j(view);
        if (j != null) {
            View view2 = (View) j.e;
            int[] iArr = (int[]) j.f142f;
            view2.getLocationOnScreen(iArr);
            int i = j.c - iArr[1];
            j.d = i;
            view2.setTranslationY(i);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                h(viewGroup.getChildAt(i2), h1);
            }
        }
    }

    public static WindowInsets i(View view, WindowInsets windowInsets) {
        if (view.getTag(2131231172) != null) {
            return windowInsets;
        }
        return view.onApplyWindowInsets(windowInsets);
    }

    public static R4 j(View view) {
        Object tag = view.getTag(2131231180);
        if (tag instanceof ViewOnApplyWindowInsetsListenerC0436ui) {
            return ((ViewOnApplyWindowInsetsListenerC0436ui) tag).a;
        }
        return null;
    }
}
