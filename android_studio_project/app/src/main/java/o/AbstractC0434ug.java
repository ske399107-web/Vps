package o;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.widget.FrameLayout;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;
//import org.conscrypt.BuildConfig // replaced by app BuildConfig

/* renamed from: o.ug, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0434ug implements Cloneable {
    public static final Animator[] w = new Animator[0];
    public static final int[] x = {2, 1, 3, 4};
    public static final C0355qg y = new Object();
    public static final ThreadLocal z = new ThreadLocal();
    public ArrayList k;
    public ArrayList l;
    public InterfaceC0414tg[] m;
    public final String a = getClass().getName();
    public long b = -1;
    public long c = -1;
    public TimeInterpolator d = null;
    public final ArrayList e = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f286f = new ArrayList();
    public H5 g = new H5(5);
    public H5 h = new H5(5);
    public K2 i = null;
    public final int[] j = x;
    public final ArrayList n = new ArrayList();

    /* renamed from: o, reason: collision with root package name */
    public Animator[] f287o = w;
    public int p = 0;
    public boolean q = false;
    public boolean r = false;
    public AbstractC0434ug s = null;
    public ArrayList t = null;
    public ArrayList u = new ArrayList();
    public C0355qg v = y;

    public static void b(H5 h5, View view, Cg cg) {
        ((E2) h5.a).put(view, cg);
        int id = view.getId();
        if (id >= 0) {
            SparseArray sparseArray = (SparseArray) h5.b;
            if (sparseArray.indexOfKey(id) >= 0) {
                sparseArray.put(id, null);
            } else {
                sparseArray.put(id, view);
            }
        }
        WeakHashMap weakHashMap = Dh.a;
        String f2 = AbstractC0455vh.f(view);
        if (f2 != null) {
            E2 e2 = (E2) h5.d;
            if (e2.containsKey(f2)) {
                e2.put(f2, null);
            } else {
                e2.put(f2, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                C0526za c0526za = (C0526za) h5.c;
                if (c0526za.a) {
                    int i = c0526za.d;
                    long[] jArr = c0526za.b;
                    Object[] objArr = c0526za.c;
                    int i2 = 0;
                    for (int i3 = 0; i3 < i; i3++) {
                        Object obj = objArr[i3];
                        if (obj != AbstractC0487x9.v) {
                            if (i3 != i2) {
                                jArr[i2] = jArr[i3];
                                objArr[i2] = obj;
                                objArr[i3] = null;
                            }
                            i2++;
                        }
                    }
                    c0526za.a = false;
                    c0526za.d = i2;
                }
                if (AbstractC0487x9.e(c0526za.b, c0526za.d, itemIdAtPosition) >= 0) {
                    View view2 = (View) c0526za.b(itemIdAtPosition);
                    if (view2 != null) {
                        view2.setHasTransientState(false);
                        c0526za.d(itemIdAtPosition, null);
                        return;
                    }
                    return;
                }
                view.setHasTransientState(true);
                c0526za.d(itemIdAtPosition, view);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [o.Qe, java.lang.Object, o.E2] */
    public static E2 p() {
        ThreadLocal threadLocal = z;
        E2 e2 = (E2) threadLocal.get();
        if (e2 == null) {
            ?? qe = new Qe(0);
            threadLocal.set(qe);
            return qe;
        }
        return e2;
    }

    public static boolean u(Cg cg, Cg cg2, String str) {
        Object obj = cg.a.get(str);
        Object obj2 = cg2.a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    public void A(long j) {
        this.c = j;
    }

    public void B(Ha ha) {
    }

    public void C(TimeInterpolator timeInterpolator) {
        this.d = timeInterpolator;
    }

    public void D(C0355qg c0355qg) {
        if (c0355qg == null) {
            this.v = y;
        } else {
            this.v = c0355qg;
        }
    }

    public void E() {
    }

    public void F(long j) {
        this.b = j;
    }

    public final void G() {
        if (this.p == 0) {
            v(this, Y5.b);
            this.r = false;
        }
        this.p++;
    }

    public String H(String str) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(": ");
        if (this.c != -1) {
            sb.append("dur(");
            sb.append(this.c);
            sb.append(") ");
        }
        if (this.b != -1) {
            sb.append("dly(");
            sb.append(this.b);
            sb.append(") ");
        }
        if (this.d != null) {
            sb.append("interp(");
            sb.append(this.d);
            sb.append(") ");
        }
        ArrayList arrayList = this.e;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f286f;
        if (size > 0 || arrayList2.size() > 0) {
            sb.append("tgts(");
            if (arrayList.size() > 0) {
                for (int i = 0; i < arrayList.size(); i++) {
                    if (i > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList.get(i));
                }
            }
            if (arrayList2.size() > 0) {
                for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                    if (i2 > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList2.get(i2));
                }
            }
            sb.append(")");
        }
        return sb.toString();
    }

    public void a(InterfaceC0414tg interfaceC0414tg) {
        if (this.t == null) {
            this.t = new ArrayList();
        }
        this.t.add(interfaceC0414tg);
    }

    public void c() {
        ArrayList arrayList = this.n;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.f287o);
        this.f287o = w;
        for (int i = size - 1; i >= 0; i--) {
            Animator animator = animatorArr[i];
            animatorArr[i] = null;
            animator.cancel();
        }
        this.f287o = animatorArr;
        v(this, Y5.d);
    }

    public abstract void d(Cg cg);

    public final void e(View view, boolean z2) {
        if (view == null) {
            return;
        }
        view.getId();
        if (view.getParent() instanceof ViewGroup) {
            Cg cg = new Cg(view);
            if (z2) {
                g(cg);
            } else {
                d(cg);
            }
            cg.c.add(this);
            f(cg);
            if (z2) {
                b(this.g, view, cg);
            } else {
                b(this.h, view, cg);
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                e(viewGroup.getChildAt(i), z2);
            }
        }
    }

    public void f(Cg cg) {
    }

    public abstract void g(Cg cg);

    public final void h(FrameLayout frameLayout, boolean z2) {
        i(z2);
        ArrayList arrayList = this.e;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f286f;
        if (size <= 0 && arrayList2.size() <= 0) {
            e(frameLayout, z2);
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            View findViewById = frameLayout.findViewById(((Integer) arrayList.get(i)).intValue());
            if (findViewById != null) {
                Cg cg = new Cg(findViewById);
                if (z2) {
                    g(cg);
                } else {
                    d(cg);
                }
                cg.c.add(this);
                f(cg);
                if (z2) {
                    b(this.g, findViewById, cg);
                } else {
                    b(this.h, findViewById, cg);
                }
            }
        }
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            View view = (View) arrayList2.get(i2);
            Cg cg2 = new Cg(view);
            if (z2) {
                g(cg2);
            } else {
                d(cg2);
            }
            cg2.c.add(this);
            f(cg2);
            if (z2) {
                b(this.g, view, cg2);
            } else {
                b(this.h, view, cg2);
            }
        }
    }

    public final void i(boolean z2) {
        if (z2) {
            ((E2) this.g.a).clear();
            ((SparseArray) this.g.b).clear();
            ((C0526za) this.g.c).a();
        } else {
            ((E2) this.h.a).clear();
            ((SparseArray) this.h.b).clear();
            ((C0526za) this.h.c).a();
        }
    }

    @Override // 
    /* renamed from: j */
    public AbstractC0434ug clone() {
        try {
            AbstractC0434ug abstractC0434ug = (AbstractC0434ug) super.clone();
            abstractC0434ug.u = new ArrayList();
            abstractC0434ug.g = new H5(5);
            abstractC0434ug.h = new H5(5);
            abstractC0434ug.k = null;
            abstractC0434ug.l = null;
            abstractC0434ug.s = this;
            abstractC0434ug.t = null;
            return abstractC0434ug;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public Animator k(FrameLayout frameLayout, Cg cg, Cg cg2) {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [o.sg, java.lang.Object] */
    public void l(FrameLayout frameLayout, H5 h5, H5 h52, ArrayList arrayList, ArrayList arrayList2) {
        int i;
        View view;
        Cg cg;
        Animator animator;
        Cg cg2;
        E2 p = p();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        o().getClass();
        int i2 = 0;
        while (i2 < size) {
            Cg cg3 = (Cg) arrayList.get(i2);
            Cg cg4 = (Cg) arrayList2.get(i2);
            if (cg3 != null && !cg3.c.contains(this)) {
                cg3 = null;
            }
            if (cg4 != null && !cg4.c.contains(this)) {
                cg4 = null;
            }
            if ((cg3 != null || cg4 != null) && (cg3 == null || cg4 == null || s(cg3, cg4))) {
                Animator k = k(frameLayout, cg3, cg4);
                if (k != null) {
                    String str = this.a;
                    if (cg4 != null) {
                        String[] q = q();
                        view = cg4.b;
                        if (q != null && q.length > 0) {
                            cg2 = new Cg(view);
                            Cg cg5 = (Cg) ((E2) h52.a).get(view);
                            i = size;
                            if (cg5 != null) {
                                int i3 = 0;
                                while (i3 < q.length) {
                                    HashMap hashMap = cg2.a;
                                    String str2 = q[i3];
                                    hashMap.put(str2, cg5.a.get(str2));
                                    i3++;
                                    q = q;
                                }
                            }
                            int i4 = p.c;
                            int i5 = 0;
                            while (true) {
                                if (i5 < i4) {
                                    C0394sg c0394sg = (C0394sg) p.get((Animator) p.f(i5));
                                    if (c0394sg.c != null && c0394sg.a == view && c0394sg.b.equals(str) && c0394sg.c.equals(cg2)) {
                                        animator = null;
                                        break;
                                    }
                                    i5++;
                                } else {
                                    animator = k;
                                    break;
                                }
                            }
                        } else {
                            i = size;
                            animator = k;
                            cg2 = null;
                        }
                        k = animator;
                        cg = cg2;
                    } else {
                        i = size;
                        view = cg3.b;
                        cg = null;
                    }
                    if (k != null) {
                        WindowId windowId = frameLayout.getWindowId();
                        ?? obj = new Object();
                        obj.a = view;
                        obj.b = str;
                        obj.c = cg;
                        obj.d = windowId;
                        obj.e = this;
                        obj.f278f = k;
                        p.put(k, obj);
                        this.u.add(k);
                    }
                    i2++;
                    size = i;
                }
            }
            i = size;
            i2++;
            size = i;
        }
        if (sparseIntArray.size() != 0) {
            for (int i6 = 0; i6 < sparseIntArray.size(); i6++) {
                C0394sg c0394sg2 = (C0394sg) p.get((Animator) this.u.get(sparseIntArray.keyAt(i6)));
                c0394sg2.f278f.setStartDelay(c0394sg2.f278f.getStartDelay() + (sparseIntArray.valueAt(i6) - Long.MAX_VALUE));
            }
        }
    }

    public final void m() {
        int i = this.p - 1;
        this.p = i;
        if (i == 0) {
            v(this, Y5.c);
            for (int i2 = 0; i2 < ((C0526za) this.g.c).e(); i2++) {
                View view = (View) ((C0526za) this.g.c).f(i2);
                if (view != null) {
                    view.setHasTransientState(false);
                }
            }
            for (int i3 = 0; i3 < ((C0526za) this.h.c).e(); i3++) {
                View view2 = (View) ((C0526za) this.h.c).f(i3);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                }
            }
            this.r = true;
        }
    }

    public final Cg n(View view, boolean z2) {
        ArrayList arrayList;
        ArrayList arrayList2;
        K2 k2 = this.i;
        if (k2 != null) {
            return k2.n(view, z2);
        }
        if (z2) {
            arrayList = this.k;
        } else {
            arrayList = this.l;
        }
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i < size) {
                Cg cg = (Cg) arrayList.get(i);
                if (cg == null) {
                    return null;
                }
                if (cg.b == view) {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        if (i < 0) {
            return null;
        }
        if (z2) {
            arrayList2 = this.l;
        } else {
            arrayList2 = this.k;
        }
        return (Cg) arrayList2.get(i);
    }

    public final AbstractC0434ug o() {
        K2 k2 = this.i;
        if (k2 != null) {
            return k2.o();
        }
        return this;
    }

    public String[] q() {
        return null;
    }

    public final Cg r(View view, boolean z2) {
        H5 h5;
        K2 k2 = this.i;
        if (k2 != null) {
            return k2.r(view, z2);
        }
        if (z2) {
            h5 = this.g;
        } else {
            h5 = this.h;
        }
        return (Cg) ((E2) h5.a).get(view);
    }

    public boolean s(Cg cg, Cg cg2) {
        if (cg == null || cg2 == null) {
            return false;
        }
        String[] q = q();
        if (q != null) {
            for (String str : q) {
                if (!u(cg, cg2, str)) {
                }
            }
            return false;
        }
        Iterator it = cg.a.keySet().iterator();
        while (it.hasNext()) {
            if (u(cg, cg2, (String) it.next())) {
            }
        }
        return false;
        return true;
    }

    public final boolean t(View view) {
        int id = view.getId();
        ArrayList arrayList = this.e;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f286f;
        if ((size == 0 && arrayList2.size() == 0) || arrayList.contains(Integer.valueOf(id)) || arrayList2.contains(view)) {
            return true;
        }
        return false;
    }

    public final String toString() {
        return H(BuildConfig.FLAVOR);
    }

    public final void v(AbstractC0434ug abstractC0434ug, Y5 y5) {
        AbstractC0434ug abstractC0434ug2 = this.s;
        if (abstractC0434ug2 != null) {
            abstractC0434ug2.v(abstractC0434ug, y5);
        }
        ArrayList arrayList = this.t;
        if (arrayList != null && !arrayList.isEmpty()) {
            int size = this.t.size();
            InterfaceC0414tg[] interfaceC0414tgArr = this.m;
            if (interfaceC0414tgArr == null) {
                interfaceC0414tgArr = new InterfaceC0414tg[size];
            }
            this.m = null;
            InterfaceC0414tg[] interfaceC0414tgArr2 = (InterfaceC0414tg[]) this.t.toArray(interfaceC0414tgArr);
            for (int i = 0; i < size; i++) {
                InterfaceC0414tg interfaceC0414tg = interfaceC0414tgArr2[i];
                switch (y5.a) {
                    case 4:
                        interfaceC0414tg.f(abstractC0434ug);
                        break;
                    case 5:
                        interfaceC0414tg.a(abstractC0434ug);
                        break;
                    case 6:
                        interfaceC0414tg.c(abstractC0434ug);
                        break;
                    case 7:
                        interfaceC0414tg.d();
                        break;
                    default:
                        interfaceC0414tg.e();
                        break;
                }
                interfaceC0414tgArr2[i] = null;
            }
            this.m = interfaceC0414tgArr2;
        }
    }

    public void w(ViewGroup viewGroup) {
        if (!this.r) {
            ArrayList arrayList = this.n;
            int size = arrayList.size();
            Animator[] animatorArr = (Animator[]) arrayList.toArray(this.f287o);
            this.f287o = w;
            for (int i = size - 1; i >= 0; i--) {
                Animator animator = animatorArr[i];
                animatorArr[i] = null;
                animator.pause();
            }
            this.f287o = animatorArr;
            v(this, Y5.e);
            this.q = true;
        }
    }

    public AbstractC0434ug x(InterfaceC0414tg interfaceC0414tg) {
        AbstractC0434ug abstractC0434ug;
        ArrayList arrayList = this.t;
        if (arrayList == null) {
            return this;
        }
        if (!arrayList.remove(interfaceC0414tg) && (abstractC0434ug = this.s) != null) {
            abstractC0434ug.x(interfaceC0414tg);
        }
        if (this.t.size() == 0) {
            this.t = null;
        }
        return this;
    }

    public void y(FrameLayout frameLayout) {
        if (this.q) {
            if (!this.r) {
                ArrayList arrayList = this.n;
                int size = arrayList.size();
                Animator[] animatorArr = (Animator[]) arrayList.toArray(this.f287o);
                this.f287o = w;
                for (int i = size - 1; i >= 0; i--) {
                    Animator animator = animatorArr[i];
                    animatorArr[i] = null;
                    animator.resume();
                }
                this.f287o = animatorArr;
                v(this, Y5.f166f);
            }
            this.q = false;
        }
    }

    public void z() {
        G();
        E2 p = p();
        Iterator it = this.u.iterator();
        while (it.hasNext()) {
            Animator animator = (Animator) it.next();
            if (p.containsKey(animator)) {
                G();
                if (animator != null) {
                    animator.addListener(new C0374rg(this, p));
                    long j = this.c;
                    if (j >= 0) {
                        animator.setDuration(j);
                    }
                    long j2 = this.b;
                    if (j2 >= 0) {
                        animator.setStartDelay(animator.getStartDelay() + j2);
                    }
                    TimeInterpolator timeInterpolator = this.d;
                    if (timeInterpolator != null) {
                        animator.setInterpolator(timeInterpolator);
                    }
                    animator.addListener(new Q(5, this));
                    animator.start();
                }
            }
        }
        this.u.clear();
        m();
    }
}
