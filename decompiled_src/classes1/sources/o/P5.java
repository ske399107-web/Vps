package o;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class P5 implements N5 {
    public final AbstractC0277mi d;

    /* renamed from: f, reason: collision with root package name */
    public int f136f;
    public int g;
    public AbstractC0277mi a = null;
    public boolean b = false;
    public boolean c = false;
    public int e = 1;
    public int h = 1;
    public C0026a6 i = null;
    public boolean j = false;
    public final ArrayList k = new ArrayList();
    public final ArrayList l = new ArrayList();

    public P5(AbstractC0277mi abstractC0277mi) {
        this.d = abstractC0277mi;
    }

    @Override // o.N5
    public final void a(N5 n5) {
        ArrayList arrayList = this.l;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!((P5) it.next()).j) {
                return;
            }
        }
        this.c = true;
        AbstractC0277mi abstractC0277mi = this.a;
        if (abstractC0277mi != null) {
            abstractC0277mi.a(this);
        }
        if (this.b) {
            this.d.a(this);
            return;
        }
        Iterator it2 = arrayList.iterator();
        P5 p5 = null;
        int i = 0;
        while (it2.hasNext()) {
            P5 p52 = (P5) it2.next();
            if (!(p52 instanceof C0026a6)) {
                i++;
                p5 = p52;
            }
        }
        if (p5 != null && i == 1 && p5.j) {
            C0026a6 c0026a6 = this.i;
            if (c0026a6 != null) {
                if (c0026a6.j) {
                    this.f136f = this.h * c0026a6.g;
                } else {
                    return;
                }
            }
            d(p5.g + this.f136f);
        }
        AbstractC0277mi abstractC0277mi2 = this.a;
        if (abstractC0277mi2 != null) {
            abstractC0277mi2.a(this);
        }
    }

    public final void b(AbstractC0277mi abstractC0277mi) {
        this.k.add(abstractC0277mi);
        if (this.j) {
            abstractC0277mi.a(abstractC0277mi);
        }
    }

    public final void c() {
        this.l.clear();
        this.k.clear();
        this.j = false;
        this.g = 0;
        this.c = false;
        this.b = false;
    }

    public void d(int i) {
        if (this.j) {
            return;
        }
        this.j = true;
        this.g = i;
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            N5 n5 = (N5) it.next();
            n5.a(n5);
        }
    }

    public final String toString() {
        String str;
        Object obj;
        StringBuilder sb = new StringBuilder();
        sb.append(this.d.b.h0);
        sb.append(":");
        switch (this.e) {
            case 1:
                str = "UNKNOWN";
                break;
            case 2:
                str = "HORIZONTAL_DIMENSION";
                break;
            case 3:
                str = "VERTICAL_DIMENSION";
                break;
            case 4:
                str = "LEFT";
                break;
            case 5:
                str = "RIGHT";
                break;
            case 6:
                str = "TOP";
                break;
            case 7:
                str = "BOTTOM";
                break;
            case 8:
                str = "BASELINE";
                break;
            default:
                str = "null";
                break;
        }
        sb.append(str);
        sb.append("(");
        if (this.j) {
            obj = Integer.valueOf(this.g);
        } else {
            obj = "unresolved";
        }
        sb.append(obj);
        sb.append(") <t=");
        sb.append(this.l.size());
        sb.append(":d=");
        sb.append(this.k.size());
        sb.append(">");
        return sb.toString();
    }
}
