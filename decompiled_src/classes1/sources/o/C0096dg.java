package o;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;

/* renamed from: o.dg, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0096dg implements Ab {
    public MenuC0230kb a;
    public C0290nb b;
    public final /* synthetic */ Toolbar c;

    public C0096dg(Toolbar toolbar) {
        this.c = toolbar;
    }

    @Override // o.Ab
    public final void a(MenuC0230kb menuC0230kb, boolean z) {
    }

    @Override // o.Ab
    public final void d(Context context, MenuC0230kb menuC0230kb) {
        C0290nb c0290nb;
        MenuC0230kb menuC0230kb2 = this.a;
        if (menuC0230kb2 != null && (c0290nb = this.b) != null) {
            menuC0230kb2.d(c0290nb);
        }
        this.a = menuC0230kb;
    }

    @Override // o.Ab
    public final boolean e() {
        return false;
    }

    @Override // o.Ab
    public final void g() {
        if (this.b != null) {
            MenuC0230kb menuC0230kb = this.a;
            if (menuC0230kb != null) {
                int size = menuC0230kb.f244f.size();
                for (int i = 0; i < size; i++) {
                    if (this.a.getItem(i) == this.b) {
                        return;
                    }
                }
            }
            k(this.b);
        }
    }

    @Override // o.Ab
    public final boolean h(C0290nb c0290nb) {
        Toolbar toolbar = this.c;
        toolbar.c();
        ViewParent parent = toolbar.h.getParent();
        if (parent != toolbar) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(toolbar.h);
            }
            toolbar.addView(toolbar.h);
        }
        View actionView = c0290nb.getActionView();
        toolbar.i = actionView;
        this.b = c0290nb;
        ViewParent parent2 = actionView.getParent();
        if (parent2 != toolbar) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(toolbar.i);
            }
            C0116eg h = Toolbar.h();
            h.a = (toolbar.n & 112) | 8388611;
            h.b = 2;
            toolbar.i.setLayoutParams(h);
            toolbar.addView(toolbar.i);
        }
        for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = toolbar.getChildAt(childCount);
            if (((C0116eg) childAt.getLayoutParams()).b != 2 && childAt != toolbar.a) {
                toolbar.removeViewAt(childCount);
                toolbar.E.add(childAt);
            }
        }
        toolbar.requestLayout();
        c0290nb.C = true;
        c0290nb.n.p(false);
        KeyEvent.Callback callback = toolbar.i;
        if (callback instanceof InterfaceC0064c4) {
            ((C0330pb) ((InterfaceC0064c4) callback)).a.onActionViewExpanded();
        }
        toolbar.u();
        return true;
    }

    @Override // o.Ab
    public final boolean i(SubMenuC0433uf subMenuC0433uf) {
        return false;
    }

    @Override // o.Ab
    public final boolean k(C0290nb c0290nb) {
        Toolbar toolbar = this.c;
        KeyEvent.Callback callback = toolbar.i;
        if (callback instanceof InterfaceC0064c4) {
            ((C0330pb) ((InterfaceC0064c4) callback)).a.onActionViewCollapsed();
        }
        toolbar.removeView(toolbar.i);
        toolbar.removeView(toolbar.h);
        toolbar.i = null;
        ArrayList arrayList = toolbar.E;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            toolbar.addView((View) arrayList.get(size));
        }
        arrayList.clear();
        this.b = null;
        toolbar.requestLayout();
        c0290nb.C = false;
        c0290nb.n.p(false);
        toolbar.u();
        return true;
    }
}
