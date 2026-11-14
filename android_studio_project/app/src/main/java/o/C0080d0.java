package o;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import java.util.ArrayList;

/* renamed from: o.d0, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0080d0 implements Ab {
    public final Context a;
    public Context b;
    public MenuC0230kb c;
    public final LayoutInflater d;
    public InterfaceC0527zb e;
    public Cb h;
    public C0060c0 i;
    public Drawable j;
    public boolean k;
    public boolean l;
    public boolean m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f193o;
    public int p;
    public boolean q;
    public Z s;
    public Z t;
    public RunnableC0040b0 u;
    public C0020a0 v;

    /* renamed from: f, reason: collision with root package name */
    public final int f192f = 2131427331;
    public final int g = 2131427330;
    public final SparseBooleanArray r = new SparseBooleanArray();
    public final C w = new C(2, this);

    public C0080d0(Context context) {
        this.a = context;
        this.d = LayoutInflater.from(context);
    }

    @Override // o.Ab
    public final void a(MenuC0230kb menuC0230kb, boolean z) {
        f();
        Z z2 = this.t;
        if (z2 != null && z2.b()) {
            z2.i.dismiss();
        }
        InterfaceC0527zb interfaceC0527zb = this.e;
        if (interfaceC0527zb != null) {
            interfaceC0527zb.a(menuC0230kb, z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r5v4, types: [o.Bb] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    public final View b(C0290nb c0290nb, View view, ViewGroup viewGroup) {
        ActionMenuItemView actionMenuItemView;
        View actionView = c0290nb.getActionView();
        int i = 0;
        if (actionView == null || c0290nb.e()) {
            if (view instanceof Bb) {
                actionMenuItemView = (Bb) view;
            } else {
                actionMenuItemView = (Bb) this.d.inflate(this.g, viewGroup, false);
            }
            actionMenuItemView.b(c0290nb);
            ActionMenuItemView actionMenuItemView2 = actionMenuItemView;
            actionMenuItemView2.setItemInvoker((ActionMenuView) this.h);
            if (this.v == null) {
                this.v = new C0020a0(this);
            }
            actionMenuItemView2.setPopupCallback(this.v);
            actionView = actionMenuItemView;
        }
        if (c0290nb.C) {
            i = 8;
        }
        actionView.setVisibility(i);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        ((ActionMenuView) viewGroup).getClass();
        if (!(layoutParams instanceof C0120f0)) {
            actionView.setLayoutParams(ActionMenuView.k(layoutParams));
        }
        return actionView;
    }

    @Override // o.Ab
    public final void c(InterfaceC0527zb interfaceC0527zb) {
        throw null;
    }

    @Override // o.Ab
    public final void d(Context context, MenuC0230kb menuC0230kb) {
        this.b = context;
        LayoutInflater.from(context);
        this.c = menuC0230kb;
        Resources resources = context.getResources();
        if (!this.m) {
            this.l = true;
        }
        int i = 2;
        this.n = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        int i3 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp <= 600 && i2 <= 600 && ((i2 <= 960 || i3 <= 720) && (i2 <= 720 || i3 <= 960))) {
            if (i2 < 500 && ((i2 <= 640 || i3 <= 480) && (i2 <= 480 || i3 <= 640))) {
                if (i2 >= 360) {
                    i = 3;
                }
            } else {
                i = 4;
            }
        } else {
            i = 5;
        }
        this.p = i;
        int i4 = this.n;
        if (this.l) {
            if (this.i == null) {
                C0060c0 c0060c0 = new C0060c0(this, this.a);
                this.i = c0060c0;
                if (this.k) {
                    c0060c0.setImageDrawable(this.j);
                    this.j = null;
                    this.k = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.i.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i4 -= this.i.getMeasuredWidth();
        } else {
            this.i = null;
        }
        this.f193o = i4;
        float f2 = resources.getDisplayMetrics().density;
    }

    @Override // o.Ab
    public final boolean e() {
        int i;
        ArrayList arrayList;
        int i2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        MenuC0230kb menuC0230kb = this.c;
        if (menuC0230kb != null) {
            arrayList = menuC0230kb.l();
            i = arrayList.size();
        } else {
            i = 0;
            arrayList = null;
        }
        int i3 = this.p;
        int i4 = this.f193o;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.h;
        int i5 = 0;
        boolean z5 = false;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i2 = 2;
            z = true;
            if (i5 >= i) {
                break;
            }
            C0290nb c0290nb = (C0290nb) arrayList.get(i5);
            int i8 = c0290nb.y;
            if ((i8 & 2) == 2) {
                i6++;
            } else if ((i8 & 1) == 1) {
                i7++;
            } else {
                z5 = true;
            }
            if (this.q && c0290nb.C) {
                i3 = 0;
            }
            i5++;
        }
        if (this.l && (z5 || i7 + i6 > i3)) {
            i3--;
        }
        int i9 = i3 - i6;
        SparseBooleanArray sparseBooleanArray = this.r;
        sparseBooleanArray.clear();
        int i10 = 0;
        int i11 = 0;
        while (i10 < i) {
            C0290nb c0290nb2 = (C0290nb) arrayList.get(i10);
            int i12 = c0290nb2.y;
            if ((i12 & 2) == i2) {
                z2 = z;
            } else {
                z2 = false;
            }
            int i13 = c0290nb2.b;
            if (z2) {
                View b = b(c0290nb2, null, viewGroup);
                b.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredWidth = b.getMeasuredWidth();
                i4 -= measuredWidth;
                if (i11 == 0) {
                    i11 = measuredWidth;
                }
                if (i13 != 0) {
                    sparseBooleanArray.put(i13, z);
                }
                c0290nb2.g(z);
            } else if ((i12 & 1) == z) {
                boolean z6 = sparseBooleanArray.get(i13);
                if ((i9 > 0 || z6) && i4 > 0) {
                    z3 = z;
                } else {
                    z3 = false;
                }
                if (z3) {
                    View b2 = b(c0290nb2, null, viewGroup);
                    b2.measure(makeMeasureSpec, makeMeasureSpec);
                    int measuredWidth2 = b2.getMeasuredWidth();
                    i4 -= measuredWidth2;
                    if (i11 == 0) {
                        i11 = measuredWidth2;
                    }
                    if (i4 + i11 > 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    z3 &= z4;
                }
                if (z3 && i13 != 0) {
                    sparseBooleanArray.put(i13, true);
                } else if (z6) {
                    sparseBooleanArray.put(i13, false);
                    for (int i14 = 0; i14 < i10; i14++) {
                        C0290nb c0290nb3 = (C0290nb) arrayList.get(i14);
                        if (c0290nb3.b == i13) {
                            if (c0290nb3.f()) {
                                i9++;
                            }
                            c0290nb3.g(false);
                        }
                    }
                }
                if (z3) {
                    i9--;
                }
                c0290nb2.g(z3);
            } else {
                c0290nb2.g(false);
                i10++;
                i2 = 2;
                z = true;
            }
            i10++;
            i2 = 2;
            z = true;
        }
        return z;
    }

    public final boolean f() {
        Object obj;
        RunnableC0040b0 runnableC0040b0 = this.u;
        if (runnableC0040b0 != null && (obj = this.h) != null) {
            ((View) obj).removeCallbacks(runnableC0040b0);
            this.u = null;
            return true;
        }
        Z z = this.s;
        if (z != null) {
            if (z.b()) {
                z.i.dismiss();
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // o.Ab
    public final void g() {
        int i;
        C0290nb c0290nb;
        ViewGroup viewGroup = (ViewGroup) this.h;
        ArrayList arrayList = null;
        boolean z = false;
        if (viewGroup != null) {
            MenuC0230kb menuC0230kb = this.c;
            if (menuC0230kb != null) {
                menuC0230kb.i();
                ArrayList l = this.c.l();
                int size = l.size();
                i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    C0290nb c0290nb2 = (C0290nb) l.get(i2);
                    if (c0290nb2.f()) {
                        View childAt = viewGroup.getChildAt(i);
                        if (childAt instanceof Bb) {
                            c0290nb = ((Bb) childAt).getItemData();
                        } else {
                            c0290nb = null;
                        }
                        View b = b(c0290nb2, childAt, viewGroup);
                        if (c0290nb2 != c0290nb) {
                            b.setPressed(false);
                            b.jumpDrawablesToCurrentState();
                        }
                        if (b != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) b.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(b);
                            }
                            ((ViewGroup) this.h).addView(b, i);
                        }
                        i++;
                    }
                }
            } else {
                i = 0;
            }
            while (i < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i) == this.i) {
                    i++;
                } else {
                    viewGroup.removeViewAt(i);
                }
            }
        }
        ((View) this.h).requestLayout();
        MenuC0230kb menuC0230kb2 = this.c;
        if (menuC0230kb2 != null) {
            menuC0230kb2.i();
            ArrayList arrayList2 = menuC0230kb2.i;
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                ActionProviderVisibilityListenerC0310ob actionProviderVisibilityListenerC0310ob = ((C0290nb) arrayList2.get(i3)).A;
            }
        }
        MenuC0230kb menuC0230kb3 = this.c;
        if (menuC0230kb3 != null) {
            menuC0230kb3.i();
            arrayList = menuC0230kb3.j;
        }
        if (this.l && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z = !((C0290nb) arrayList.get(0)).C;
            } else if (size3 > 0) {
                z = true;
            }
        }
        if (z) {
            if (this.i == null) {
                this.i = new C0060c0(this, this.a);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.i.getParent();
            if (viewGroup3 != this.h) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.i);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.h;
                C0060c0 c0060c0 = this.i;
                actionMenuView.getClass();
                C0120f0 j = ActionMenuView.j();
                j.a = true;
                actionMenuView.addView(c0060c0, j);
            }
        } else {
            C0060c0 c0060c02 = this.i;
            if (c0060c02 != null) {
                Object parent = c0060c02.getParent();
                Object obj = this.h;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.i);
                }
            }
        }
        ((ActionMenuView) this.h).setOverflowReserved(this.l);
    }

    @Override // o.Ab
    public final boolean h(C0290nb c0290nb) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // o.Ab
    public final boolean i(SubMenuC0433uf subMenuC0433uf) {
        boolean z;
        if (!subMenuC0433uf.hasVisibleItems()) {
            return false;
        }
        SubMenuC0433uf subMenuC0433uf2 = subMenuC0433uf;
        while (true) {
            MenuC0230kb menuC0230kb = subMenuC0433uf2.z;
            if (menuC0230kb == this.c) {
                break;
            }
            subMenuC0433uf2 = (SubMenuC0433uf) menuC0230kb;
        }
        ViewGroup viewGroup = (ViewGroup) this.h;
        View view = null;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                View childAt = viewGroup.getChildAt(i);
                if ((childAt instanceof Bb) && ((Bb) childAt).getItemData() == subMenuC0433uf2.A) {
                    view = childAt;
                    break;
                }
                i++;
            }
        }
        if (view == null) {
            return false;
        }
        subMenuC0433uf.A.getClass();
        int size = subMenuC0433uf.f244f.size();
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                MenuItem item = subMenuC0433uf.getItem(i2);
                if (item.isVisible() && item.getIcon() != null) {
                    z = true;
                    break;
                }
                i2++;
            } else {
                z = false;
                break;
            }
        }
        Z z2 = new Z(this, this.b, subMenuC0433uf, view);
        this.t = z2;
        z2.g = z;
        AbstractC0389sb abstractC0389sb = z2.i;
        if (abstractC0389sb != null) {
            abstractC0389sb.o(z);
        }
        Z z3 = this.t;
        if (!z3.b()) {
            if (z3.e != null) {
                z3.d(0, 0, false, false);
            } else {
                throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
            }
        }
        InterfaceC0527zb interfaceC0527zb = this.e;
        if (interfaceC0527zb != null) {
            interfaceC0527zb.g(subMenuC0433uf);
        }
        return true;
    }

    public final boolean j() {
        Z z = this.s;
        if (z != null && z.b()) {
            return true;
        }
        return false;
    }

    @Override // o.Ab
    public final boolean k(C0290nb c0290nb) {
        return false;
    }

    public final boolean l() {
        MenuC0230kb menuC0230kb;
        if (this.l && !j() && (menuC0230kb = this.c) != null && this.h != null && this.u == null) {
            menuC0230kb.i();
            if (!menuC0230kb.j.isEmpty()) {
                RunnableC0040b0 runnableC0040b0 = new RunnableC0040b0(this, new Z(this, this.b, this.c, this.i));
                this.u = runnableC0040b0;
                ((View) this.h).post(runnableC0040b0);
                return true;
            }
            return false;
        }
        return false;
    }
}
