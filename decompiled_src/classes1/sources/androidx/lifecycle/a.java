package androidx.lifecycle;

import android.os.Looper;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import o.AbstractC0304o5;
import o.AbstractC0487x9;
import o.C0213je;
import o.C0326p7;
import o.C0460w2;
import o.C5;
import o.J9;
import o.L9;
import o.M9;
import o.P9;
import o.Q9;
import o.R9;
import o.S9;
import o.T9;
import o.U8;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class a {
    public final boolean a;
    public C0326p7 b;
    public M9 c;
    public final WeakReference d;
    public int e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f39f;
    public boolean g;
    public final ArrayList h;

    public a(R9 r9) {
        new AtomicReference();
        this.a = true;
        this.b = new C0326p7();
        this.c = M9.b;
        this.h = new ArrayList();
        this.d = new WeakReference(r9);
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [o.S9, java.lang.Object] */
    public final void a(Q9 q9) {
        P9 reflectiveGenericLifecycleObserver;
        R9 r9;
        ArrayList arrayList = this.h;
        Object obj = null;
        c("addObserver");
        M9 m9 = this.c;
        M9 m92 = M9.a;
        if (m9 != m92) {
            m92 = M9.b;
        }
        ?? obj2 = new Object();
        HashMap hashMap = T9.a;
        boolean z = q9 instanceof P9;
        boolean z2 = q9 instanceof C5;
        boolean z3 = false;
        if (z && z2) {
            reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((C5) q9, (P9) q9);
        } else if (z2) {
            reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((C5) q9, null);
        } else if (z) {
            reflectiveGenericLifecycleObserver = (P9) q9;
        } else {
            Class<?> cls = q9.getClass();
            if (T9.c(cls) == 2) {
                Object obj3 = T9.b.get(cls);
                AbstractC0487x9.l(obj3);
                List list = (List) obj3;
                if (list.size() != 1) {
                    int size = list.size();
                    U8[] u8Arr = new U8[size];
                    if (size <= 0) {
                        reflectiveGenericLifecycleObserver = new CompositeGeneratedAdaptersObserver(u8Arr);
                    } else {
                        T9.a((Constructor) list.get(0), q9);
                        throw null;
                    }
                } else {
                    T9.a((Constructor) list.get(0), q9);
                    throw null;
                }
            } else {
                reflectiveGenericLifecycleObserver = new ReflectiveGenericLifecycleObserver(q9);
            }
        }
        obj2.b = reflectiveGenericLifecycleObserver;
        obj2.a = m92;
        C0326p7 c0326p7 = this.b;
        C0213je a = c0326p7.a(q9);
        if (a != null) {
            obj = a.b;
        } else {
            HashMap hashMap2 = c0326p7.e;
            C0213je c0213je = new C0213je(q9, obj2);
            c0326p7.d++;
            C0213je c0213je2 = c0326p7.b;
            if (c0213je2 == null) {
                c0326p7.a = c0213je;
                c0326p7.b = c0213je;
            } else {
                c0213je2.c = c0213je;
                c0213je.d = c0213je2;
                c0326p7.b = c0213je;
            }
            hashMap2.put(q9, c0213je);
        }
        if (((S9) obj) != null || (r9 = (R9) this.d.get()) == null) {
            return;
        }
        if (this.e != 0 || this.f39f) {
            z3 = true;
        }
        M9 b = b(q9);
        this.e++;
        while (obj2.a.compareTo(b) < 0 && this.b.e.containsKey(q9)) {
            arrayList.add(obj2.a);
            J9 j9 = L9.Companion;
            M9 m93 = obj2.a;
            j9.getClass();
            L9 a2 = J9.a(m93);
            if (a2 != null) {
                obj2.a(r9, a2);
                arrayList.remove(arrayList.size() - 1);
                b = b(q9);
            } else {
                throw new IllegalStateException("no event up from " + obj2.a);
            }
        }
        if (!z3) {
            h();
        }
        this.e--;
    }

    public final M9 b(Q9 q9) {
        C0213je c0213je;
        M9 m9;
        HashMap hashMap = this.b.e;
        M9 m92 = null;
        if (hashMap.containsKey(q9)) {
            c0213je = ((C0213je) hashMap.get(q9)).d;
        } else {
            c0213je = null;
        }
        if (c0213je != null) {
            m9 = ((S9) c0213je.b).a;
        } else {
            m9 = null;
        }
        ArrayList arrayList = this.h;
        if (!arrayList.isEmpty()) {
            m92 = (M9) arrayList.get(arrayList.size() - 1);
        }
        M9 m93 = this.c;
        AbstractC0487x9.o(m93, "state1");
        if (m9 == null || m9.compareTo(m93) >= 0) {
            m9 = m93;
        }
        if (m92 == null || m92.compareTo(m9) >= 0) {
            return m9;
        }
        return m92;
    }

    public final void c(String str) {
        if (this.a) {
            ((C0460w2) C0460w2.D0().k).getClass();
            if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                throw new IllegalStateException(AbstractC0304o5.h("Method ", str, " must be called on the main thread").toString());
            }
        }
    }

    public final void d(L9 l9) {
        AbstractC0487x9.o(l9, "event");
        c("handleLifecycleEvent");
        e(l9.a());
    }

    public final void e(M9 m9) {
        M9 m92 = this.c;
        if (m92 == m9) {
            return;
        }
        M9 m93 = M9.b;
        M9 m94 = M9.a;
        if (m92 == m93 && m9 == m94) {
            throw new IllegalStateException(("no event down from " + this.c + " in component " + this.d.get()).toString());
        }
        this.c = m9;
        if (!this.f39f && this.e == 0) {
            this.f39f = true;
            h();
            this.f39f = false;
            if (this.c == m94) {
                this.b = new C0326p7();
                return;
            }
            return;
        }
        this.g = true;
    }

    public final void f(Q9 q9) {
        c("removeObserver");
        this.b.b(q9);
    }

    public final void g() {
        M9 m9 = M9.c;
        c("setCurrentState");
        e(m9);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0030, code lost:
    
        r7.g = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h() {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.a.h():void");
    }
}
