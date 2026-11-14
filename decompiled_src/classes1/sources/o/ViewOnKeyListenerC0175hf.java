package o;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;

/* renamed from: o.hf, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class ViewOnKeyListenerC0175hf extends AbstractC0389sb implements PopupWindow.OnDismissListener, View.OnKeyListener {
    public final Context b;
    public final MenuC0230kb c;
    public final C0171hb d;
    public final boolean e;

    /* renamed from: f, reason: collision with root package name */
    public final int f223f;
    public final int g;
    public final C0508yb h;
    public final P1 i;
    public final ViewOnAttachStateChangeListenerC0481x3 j;
    public C0409tb k;
    public View l;
    public View m;
    public InterfaceC0527zb n;

    /* renamed from: o, reason: collision with root package name */
    public ViewTreeObserver f224o;
    public boolean p;
    public boolean q;
    public int r;
    public int s = 0;
    public boolean t;

    /* JADX WARN: Type inference failed for: r6v1, types: [o.la, o.yb] */
    public ViewOnKeyListenerC0175hf(int i, Context context, View view, MenuC0230kb menuC0230kb, boolean z) {
        int i2 = 3;
        this.i = new P1(i2, this);
        this.j = new ViewOnAttachStateChangeListenerC0481x3(i2, this);
        this.b = context;
        this.c = menuC0230kb;
        this.e = z;
        this.d = new C0171hb(menuC0230kb, LayoutInflater.from(context), z, 2131427347);
        this.g = i;
        Resources resources = context.getResources();
        this.f223f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(2131099671));
        this.l = view;
        this.h = new C0249la(context, null, i);
        menuC0230kb.b(this, context);
    }

    @Override // o.Ab
    public final void a(MenuC0230kb menuC0230kb, boolean z) {
        if (menuC0230kb != this.c) {
            return;
        }
        dismiss();
        InterfaceC0527zb interfaceC0527zb = this.n;
        if (interfaceC0527zb != null) {
            interfaceC0527zb.a(menuC0230kb, z);
        }
    }

    @Override // o.Ne
    public final boolean b() {
        if (!this.p && this.h.z.isShowing()) {
            return true;
        }
        return false;
    }

    @Override // o.Ab
    public final void c(InterfaceC0527zb interfaceC0527zb) {
        this.n = interfaceC0527zb;
    }

    @Override // o.Ne
    public final void dismiss() {
        if (b()) {
            this.h.dismiss();
        }
    }

    @Override // o.Ab
    public final boolean e() {
        return false;
    }

    @Override // o.Ne
    public final void f() {
        View view;
        boolean z;
        Rect rect;
        if (!b()) {
            if (!this.p && (view = this.l) != null) {
                this.m = view;
                C0508yb c0508yb = this.h;
                c0508yb.z.setOnDismissListener(this);
                c0508yb.p = this;
                c0508yb.y = true;
                c0508yb.z.setFocusable(true);
                View view2 = this.m;
                if (this.f224o == null) {
                    z = true;
                } else {
                    z = false;
                }
                ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
                this.f224o = viewTreeObserver;
                if (z) {
                    viewTreeObserver.addOnGlobalLayoutListener(this.i);
                }
                view2.addOnAttachStateChangeListener(this.j);
                c0508yb.f247o = view2;
                c0508yb.l = this.s;
                boolean z2 = this.q;
                Context context = this.b;
                C0171hb c0171hb = this.d;
                if (!z2) {
                    this.r = AbstractC0389sb.m(c0171hb, context, this.f223f);
                    this.q = true;
                }
                c0508yb.r(this.r);
                c0508yb.z.setInputMethodMode(2);
                Rect rect2 = this.a;
                if (rect2 != null) {
                    rect = new Rect(rect2);
                } else {
                    rect = null;
                }
                c0508yb.x = rect;
                c0508yb.f();
                C0285n6 c0285n6 = c0508yb.c;
                c0285n6.setOnKeyListener(this);
                if (this.t) {
                    MenuC0230kb menuC0230kb = this.c;
                    if (menuC0230kb.m != null) {
                        FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(2131427346, (ViewGroup) c0285n6, false);
                        TextView textView = (TextView) frameLayout.findViewById(R.id.title);
                        if (textView != null) {
                            textView.setText(menuC0230kb.m);
                        }
                        frameLayout.setEnabled(false);
                        c0285n6.addHeaderView(frameLayout, null, false);
                    }
                }
                c0508yb.p(c0171hb);
                c0508yb.f();
                return;
            }
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // o.Ab
    public final void g() {
        this.q = false;
        C0171hb c0171hb = this.d;
        if (c0171hb != null) {
            c0171hb.notifyDataSetChanged();
        }
    }

    @Override // o.Ab
    public final boolean i(SubMenuC0433uf subMenuC0433uf) {
        if (subMenuC0433uf.hasVisibleItems()) {
            View view = this.m;
            C0429ub c0429ub = new C0429ub(this.g, this.b, view, subMenuC0433uf, this.e);
            InterfaceC0527zb interfaceC0527zb = this.n;
            c0429ub.h = interfaceC0527zb;
            AbstractC0389sb abstractC0389sb = c0429ub.i;
            if (abstractC0389sb != null) {
                abstractC0389sb.c(interfaceC0527zb);
            }
            boolean u = AbstractC0389sb.u(subMenuC0433uf);
            c0429ub.g = u;
            AbstractC0389sb abstractC0389sb2 = c0429ub.i;
            if (abstractC0389sb2 != null) {
                abstractC0389sb2.o(u);
            }
            c0429ub.j = this.k;
            this.k = null;
            this.c.c(false);
            C0508yb c0508yb = this.h;
            int i = c0508yb.f246f;
            int g = c0508yb.g();
            if ((Gravity.getAbsoluteGravity(this.s, this.l.getLayoutDirection()) & 7) == 5) {
                i += this.l.getWidth();
            }
            if (!c0429ub.b()) {
                if (c0429ub.e != null) {
                    c0429ub.d(i, g, true, true);
                }
            }
            InterfaceC0527zb interfaceC0527zb2 = this.n;
            if (interfaceC0527zb2 != null) {
                interfaceC0527zb2.g(subMenuC0433uf);
            }
            return true;
        }
        return false;
    }

    @Override // o.Ne
    public final C0285n6 j() {
        return this.h.c;
    }

    @Override // o.AbstractC0389sb
    public final void l(MenuC0230kb menuC0230kb) {
    }

    @Override // o.AbstractC0389sb
    public final void n(View view) {
        this.l = view;
    }

    @Override // o.AbstractC0389sb
    public final void o(boolean z) {
        this.d.c = z;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.p = true;
        this.c.c(true);
        ViewTreeObserver viewTreeObserver = this.f224o;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f224o = this.m.getViewTreeObserver();
            }
            this.f224o.removeGlobalOnLayoutListener(this.i);
            this.f224o = null;
        }
        this.m.removeOnAttachStateChangeListener(this.j);
        C0409tb c0409tb = this.k;
        if (c0409tb != null) {
            c0409tb.onDismiss();
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
        this.s = i;
    }

    @Override // o.AbstractC0389sb
    public final void q(int i) {
        this.h.f246f = i;
    }

    @Override // o.AbstractC0389sb
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.k = (C0409tb) onDismissListener;
    }

    @Override // o.AbstractC0389sb
    public final void s(boolean z) {
        this.t = z;
    }

    @Override // o.AbstractC0389sb
    public final void t(int i) {
        this.h.n(i);
    }
}
