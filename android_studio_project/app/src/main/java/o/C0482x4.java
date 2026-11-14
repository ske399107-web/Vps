package o;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* renamed from: o.x4, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0482x4 {
    public int b;
    public boolean c;
    public final L4 d;
    public final int e;

    /* renamed from: f, reason: collision with root package name */
    public C0482x4 f293f;
    public We i;
    public HashSet a = null;
    public int g = 0;
    public int h = PKIFailureInfo.systemUnavail;

    public C0482x4(L4 l4, int i) {
        this.d = l4;
        this.e = i;
    }

    public final void a(C0482x4 c0482x4, int i) {
        b(c0482x4, i, PKIFailureInfo.systemUnavail, false);
    }

    public final boolean b(C0482x4 c0482x4, int i, int i2, boolean z) {
        if (c0482x4 == null) {
            j();
            return true;
        }
        if (!z && !i(c0482x4)) {
            return false;
        }
        this.f293f = c0482x4;
        if (c0482x4.a == null) {
            c0482x4.a = new HashSet();
        }
        HashSet hashSet = this.f293f.a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        this.g = i;
        this.h = i2;
        return true;
    }

    public final void c(int i, ArrayList arrayList, C0257li c0257li) {
        HashSet hashSet = this.a;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                L1.u(((C0482x4) it.next()).d, i, arrayList, c0257li);
            }
        }
    }

    public final int d() {
        if (!this.c) {
            return 0;
        }
        return this.b;
    }

    public final int e() {
        C0482x4 c0482x4;
        if (this.d.g0 == 8) {
            return 0;
        }
        int i = this.h;
        if (i != Integer.MIN_VALUE && (c0482x4 = this.f293f) != null && c0482x4.d.g0 == 8) {
            return i;
        }
        return this.g;
    }

    public final C0482x4 f() {
        int i = this.e;
        int C = Ve.C(i);
        L4 l4 = this.d;
        switch (C) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
                return l4.K;
            case 2:
                return l4.L;
            case 3:
                return l4.I;
            case 4:
                return l4.J;
            default:
                throw new AssertionError(Ve.B(i));
        }
    }

    public final boolean g() {
        HashSet hashSet = this.a;
        if (hashSet == null) {
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((C0482x4) it.next()).f().h()) {
                return true;
            }
        }
        return false;
    }

    public final boolean h() {
        if (this.f293f != null) {
            return true;
        }
        return false;
    }

    public final boolean i(C0482x4 c0482x4) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        if (c0482x4 == null) {
            return false;
        }
        int i = this.e;
        L4 l4 = c0482x4.d;
        int i2 = c0482x4.e;
        if (i2 != i) {
            switch (Ve.C(i)) {
                case 0:
                case 7:
                case 8:
                    return false;
                case 1:
                case 3:
                    if (i2 != 2 && i2 != 4) {
                        z = false;
                    } else {
                        z = true;
                    }
                    if (l4 instanceof X8) {
                        if (z || i2 == 8) {
                            z3 = true;
                        }
                        return z3;
                    }
                    return z;
                case 2:
                case 4:
                    if (i2 != 3 && i2 != 5) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    if (l4 instanceof X8) {
                        if (z2 || i2 == 9) {
                            z3 = true;
                        }
                        return z3;
                    }
                    return z2;
                case 5:
                    if (i2 == 2 || i2 == 4) {
                        return false;
                    }
                    return true;
                case 6:
                    if (i2 == 6 || i2 == 8 || i2 == 9) {
                        return false;
                    }
                    return true;
                default:
                    throw new AssertionError(Ve.B(i));
            }
        }
        if (i == 6 && (!l4.E || !this.d.E)) {
            return false;
        }
        return true;
    }

    public final void j() {
        HashSet hashSet;
        C0482x4 c0482x4 = this.f293f;
        if (c0482x4 != null && (hashSet = c0482x4.a) != null) {
            hashSet.remove(this);
            if (this.f293f.a.size() == 0) {
                this.f293f.a = null;
            }
        }
        this.a = null;
        this.f293f = null;
        this.g = 0;
        this.h = PKIFailureInfo.systemUnavail;
        this.c = false;
        this.b = 0;
    }

    public final void k() {
        We we = this.i;
        if (we == null) {
            this.i = new We(1);
        } else {
            we.c();
        }
    }

    public final void l(int i) {
        this.b = i;
        this.c = true;
    }

    public final String toString() {
        return this.d.h0 + ":" + Ve.B(this.e);
    }
}
