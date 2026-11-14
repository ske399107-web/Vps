package o;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import java.lang.reflect.Constructor;

/* renamed from: o.r2, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C0360r2 {
    public static final Class[] b = {Context.class, AttributeSet.class};
    public static final int[] c = {R.attr.onClick};
    public static final int[] d = {R.attr.accessibilityHeading};
    public static final int[] e = {R.attr.accessibilityPaneTitle};

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f270f = {R.attr.screenReaderFocusable};
    public static final String[] g = {"android.widget.", "android.view.", "android.webkit."};
    public static final Qe h = new Qe(0);
    public final Object[] a = new Object[2];

    public V0 a(Context context, AttributeSet attributeSet) {
        return new V0(context, attributeSet);
    }

    public X0 b(Context context, AttributeSet attributeSet) {
        return new X0(context, attributeSet, 2130903190);
    }

    public Z0 c(Context context, AttributeSet attributeSet) {
        return new Z0(context, attributeSet, 2130903218);
    }

    public I1 d(Context context, AttributeSet attributeSet) {
        return new I1(context, attributeSet);
    }

    public C0201j2 e(Context context, AttributeSet attributeSet) {
        return new C0201j2(context, attributeSet);
    }

    public final View f(Context context, String str, String str2) {
        String concat;
        Qe qe = h;
        Constructor constructor = (Constructor) qe.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    concat = str2.concat(str);
                } catch (Exception unused) {
                    return null;
                }
            } else {
                concat = str;
            }
            constructor = Class.forName(concat, false, context.getClassLoader()).asSubclass(View.class).getConstructor(b);
            qe.put(str, constructor);
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.a);
    }
}
