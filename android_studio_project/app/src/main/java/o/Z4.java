package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Z4 extends ViewGroup.MarginLayoutParams {
    public W4 a;
    public boolean b;
    public final int c;
    public final int d;
    public final int e;

    /* renamed from: f, reason: collision with root package name */
    public final int f171f;
    public final int g;
    public int h;
    public int i;
    public int j;
    public View k;
    public View l;
    public boolean m;
    public boolean n;

    /* renamed from: o, reason: collision with root package name */
    public final Rect f172o;

    public Z4() {
        super(-2, -2);
        this.b = false;
        this.c = 0;
        this.d = 0;
        this.e = -1;
        this.f171f = -1;
        this.g = 0;
        this.h = 0;
        this.f172o = new Rect();
    }

    public final boolean a(int i) {
        if (i != 0) {
            if (i != 1) {
                return false;
            }
            return this.n;
        }
        return this.m;
    }

    public Z4(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        W4 w4;
        this.b = false;
        this.c = 0;
        this.d = 0;
        this.e = -1;
        this.f171f = -1;
        this.g = 0;
        this.h = 0;
        this.f172o = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0053bd.b);
        this.c = obtainStyledAttributes.getInteger(0, 0);
        this.f171f = obtainStyledAttributes.getResourceId(1, -1);
        this.d = obtainStyledAttributes.getInteger(2, 0);
        this.e = obtainStyledAttributes.getInteger(6, -1);
        this.g = obtainStyledAttributes.getInt(5, 0);
        this.h = obtainStyledAttributes.getInt(4, 0);
        boolean hasValue = obtainStyledAttributes.hasValue(3);
        this.b = hasValue;
        if (hasValue) {
            String string = obtainStyledAttributes.getString(3);
            String str = CoordinatorLayout.t;
            if (TextUtils.isEmpty(string)) {
                w4 = null;
            } else {
                if (string.startsWith(".")) {
                    string = context.getPackageName() + string;
                } else if (string.indexOf(46) < 0) {
                    String str2 = CoordinatorLayout.t;
                    if (!TextUtils.isEmpty(str2)) {
                        string = str2 + '.' + string;
                    }
                }
                try {
                    ThreadLocal threadLocal = CoordinatorLayout.v;
                    Map map = (Map) threadLocal.get();
                    if (map == null) {
                        map = new HashMap();
                        threadLocal.set(map);
                    }
                    Constructor<?> constructor = (Constructor) map.get(string);
                    if (constructor == null) {
                        constructor = Class.forName(string, false, context.getClassLoader()).getConstructor(CoordinatorLayout.u);
                        constructor.setAccessible(true);
                        map.put(string, constructor);
                    }
                    w4 = (W4) constructor.newInstance(context, attributeSet);
                } catch (Exception e) {
                    throw new RuntimeException(Ve.y("Could not inflate Behavior subclass ", string), e);
                }
            }
            this.a = w4;
        }
        obtainStyledAttributes.recycle();
        W4 w42 = this.a;
        if (w42 != null) {
            w42.c(this);
        }
    }

    public Z4(Z4 z4) {
        super((ViewGroup.MarginLayoutParams) z4);
        this.b = false;
        this.c = 0;
        this.d = 0;
        this.e = -1;
        this.f171f = -1;
        this.g = 0;
        this.h = 0;
        this.f172o = new Rect();
    }

    public Z4(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.b = false;
        this.c = 0;
        this.d = 0;
        this.e = -1;
        this.f171f = -1;
        this.g = 0;
        this.h = 0;
        this.f172o = new Rect();
    }

    public Z4(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.b = false;
        this.c = 0;
        this.d = 0;
        this.e = -1;
        this.f171f = -1;
        this.g = 0;
        this.h = 0;
        this.f172o = new Rect();
    }
}
