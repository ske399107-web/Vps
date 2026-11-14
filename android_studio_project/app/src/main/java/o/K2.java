package o;

import android.animation.TimeInterpolator;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class K2 extends AbstractC0434ug {
    public ArrayList A;
    public boolean B;
    public int C;
    public boolean D;
    public int E;

    @Override // o.AbstractC0434ug
    public final void A(long j) {
        ArrayList arrayList;
        this.c = j;
        if (j >= 0 && (arrayList = this.A) != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((AbstractC0434ug) this.A.get(i)).A(j);
            }
        }
    }

    @Override // o.AbstractC0434ug
    public final void B(Ha ha) {
        this.E |= 8;
        int size = this.A.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC0434ug) this.A.get(i)).B(ha);
        }
    }

    @Override // o.AbstractC0434ug
    public final void C(TimeInterpolator timeInterpolator) {
        this.E |= 1;
        ArrayList arrayList = this.A;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((AbstractC0434ug) this.A.get(i)).C(timeInterpolator);
            }
        }
        this.d = timeInterpolator;
    }

    @Override // o.AbstractC0434ug
    public final void D(C0355qg c0355qg) {
        super.D(c0355qg);
        this.E |= 4;
        if (this.A != null) {
            for (int i = 0; i < this.A.size(); i++) {
                ((AbstractC0434ug) this.A.get(i)).D(c0355qg);
            }
        }
    }

    @Override // o.AbstractC0434ug
    public final void E() {
        this.E |= 2;
        int size = this.A.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC0434ug) this.A.get(i)).E();
        }
    }

    @Override // o.AbstractC0434ug
    public final void F(long j) {
        this.b = j;
    }

    @Override // o.AbstractC0434ug
    public final String H(String str) {
        String H = super.H(str);
        for (int i = 0; i < this.A.size(); i++) {
            StringBuilder o2 = AbstractC0304o5.o(H, "\n");
            o2.append(((AbstractC0434ug) this.A.get(i)).H(str + "  "));
            H = o2.toString();
        }
        return H;
    }

    public final void I(AbstractC0434ug abstractC0434ug) {
        this.A.add(abstractC0434ug);
        abstractC0434ug.i = this;
        long j = this.c;
        if (j >= 0) {
            abstractC0434ug.A(j);
        }
        if ((this.E & 1) != 0) {
            abstractC0434ug.C(this.d);
        }
        if ((this.E & 2) != 0) {
            abstractC0434ug.E();
        }
        if ((this.E & 4) != 0) {
            abstractC0434ug.D(this.v);
        }
        if ((this.E & 8) != 0) {
            abstractC0434ug.B(null);
        }
    }

    @Override // o.AbstractC0434ug
    public final void c() {
        super.c();
        int size = this.A.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC0434ug) this.A.get(i)).c();
        }
    }

    @Override // o.AbstractC0434ug
    public final void d(Cg cg) {
        if (t(cg.b)) {
            Iterator it = this.A.iterator();
            while (it.hasNext()) {
                AbstractC0434ug abstractC0434ug = (AbstractC0434ug) it.next();
                if (abstractC0434ug.t(cg.b)) {
                    abstractC0434ug.d(cg);
                    cg.c.add(abstractC0434ug);
                }
            }
        }
    }

    @Override // o.AbstractC0434ug
    public final void f(Cg cg) {
        int size = this.A.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC0434ug) this.A.get(i)).f(cg);
        }
    }

    @Override // o.AbstractC0434ug
    public final void g(Cg cg) {
        if (t(cg.b)) {
            Iterator it = this.A.iterator();
            while (it.hasNext()) {
                AbstractC0434ug abstractC0434ug = (AbstractC0434ug) it.next();
                if (abstractC0434ug.t(cg.b)) {
                    abstractC0434ug.g(cg);
                    cg.c.add(abstractC0434ug);
                }
            }
        }
    }

    @Override // o.AbstractC0434ug
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public final AbstractC0434ug clone() {
        K2 k2 = (K2) super.clone();
        k2.A = new ArrayList();
        int size = this.A.size();
        for (int i = 0; i < size; i++) {
            AbstractC0434ug clone = ((AbstractC0434ug) this.A.get(i)).clone();
            k2.A.add(clone);
            clone.i = k2;
        }
        return k2;
    }

    @Override // o.AbstractC0434ug
    public final void l(FrameLayout frameLayout, H5 h5, H5 h52, ArrayList arrayList, ArrayList arrayList2) {
        long j = this.b;
        int size = this.A.size();
        for (int i = 0; i < size; i++) {
            AbstractC0434ug abstractC0434ug = (AbstractC0434ug) this.A.get(i);
            if (j > 0 && (this.B || i == 0)) {
                long j2 = abstractC0434ug.b;
                if (j2 > 0) {
                    abstractC0434ug.F(j2 + j);
                } else {
                    abstractC0434ug.F(j);
                }
            }
            abstractC0434ug.l(frameLayout, h5, h52, arrayList, arrayList2);
        }
    }

    @Override // o.AbstractC0434ug
    public final void w(ViewGroup viewGroup) {
        super.w(viewGroup);
        int size = this.A.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC0434ug) this.A.get(i)).w(viewGroup);
        }
    }

    @Override // o.AbstractC0434ug
    public final AbstractC0434ug x(InterfaceC0414tg interfaceC0414tg) {
        super.x(interfaceC0414tg);
        return this;
    }

    @Override // o.AbstractC0434ug
    public final void y(FrameLayout frameLayout) {
        super.y(frameLayout);
        int size = this.A.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC0434ug) this.A.get(i)).y(frameLayout);
        }
    }

    @Override // o.AbstractC0434ug
    public final void z() {
        if (this.A.isEmpty()) {
            G();
            m();
            return;
        }
        C0532zg c0532zg = new C0532zg();
        c0532zg.b = this;
        Iterator it = this.A.iterator();
        while (it.hasNext()) {
            ((AbstractC0434ug) it.next()).a(c0532zg);
        }
        this.C = this.A.size();
        if (!this.B) {
            for (int i = 1; i < this.A.size(); i++) {
                ((AbstractC0434ug) this.A.get(i - 1)).a(new C0532zg((AbstractC0434ug) this.A.get(i)));
            }
            AbstractC0434ug abstractC0434ug = (AbstractC0434ug) this.A.get(0);
            if (abstractC0434ug != null) {
                abstractC0434ug.z();
                return;
            }
            return;
        }
        Iterator it2 = this.A.iterator();
        while (it2.hasNext()) {
            ((AbstractC0434ug) it2.next()).z();
        }
    }
}
