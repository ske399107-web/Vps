package o;

import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentContainerView;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import org.conscrypt.BuildConfig;

/* renamed from: o.i8, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0188i8 {
    public H1 A;
    public H1 B;
    public ArrayDeque C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public ArrayList I;
    public ArrayList J;
    public ArrayList K;
    public C0227k8 L;
    public final J2 M;
    public boolean b;
    public ArrayList d;
    public ArrayList e;
    public androidx.activity.b g;
    public final H1 l;
    public final CopyOnWriteArrayList m;
    public final Z7 n;

    /* renamed from: o, reason: collision with root package name */
    public final Z7 f231o;
    public final Z7 p;
    public final Z7 q;
    public final C0068c8 r;
    public int s;
    public V7 t;
    public L1 u;
    public T7 v;
    public T7 w;
    public final C0088d8 x;
    public final C0424u6 y;
    public H1 z;
    public final ArrayList a = new ArrayList();
    public final H5 c = new H5(2);

    /* renamed from: f, reason: collision with root package name */
    public final Y7 f230f = new Y7(this);
    public final C0048b8 h = new C0048b8(this);
    public final AtomicInteger i = new AtomicInteger();
    public final Map j = Collections.synchronizedMap(new HashMap());
    public final Map k = Collections.synchronizedMap(new HashMap());

    /* JADX WARN: Type inference failed for: r0v12, types: [o.Z7] */
    /* JADX WARN: Type inference failed for: r0v13, types: [o.Z7] */
    /* JADX WARN: Type inference failed for: r0v14, types: [o.Z7] */
    /* JADX WARN: Type inference failed for: r0v15, types: [o.Z7] */
    public C0188i8() {
        Collections.synchronizedMap(new HashMap());
        this.l = new H1(this);
        this.m = new CopyOnWriteArrayList();
        final int i = 0;
        this.n = new O4(this) { // from class: o.Z7
            public final /* synthetic */ C0188i8 b;

            {
                this.b = this;
            }

            @Override // o.O4
            public final void a(Object obj) {
                switch (i) {
                    case 0:
                        C0188i8 c0188i8 = this.b;
                        if (c0188i8.H()) {
                            c0188i8.h(false);
                            return;
                        }
                        return;
                    case 1:
                        Integer num = (Integer) obj;
                        C0188i8 c0188i82 = this.b;
                        if (c0188i82.H() && num.intValue() == 80) {
                            c0188i82.m(false);
                            return;
                        }
                        return;
                    case 2:
                        Ob ob = (Ob) obj;
                        C0188i8 c0188i83 = this.b;
                        if (c0188i83.H()) {
                            boolean z = ob.a;
                            c0188i83.n(false);
                            return;
                        }
                        return;
                    default:
                        Gc gc = (Gc) obj;
                        C0188i8 c0188i84 = this.b;
                        if (c0188i84.H()) {
                            boolean z2 = gc.a;
                            c0188i84.s(false);
                            return;
                        }
                        return;
                }
            }
        };
        final int i2 = 1;
        this.f231o = new O4(this) { // from class: o.Z7
            public final /* synthetic */ C0188i8 b;

            {
                this.b = this;
            }

            @Override // o.O4
            public final void a(Object obj) {
                switch (i2) {
                    case 0:
                        C0188i8 c0188i8 = this.b;
                        if (c0188i8.H()) {
                            c0188i8.h(false);
                            return;
                        }
                        return;
                    case 1:
                        Integer num = (Integer) obj;
                        C0188i8 c0188i82 = this.b;
                        if (c0188i82.H() && num.intValue() == 80) {
                            c0188i82.m(false);
                            return;
                        }
                        return;
                    case 2:
                        Ob ob = (Ob) obj;
                        C0188i8 c0188i83 = this.b;
                        if (c0188i83.H()) {
                            boolean z = ob.a;
                            c0188i83.n(false);
                            return;
                        }
                        return;
                    default:
                        Gc gc = (Gc) obj;
                        C0188i8 c0188i84 = this.b;
                        if (c0188i84.H()) {
                            boolean z2 = gc.a;
                            c0188i84.s(false);
                            return;
                        }
                        return;
                }
            }
        };
        final int i3 = 2;
        this.p = new O4(this) { // from class: o.Z7
            public final /* synthetic */ C0188i8 b;

            {
                this.b = this;
            }

            @Override // o.O4
            public final void a(Object obj) {
                switch (i3) {
                    case 0:
                        C0188i8 c0188i8 = this.b;
                        if (c0188i8.H()) {
                            c0188i8.h(false);
                            return;
                        }
                        return;
                    case 1:
                        Integer num = (Integer) obj;
                        C0188i8 c0188i82 = this.b;
                        if (c0188i82.H() && num.intValue() == 80) {
                            c0188i82.m(false);
                            return;
                        }
                        return;
                    case 2:
                        Ob ob = (Ob) obj;
                        C0188i8 c0188i83 = this.b;
                        if (c0188i83.H()) {
                            boolean z = ob.a;
                            c0188i83.n(false);
                            return;
                        }
                        return;
                    default:
                        Gc gc = (Gc) obj;
                        C0188i8 c0188i84 = this.b;
                        if (c0188i84.H()) {
                            boolean z2 = gc.a;
                            c0188i84.s(false);
                            return;
                        }
                        return;
                }
            }
        };
        final int i4 = 3;
        this.q = new O4(this) { // from class: o.Z7
            public final /* synthetic */ C0188i8 b;

            {
                this.b = this;
            }

            @Override // o.O4
            public final void a(Object obj) {
                switch (i4) {
                    case 0:
                        C0188i8 c0188i8 = this.b;
                        if (c0188i8.H()) {
                            c0188i8.h(false);
                            return;
                        }
                        return;
                    case 1:
                        Integer num = (Integer) obj;
                        C0188i8 c0188i82 = this.b;
                        if (c0188i82.H() && num.intValue() == 80) {
                            c0188i82.m(false);
                            return;
                        }
                        return;
                    case 2:
                        Ob ob = (Ob) obj;
                        C0188i8 c0188i83 = this.b;
                        if (c0188i83.H()) {
                            boolean z = ob.a;
                            c0188i83.n(false);
                            return;
                        }
                        return;
                    default:
                        Gc gc = (Gc) obj;
                        C0188i8 c0188i84 = this.b;
                        if (c0188i84.H()) {
                            boolean z2 = gc.a;
                            c0188i84.s(false);
                            return;
                        }
                        return;
                }
            }
        };
        this.r = new C0068c8(this);
        this.s = -1;
        this.x = new C0088d8(this);
        this.y = new C0424u6(16);
        this.C = new ArrayDeque();
        this.M = new J2(7, this);
    }

    public static boolean G(T7 t7) {
        t7.getClass();
        Iterator it = t7.t.c.g().iterator();
        boolean z = false;
        while (it.hasNext()) {
            T7 t72 = (T7) it.next();
            if (t72 != null) {
                z = G(t72);
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    public static boolean I(T7 t7) {
        if (t7 == null) {
            return true;
        }
        if (t7.B && (t7.r == null || I(t7.u))) {
            return true;
        }
        return false;
    }

    public static boolean J(T7 t7) {
        if (t7 == null) {
            return true;
        }
        C0188i8 c0188i8 = t7.r;
        if (t7.equals(c0188i8.w) && J(c0188i8.v)) {
            return true;
        }
        return false;
    }

    public static void Y(T7 t7) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "show: " + t7);
        }
        if (t7.y) {
            t7.y = false;
            t7.I = !t7.I;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:140:0x0246. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:174:0x031c. Please report as an issue. */
    public final void A(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        ViewGroup viewGroup;
        H5 h5;
        H5 h52;
        H5 h53;
        int i3;
        int i4;
        int i5;
        ArrayList arrayList3 = arrayList;
        ArrayList arrayList4 = arrayList2;
        boolean z = ((M2) arrayList3.get(i)).f123o;
        ArrayList arrayList5 = this.K;
        if (arrayList5 == null) {
            this.K = new ArrayList();
        } else {
            arrayList5.clear();
        }
        ArrayList arrayList6 = this.K;
        H5 h54 = this.c;
        arrayList6.addAll(h54.h());
        T7 t7 = this.w;
        int i6 = i;
        boolean z2 = false;
        while (true) {
            int i7 = 1;
            if (i6 < i2) {
                M2 m2 = (M2) arrayList3.get(i6);
                if (!((Boolean) arrayList4.get(i6)).booleanValue()) {
                    ArrayList arrayList7 = this.K;
                    int i8 = 0;
                    while (true) {
                        ArrayList arrayList8 = m2.a;
                        if (i8 < arrayList8.size()) {
                            C0366r8 c0366r8 = (C0366r8) arrayList8.get(i8);
                            int i9 = c0366r8.a;
                            if (i9 != i7) {
                                if (i9 != 2) {
                                    if (i9 == 3 || i9 == 6) {
                                        arrayList7.remove(c0366r8.b);
                                        T7 t72 = c0366r8.b;
                                        if (t72 == t7) {
                                            arrayList8.add(i8, new C0366r8(9, t72));
                                            i8++;
                                            h53 = h54;
                                            i3 = 1;
                                            t7 = null;
                                        }
                                    } else if (i9 == 7) {
                                        h53 = h54;
                                        i3 = 1;
                                    } else if (i9 == 8) {
                                        arrayList8.add(i8, new C0366r8(9, t7, 0));
                                        c0366r8.c = true;
                                        i8++;
                                        t7 = c0366r8.b;
                                    }
                                    h53 = h54;
                                    i3 = 1;
                                } else {
                                    T7 t73 = c0366r8.b;
                                    int i10 = t73.w;
                                    int size = arrayList7.size() - 1;
                                    boolean z3 = false;
                                    while (size >= 0) {
                                        H5 h55 = h54;
                                        T7 t74 = (T7) arrayList7.get(size);
                                        if (t74.w != i10) {
                                            i4 = i10;
                                        } else if (t74 == t73) {
                                            i4 = i10;
                                            z3 = true;
                                        } else {
                                            if (t74 == t7) {
                                                i4 = i10;
                                                arrayList8.add(i8, new C0366r8(9, t74, 0));
                                                i8++;
                                                i5 = 0;
                                                t7 = null;
                                            } else {
                                                i4 = i10;
                                                i5 = 0;
                                            }
                                            C0366r8 c0366r82 = new C0366r8(3, t74, i5);
                                            c0366r82.d = c0366r8.d;
                                            c0366r82.f273f = c0366r8.f273f;
                                            c0366r82.e = c0366r8.e;
                                            c0366r82.g = c0366r8.g;
                                            arrayList8.add(i8, c0366r82);
                                            arrayList7.remove(t74);
                                            i8++;
                                            t7 = t7;
                                        }
                                        size--;
                                        i10 = i4;
                                        h54 = h55;
                                    }
                                    h53 = h54;
                                    i3 = 1;
                                    if (z3) {
                                        arrayList8.remove(i8);
                                        i8--;
                                    } else {
                                        c0366r8.a = 1;
                                        c0366r8.c = true;
                                        arrayList7.add(t73);
                                    }
                                }
                                i8 += i3;
                                i7 = i3;
                                h54 = h53;
                            } else {
                                h53 = h54;
                                i3 = i7;
                            }
                            arrayList7.add(c0366r8.b);
                            i8 += i3;
                            i7 = i3;
                            h54 = h53;
                        } else {
                            h52 = h54;
                        }
                    }
                } else {
                    h52 = h54;
                    int i11 = 1;
                    ArrayList arrayList9 = this.K;
                    ArrayList arrayList10 = m2.a;
                    int size2 = arrayList10.size() - 1;
                    while (size2 >= 0) {
                        C0366r8 c0366r83 = (C0366r8) arrayList10.get(size2);
                        int i12 = c0366r83.a;
                        if (i12 != i11) {
                            if (i12 != 3) {
                                switch (i12) {
                                    case 8:
                                        t7 = null;
                                        break;
                                    case 9:
                                        t7 = c0366r83.b;
                                        break;
                                    case 10:
                                        c0366r83.i = c0366r83.h;
                                        break;
                                }
                                size2--;
                                i11 = 1;
                            }
                            arrayList9.add(c0366r83.b);
                            size2--;
                            i11 = 1;
                        }
                        arrayList9.remove(c0366r83.b);
                        size2--;
                        i11 = 1;
                    }
                }
                z2 = z2 || m2.g;
                i6++;
                arrayList3 = arrayList;
                arrayList4 = arrayList2;
                h54 = h52;
            } else {
                H5 h56 = h54;
                this.K.clear();
                if (!z && this.s >= 1) {
                    for (int i13 = i; i13 < i2; i13++) {
                        Iterator it = ((M2) arrayList.get(i13)).a.iterator();
                        while (it.hasNext()) {
                            T7 t75 = ((C0366r8) it.next()).b;
                            if (t75 == null || t75.r == null) {
                                h5 = h56;
                            } else {
                                h5 = h56;
                                h5.i(f(t75));
                            }
                            h56 = h5;
                        }
                    }
                }
                for (int i14 = i; i14 < i2; i14++) {
                    M2 m22 = (M2) arrayList.get(i14);
                    if (((Boolean) arrayList2.get(i14)).booleanValue()) {
                        m22.c(-1);
                        ArrayList arrayList11 = m22.a;
                        boolean z4 = true;
                        for (int size3 = arrayList11.size() - 1; size3 >= 0; size3--) {
                            C0366r8 c0366r84 = (C0366r8) arrayList11.get(size3);
                            T7 t76 = c0366r84.b;
                            if (t76 != null) {
                                if (t76.H != null) {
                                    t76.f().a = z4;
                                }
                                int i15 = m22.f122f;
                                int i16 = 8194;
                                int i17 = 4097;
                                if (i15 != 4097) {
                                    if (i15 != 8194) {
                                        i16 = 4100;
                                        i17 = 8197;
                                        if (i15 != 8197) {
                                            if (i15 == 4099) {
                                                i16 = 4099;
                                            } else if (i15 != 4100) {
                                                i16 = 0;
                                            }
                                        }
                                    }
                                    i16 = i17;
                                }
                                if (t76.H != null || i16 != 0) {
                                    t76.f();
                                    t76.H.f143f = i16;
                                }
                                t76.f();
                                t76.H.getClass();
                            }
                            int i18 = c0366r84.a;
                            C0188i8 c0188i8 = m22.p;
                            switch (i18) {
                                case 1:
                                    t76.E(c0366r84.d, c0366r84.e, c0366r84.f273f, c0366r84.g);
                                    z4 = true;
                                    c0188i8.U(t76, true);
                                    c0188i8.P(t76);
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + c0366r84.a);
                                case 3:
                                    t76.E(c0366r84.d, c0366r84.e, c0366r84.f273f, c0366r84.g);
                                    c0188i8.a(t76);
                                    z4 = true;
                                case 4:
                                    t76.E(c0366r84.d, c0366r84.e, c0366r84.f273f, c0366r84.g);
                                    c0188i8.getClass();
                                    Y(t76);
                                    z4 = true;
                                case 5:
                                    t76.E(c0366r84.d, c0366r84.e, c0366r84.f273f, c0366r84.g);
                                    c0188i8.U(t76, true);
                                    c0188i8.F(t76);
                                    z4 = true;
                                case 6:
                                    t76.E(c0366r84.d, c0366r84.e, c0366r84.f273f, c0366r84.g);
                                    c0188i8.c(t76);
                                    z4 = true;
                                case 7:
                                    t76.E(c0366r84.d, c0366r84.e, c0366r84.f273f, c0366r84.g);
                                    c0188i8.U(t76, true);
                                    c0188i8.g(t76);
                                    z4 = true;
                                case 8:
                                    c0188i8.W(null);
                                    z4 = true;
                                case 9:
                                    c0188i8.W(t76);
                                    z4 = true;
                                case 10:
                                    c0188i8.V(t76, c0366r84.h);
                                    z4 = true;
                            }
                        }
                    } else {
                        m22.c(1);
                        ArrayList arrayList12 = m22.a;
                        int size4 = arrayList12.size();
                        for (int i19 = 0; i19 < size4; i19++) {
                            C0366r8 c0366r85 = (C0366r8) arrayList12.get(i19);
                            T7 t77 = c0366r85.b;
                            if (t77 != null) {
                                if (t77.H != null) {
                                    t77.f().a = false;
                                }
                                int i20 = m22.f122f;
                                if (t77.H != null || i20 != 0) {
                                    t77.f();
                                    t77.H.f143f = i20;
                                }
                                t77.f();
                                t77.H.getClass();
                            }
                            int i21 = c0366r85.a;
                            C0188i8 c0188i82 = m22.p;
                            switch (i21) {
                                case 1:
                                    t77.E(c0366r85.d, c0366r85.e, c0366r85.f273f, c0366r85.g);
                                    c0188i82.U(t77, false);
                                    c0188i82.a(t77);
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + c0366r85.a);
                                case 3:
                                    t77.E(c0366r85.d, c0366r85.e, c0366r85.f273f, c0366r85.g);
                                    c0188i82.P(t77);
                                case 4:
                                    t77.E(c0366r85.d, c0366r85.e, c0366r85.f273f, c0366r85.g);
                                    c0188i82.F(t77);
                                case 5:
                                    t77.E(c0366r85.d, c0366r85.e, c0366r85.f273f, c0366r85.g);
                                    c0188i82.U(t77, false);
                                    Y(t77);
                                case 6:
                                    t77.E(c0366r85.d, c0366r85.e, c0366r85.f273f, c0366r85.g);
                                    c0188i82.g(t77);
                                case 7:
                                    t77.E(c0366r85.d, c0366r85.e, c0366r85.f273f, c0366r85.g);
                                    c0188i82.U(t77, false);
                                    c0188i82.c(t77);
                                case 8:
                                    c0188i82.W(t77);
                                case 9:
                                    c0188i82.W(null);
                                case 10:
                                    c0188i82.V(t77, c0366r85.i);
                            }
                        }
                    }
                }
                boolean booleanValue = ((Boolean) arrayList2.get(i2 - 1)).booleanValue();
                for (int i22 = i; i22 < i2; i22++) {
                    M2 m23 = (M2) arrayList.get(i22);
                    if (booleanValue) {
                        for (int size5 = m23.a.size() - 1; size5 >= 0; size5--) {
                            T7 t78 = ((C0366r8) m23.a.get(size5)).b;
                            if (t78 != null) {
                                f(t78).k();
                            }
                        }
                    } else {
                        Iterator it2 = m23.a.iterator();
                        while (it2.hasNext()) {
                            T7 t79 = ((C0366r8) it2.next()).b;
                            if (t79 != null) {
                                f(t79).k();
                            }
                        }
                    }
                }
                K(this.s, true);
                HashSet hashSet = new HashSet();
                for (int i23 = i; i23 < i2; i23++) {
                    Iterator it3 = ((M2) arrayList.get(i23)).a.iterator();
                    while (it3.hasNext()) {
                        T7 t710 = ((C0366r8) it3.next()).b;
                        if (t710 != null && (viewGroup = t710.D) != null) {
                            hashSet.add(K5.f(viewGroup, E()));
                        }
                    }
                }
                Iterator it4 = hashSet.iterator();
                while (it4.hasNext()) {
                    K5 k5 = (K5) it4.next();
                    k5.d = booleanValue;
                    synchronized (k5.b) {
                        try {
                            k5.g();
                            k5.e = false;
                            int size6 = k5.b.size() - 1;
                            while (true) {
                                if (size6 >= 0) {
                                    C0055bf c0055bf = (C0055bf) k5.b.get(size6);
                                    int c = AbstractC0304o5.c(c0055bf.c.E);
                                    if (c0055bf.a != 2 || c == 2) {
                                        size6--;
                                    } else {
                                        R7 r7 = c0055bf.c.H;
                                        k5.e = false;
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    k5.c();
                }
                for (int i24 = i; i24 < i2; i24++) {
                    M2 m24 = (M2) arrayList.get(i24);
                    if (((Boolean) arrayList2.get(i24)).booleanValue() && m24.r >= 0) {
                        m24.r = -1;
                    }
                    m24.getClass();
                }
                return;
            }
        }
    }

    public final T7 B(int i) {
        H5 h5 = this.c;
        ArrayList arrayList = (ArrayList) h5.a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            T7 t7 = (T7) arrayList.get(size);
            if (t7 != null && t7.v == i) {
                return t7;
            }
        }
        for (androidx.fragment.app.a aVar : ((HashMap) h5.b).values()) {
            if (aVar != null) {
                T7 t72 = aVar.c;
                if (t72.v == i) {
                    return t72;
                }
            }
        }
        return null;
    }

    public final ViewGroup C(T7 t7) {
        ViewGroup viewGroup = t7.D;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (t7.w > 0 && this.u.M()) {
            View L = this.u.L(t7.w);
            if (L instanceof ViewGroup) {
                return (ViewGroup) L;
            }
        }
        return null;
    }

    public final C0088d8 D() {
        T7 t7 = this.v;
        if (t7 != null) {
            return t7.r.D();
        }
        return this.x;
    }

    public final C0424u6 E() {
        T7 t7 = this.v;
        if (t7 != null) {
            return t7.r.E();
        }
        return this.y;
    }

    public final void F(T7 t7) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "hide: " + t7);
        }
        if (!t7.y) {
            t7.y = true;
            t7.I = true ^ t7.I;
            X(t7);
        }
    }

    public final boolean H() {
        T7 t7 = this.v;
        if (t7 == null) {
            return true;
        }
        if (t7.m() && this.v.j().H()) {
            return true;
        }
        return false;
    }

    public final void K(int i, boolean z) {
        HashMap hashMap;
        V7 v7;
        if (this.t == null && i != -1) {
            throw new IllegalStateException("No activity");
        }
        if (!z && i == this.s) {
            return;
        }
        this.s = i;
        H5 h5 = this.c;
        Iterator it = ((ArrayList) h5.a).iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            hashMap = (HashMap) h5.b;
            if (!hasNext) {
                break;
            }
            androidx.fragment.app.a aVar = (androidx.fragment.app.a) hashMap.get(((T7) it.next()).e);
            if (aVar != null) {
                aVar.k();
            }
        }
        for (androidx.fragment.app.a aVar2 : hashMap.values()) {
            if (aVar2 != null) {
                aVar2.k();
                T7 t7 = aVar2.c;
                if (t7.l && !t7.o()) {
                    h5.j(aVar2);
                }
            }
        }
        Z();
        if (this.D && (v7 = this.t) != null && this.s == 7) {
            v7.k.invalidateOptionsMenu();
            this.D = false;
        }
    }

    public final void L() {
        if (this.t == null) {
            return;
        }
        this.E = false;
        this.F = false;
        this.L.h = false;
        for (T7 t7 : this.c.h()) {
            if (t7 != null) {
                t7.t.L();
            }
        }
    }

    public final boolean M() {
        return N(-1, 0);
    }

    public final boolean N(int i, int i2) {
        z(false);
        y(true);
        T7 t7 = this.w;
        if (t7 != null && i < 0 && t7.g().M()) {
            return true;
        }
        boolean O = O(this.I, this.J, i, i2);
        if (O) {
            this.b = true;
            try {
                Q(this.I, this.J);
            } finally {
                d();
            }
        }
        b0();
        if (this.H) {
            this.H = false;
            Z();
        }
        ((HashMap) this.c.b).values().removeAll(Collections.singleton(null));
        return O;
    }

    public final boolean O(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        boolean z;
        if ((i2 & 1) != 0) {
            z = true;
        } else {
            z = false;
        }
        ArrayList arrayList3 = this.d;
        int i3 = -1;
        if (arrayList3 != null && !arrayList3.isEmpty()) {
            if (i < 0) {
                i3 = z ? 0 : this.d.size() - 1;
            } else {
                int size = this.d.size() - 1;
                while (size >= 0) {
                    M2 m2 = (M2) this.d.get(size);
                    if (i >= 0 && i == m2.r) {
                        break;
                    }
                    size--;
                }
                if (size >= 0) {
                    if (z) {
                        while (size > 0) {
                            M2 m22 = (M2) this.d.get(size - 1);
                            if (i < 0 || i != m22.r) {
                                break;
                            }
                            size--;
                        }
                    } else if (size != this.d.size() - 1) {
                        size++;
                    }
                }
                i3 = size;
            }
        }
        if (i3 < 0) {
            return false;
        }
        for (int size2 = this.d.size() - 1; size2 >= i3; size2--) {
            arrayList.add((M2) this.d.remove(size2));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    public final void P(T7 t7) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "remove: " + t7 + " nesting=" + t7.q);
        }
        boolean o2 = t7.o();
        if (!t7.z || !o2) {
            H5 h5 = this.c;
            synchronized (((ArrayList) h5.a)) {
                ((ArrayList) h5.a).remove(t7);
            }
            t7.k = false;
            if (G(t7)) {
                this.D = true;
            }
            t7.l = true;
            X(t7);
        }
    }

    public final void Q(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() == arrayList2.size()) {
            int size = arrayList.size();
            int i = 0;
            int i2 = 0;
            while (i < size) {
                if (!((M2) arrayList.get(i)).f123o) {
                    if (i2 != i) {
                        A(arrayList, arrayList2, i2, i);
                    }
                    i2 = i + 1;
                    if (((Boolean) arrayList2.get(i)).booleanValue()) {
                        while (i2 < size && ((Boolean) arrayList2.get(i2)).booleanValue() && !((M2) arrayList.get(i2)).f123o) {
                            i2++;
                        }
                    }
                    A(arrayList, arrayList2, i, i2);
                    i = i2 - 1;
                }
                i++;
            }
            if (i2 != size) {
                A(arrayList, arrayList2, i2, size);
                return;
            }
            return;
        }
        throw new IllegalStateException("Internal error with the back stack records");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1, types: [o.r8, java.lang.Object] */
    public final void R(Parcelable parcelable) {
        int i;
        H1 h1;
        int i2;
        boolean z;
        androidx.fragment.app.a aVar;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3 = (Bundle) parcelable;
        for (String str : bundle3.keySet()) {
            if (str.startsWith("result_") && (bundle2 = bundle3.getBundle(str)) != null) {
                bundle2.setClassLoader(this.t.h.getClassLoader());
                this.k.put(str.substring(7), bundle2);
            }
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : bundle3.keySet()) {
            if (str2.startsWith("fragment_") && (bundle = bundle3.getBundle(str2)) != null) {
                bundle.setClassLoader(this.t.h.getClassLoader());
                arrayList.add((C0287n8) bundle.getParcelable("state"));
            }
        }
        H5 h5 = this.c;
        HashMap hashMap = (HashMap) h5.c;
        hashMap.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C0287n8 c0287n8 = (C0287n8) it.next();
            hashMap.put(c0287n8.b, c0287n8);
        }
        C0207j8 c0207j8 = (C0207j8) bundle3.getParcelable("state");
        if (c0207j8 == null) {
            return;
        }
        HashMap hashMap2 = (HashMap) h5.b;
        hashMap2.clear();
        Iterator it2 = c0207j8.a.iterator();
        while (true) {
            boolean hasNext = it2.hasNext();
            i = 2;
            h1 = this.l;
            if (!hasNext) {
                break;
            }
            C0287n8 c0287n82 = (C0287n8) ((HashMap) h5.c).remove((String) it2.next());
            if (c0287n82 != null) {
                T7 t7 = (T7) this.L.c.get(c0287n82.b);
                if (t7 != null) {
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + t7);
                    }
                    aVar = new androidx.fragment.app.a(h1, h5, t7, c0287n82);
                } else {
                    aVar = new androidx.fragment.app.a(this.l, this.c, this.t.h.getClassLoader(), D(), c0287n82);
                }
                T7 t72 = aVar.c;
                t72.r = this;
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + t72.e + "): " + t72);
                }
                aVar.m(this.t.h.getClassLoader());
                h5.i(aVar);
                aVar.e = this.s;
            }
        }
        C0227k8 c0227k8 = this.L;
        c0227k8.getClass();
        Iterator it3 = new ArrayList(c0227k8.c.values()).iterator();
        while (it3.hasNext()) {
            T7 t73 = (T7) it3.next();
            if (hashMap2.get(t73.e) == null) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + t73 + " that was not found in the set of active Fragments " + c0207j8.a);
                }
                this.L.d(t73);
                t73.r = this;
                androidx.fragment.app.a aVar2 = new androidx.fragment.app.a(h1, h5, t73);
                aVar2.e = 1;
                aVar2.k();
                t73.l = true;
                aVar2.k();
            }
        }
        ArrayList<String> arrayList2 = c0207j8.b;
        ((ArrayList) h5.a).clear();
        if (arrayList2 != null) {
            for (String str3 : arrayList2) {
                T7 c = h5.c(str3);
                if (c != null) {
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "restoreSaveState: added (" + str3 + "): " + c);
                    }
                    h5.a(c);
                } else {
                    throw new IllegalStateException(AbstractC0304o5.h("No instantiated fragment for (", str3, ")"));
                }
            }
        }
        if (c0207j8.c != null) {
            this.d = new ArrayList(c0207j8.c.length);
            int i3 = 0;
            while (true) {
                N2[] n2Arr = c0207j8.c;
                if (i3 >= n2Arr.length) {
                    break;
                }
                N2 n2 = n2Arr[i3];
                n2.getClass();
                M2 m2 = new M2(this);
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    int[] iArr = n2.a;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    ?? obj = new Object();
                    int i6 = i4 + 1;
                    obj.a = iArr[i4];
                    if (Log.isLoggable("FragmentManager", i)) {
                        Log.v("FragmentManager", "Instantiate " + m2 + " op #" + i5 + " base fragment #" + iArr[i6]);
                    }
                    obj.h = M9.values()[n2.c[i5]];
                    obj.i = M9.values()[n2.d[i5]];
                    int i7 = i4 + 2;
                    if (iArr[i6] != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    obj.c = z;
                    int i8 = iArr[i7];
                    obj.d = i8;
                    int i9 = iArr[i4 + 3];
                    obj.e = i9;
                    int i10 = i4 + 5;
                    int i11 = iArr[i4 + 4];
                    obj.f273f = i11;
                    i4 += 6;
                    int i12 = iArr[i10];
                    obj.g = i12;
                    m2.b = i8;
                    m2.c = i9;
                    m2.d = i11;
                    m2.e = i12;
                    m2.b(obj);
                    i5++;
                    i = 2;
                }
                m2.f122f = n2.e;
                m2.h = n2.f126f;
                m2.g = true;
                m2.i = n2.h;
                m2.j = n2.i;
                m2.k = n2.j;
                m2.l = n2.k;
                m2.m = n2.l;
                m2.n = n2.m;
                m2.f123o = n2.n;
                m2.r = n2.g;
                int i13 = 0;
                while (true) {
                    ArrayList arrayList3 = n2.b;
                    if (i13 >= arrayList3.size()) {
                        break;
                    }
                    String str4 = (String) arrayList3.get(i13);
                    if (str4 != null) {
                        ((C0366r8) m2.a.get(i13)).b = h5.c(str4);
                    }
                    i13++;
                }
                m2.c(1);
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i3 + " (index " + m2.r + "): " + m2);
                    PrintWriter printWriter = new PrintWriter(new C0428ua());
                    m2.d("  ", printWriter, false);
                    printWriter.close();
                }
                this.d.add(m2);
                i3++;
                i = 2;
            }
            i2 = 0;
        } else {
            i2 = 0;
            this.d = null;
        }
        this.i.set(c0207j8.d);
        String str5 = c0207j8.e;
        if (str5 != null) {
            T7 c2 = h5.c(str5);
            this.w = c2;
            r(c2);
        }
        ArrayList arrayList4 = c0207j8.f240f;
        if (arrayList4 != null) {
            for (int i14 = i2; i14 < arrayList4.size(); i14++) {
                this.j.put((String) arrayList4.get(i14), (O2) c0207j8.g.get(i14));
            }
        }
        this.C = new ArrayDeque(c0207j8.h);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v18, types: [android.os.Parcelable, java.lang.Object, o.j8] */
    public final Bundle S() {
        int i;
        ArrayList arrayList;
        N2[] n2Arr;
        int size;
        Bundle bundle = new Bundle();
        Iterator it = e().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            K5 k5 = (K5) it.next();
            if (k5.e) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Forcing postponed operations");
                }
                k5.e = false;
                k5.c();
            }
        }
        w();
        z(true);
        this.E = true;
        this.L.h = true;
        H5 h5 = this.c;
        h5.getClass();
        HashMap hashMap = (HashMap) h5.b;
        ArrayList arrayList2 = new ArrayList(hashMap.size());
        Iterator it2 = hashMap.values().iterator();
        while (true) {
            Bundle bundle2 = null;
            if (!it2.hasNext()) {
                break;
            }
            androidx.fragment.app.a aVar = (androidx.fragment.app.a) it2.next();
            if (aVar != null) {
                T7 t7 = aVar.c;
                C0287n8 c0287n8 = new C0287n8(t7);
                if (t7.a > -1 && c0287n8.m == null) {
                    Bundle bundle3 = new Bundle();
                    t7.x(bundle3);
                    t7.P.c(bundle3);
                    bundle3.putParcelable("android:support:fragments", t7.t.S());
                    aVar.a.m(false);
                    if (!bundle3.isEmpty()) {
                        bundle2 = bundle3;
                    }
                    if (t7.E != null) {
                        aVar.o();
                    }
                    if (t7.c != null) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putSparseParcelableArray("android:view_state", t7.c);
                    }
                    if (t7.d != null) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putBundle("android:view_registry_state", t7.d);
                    }
                    if (!t7.G) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putBoolean("android:user_visible_hint", t7.G);
                    }
                    c0287n8.m = bundle2;
                    if (t7.h != null) {
                        if (bundle2 == null) {
                            c0287n8.m = new Bundle();
                        }
                        c0287n8.m.putString("android:target_state", t7.h);
                        int i2 = t7.i;
                        if (i2 != 0) {
                            c0287n8.m.putInt("android:target_req_state", i2);
                        }
                    }
                } else {
                    c0287n8.m = t7.b;
                }
                T7 t72 = aVar.c;
                arrayList2.add(t72.e);
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Saved state of " + t72 + ": " + t72.b);
                }
            }
        }
        H5 h52 = this.c;
        h52.getClass();
        ArrayList arrayList3 = new ArrayList(((HashMap) h52.c).values());
        if (arrayList3.isEmpty()) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
        } else {
            H5 h53 = this.c;
            synchronized (((ArrayList) h53.a)) {
                try {
                    if (((ArrayList) h53.a).isEmpty()) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList(((ArrayList) h53.a).size());
                        Iterator it3 = ((ArrayList) h53.a).iterator();
                        while (it3.hasNext()) {
                            T7 t73 = (T7) it3.next();
                            arrayList.add(t73.e);
                            if (Log.isLoggable("FragmentManager", 2)) {
                                Log.v("FragmentManager", "saveAllState: adding fragment (" + t73.e + "): " + t73);
                            }
                        }
                    }
                } finally {
                }
            }
            ArrayList arrayList4 = this.d;
            if (arrayList4 != null && (size = arrayList4.size()) > 0) {
                n2Arr = new N2[size];
                for (i = 0; i < size; i++) {
                    n2Arr[i] = new N2((M2) this.d.get(i));
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "saveAllState: adding back stack #" + i + ": " + this.d.get(i));
                    }
                }
            } else {
                n2Arr = null;
            }
            ?? obj = new Object();
            obj.e = null;
            ArrayList arrayList5 = new ArrayList();
            obj.f240f = arrayList5;
            ArrayList arrayList6 = new ArrayList();
            obj.g = arrayList6;
            obj.a = arrayList2;
            obj.b = arrayList;
            obj.c = n2Arr;
            obj.d = this.i.get();
            T7 t74 = this.w;
            if (t74 != null) {
                obj.e = t74.e;
            }
            arrayList5.addAll(this.j.keySet());
            arrayList6.addAll(this.j.values());
            obj.h = new ArrayList(this.C);
            bundle.putParcelable("state", obj);
            for (String str : this.k.keySet()) {
                bundle.putBundle(Ve.y("result_", str), (Bundle) this.k.get(str));
            }
            Iterator it4 = arrayList3.iterator();
            while (it4.hasNext()) {
                C0287n8 c0287n82 = (C0287n8) it4.next();
                Bundle bundle4 = new Bundle();
                bundle4.putParcelable("state", c0287n82);
                bundle.putBundle("fragment_" + c0287n82.b, bundle4);
            }
        }
        return bundle;
    }

    public final void T() {
        synchronized (this.a) {
            try {
                if (this.a.size() == 1) {
                    this.t.i.removeCallbacks(this.M);
                    this.t.i.post(this.M);
                    b0();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void U(T7 t7, boolean z) {
        ViewGroup C = C(t7);
        if (C != null && (C instanceof FragmentContainerView)) {
            ((FragmentContainerView) C).setDrawDisappearingViewsLast(!z);
        }
    }

    public final void V(T7 t7, M9 m9) {
        if (t7.equals(this.c.c(t7.e)) && (t7.s == null || t7.r == this)) {
            t7.L = m9;
            return;
        }
        throw new IllegalArgumentException("Fragment " + t7 + " is not an active fragment of FragmentManager " + this);
    }

    public final void W(T7 t7) {
        if (t7 != null) {
            if (!t7.equals(this.c.c(t7.e)) || (t7.s != null && t7.r != this)) {
                throw new IllegalArgumentException("Fragment " + t7 + " is not an active fragment of FragmentManager " + this);
            }
        }
        T7 t72 = this.w;
        this.w = t7;
        r(t72);
        r(this.w);
    }

    public final void X(T7 t7) {
        int i;
        int i2;
        int i3;
        int i4;
        ViewGroup C = C(t7);
        if (C != null) {
            R7 r7 = t7.H;
            boolean z = false;
            if (r7 == null) {
                i = 0;
            } else {
                i = r7.b;
            }
            if (r7 == null) {
                i2 = 0;
            } else {
                i2 = r7.c;
            }
            int i5 = i2 + i;
            if (r7 == null) {
                i3 = 0;
            } else {
                i3 = r7.d;
            }
            int i6 = i3 + i5;
            if (r7 == null) {
                i4 = 0;
            } else {
                i4 = r7.e;
            }
            if (i4 + i6 > 0) {
                if (C.getTag(2131231230) == null) {
                    C.setTag(2131231230, t7);
                }
                T7 t72 = (T7) C.getTag(2131231230);
                R7 r72 = t7.H;
                if (r72 != null) {
                    z = r72.a;
                }
                if (t72.H != null) {
                    t72.f().a = z;
                }
            }
        }
    }

    public final void Z() {
        Iterator it = this.c.f().iterator();
        while (it.hasNext()) {
            androidx.fragment.app.a aVar = (androidx.fragment.app.a) it.next();
            T7 t7 = aVar.c;
            if (t7.F) {
                if (this.b) {
                    this.H = true;
                } else {
                    t7.F = false;
                    aVar.k();
                }
            }
        }
    }

    public final androidx.fragment.app.a a(T7 t7) {
        String str = t7.K;
        if (str != null) {
            AbstractC0347q8.c(t7, str);
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "add: " + t7);
        }
        androidx.fragment.app.a f2 = f(t7);
        t7.r = this;
        H5 h5 = this.c;
        h5.i(f2);
        if (!t7.z) {
            h5.a(t7);
            t7.l = false;
            if (t7.E == null) {
                t7.I = false;
            }
            if (G(t7)) {
                this.D = true;
            }
        }
        return f2;
    }

    public final void a0(IllegalStateException illegalStateException) {
        Log.e("FragmentManager", illegalStateException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new C0428ua());
        V7 v7 = this.t;
        if (v7 != null) {
            try {
                v7.k.dump("  ", null, printWriter, new String[0]);
                throw illegalStateException;
            } catch (Exception e) {
                Log.e("FragmentManager", "Failed dumping state", e);
                throw illegalStateException;
            }
        }
        try {
            v("  ", null, printWriter, new String[0]);
            throw illegalStateException;
        } catch (Exception e2) {
            Log.e("FragmentManager", "Failed dumping state", e2);
            throw illegalStateException;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(V7 v7, L1 l1, T7 t7) {
        C0227k8 c0227k8;
        String str;
        V7 v72;
        if (this.t == null) {
            this.t = v7;
            this.u = l1;
            this.v = t7;
            CopyOnWriteArrayList copyOnWriteArrayList = this.m;
            if (t7 != 0) {
                copyOnWriteArrayList.add(new C0108e8(t7));
            } else if (v7 != null) {
                copyOnWriteArrayList.add(v7);
            }
            if (this.v != null) {
                b0();
            }
            if (v7 != null) {
                androidx.activity.b i = v7.k.i();
                this.g = i;
                if (t7 != 0) {
                    v72 = t7;
                } else {
                    v72 = v7;
                }
                i.a(v72, this.h);
            }
            boolean z = false;
            if (t7 != 0) {
                C0227k8 c0227k82 = t7.r.L;
                HashMap hashMap = c0227k82.d;
                C0227k8 c0227k83 = (C0227k8) hashMap.get(t7.e);
                if (c0227k83 == null) {
                    c0227k83 = new C0227k8(c0227k82.f243f);
                    hashMap.put(t7.e, c0227k83);
                }
                this.L = c0227k83;
            } else if (v7 != null) {
                Lh d = v7.k.d();
                AbstractC0487x9.o(d, "store");
                C0105e5 c0105e5 = C0105e5.b;
                AbstractC0487x9.o(c0105e5, "defaultCreationExtras");
                String canonicalName = C0227k8.class.getCanonicalName();
                if (canonicalName != null) {
                    String concat = "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName);
                    AbstractC0487x9.o(concat, "key");
                    LinkedHashMap linkedHashMap = d.a;
                    Jh jh = (Jh) linkedHashMap.get(concat);
                    if (C0227k8.class.isInstance(jh)) {
                        AbstractC0487x9.m(jh, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
                    } else {
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        linkedHashMap2.putAll(c0105e5.a);
                        linkedHashMap2.put(C0424u6.e, concat);
                        try {
                            c0227k8 = new C0227k8(true);
                        } catch (AbstractMethodError unused) {
                            c0227k8 = new C0227k8(true);
                        }
                        jh = c0227k8;
                        Jh jh2 = (Jh) linkedHashMap.put(concat, jh);
                        if (jh2 != null) {
                            jh2.a();
                        }
                    }
                    this.L = (C0227k8) jh;
                } else {
                    throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
                }
            } else {
                this.L = new C0227k8(false);
            }
            C0227k8 c0227k84 = this.L;
            if (this.E || this.F) {
                z = true;
            }
            c0227k84.h = z;
            this.c.d = c0227k84;
            V7 v73 = this.t;
            if (v73 != null && t7 == 0) {
                C0041b1 b = v73.b();
                b.e("android:support:fragments", new C0283n4(2, this));
                Bundle c = b.c("android:support:fragments");
                if (c != null) {
                    R(c);
                }
            }
            V7 v74 = this.t;
            if (v74 != null) {
                U0 u0 = v74.k;
                if (t7 != 0) {
                    str = Ve.k(new StringBuilder(), t7.e, ":");
                } else {
                    str = BuildConfig.FLAVOR;
                }
                String y = Ve.y("FragmentManager:", str);
                String h = Ve.h(y, "StartActivityForResult");
                C0279n0 c0279n0 = new C0279n0(1);
                C0028a8 c0028a8 = new C0028a8(this, 1);
                C0323p4 c0323p4 = u0.j;
                this.z = c0323p4.b(h, c0279n0, c0028a8);
                this.A = c0323p4.b(Ve.h(y, "StartIntentSenderForResult"), new C0279n0(2), new C0028a8(this, 2));
                this.B = c0323p4.b(Ve.h(y, "RequestPermissions"), new C0279n0(0), new C0028a8(this, 0));
            }
            V7 v75 = this.t;
            if (v75 != null) {
                v75.k.g(this.n);
            }
            V7 v76 = this.t;
            if (v76 != null) {
                v76.k.l.add(this.f231o);
            }
            V7 v77 = this.t;
            if (v77 != null) {
                v77.k.n.add(this.p);
            }
            V7 v78 = this.t;
            if (v78 != null) {
                v78.k.f17o.add(this.q);
            }
            V7 v79 = this.t;
            if (v79 != null && t7 == 0) {
                U0 u02 = v79.k;
                C0068c8 c0068c8 = this.r;
                C0380s2 c0380s2 = u02.c;
                ((CopyOnWriteArrayList) c0380s2.d).add(c0068c8);
                ((Runnable) c0380s2.c).run();
                return;
            }
            return;
        }
        throw new IllegalStateException("Already attached");
    }

    public final void b0() {
        int i;
        synchronized (this.a) {
            try {
                boolean z = true;
                if (!this.a.isEmpty()) {
                    C0048b8 c0048b8 = this.h;
                    c0048b8.a = true;
                    C0251lc c0251lc = c0048b8.c;
                    if (c0251lc != null) {
                        c0251lc.a();
                    }
                    return;
                }
                C0048b8 c0048b82 = this.h;
                ArrayList arrayList = this.d;
                if (arrayList != null) {
                    i = arrayList.size();
                } else {
                    i = 0;
                }
                if (i <= 0 || !J(this.v)) {
                    z = false;
                }
                c0048b82.a = z;
                C0251lc c0251lc2 = c0048b82.c;
                if (c0251lc2 != null) {
                    c0251lc2.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(T7 t7) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "attach: " + t7);
        }
        if (t7.z) {
            t7.z = false;
            if (!t7.k) {
                this.c.a(t7);
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "add from attach: " + t7);
                }
                if (G(t7)) {
                    this.D = true;
                }
            }
        }
    }

    public final void d() {
        this.b = false;
        this.J.clear();
        this.I.clear();
    }

    public final HashSet e() {
        HashSet hashSet = new HashSet();
        Iterator it = this.c.f().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((androidx.fragment.app.a) it.next()).c.D;
            if (viewGroup != null) {
                hashSet.add(K5.f(viewGroup, E()));
            }
        }
        return hashSet;
    }

    public final androidx.fragment.app.a f(T7 t7) {
        String str = t7.e;
        H5 h5 = this.c;
        androidx.fragment.app.a aVar = (androidx.fragment.app.a) ((HashMap) h5.b).get(str);
        if (aVar != null) {
            return aVar;
        }
        androidx.fragment.app.a aVar2 = new androidx.fragment.app.a(this.l, h5, t7);
        aVar2.m(this.t.h.getClassLoader());
        aVar2.e = this.s;
        return aVar2;
    }

    public final void g(T7 t7) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "detach: " + t7);
        }
        if (!t7.z) {
            t7.z = true;
            if (t7.k) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "remove from detach: " + t7);
                }
                H5 h5 = this.c;
                synchronized (((ArrayList) h5.a)) {
                    ((ArrayList) h5.a).remove(t7);
                }
                t7.k = false;
                if (G(t7)) {
                    this.D = true;
                }
                X(t7);
            }
        }
    }

    public final void h(boolean z) {
        if (z && this.t != null) {
            a0(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
            throw null;
        }
        for (T7 t7 : this.c.h()) {
            if (t7 != null) {
                t7.C = true;
                if (z) {
                    t7.t.h(true);
                }
            }
        }
    }

    public final boolean i() {
        boolean z;
        if (this.s < 1) {
            return false;
        }
        for (T7 t7 : this.c.h()) {
            if (t7 != null) {
                if (!t7.y) {
                    z = t7.t.i();
                } else {
                    z = false;
                }
                if (z) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void j() {
        this.E = false;
        this.F = false;
        this.L.h = false;
        u(1);
    }

    public final boolean k() {
        boolean z;
        if (this.s < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z2 = false;
        for (T7 t7 : this.c.h()) {
            if (t7 != null && I(t7)) {
                if (!t7.y) {
                    z = t7.t.k();
                } else {
                    z = false;
                }
                if (z) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(t7);
                    z2 = true;
                }
            }
        }
        if (this.e != null) {
            for (int i = 0; i < this.e.size(); i++) {
                T7 t72 = (T7) this.e.get(i);
                if (arrayList == null || !arrayList.contains(t72)) {
                    t72.getClass();
                }
            }
        }
        this.e = arrayList;
        return z2;
    }

    public final void l() {
        Integer num;
        Integer num2;
        Integer num3;
        boolean z = true;
        this.G = true;
        z(true);
        w();
        V7 v7 = this.t;
        H5 h5 = this.c;
        if (v7 != null) {
            z = ((C0227k8) h5.d).g;
        } else {
            U0 u0 = v7.h;
            if (u0 != null) {
                z = true ^ u0.isChangingConfigurations();
            }
        }
        if (z) {
            Iterator it = this.j.values().iterator();
            while (it.hasNext()) {
                for (String str : ((O2) it.next()).a) {
                    C0227k8 c0227k8 = (C0227k8) h5.d;
                    c0227k8.getClass();
                    if (Log.isLoggable("FragmentManager", 3)) {
                        Log.d("FragmentManager", "Clearing non-config state for saved state of Fragment " + str);
                    }
                    c0227k8.c(str);
                }
            }
        }
        u(-1);
        V7 v72 = this.t;
        if (v72 != null) {
            v72.k.l.remove(this.f231o);
        }
        V7 v73 = this.t;
        if (v73 != null) {
            v73.k.k.remove(this.n);
        }
        V7 v74 = this.t;
        if (v74 != null) {
            v74.k.n.remove(this.p);
        }
        V7 v75 = this.t;
        if (v75 != null) {
            v75.k.f17o.remove(this.q);
        }
        V7 v76 = this.t;
        if (v76 != null) {
            U0 u02 = v76.k;
            C0068c8 c0068c8 = this.r;
            C0380s2 c0380s2 = u02.c;
            ((CopyOnWriteArrayList) c0380s2.d).remove(c0068c8);
            if (((HashMap) c0380s2.b).remove(c0068c8) == null) {
                ((Runnable) c0380s2.c).run();
            } else {
                throw new ClassCastException();
            }
        }
        this.t = null;
        this.u = null;
        this.v = null;
        if (this.g != null) {
            Iterator it2 = this.h.b.iterator();
            while (it2.hasNext()) {
                ((InterfaceC0342q3) it2.next()).cancel();
            }
            this.g = null;
        }
        H1 h1 = this.z;
        if (h1 != null) {
            C0323p4 c0323p4 = (C0323p4) h1.c;
            ArrayList arrayList = c0323p4.d;
            String str2 = (String) h1.b;
            if (!arrayList.contains(str2) && (num3 = (Integer) c0323p4.b.remove(str2)) != null) {
                c0323p4.a.remove(num3);
            }
            c0323p4.e.remove(str2);
            HashMap hashMap = c0323p4.f267f;
            if (hashMap.containsKey(str2)) {
                StringBuilder p = Ve.p("Dropping pending result for request ", str2, ": ");
                p.append(hashMap.get(str2));
                Log.w("ActivityResultRegistry", p.toString());
                hashMap.remove(str2);
            }
            Bundle bundle = c0323p4.g;
            if (bundle.containsKey(str2)) {
                StringBuilder p2 = Ve.p("Dropping pending result for request ", str2, ": ");
                p2.append(bundle.getParcelable(str2));
                Log.w("ActivityResultRegistry", p2.toString());
                bundle.remove(str2);
            }
            if (c0323p4.c.get(str2) == null) {
                H1 h12 = this.A;
                C0323p4 c0323p42 = (C0323p4) h12.c;
                ArrayList arrayList2 = c0323p42.d;
                String str3 = (String) h12.b;
                if (!arrayList2.contains(str3) && (num2 = (Integer) c0323p42.b.remove(str3)) != null) {
                    c0323p42.a.remove(num2);
                }
                c0323p42.e.remove(str3);
                HashMap hashMap2 = c0323p42.f267f;
                if (hashMap2.containsKey(str3)) {
                    StringBuilder p3 = Ve.p("Dropping pending result for request ", str3, ": ");
                    p3.append(hashMap2.get(str3));
                    Log.w("ActivityResultRegistry", p3.toString());
                    hashMap2.remove(str3);
                }
                Bundle bundle2 = c0323p42.g;
                if (bundle2.containsKey(str3)) {
                    StringBuilder p4 = Ve.p("Dropping pending result for request ", str3, ": ");
                    p4.append(bundle2.getParcelable(str3));
                    Log.w("ActivityResultRegistry", p4.toString());
                    bundle2.remove(str3);
                }
                if (c0323p42.c.get(str3) == null) {
                    H1 h13 = this.B;
                    C0323p4 c0323p43 = (C0323p4) h13.c;
                    ArrayList arrayList3 = c0323p43.d;
                    String str4 = (String) h13.b;
                    if (!arrayList3.contains(str4) && (num = (Integer) c0323p43.b.remove(str4)) != null) {
                        c0323p43.a.remove(num);
                    }
                    c0323p43.e.remove(str4);
                    HashMap hashMap3 = c0323p43.f267f;
                    if (hashMap3.containsKey(str4)) {
                        StringBuilder p5 = Ve.p("Dropping pending result for request ", str4, ": ");
                        p5.append(hashMap3.get(str4));
                        Log.w("ActivityResultRegistry", p5.toString());
                        hashMap3.remove(str4);
                    }
                    Bundle bundle3 = c0323p43.g;
                    if (bundle3.containsKey(str4)) {
                        StringBuilder p6 = Ve.p("Dropping pending result for request ", str4, ": ");
                        p6.append(bundle3.getParcelable(str4));
                        Log.w("ActivityResultRegistry", p6.toString());
                        bundle3.remove(str4);
                    }
                    if (c0323p43.c.get(str4) != null) {
                        throw new ClassCastException();
                    }
                    return;
                }
                throw new ClassCastException();
            }
            throw new ClassCastException();
        }
    }

    public final void m(boolean z) {
        if (z && this.t != null) {
            a0(new IllegalStateException("Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."));
            throw null;
        }
        for (T7 t7 : this.c.h()) {
            if (t7 != null) {
                t7.C = true;
                if (z) {
                    t7.t.m(true);
                }
            }
        }
    }

    public final void n(boolean z) {
        if (z && this.t != null) {
            a0(new IllegalStateException("Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."));
            throw null;
        }
        for (T7 t7 : this.c.h()) {
            if (t7 != null && z) {
                t7.t.n(true);
            }
        }
    }

    public final void o() {
        Iterator it = this.c.g().iterator();
        while (it.hasNext()) {
            T7 t7 = (T7) it.next();
            if (t7 != null) {
                t7.n();
                t7.t.o();
            }
        }
    }

    public final boolean p() {
        boolean z;
        if (this.s < 1) {
            return false;
        }
        for (T7 t7 : this.c.h()) {
            if (t7 != null) {
                if (!t7.y) {
                    z = t7.t.p();
                } else {
                    z = false;
                }
                if (z) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void q() {
        if (this.s < 1) {
            return;
        }
        for (T7 t7 : this.c.h()) {
            if (t7 != null && !t7.y) {
                t7.t.q();
            }
        }
    }

    public final void r(T7 t7) {
        if (t7 != null) {
            if (t7.equals(this.c.c(t7.e))) {
                t7.r.getClass();
                boolean J = J(t7);
                Boolean bool = t7.j;
                if (bool == null || bool.booleanValue() != J) {
                    t7.j = Boolean.valueOf(J);
                    C0188i8 c0188i8 = t7.t;
                    c0188i8.b0();
                    c0188i8.r(c0188i8.w);
                }
            }
        }
    }

    public final void s(boolean z) {
        if (z && this.t != null) {
            a0(new IllegalStateException("Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."));
            throw null;
        }
        for (T7 t7 : this.c.h()) {
            if (t7 != null && z) {
                t7.t.s(true);
            }
        }
    }

    public final boolean t() {
        boolean z;
        if (this.s < 1) {
            return false;
        }
        boolean z2 = false;
        for (T7 t7 : this.c.h()) {
            if (t7 != null && I(t7)) {
                if (!t7.y) {
                    z = t7.t.t();
                } else {
                    z = false;
                }
                if (z) {
                    z2 = true;
                }
            }
        }
        return z2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        T7 t7 = this.v;
        if (t7 != null) {
            sb.append(t7.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.v)));
            sb.append("}");
        } else {
            V7 v7 = this.t;
            if (v7 != null) {
                sb.append(v7.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.t)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public final void u(int i) {
        try {
            this.b = true;
            for (androidx.fragment.app.a aVar : ((HashMap) this.c.b).values()) {
                if (aVar != null) {
                    aVar.e = i;
                }
            }
            K(i, false);
            Iterator it = e().iterator();
            while (it.hasNext()) {
                ((K5) it.next()).e();
            }
            this.b = false;
            z(true);
        } catch (Throwable th) {
            this.b = false;
            throw th;
        }
    }

    public final void v(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2;
        String h = Ve.h(str, "    ");
        H5 h5 = this.c;
        h5.getClass();
        String str3 = str + "    ";
        HashMap hashMap = (HashMap) h5.b;
        if (!hashMap.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (androidx.fragment.app.a aVar : hashMap.values()) {
                printWriter.print(str);
                if (aVar != null) {
                    T7 t7 = aVar.c;
                    printWriter.println(t7);
                    t7.getClass();
                    printWriter.print(str3);
                    printWriter.print("mFragmentId=#");
                    printWriter.print(Integer.toHexString(t7.v));
                    printWriter.print(" mContainerId=#");
                    printWriter.print(Integer.toHexString(t7.w));
                    printWriter.print(" mTag=");
                    printWriter.println(t7.x);
                    printWriter.print(str3);
                    printWriter.print("mState=");
                    printWriter.print(t7.a);
                    printWriter.print(" mWho=");
                    printWriter.print(t7.e);
                    printWriter.print(" mBackStackNesting=");
                    printWriter.println(t7.q);
                    printWriter.print(str3);
                    printWriter.print("mAdded=");
                    printWriter.print(t7.k);
                    printWriter.print(" mRemoving=");
                    printWriter.print(t7.l);
                    printWriter.print(" mFromLayout=");
                    printWriter.print(t7.m);
                    printWriter.print(" mInLayout=");
                    printWriter.println(t7.n);
                    printWriter.print(str3);
                    printWriter.print("mHidden=");
                    printWriter.print(t7.y);
                    printWriter.print(" mDetached=");
                    printWriter.print(t7.z);
                    printWriter.print(" mMenuVisible=");
                    printWriter.print(t7.B);
                    printWriter.print(" mHasMenu=");
                    printWriter.println(false);
                    printWriter.print(str3);
                    printWriter.print("mRetainInstance=");
                    printWriter.print(t7.A);
                    printWriter.print(" mUserVisibleHint=");
                    printWriter.println(t7.G);
                    if (t7.r != null) {
                        printWriter.print(str3);
                        printWriter.print("mFragmentManager=");
                        printWriter.println(t7.r);
                    }
                    if (t7.s != null) {
                        printWriter.print(str3);
                        printWriter.print("mHost=");
                        printWriter.println(t7.s);
                    }
                    if (t7.u != null) {
                        printWriter.print(str3);
                        printWriter.print("mParentFragment=");
                        printWriter.println(t7.u);
                    }
                    if (t7.f146f != null) {
                        printWriter.print(str3);
                        printWriter.print("mArguments=");
                        printWriter.println(t7.f146f);
                    }
                    if (t7.b != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedFragmentState=");
                        printWriter.println(t7.b);
                    }
                    if (t7.c != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedViewState=");
                        printWriter.println(t7.c);
                    }
                    if (t7.d != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedViewRegistryState=");
                        printWriter.println(t7.d);
                    }
                    Object obj = t7.g;
                    if (obj == null) {
                        C0188i8 c0188i8 = t7.r;
                        obj = (c0188i8 == null || (str2 = t7.h) == null) ? null : c0188i8.c.c(str2);
                    }
                    if (obj != null) {
                        printWriter.print(str3);
                        printWriter.print("mTarget=");
                        printWriter.print(obj);
                        printWriter.print(" mTargetRequestCode=");
                        printWriter.println(t7.i);
                    }
                    printWriter.print(str3);
                    printWriter.print("mPopDirection=");
                    R7 r7 = t7.H;
                    printWriter.println(r7 == null ? false : r7.a);
                    R7 r72 = t7.H;
                    if ((r72 == null ? 0 : r72.b) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getEnterAnim=");
                        R7 r73 = t7.H;
                        printWriter.println(r73 == null ? 0 : r73.b);
                    }
                    R7 r74 = t7.H;
                    if ((r74 == null ? 0 : r74.c) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getExitAnim=");
                        R7 r75 = t7.H;
                        printWriter.println(r75 == null ? 0 : r75.c);
                    }
                    R7 r76 = t7.H;
                    if ((r76 == null ? 0 : r76.d) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getPopEnterAnim=");
                        R7 r77 = t7.H;
                        printWriter.println(r77 == null ? 0 : r77.d);
                    }
                    R7 r78 = t7.H;
                    if ((r78 == null ? 0 : r78.e) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getPopExitAnim=");
                        R7 r79 = t7.H;
                        printWriter.println(r79 == null ? 0 : r79.e);
                    }
                    if (t7.D != null) {
                        printWriter.print(str3);
                        printWriter.print("mContainer=");
                        printWriter.println(t7.D);
                    }
                    if (t7.E != null) {
                        printWriter.print(str3);
                        printWriter.print("mView=");
                        printWriter.println(t7.E);
                    }
                    if (t7.h() != null) {
                        H1.v(t7).r(str3, printWriter);
                    }
                    printWriter.print(str3);
                    printWriter.println("Child " + t7.t + ":");
                    t7.t.v(Ve.h(str3, "  "), fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        ArrayList arrayList = (ArrayList) h5.a;
        int size3 = arrayList.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size3; i++) {
                T7 t72 = (T7) arrayList.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(t72.toString());
            }
        }
        ArrayList arrayList2 = this.e;
        if (arrayList2 != null && (size2 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size2; i2++) {
                T7 t73 = (T7) this.e.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(t73.toString());
            }
        }
        ArrayList arrayList3 = this.d;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size; i3++) {
                M2 m2 = (M2) this.d.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(m2.toString());
                m2.d(h, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.i.get());
        synchronized (this.a) {
            try {
                int size4 = this.a.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i4 = 0; i4 < size4; i4++) {
                        Object obj2 = (InterfaceC0148g8) this.a.get(i4);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i4);
                        printWriter.print(": ");
                        printWriter.println(obj2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.t);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.u);
        if (this.v != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.v);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.s);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.E);
        printWriter.print(" mStopped=");
        printWriter.print(this.F);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.G);
        if (this.D) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.D);
        }
    }

    public final void w() {
        Iterator it = e().iterator();
        while (it.hasNext()) {
            ((K5) it.next()).e();
        }
    }

    public final void x(InterfaceC0148g8 interfaceC0148g8, boolean z) {
        if (!z) {
            if (this.t == null) {
                if (this.G) {
                    throw new IllegalStateException("FragmentManager has been destroyed");
                }
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            if (this.E || this.F) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.a) {
            try {
                if (this.t == null) {
                    if (z) {
                    } else {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.a.add(interfaceC0148g8);
                    T();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void y(boolean z) {
        if (!this.b) {
            if (this.t == null) {
                if (this.G) {
                    throw new IllegalStateException("FragmentManager has been destroyed");
                }
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            if (Looper.myLooper() == this.t.i.getLooper()) {
                if (!z && (this.E || this.F)) {
                    throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
                }
                if (this.I == null) {
                    this.I = new ArrayList();
                    this.J = new ArrayList();
                    return;
                }
                return;
            }
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        throw new IllegalStateException("FragmentManager is already executing transactions");
    }

    public final boolean z(boolean z) {
        boolean z2;
        y(z);
        boolean z3 = false;
        while (true) {
            ArrayList arrayList = this.I;
            ArrayList arrayList2 = this.J;
            synchronized (this.a) {
                if (this.a.isEmpty()) {
                    z2 = false;
                } else {
                    try {
                        int size = this.a.size();
                        z2 = false;
                        for (int i = 0; i < size; i++) {
                            z2 |= ((InterfaceC0148g8) this.a.get(i)).a(arrayList, arrayList2);
                        }
                    } finally {
                    }
                }
            }
            if (!z2) {
                break;
            }
            z3 = true;
            this.b = true;
            try {
                Q(this.I, this.J);
            } finally {
                d();
            }
        }
        b0();
        if (this.H) {
            this.H = false;
            Z();
        }
        ((HashMap) this.c.b).values().removeAll(Collections.singleton(null));
        return z3;
    }
}
