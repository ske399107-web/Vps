package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;
import o.AbstractC0093dd;
import o.AbstractC0304o5;
import o.AbstractC0347q8;
import o.AbstractC0415th;
import o.AbstractC0487x9;
import o.C0088d8;
import o.C0188i8;
import o.C0366r8;
import o.Dh;
import o.M2;
import o.Mi;
import o.T7;
import o.U0;
import o.V7;
import org.conscrypt.BuildConfig;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class FragmentContainerView extends FrameLayout {
    public final ArrayList a;
    public final ArrayList b;
    public View.OnApplyWindowInsetsListener c;
    public boolean d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        String str;
        AbstractC0487x9.o(context, "context");
        this.a = new ArrayList();
        this.b = new ArrayList();
        this.d = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0093dd.b, 0, 0);
            if (classAttribute == null) {
                classAttribute = obtainStyledAttributes.getString(0);
                str = "android:name";
            } else {
                str = "class";
            }
            obtainStyledAttributes.recycle();
            if (classAttribute == null || isInEditMode()) {
                return;
            }
            throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to use " + str + "=\"" + classAttribute + '\"');
        }
    }

    public final void a(View view) {
        if (this.b.contains(view)) {
            this.a.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        T7 t7;
        AbstractC0487x9.o(view, "child");
        Object tag = view.getTag(2131230926);
        if (tag instanceof T7) {
            t7 = (T7) tag;
        } else {
            t7 = null;
        }
        if (t7 != null) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException(("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.").toString());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        Mi mi;
        AbstractC0487x9.o(windowInsets, "insets");
        Mi g = Mi.g(null, windowInsets);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.c;
        if (onApplyWindowInsetsListener != null) {
            WindowInsets onApplyWindowInsets = onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets);
            AbstractC0487x9.n(onApplyWindowInsets, "onApplyWindowInsetsListe…lyWindowInsets(v, insets)");
            mi = Mi.g(null, onApplyWindowInsets);
        } else {
            WeakHashMap weakHashMap = Dh.a;
            WindowInsets f2 = g.f();
            if (f2 != null) {
                WindowInsets b = AbstractC0415th.b(this, f2);
                if (!b.equals(f2)) {
                    g = Mi.g(this, b);
                }
            }
            mi = g;
        }
        if (!mi.a.m()) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                WeakHashMap weakHashMap2 = Dh.a;
                WindowInsets f3 = mi.f();
                if (f3 != null) {
                    WindowInsets a = AbstractC0415th.a(childAt, f3);
                    if (!a.equals(f3)) {
                        Mi.g(childAt, a);
                    }
                }
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        AbstractC0487x9.o(canvas, "canvas");
        if (this.d) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                super.drawChild(canvas, (View) it.next(), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        AbstractC0487x9.o(canvas, "canvas");
        AbstractC0487x9.o(view, "child");
        if (this.d) {
            ArrayList arrayList = this.a;
            if (!arrayList.isEmpty() && arrayList.contains(view)) {
                return false;
            }
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup
    public final void endViewTransition(View view) {
        AbstractC0487x9.o(view, "view");
        this.b.remove(view);
        if (this.a.remove(view)) {
            this.d = true;
        }
        super.endViewTransition(view);
    }

    public final <F extends T7> F getFragment() {
        U0 u0;
        T7 t7;
        C0188i8 c0188i8;
        View view = this;
        while (true) {
            u0 = null;
            if (view != null) {
                Object tag = view.getTag(2131230926);
                if (tag instanceof T7) {
                    t7 = (T7) tag;
                } else {
                    t7 = null;
                }
                if (t7 != null) {
                    break;
                }
                Object parent = view.getParent();
                if (parent instanceof View) {
                    view = (View) parent;
                } else {
                    view = null;
                }
            } else {
                t7 = null;
                break;
            }
        }
        if (t7 != null) {
            if (t7.m()) {
                c0188i8 = t7.g();
            } else {
                throw new IllegalStateException("The Fragment " + t7 + " that owns View " + this + " has already been destroyed. Nested fragments should always use the child FragmentManager.");
            }
        } else {
            Context context = getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    break;
                }
                if (context instanceof U0) {
                    u0 = (U0) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (u0 != null) {
                c0188i8 = ((V7) u0.r.b).j;
            } else {
                throw new IllegalStateException("View " + this + " is not within a subclass of FragmentActivity.");
            }
        }
        return (F) c0188i8.B(getId());
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        AbstractC0487x9.o(windowInsets, "insets");
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public final void removeAllViewsInLayout() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (-1 < childCount) {
                View childAt = getChildAt(childCount);
                AbstractC0487x9.n(childAt, "view");
                a(childAt);
            } else {
                super.removeAllViewsInLayout();
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        AbstractC0487x9.o(view, "view");
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i) {
        View childAt = getChildAt(i);
        AbstractC0487x9.n(childAt, "view");
        a(childAt);
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public final void removeViewInLayout(View view) {
        AbstractC0487x9.o(view, "view");
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViews(int i, int i2) {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            View childAt = getChildAt(i4);
            AbstractC0487x9.n(childAt, "view");
            a(childAt);
        }
        super.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public final void removeViewsInLayout(int i, int i2) {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            View childAt = getChildAt(i4);
            AbstractC0487x9.n(childAt, "view");
            a(childAt);
        }
        super.removeViewsInLayout(i, i2);
    }

    public final void setDrawDisappearingViewsLast(boolean z) {
        this.d = z;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        AbstractC0487x9.o(onApplyWindowInsetsListener, "listener");
        this.c = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public final void startViewTransition(View view) {
        AbstractC0487x9.o(view, "view");
        if (view.getParent() == this) {
            this.b.add(view);
        }
        super.startViewTransition(view);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(Context context, AttributeSet attributeSet, C0188i8 c0188i8) {
        super(context, attributeSet);
        View view;
        AbstractC0487x9.o(context, "context");
        AbstractC0487x9.o(attributeSet, "attrs");
        AbstractC0487x9.o(c0188i8, "fm");
        this.a = new ArrayList();
        this.b = new ArrayList();
        this.d = true;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0093dd.b, 0, 0);
        classAttribute = classAttribute == null ? obtainStyledAttributes.getString(0) : classAttribute;
        String string = obtainStyledAttributes.getString(1);
        obtainStyledAttributes.recycle();
        int id = getId();
        T7 B = c0188i8.B(id);
        if (classAttribute != null && B == null) {
            if (id == -1) {
                throw new IllegalStateException(AbstractC0304o5.h("FragmentContainerView must have an android:id to add Fragment ", classAttribute, string != null ? " with tag ".concat(string) : BuildConfig.FLAVOR));
            }
            C0088d8 D = c0188i8.D();
            context.getClassLoader();
            T7 a = D.a(classAttribute);
            AbstractC0487x9.n(a, "fm.fragmentFactory.insta…ontext.classLoader, name)");
            a.C = true;
            V7 v7 = a.s;
            if ((v7 == null ? null : v7.g) != null) {
                a.C = true;
            }
            M2 m2 = new M2(c0188i8);
            m2.f123o = true;
            a.D = this;
            int id2 = getId();
            String str = a.K;
            if (str != null) {
                AbstractC0347q8.c(a, str);
            }
            Class<?> cls = a.getClass();
            int modifiers = cls.getModifiers();
            if (!cls.isAnonymousClass() && Modifier.isPublic(modifiers) && (!cls.isMemberClass() || Modifier.isStatic(modifiers))) {
                if (string != null) {
                    String str2 = a.x;
                    if (str2 != null && !string.equals(str2)) {
                        throw new IllegalStateException("Can't change tag of fragment " + a + ": was " + a.x + " now " + string);
                    }
                    a.x = string;
                }
                if (id2 != 0) {
                    if (id2 == -1) {
                        throw new IllegalArgumentException("Can't add fragment " + a + " with tag " + string + " to container view with no id");
                    }
                    int i = a.v;
                    if (i != 0 && i != id2) {
                        throw new IllegalStateException("Can't change container ID of fragment " + a + ": was " + a.v + " now " + id2);
                    }
                    a.v = id2;
                    a.w = id2;
                }
                m2.b(new C0366r8(1, a));
                C0188i8 c0188i82 = m2.p;
                a.r = c0188i82;
                if (!m2.g) {
                    if (c0188i82.t != null && !c0188i82.G) {
                        c0188i82.y(true);
                        m2.a(c0188i82.I, c0188i82.J);
                        c0188i82.b = true;
                        try {
                            c0188i82.Q(c0188i82.I, c0188i82.J);
                            c0188i82.d();
                            c0188i82.b0();
                            if (c0188i82.H) {
                                c0188i82.H = false;
                                c0188i82.Z();
                            }
                            ((HashMap) c0188i82.c.b).values().removeAll(Collections.singleton(null));
                        } catch (Throwable th) {
                            c0188i82.d();
                            throw th;
                        }
                    }
                } else {
                    throw new IllegalStateException("This transaction is already being added to the back stack");
                }
            } else {
                throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
            }
        }
        Iterator it = c0188i8.c.f().iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            T7 t7 = aVar.c;
            if (t7.w == getId() && (view = t7.E) != null && view.getParent() == null) {
                t7.D = this;
                aVar.b();
            }
        }
    }
}
