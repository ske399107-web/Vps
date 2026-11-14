package o;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import androidx.appcompat.view.menu.ExpandedMenuView;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* renamed from: o.da, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0090da implements Ab, AdapterView.OnItemClickListener {
    public Context a;
    public LayoutInflater b;
    public MenuC0230kb c;
    public ExpandedMenuView d;
    public InterfaceC0527zb e;

    /* renamed from: f, reason: collision with root package name */
    public C0070ca f198f;

    public C0090da(ContextWrapper contextWrapper) {
        this.a = contextWrapper;
        this.b = LayoutInflater.from(contextWrapper);
    }

    @Override // o.Ab
    public final void a(MenuC0230kb menuC0230kb, boolean z) {
        InterfaceC0527zb interfaceC0527zb = this.e;
        if (interfaceC0527zb != null) {
            interfaceC0527zb.a(menuC0230kb, z);
        }
    }

    @Override // o.Ab
    public final void c(InterfaceC0527zb interfaceC0527zb) {
        throw null;
    }

    @Override // o.Ab
    public final void d(Context context, MenuC0230kb menuC0230kb) {
        if (this.a != null) {
            this.a = context;
            if (this.b == null) {
                this.b = LayoutInflater.from(context);
            }
        }
        this.c = menuC0230kb;
        C0070ca c0070ca = this.f198f;
        if (c0070ca != null) {
            c0070ca.notifyDataSetChanged();
        }
    }

    @Override // o.Ab
    public final boolean e() {
        return false;
    }

    @Override // o.Ab
    public final void g() {
        C0070ca c0070ca = this.f198f;
        if (c0070ca != null) {
            c0070ca.notifyDataSetChanged();
        }
    }

    @Override // o.Ab
    public final boolean h(C0290nb c0290nb) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.content.DialogInterface$OnClickListener, o.zb, o.lb, java.lang.Object, android.content.DialogInterface$OnDismissListener] */
    @Override // o.Ab
    public final boolean i(SubMenuC0433uf subMenuC0433uf) {
        if (!subMenuC0433uf.hasVisibleItems()) {
            return false;
        }
        ?? obj = new Object();
        obj.a = subMenuC0433uf;
        Context context = subMenuC0433uf.a;
        I0 i0 = new I0(context);
        E0 e0 = (E0) i0.b;
        C0090da c0090da = new C0090da(e0.a);
        obj.c = c0090da;
        c0090da.e = obj;
        subMenuC0433uf.b(c0090da, context);
        C0090da c0090da2 = obj.c;
        if (c0090da2.f198f == null) {
            c0090da2.f198f = new C0070ca(c0090da2);
        }
        e0.g = c0090da2.f198f;
        e0.h = obj;
        View view = subMenuC0433uf.f245o;
        if (view != null) {
            e0.e = view;
        } else {
            e0.c = subMenuC0433uf.n;
            e0.d = subMenuC0433uf.m;
        }
        e0.f83f = obj;
        J0 a = i0.a();
        obj.b = a;
        a.setOnDismissListener(obj);
        WindowManager.LayoutParams attributes = obj.b.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= PKIFailureInfo.unsupportedVersion;
        obj.b.show();
        InterfaceC0527zb interfaceC0527zb = this.e;
        if (interfaceC0527zb != null) {
            interfaceC0527zb.g(subMenuC0433uf);
            return true;
        }
        return true;
    }

    @Override // o.Ab
    public final boolean k(C0290nb c0290nb) {
        return false;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.c.q(this.f198f.getItem(i), this, 0);
    }
}
