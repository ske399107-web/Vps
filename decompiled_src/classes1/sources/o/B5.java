package o;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import java.util.ArrayList;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class B5 extends AbstractC0352qd {
    public static TimeInterpolator s;
    public boolean g;
    public ArrayList h;
    public ArrayList i;
    public ArrayList j;
    public ArrayList k;
    public ArrayList l;
    public ArrayList m;
    public ArrayList n;

    /* renamed from: o, reason: collision with root package name */
    public ArrayList f71o;
    public ArrayList p;
    public ArrayList q;
    public ArrayList r;

    public static void h(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((Id) arrayList.get(size)).a.animate().cancel();
        }
    }

    /* JADX WARN: Type inference failed for: r12v4, types: [o.z5, java.lang.Object] */
    @Override // o.AbstractC0352qd
    public final boolean a(Id id, Id id2, Wb wb, Wb wb2) {
        int i;
        int i2;
        int i3 = wb.a;
        int i4 = wb.b;
        if (id2.p()) {
            int i5 = wb.a;
            i2 = wb.b;
            i = i5;
        } else {
            i = wb2.a;
            i2 = wb2.b;
        }
        if (id == id2) {
            return g(id, i3, i4, i, i2);
        }
        View view = id.a;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        float alpha = view.getAlpha();
        l(id);
        view.setTranslationX(translationX);
        view.setTranslationY(translationY);
        view.setAlpha(alpha);
        l(id2);
        float f2 = -((int) ((i - i3) - translationX));
        View view2 = id2.a;
        view2.setTranslationX(f2);
        view2.setTranslationY(-((int) ((i2 - i4) - translationY)));
        view2.setAlpha(0.0f);
        ArrayList arrayList = this.k;
        ?? obj = new Object();
        obj.a = id;
        obj.b = id2;
        obj.c = i3;
        obj.d = i4;
        obj.e = i;
        obj.f307f = i2;
        arrayList.add(obj);
        return true;
    }

    @Override // o.AbstractC0352qd
    public final void d(Id id) {
        View view = id.a;
        view.animate().cancel();
        ArrayList arrayList = this.j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((A5) arrayList.get(size)).a == id) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                c(id);
                arrayList.remove(size);
            }
        }
        j(this.k, id);
        if (this.h.remove(id)) {
            view.setAlpha(1.0f);
            c(id);
        }
        if (this.i.remove(id)) {
            view.setAlpha(1.0f);
            c(id);
        }
        ArrayList arrayList2 = this.n;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList3 = (ArrayList) arrayList2.get(size2);
            j(arrayList3, id);
            if (arrayList3.isEmpty()) {
                arrayList2.remove(size2);
            }
        }
        ArrayList arrayList4 = this.m;
        for (int size3 = arrayList4.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList5 = (ArrayList) arrayList4.get(size3);
            int size4 = arrayList5.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (((A5) arrayList5.get(size4)).a == id) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    c(id);
                    arrayList5.remove(size4);
                    if (arrayList5.isEmpty()) {
                        arrayList4.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        ArrayList arrayList6 = this.l;
        for (int size5 = arrayList6.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList7 = (ArrayList) arrayList6.get(size5);
            if (arrayList7.remove(id)) {
                view.setAlpha(1.0f);
                c(id);
                if (arrayList7.isEmpty()) {
                    arrayList6.remove(size5);
                }
            }
        }
        this.q.remove(id);
        this.f71o.remove(id);
        this.r.remove(id);
        this.p.remove(id);
        i();
    }

    @Override // o.AbstractC0352qd
    public final void e() {
        ArrayList arrayList = this.j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            A5 a5 = (A5) arrayList.get(size);
            View view = a5.a.a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            c(a5.a);
            arrayList.remove(size);
        }
        ArrayList arrayList2 = this.h;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            c((Id) arrayList2.get(size2));
            arrayList2.remove(size2);
        }
        ArrayList arrayList3 = this.i;
        int size3 = arrayList3.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            Id id = (Id) arrayList3.get(size3);
            id.a.setAlpha(1.0f);
            c(id);
            arrayList3.remove(size3);
        }
        ArrayList arrayList4 = this.k;
        for (int size4 = arrayList4.size() - 1; size4 >= 0; size4--) {
            C0521z5 c0521z5 = (C0521z5) arrayList4.get(size4);
            Id id2 = c0521z5.a;
            if (id2 != null) {
                k(c0521z5, id2);
            }
            Id id3 = c0521z5.b;
            if (id3 != null) {
                k(c0521z5, id3);
            }
        }
        arrayList4.clear();
        if (!f()) {
            return;
        }
        ArrayList arrayList5 = this.m;
        for (int size5 = arrayList5.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList6 = (ArrayList) arrayList5.get(size5);
            for (int size6 = arrayList6.size() - 1; size6 >= 0; size6--) {
                A5 a52 = (A5) arrayList6.get(size6);
                View view2 = a52.a.a;
                view2.setTranslationY(0.0f);
                view2.setTranslationX(0.0f);
                c(a52.a);
                arrayList6.remove(size6);
                if (arrayList6.isEmpty()) {
                    arrayList5.remove(arrayList6);
                }
            }
        }
        ArrayList arrayList7 = this.l;
        for (int size7 = arrayList7.size() - 1; size7 >= 0; size7--) {
            ArrayList arrayList8 = (ArrayList) arrayList7.get(size7);
            for (int size8 = arrayList8.size() - 1; size8 >= 0; size8--) {
                Id id4 = (Id) arrayList8.get(size8);
                id4.a.setAlpha(1.0f);
                c(id4);
                arrayList8.remove(size8);
                if (arrayList8.isEmpty()) {
                    arrayList7.remove(arrayList8);
                }
            }
        }
        ArrayList arrayList9 = this.n;
        for (int size9 = arrayList9.size() - 1; size9 >= 0; size9--) {
            ArrayList arrayList10 = (ArrayList) arrayList9.get(size9);
            for (int size10 = arrayList10.size() - 1; size10 >= 0; size10--) {
                C0521z5 c0521z52 = (C0521z5) arrayList10.get(size10);
                Id id5 = c0521z52.a;
                if (id5 != null) {
                    k(c0521z52, id5);
                }
                Id id6 = c0521z52.b;
                if (id6 != null) {
                    k(c0521z52, id6);
                }
                if (arrayList10.isEmpty()) {
                    arrayList9.remove(arrayList10);
                }
            }
        }
        h(this.q);
        h(this.p);
        h(this.f71o);
        h(this.r);
        ArrayList arrayList11 = this.b;
        if (arrayList11.size() <= 0) {
            arrayList11.clear();
        } else {
            arrayList11.get(0).getClass();
            throw new ClassCastException();
        }
    }

    @Override // o.AbstractC0352qd
    public final boolean f() {
        if (this.i.isEmpty() && this.k.isEmpty() && this.j.isEmpty() && this.h.isEmpty() && this.p.isEmpty() && this.q.isEmpty() && this.f71o.isEmpty() && this.r.isEmpty() && this.m.isEmpty() && this.l.isEmpty() && this.n.isEmpty()) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [o.A5, java.lang.Object] */
    public final boolean g(Id id, int i, int i2, int i3, int i4) {
        View view = id.a;
        int translationX = i + ((int) view.getTranslationX());
        int translationY = i2 + ((int) id.a.getTranslationY());
        l(id);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            c(id);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        ArrayList arrayList = this.j;
        ?? obj = new Object();
        obj.a = id;
        obj.b = translationX;
        obj.c = translationY;
        obj.d = i3;
        obj.e = i4;
        arrayList.add(obj);
        return true;
    }

    public final void i() {
        if (!f()) {
            ArrayList arrayList = this.b;
            if (arrayList.size() <= 0) {
                arrayList.clear();
            } else {
                arrayList.get(0).getClass();
                throw new ClassCastException();
            }
        }
    }

    public final void j(ArrayList arrayList, Id id) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0521z5 c0521z5 = (C0521z5) arrayList.get(size);
            if (k(c0521z5, id) && c0521z5.a == null && c0521z5.b == null) {
                arrayList.remove(c0521z5);
            }
        }
    }

    public final boolean k(C0521z5 c0521z5, Id id) {
        if (c0521z5.b == id) {
            c0521z5.b = null;
        } else if (c0521z5.a == id) {
            c0521z5.a = null;
        } else {
            return false;
        }
        id.a.setAlpha(1.0f);
        View view = id.a;
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        c(id);
        return true;
    }

    public final void l(Id id) {
        if (s == null) {
            s = new ValueAnimator().getInterpolator();
        }
        id.a.animate().setInterpolator(s);
        d(id);
    }
}
