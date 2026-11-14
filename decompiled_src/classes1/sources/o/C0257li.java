package o;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.conscrypt.BuildConfig;

/* renamed from: o.li, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0257li {

    /* renamed from: f, reason: collision with root package name */
    public static int f250f;
    public ArrayList a;
    public int b;
    public int c;
    public ArrayList d;
    public int e;

    public final void a(ArrayList arrayList) {
        int size = this.a.size();
        if (this.e != -1 && size > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                C0257li c0257li = (C0257li) arrayList.get(i);
                if (this.e == c0257li.b) {
                    c(this.c, c0257li);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public final int b(C0050ba c0050ba, int i) {
        int n;
        int n2;
        ArrayList arrayList = this.a;
        if (arrayList.size() == 0) {
            return 0;
        }
        M4 m4 = (M4) ((L4) arrayList.get(0)).T;
        c0050ba.t();
        m4.b(c0050ba, false);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            ((L4) arrayList.get(i2)).b(c0050ba, false);
        }
        if (i == 0 && m4.z0 > 0) {
            L1.f(m4, c0050ba, arrayList, 0);
        }
        if (i == 1 && m4.A0 > 0) {
            L1.f(m4, c0050ba, arrayList, 1);
        }
        try {
            c0050ba.p();
        } catch (Exception e) {
            System.err.println(e.toString() + "\n" + Arrays.toString(e.getStackTrace()).replace("[", "   at ").replace(",", "\n   at").replace("]", BuildConfig.FLAVOR));
        }
        this.d = new ArrayList();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            L4 l4 = (L4) arrayList.get(i3);
            Object obj = new Object();
            new WeakReference(l4);
            C0050ba.n(l4.I);
            C0050ba.n(l4.J);
            C0050ba.n(l4.K);
            C0050ba.n(l4.L);
            C0050ba.n(l4.M);
            this.d.add(obj);
        }
        if (i == 0) {
            n = C0050ba.n(m4.I);
            n2 = C0050ba.n(m4.K);
            c0050ba.t();
        } else {
            n = C0050ba.n(m4.J);
            n2 = C0050ba.n(m4.L);
            c0050ba.t();
        }
        return n2 - n;
    }

    public final void c(int i, C0257li c0257li) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            L4 l4 = (L4) it.next();
            ArrayList arrayList = c0257li.a;
            if (!arrayList.contains(l4)) {
                arrayList.add(l4);
            }
            int i2 = c0257li.b;
            if (i == 0) {
                l4.n0 = i2;
            } else {
                l4.o0 = i2;
            }
        }
        this.e = c0257li.b;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        int i = this.c;
        if (i == 0) {
            str = "Horizontal";
        } else if (i == 1) {
            str = "Vertical";
        } else if (i == 2) {
            str = "Both";
        } else {
            str = "Unknown";
        }
        sb.append(str);
        sb.append(" [");
        String j = Ve.j(sb, this.b, "] <");
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            L4 l4 = (L4) it.next();
            StringBuilder o2 = AbstractC0304o5.o(j, " ");
            o2.append(l4.h0);
            j = o2.toString();
        }
        return Ve.h(j, " >");
    }
}
