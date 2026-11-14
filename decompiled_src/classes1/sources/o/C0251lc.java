package o;

import java.io.Serializable;

/* renamed from: o.lc, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class C0251lc implements InterfaceC0426u8, Serializable {
    public transient C0251lc a;
    public final Object b;
    public final boolean c = false;
    public final int d = 0;
    public final /* synthetic */ int e;

    public C0251lc(int i, Object obj) {
        this.e = i;
        this.b = obj;
    }

    @Override // o.InterfaceC0426u8
    public final Object a() {
        switch (this.e) {
            case 0:
                ((androidx.activity.b) this.b).d();
                return Ug.a;
            default:
                ((androidx.activity.b) this.b).d();
                return Ug.a;
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [o.R3, java.lang.Object] */
    public final R3 b() {
        if (this.c) {
            Ld.a.getClass();
            return new Object();
        }
        Ld.a.getClass();
        return new S3(androidx.activity.b.class);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C0251lc) {
            C0251lc c0251lc = (C0251lc) obj;
            c0251lc.getClass();
            if (this.d == c0251lc.d && AbstractC0487x9.b(this.b, c0251lc.b) && b().equals(c0251lc.b())) {
                return true;
            }
            return false;
        }
        if (!(obj instanceof C0251lc)) {
            return false;
        }
        C0251lc c0251lc2 = this.a;
        if (c0251lc2 == null) {
            Ld.a.getClass();
            this.a = this;
            c0251lc2 = this;
        }
        return obj.equals(c0251lc2);
    }

    public final int hashCode() {
        b();
        return (((b().hashCode() * 31) + 986734966) * 31) + 1065238079;
    }

    public final String toString() {
        C0251lc c0251lc = this.a;
        if (c0251lc == null) {
            Ld.a.getClass();
            this.a = this;
            c0251lc = this;
        }
        if (c0251lc != this) {
            return c0251lc.toString();
        }
        return "function updateEnabledCallbacks (Kotlin reflection is not available)";
    }
}
