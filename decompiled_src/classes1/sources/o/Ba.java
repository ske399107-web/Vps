package o;

import android.view.View;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Ba {
    public final /* synthetic */ int a;
    public int b;
    public int c;
    public int d;
    public int e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f73f;
    public final Object g;

    public Ba(int i) {
        this.a = 0;
        this.b = i;
        if (i > 0) {
            this.f73f = new C(17);
            this.g = new C0424u6(19);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public void a() {
        View view = (View) ((ArrayList) this.f73f).get(r0.size() - 1);
        C0095df c0095df = (C0095df) view.getLayoutParams();
        this.c = ((StaggeredGridLayoutManager) this.g).r.b(view);
        c0095df.getClass();
    }

    public void b() {
        ((ArrayList) this.f73f).clear();
        this.b = PKIFailureInfo.systemUnavail;
        this.c = PKIFailureInfo.systemUnavail;
        this.d = 0;
    }

    public int c() {
        boolean z = ((StaggeredGridLayoutManager) this.g).w;
        ArrayList arrayList = (ArrayList) this.f73f;
        if (z) {
            return e(arrayList.size() - 1, -1);
        }
        return e(0, arrayList.size());
    }

    public int d() {
        boolean z = ((StaggeredGridLayoutManager) this.g).w;
        ArrayList arrayList = (ArrayList) this.f73f;
        if (z) {
            return e(0, arrayList.size());
        }
        return e(arrayList.size() - 1, -1);
    }

    public int e(int i, int i2) {
        int i3;
        boolean z;
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) this.g;
        int k = staggeredGridLayoutManager.r.k();
        int g = staggeredGridLayoutManager.r.g();
        if (i2 > i) {
            i3 = 1;
        } else {
            i3 = -1;
        }
        while (i != i2) {
            View view = (View) ((ArrayList) this.f73f).get(i);
            int e = staggeredGridLayoutManager.r.e(view);
            int b = staggeredGridLayoutManager.r.b(view);
            boolean z2 = false;
            if (e <= g) {
                z = true;
            } else {
                z = false;
            }
            if (b >= k) {
                z2 = true;
            }
            if (z && z2 && (e < k || b > g)) {
                return AbstractC0431ud.H(view);
            }
            i += i3;
        }
        return -1;
    }

    public Object f(Object obj) {
        AbstractC0487x9.o(obj, "key");
        synchronized (((C0424u6) this.g)) {
            C c = (C) this.f73f;
            c.getClass();
            Object obj2 = ((LinkedHashMap) c.b).get(obj);
            if (obj2 != null) {
                this.d++;
                return obj2;
            }
            this.e++;
            return null;
        }
    }

    public int g(int i) {
        int i2 = this.c;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (((ArrayList) this.f73f).size() == 0) {
            return i;
        }
        a();
        return this.c;
    }

    public View h(int i, int i2) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) this.g;
        ArrayList arrayList = (ArrayList) this.f73f;
        View view = null;
        if (i2 == -1) {
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                View view2 = (View) arrayList.get(i3);
                if ((staggeredGridLayoutManager.w && AbstractC0431ud.H(view2) <= i) || ((!staggeredGridLayoutManager.w && AbstractC0431ud.H(view2) >= i) || !view2.hasFocusable())) {
                    break;
                }
                i3++;
                view = view2;
            }
        } else {
            int size2 = arrayList.size() - 1;
            while (size2 >= 0) {
                View view3 = (View) arrayList.get(size2);
                if ((staggeredGridLayoutManager.w && AbstractC0431ud.H(view3) >= i) || ((!staggeredGridLayoutManager.w && AbstractC0431ud.H(view3) <= i) || !view3.hasFocusable())) {
                    break;
                }
                size2--;
                view = view3;
            }
        }
        return view;
    }

    public int i(int i) {
        int i2 = this.b;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (((ArrayList) this.f73f).size() == 0) {
            return i;
        }
        View view = (View) ((ArrayList) this.f73f).get(0);
        C0095df c0095df = (C0095df) view.getLayoutParams();
        this.b = ((StaggeredGridLayoutManager) this.g).r.e(view);
        c0095df.getClass();
        return this.b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c4, code lost:
    
        return r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object j(java.lang.Object r6, java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Ba.j(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public String toString() {
        int i;
        String str;
        switch (this.a) {
            case 0:
                synchronized (((C0424u6) this.g)) {
                    try {
                        int i2 = this.d;
                        int i3 = this.e + i2;
                        if (i3 != 0) {
                            i = (i2 * 100) / i3;
                        } else {
                            i = 0;
                        }
                        str = "LruCache[maxSize=" + this.b + ",hits=" + this.d + ",misses=" + this.e + ",hitRate=" + i + "%]";
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return str;
            default:
                return super.toString();
        }
    }

    public Ba(StaggeredGridLayoutManager staggeredGridLayoutManager, int i) {
        this.a = 1;
        this.g = staggeredGridLayoutManager;
        this.f73f = new ArrayList();
        this.b = PKIFailureInfo.systemUnavail;
        this.c = PKIFailureInfo.systemUnavail;
        this.d = 0;
        this.e = i;
    }
}
