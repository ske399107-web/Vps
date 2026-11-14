package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import java.lang.reflect.Method;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* renamed from: o.la, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C0249la implements Ne {
    public static final Method A;
    public static final Method B;
    public final Context a;
    public ListAdapter b;
    public C0285n6 c;

    /* renamed from: f, reason: collision with root package name */
    public int f246f;
    public int g;
    public boolean i;
    public boolean j;
    public boolean k;
    public C0190ia n;

    /* renamed from: o, reason: collision with root package name */
    public View f247o;
    public AdapterView.OnItemClickListener p;
    public AdapterView.OnItemSelectedListener q;
    public final Handler v;
    public Rect x;
    public boolean y;
    public final G1 z;
    public final int d = -2;
    public int e = -2;
    public final int h = 1002;
    public int l = 0;
    public final int m = Integer.MAX_VALUE;
    public final RunnableC0170ha r = new RunnableC0170ha(this, 1);
    public final ViewOnTouchListenerC0229ka s = new ViewOnTouchListenerC0229ka(0, this);
    public final C0209ja t = new C0209ja(this);
    public final RunnableC0170ha u = new RunnableC0170ha(this, 0);
    public final Rect w = new Rect();

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                A = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                B = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v9, types: [android.widget.PopupWindow, o.G1] */
    public C0249la(Context context, AttributeSet attributeSet, int i) {
        Drawable drawable;
        int resourceId;
        this.a = context;
        this.v = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0153gd.f217o, i, 0);
        this.f246f = obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.i = true;
        }
        obtainStyledAttributes.recycle();
        ?? popupWindow = new PopupWindow(context, attributeSet, i, 0);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, AbstractC0153gd.s, i, 0);
        if (obtainStyledAttributes2.hasValue(2)) {
            popupWindow.setOverlapAnchor(obtainStyledAttributes2.getBoolean(2, false));
        }
        if (obtainStyledAttributes2.hasValue(0) && (resourceId = obtainStyledAttributes2.getResourceId(0, 0)) != 0) {
            drawable = L1.z(context, resourceId);
        } else {
            drawable = obtainStyledAttributes2.getDrawable(0);
        }
        popupWindow.setBackgroundDrawable(drawable);
        obtainStyledAttributes2.recycle();
        this.z = popupWindow;
        popupWindow.setInputMethodMode(1);
    }

    public C0285n6 a(Context context, boolean z) {
        return new C0285n6(context, z);
    }

    @Override // o.Ne
    public final boolean b() {
        return this.z.isShowing();
    }

    public final void c(int i) {
        this.f246f = i;
    }

    public final int d() {
        return this.f246f;
    }

    @Override // o.Ne
    public final void dismiss() {
        G1 g1 = this.z;
        g1.dismiss();
        g1.setContentView(null);
        this.c = null;
        this.v.removeCallbacks(this.r);
    }

    @Override // o.Ne
    public final void f() {
        int i;
        boolean z;
        int makeMeasureSpec;
        int i2;
        int i3;
        boolean z2;
        C0285n6 c0285n6;
        int i4;
        int i5;
        C0285n6 c0285n62 = this.c;
        G1 g1 = this.z;
        Context context = this.a;
        if (c0285n62 == null) {
            C0285n6 a = a(context, !this.y);
            this.c = a;
            a.setAdapter(this.b);
            this.c.setOnItemClickListener(this.p);
            this.c.setFocusable(true);
            this.c.setFocusableInTouchMode(true);
            this.c.setOnItemSelectedListener(new C0110ea(this));
            this.c.setOnScrollListener(this.t);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.q;
            if (onItemSelectedListener != null) {
                this.c.setOnItemSelectedListener(onItemSelectedListener);
            }
            g1.setContentView(this.c);
        }
        Drawable background = g1.getBackground();
        int i6 = 0;
        Rect rect = this.w;
        if (background != null) {
            background.getPadding(rect);
            int i7 = rect.top;
            i = rect.bottom + i7;
            if (!this.i) {
                this.g = -i7;
            }
        } else {
            rect.setEmpty();
            i = 0;
        }
        if (g1.getInputMethodMode() == 2) {
            z = true;
        } else {
            z = false;
        }
        int a2 = AbstractC0130fa.a(g1, this.f247o, this.g, z);
        int i8 = this.d;
        if (i8 == -1) {
            i3 = a2 + i;
        } else {
            int i9 = this.e;
            if (i9 != -2) {
                if (i9 != -1) {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i9, 1073741824);
                } else {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824);
                }
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), PKIFailureInfo.systemUnavail);
            }
            int a3 = this.c.a(makeMeasureSpec, a2);
            if (a3 > 0) {
                i2 = this.c.getPaddingBottom() + this.c.getPaddingTop() + i;
            } else {
                i2 = 0;
            }
            i3 = a3 + i2;
        }
        if (this.z.getInputMethodMode() == 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        g1.setWindowLayoutType(this.h);
        if (g1.isShowing()) {
            if (!this.f247o.isAttachedToWindow()) {
                return;
            }
            int i10 = this.e;
            if (i10 == -1) {
                i10 = -1;
            } else if (i10 == -2) {
                i10 = this.f247o.getWidth();
            }
            if (i8 == -1) {
                if (z2) {
                    i8 = i3;
                } else {
                    i8 = -1;
                }
                if (z2) {
                    if (this.e == -1) {
                        i5 = -1;
                    } else {
                        i5 = 0;
                    }
                    g1.setWidth(i5);
                    g1.setHeight(0);
                } else {
                    if (this.e == -1) {
                        i6 = -1;
                    }
                    g1.setWidth(i6);
                    g1.setHeight(-1);
                }
            } else if (i8 == -2) {
                i8 = i3;
            }
            g1.setOutsideTouchable(true);
            View view = this.f247o;
            int i11 = this.f246f;
            int i12 = this.g;
            if (i10 < 0) {
                i10 = -1;
            }
            if (i8 < 0) {
                i4 = -1;
            } else {
                i4 = i8;
            }
            g1.update(view, i11, i12, i10, i4);
            return;
        }
        int i13 = this.e;
        if (i13 == -1) {
            i13 = -1;
        } else if (i13 == -2) {
            i13 = this.f247o.getWidth();
        }
        if (i8 == -1) {
            i8 = -1;
        } else if (i8 == -2) {
            i8 = i3;
        }
        g1.setWidth(i13);
        g1.setHeight(i8);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = A;
            if (method != null) {
                try {
                    method.invoke(g1, Boolean.TRUE);
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            AbstractC0150ga.b(g1, true);
        }
        g1.setOutsideTouchable(true);
        g1.setTouchInterceptor(this.s);
        if (this.k) {
            g1.setOverlapAnchor(this.j);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = B;
            if (method2 != null) {
                try {
                    method2.invoke(g1, this.x);
                } catch (Exception e) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e);
                }
            }
        } else {
            AbstractC0150ga.a(g1, this.x);
        }
        g1.showAsDropDown(this.f247o, this.f246f, this.g, this.l);
        this.c.setSelection(-1);
        if ((!this.y || this.c.isInTouchMode()) && (c0285n6 = this.c) != null) {
            c0285n6.setListSelectionHidden(true);
            c0285n6.requestLayout();
        }
        if (!this.y) {
            this.v.post(this.u);
        }
    }

    public final int g() {
        if (!this.i) {
            return 0;
        }
        return this.g;
    }

    public final Drawable h() {
        return this.z.getBackground();
    }

    @Override // o.Ne
    public final C0285n6 j() {
        return this.c;
    }

    public final void m(Drawable drawable) {
        this.z.setBackgroundDrawable(drawable);
    }

    public final void n(int i) {
        this.g = i;
        this.i = true;
    }

    public void p(ListAdapter listAdapter) {
        C0190ia c0190ia = this.n;
        if (c0190ia == null) {
            this.n = new C0190ia(this);
        } else {
            ListAdapter listAdapter2 = this.b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(c0190ia);
            }
        }
        this.b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.n);
        }
        C0285n6 c0285n6 = this.c;
        if (c0285n6 != null) {
            c0285n6.setAdapter(this.b);
        }
    }

    public final void r(int i) {
        Drawable background = this.z.getBackground();
        if (background != null) {
            Rect rect = this.w;
            background.getPadding(rect);
            this.e = rect.left + rect.right + i;
            return;
        }
        this.e = i;
    }
}
