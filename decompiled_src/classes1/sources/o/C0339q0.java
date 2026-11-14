package o;

import android.content.Context;
import android.net.nsd.NsdManager;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: o.q0, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0339q0 {
    public final ArrayList a;
    public final Object b;
    public final Object c;
    public final Object d;
    public Object e;

    public C0339q0(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.b = applicationContext;
        Object systemService = applicationContext.getSystemService("servicediscovery");
        AbstractC0487x9.m(systemService, "null cannot be cast to non-null type android.net.nsd.NsdManager");
        this.c = (NsdManager) systemService;
        this.d = new Handler(Looper.getMainLooper());
        this.a = new ArrayList();
    }

    public boolean a(int i) {
        ArrayList arrayList = (ArrayList) this.c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0319p0 c0319p0 = (C0319p0) arrayList.get(i2);
            int i3 = c0319p0.a;
            if (i3 == 8) {
                if (e(c0319p0.c, i2 + 1) == i) {
                    return true;
                }
            } else if (i3 == 1) {
                int i4 = c0319p0.b;
                int i5 = c0319p0.c + i4;
                while (i4 < i5) {
                    if (e(i4, i2 + 1) == i) {
                        return true;
                    }
                    i4++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public void b() {
        ArrayList arrayList = (ArrayList) this.c;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((C0252ld) this.d).a((C0319p0) arrayList.get(i));
        }
        i(arrayList);
        ArrayList arrayList2 = this.a;
        int size2 = arrayList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            C0319p0 c0319p0 = (C0319p0) arrayList2.get(i2);
            int i3 = c0319p0.a;
            C0252ld c0252ld = (C0252ld) this.d;
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 4) {
                        if (i3 == 8) {
                            c0252ld.a(c0319p0);
                            c0252ld.e(c0319p0.b, c0319p0.c);
                        }
                    } else {
                        c0252ld.a(c0319p0);
                        c0252ld.c(c0319p0.b, c0319p0.c);
                    }
                } else {
                    c0252ld.a(c0319p0);
                    int i4 = c0319p0.b;
                    int i5 = c0319p0.c;
                    RecyclerView recyclerView = c0252ld.a;
                    recyclerView.O(i4, i5, true);
                    recyclerView.f0 = true;
                    recyclerView.c0.c += i5;
                }
            } else {
                c0252ld.a(c0319p0);
                c0252ld.d(c0319p0.b, c0319p0.c);
            }
        }
        i(arrayList2);
    }

    public void c(C0319p0 c0319p0) {
        int i;
        Jc jc;
        int i2 = c0319p0.a;
        if (i2 != 1 && i2 != 8) {
            int k = k(c0319p0.b, i2);
            int i3 = c0319p0.b;
            int i4 = c0319p0.a;
            if (i4 != 2) {
                if (i4 == 4) {
                    i = 1;
                } else {
                    throw new IllegalArgumentException("op should be remove or update." + c0319p0);
                }
            } else {
                i = 0;
            }
            int i5 = 1;
            int i6 = 1;
            while (true) {
                int i7 = c0319p0.c;
                jc = (Jc) this.b;
                if (i5 >= i7) {
                    break;
                }
                int k2 = k((i * i5) + c0319p0.b, c0319p0.a);
                int i8 = c0319p0.a;
                if (i8 == 2 ? k2 == k : !(i8 != 4 || k2 != k + 1)) {
                    i6++;
                } else {
                    C0319p0 g = g(i8, k, i6);
                    d(g, i3);
                    jc.c(g);
                    if (c0319p0.a == 4) {
                        i3 += i6;
                    }
                    i6 = 1;
                    k = k2;
                }
                i5++;
            }
            jc.c(c0319p0);
            if (i6 > 0) {
                C0319p0 g2 = g(c0319p0.a, k, i6);
                d(g2, i3);
                jc.c(g2);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("should not dispatch add or move for pre layout");
    }

    public void d(C0319p0 c0319p0, int i) {
        C0252ld c0252ld = (C0252ld) this.d;
        c0252ld.a(c0319p0);
        int i2 = c0319p0.a;
        if (i2 != 2) {
            if (i2 == 4) {
                c0252ld.c(i, c0319p0.c);
                return;
            }
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
        int i3 = c0319p0.c;
        RecyclerView recyclerView = c0252ld.a;
        recyclerView.O(i, i3, true);
        recyclerView.f0 = true;
        recyclerView.c0.c += i3;
    }

    public int e(int i, int i2) {
        ArrayList arrayList = (ArrayList) this.c;
        int size = arrayList.size();
        while (i2 < size) {
            C0319p0 c0319p0 = (C0319p0) arrayList.get(i2);
            int i3 = c0319p0.a;
            if (i3 == 8) {
                int i4 = c0319p0.b;
                if (i4 == i) {
                    i = c0319p0.c;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (c0319p0.c <= i) {
                        i++;
                    }
                }
            } else {
                int i5 = c0319p0.b;
                if (i5 > i) {
                    continue;
                } else if (i3 == 2) {
                    int i6 = c0319p0.c;
                    if (i < i5 + i6) {
                        return -1;
                    }
                    i -= i6;
                } else if (i3 == 1) {
                    i += c0319p0.c;
                }
            }
            i2++;
        }
        return i;
    }

    public boolean f() {
        if (this.a.size() > 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, o.p0] */
    public C0319p0 g(int i, int i2, int i3) {
        C0319p0 c0319p0 = (C0319p0) ((Jc) this.b).a();
        if (c0319p0 == null) {
            ?? obj = new Object();
            obj.a = i;
            obj.b = i2;
            obj.c = i3;
            return obj;
        }
        c0319p0.a = i;
        c0319p0.b = i2;
        c0319p0.c = i3;
        return c0319p0;
    }

    public void h(C0319p0 c0319p0) {
        ((ArrayList) this.c).add(c0319p0);
        int i = c0319p0.a;
        C0252ld c0252ld = (C0252ld) this.d;
        if (i != 1) {
            if (i != 2) {
                if (i != 4) {
                    if (i == 8) {
                        c0252ld.e(c0319p0.b, c0319p0.c);
                        return;
                    } else {
                        throw new IllegalArgumentException("Unknown update op type for " + c0319p0);
                    }
                }
                c0252ld.c(c0319p0.b, c0319p0.c);
                return;
            }
            int i2 = c0319p0.b;
            int i3 = c0319p0.c;
            RecyclerView recyclerView = c0252ld.a;
            recyclerView.O(i2, i3, false);
            recyclerView.f0 = true;
            return;
        }
        c0252ld.d(c0319p0.b, c0319p0.c);
    }

    public void i(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C0319p0 c0319p0 = (C0319p0) arrayList.get(i);
            c0319p0.getClass();
            ((Jc) this.b).c(c0319p0);
        }
        arrayList.clear();
    }

    public void j() {
        ArrayList arrayList = this.a;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                ((NsdManager) this.c).stopServiceDiscovery((NsdManager.DiscoveryListener) it.next());
            } catch (Throwable unused) {
            }
        }
        arrayList.clear();
        WifiManager.MulticastLock multicastLock = (WifiManager.MulticastLock) this.e;
        if (multicastLock != null && multicastLock.isHeld()) {
            multicastLock.release();
        }
        this.e = null;
    }

    public int k(int i, int i2) {
        int i3;
        int i4;
        ArrayList arrayList = (ArrayList) this.c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0319p0 c0319p0 = (C0319p0) arrayList.get(size);
            int i5 = c0319p0.a;
            if (i5 == 8) {
                int i6 = c0319p0.b;
                int i7 = c0319p0.c;
                if (i6 < i7) {
                    i4 = i6;
                    i3 = i7;
                } else {
                    i3 = i6;
                    i4 = i7;
                }
                if (i >= i4 && i <= i3) {
                    if (i4 == i6) {
                        if (i2 == 1) {
                            c0319p0.c = i7 + 1;
                        } else if (i2 == 2) {
                            c0319p0.c = i7 - 1;
                        }
                        i++;
                    } else {
                        if (i2 == 1) {
                            c0319p0.b = i6 + 1;
                        } else if (i2 == 2) {
                            c0319p0.b = i6 - 1;
                        }
                        i--;
                    }
                } else if (i < i6) {
                    if (i2 == 1) {
                        c0319p0.b = i6 + 1;
                        c0319p0.c = i7 + 1;
                    } else if (i2 == 2) {
                        c0319p0.b = i6 - 1;
                        c0319p0.c = i7 - 1;
                    }
                }
            } else {
                int i8 = c0319p0.b;
                if (i8 <= i) {
                    if (i5 == 1) {
                        i -= c0319p0.c;
                    } else if (i5 == 2) {
                        i += c0319p0.c;
                    }
                } else if (i2 == 1) {
                    c0319p0.b = i8 + 1;
                } else if (i2 == 2) {
                    c0319p0.b = i8 - 1;
                }
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            C0319p0 c0319p02 = (C0319p0) arrayList.get(size2);
            int i9 = c0319p02.a;
            Jc jc = (Jc) this.b;
            if (i9 == 8) {
                int i10 = c0319p02.c;
                if (i10 == c0319p02.b || i10 < 0) {
                    arrayList.remove(size2);
                    jc.c(c0319p02);
                }
            } else if (c0319p02.c <= 0) {
                arrayList.remove(size2);
                jc.c(c0319p02);
            }
        }
        return i;
    }

    public C0339q0(C0252ld c0252ld) {
        this.b = new Jc(30);
        this.a = new ArrayList();
        this.c = new ArrayList();
        this.d = c0252ld;
        this.e = new C(23, this);
    }
}
