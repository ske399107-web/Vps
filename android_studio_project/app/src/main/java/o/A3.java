package o;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class A3 extends AbstractC0389sb implements View.OnKeyListener, PopupWindow.OnDismissListener {
    public final Context b;
    public final int c;
    public final int d;
    public final boolean e;

    /* renamed from: f, reason: collision with root package name */
    public final Handler f62f;
    public View n;

    /* renamed from: o, reason: collision with root package name */
    public View f63o;
    public int p;
    public boolean q;
    public boolean r;
    public int s;
    public int t;
    public boolean v;
    public InterfaceC0527zb w;
    public ViewTreeObserver x;
    public C0409tb y;
    public boolean z;
    public final ArrayList g = new ArrayList();
    public final ArrayList h = new ArrayList();
    public final P1 i = new P1(2, this);
    public final ViewOnAttachStateChangeListenerC0481x3 j = new ViewOnAttachStateChangeListenerC0481x3(0, this);
    public final C k = new C(5, this);
    public int l = 0;
    public int m = 0;
    public boolean u = false;

    public A3(Context context, View view, int i, boolean z) {
        this.b = context;
        this.n = view;
        this.d = i;
        this.e = z;
        this.p = view.getLayoutDirection() != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.c = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(2131099671));
        this.f62f = new Handler();
    }

    @Override // o.Ab
    public final void a(MenuC0230kb menuC0230kb, boolean z) {
        int i;
        ArrayList arrayList = this.h;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                if (menuC0230kb == ((C0519z3) arrayList.get(i2)).b) {
                    break;
                } else {
                    i2++;
                }
            } else {
                i2 = -1;
                break;
            }
        }
        if (i2 < 0) {
            return;
        }
        int i3 = i2 + 1;
        if (i3 < arrayList.size()) {
            ((C0519z3) arrayList.get(i3)).b.c(false);
        }
        C0519z3 c0519z3 = (C0519z3) arrayList.remove(i2);
        c0519z3.b.r(this);
        boolean z2 = this.z;
        C0508yb c0508yb = c0519z3.a;
        if (z2) {
            AbstractC0449vb.b(c0508yb.z, null);
            c0508yb.z.setAnimationStyle(0);
        }
        c0508yb.dismiss();
        int size2 = arrayList.size();
        if (size2 > 0) {
            this.p = ((C0519z3) arrayList.get(size2 - 1)).c;
        } else {
            if (this.n.getLayoutDirection() == 1) {
                i = 0;
            } else {
                i = 1;
            }
            this.p = i;
        }
        if (size2 == 0) {
            dismiss();
            InterfaceC0527zb interfaceC0527zb = this.w;
            if (interfaceC0527zb != null) {
                interfaceC0527zb.a(menuC0230kb, true);
            }
            ViewTreeObserver viewTreeObserver = this.x;
            if (viewTreeObserver != null) {
                if (viewTreeObserver.isAlive()) {
                    this.x.removeGlobalOnLayoutListener(this.i);
                }
                this.x = null;
            }
            this.f63o.removeOnAttachStateChangeListener(this.j);
            this.y.onDismiss();
            return;
        }
        if (z) {
            ((C0519z3) arrayList.get(0)).b.c(false);
        }
    }

    @Override // o.Ne
    public final boolean b() {
        ArrayList arrayList = this.h;
        if (arrayList.size() <= 0 || !((C0519z3) arrayList.get(0)).a.z.isShowing()) {
            return false;
        }
        return true;
    }

    @Override // o.Ab
    public final void c(InterfaceC0527zb interfaceC0527zb) {
        this.w = interfaceC0527zb;
    }

    @Override // o.Ne
    public final void dismiss() {
        ArrayList arrayList = this.h;
        int size = arrayList.size();
        if (size > 0) {
            C0519z3[] c0519z3Arr = (C0519z3[]) arrayList.toArray(new C0519z3[size]);
            for (int i = size - 1; i >= 0; i--) {
                C0519z3 c0519z3 = c0519z3Arr[i];
                if (c0519z3.a.z.isShowing()) {
                    c0519z3.a.dismiss();
                }
            }
        }
    }

    @Override // o.Ab
    public final boolean e() {
        return false;
    }

    @Override // o.Ne
    public final void f() {
        boolean z;
        if (b()) {
            return;
        }
        ArrayList arrayList = this.g;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            v((MenuC0230kb) it.next());
        }
        arrayList.clear();
        View view = this.n;
        this.f63o = view;
        if (view != null) {
            if (this.x == null) {
                z = true;
            } else {
                z = false;
            }
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.x = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.i);
            }
            this.f63o.addOnAttachStateChangeListener(this.j);
        }
    }

    @Override // o.Ab
    public final void g() {
        Iterator it = this.h.iterator();
        while (it.hasNext()) {
            ListAdapter adapter = ((C0519z3) it.next()).a.c.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((C0171hb) adapter).notifyDataSetChanged();
        }
    }

    @Override // o.Ab
    public final boolean i(SubMenuC0433uf subMenuC0433uf) {
        Iterator it = this.h.iterator();
        while (it.hasNext()) {
            C0519z3 c0519z3 = (C0519z3) it.next();
            if (subMenuC0433uf == c0519z3.b) {
                c0519z3.a.c.requestFocus();
                return true;
            }
        }
        if (subMenuC0433uf.hasVisibleItems()) {
            l(subMenuC0433uf);
            InterfaceC0527zb interfaceC0527zb = this.w;
            if (interfaceC0527zb != null) {
                interfaceC0527zb.g(subMenuC0433uf);
            }
            return true;
        }
        return false;
    }

    @Override // o.Ne
    public final C0285n6 j() {
        ArrayList arrayList = this.h;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((C0519z3) arrayList.get(arrayList.size() - 1)).a.c;
    }

    @Override // o.AbstractC0389sb
    public final void l(MenuC0230kb menuC0230kb) {
        menuC0230kb.b(this, this.b);
        if (b()) {
            v(menuC0230kb);
        } else {
            this.g.add(menuC0230kb);
        }
    }

    @Override // o.AbstractC0389sb
    public final void n(View view) {
        if (this.n != view) {
            this.n = view;
            this.m = Gravity.getAbsoluteGravity(this.l, view.getLayoutDirection());
        }
    }

    @Override // o.AbstractC0389sb
    public final void o(boolean z) {
        this.u = z;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        C0519z3 c0519z3;
        ArrayList arrayList = this.h;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i < size) {
                c0519z3 = (C0519z3) arrayList.get(i);
                if (!c0519z3.a.z.isShowing()) {
                    break;
                } else {
                    i++;
                }
            } else {
                c0519z3 = null;
                break;
            }
        }
        if (c0519z3 != null) {
            c0519z3.b.c(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i == 82) {
            dismiss();
            return true;
        }
        return false;
    }

    @Override // o.AbstractC0389sb
    public final void p(int i) {
        if (this.l != i) {
            this.l = i;
            this.m = Gravity.getAbsoluteGravity(i, this.n.getLayoutDirection());
        }
    }

    @Override // o.AbstractC0389sb
    public final void q(int i) {
        this.q = true;
        this.s = i;
    }

    @Override // o.AbstractC0389sb
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.y = (C0409tb) onDismissListener;
    }

    @Override // o.AbstractC0389sb
    public final void s(boolean z) {
        this.v = z;
    }

    @Override // o.AbstractC0389sb
    public final void t(int i) {
        this.r = true;
        this.t = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x013f, code lost:
    
        if (((r8.getWidth() + r11[0]) + r5) > r9.right) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0141, code lost:
    
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0144, code lost:
    
        r8 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0149, code lost:
    
        if ((r11[0] - r5) < 0) goto L60;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01b2  */
    /* JADX WARN: Type inference failed for: r7v0, types: [o.la, o.yb] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void v(o.MenuC0230kb r17) {
        /*
            Method dump skipped, instructions count: 526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.A3.v(o.kb):void");
    }
}
