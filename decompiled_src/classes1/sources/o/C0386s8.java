package o;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import java.util.LinkedHashMap;

/* renamed from: o.s8, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0386s8 implements Z8, InterfaceC0412te, Mh {
    public final T7 a;
    public final Lh b;
    public androidx.lifecycle.a c = null;
    public C0406t8 d = null;

    public C0386s8(T7 t7, Lh lh) {
        this.a = t7;
        this.b = lh;
    }

    @Override // o.Z8
    public final Pb a() {
        Application application;
        T7 t7 = this.a;
        Context applicationContext = t7.C().getApplicationContext();
        while (true) {
            if (applicationContext instanceof ContextWrapper) {
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            } else {
                application = null;
                break;
            }
        }
        Pb pb = new Pb();
        LinkedHashMap linkedHashMap = pb.a;
        if (application != null) {
            linkedHashMap.put(C0424u6.d, application);
        }
        linkedHashMap.put(AbstractC0487x9.M, this);
        linkedHashMap.put(AbstractC0487x9.N, this);
        Bundle bundle = t7.f146f;
        if (bundle != null) {
            linkedHashMap.put(AbstractC0487x9.O, bundle);
        }
        return pb;
    }

    @Override // o.InterfaceC0412te
    public final C0041b1 b() {
        f();
        return (C0041b1) this.d.c;
    }

    public final void c(L9 l9) {
        this.c.d(l9);
    }

    @Override // o.Mh
    public final Lh d() {
        f();
        return this.b;
    }

    @Override // o.R9
    public final androidx.lifecycle.a e() {
        f();
        return this.c;
    }

    public final void f() {
        if (this.c == null) {
            this.c = new androidx.lifecycle.a(this);
            C0406t8 c0406t8 = new C0406t8(this);
            this.d = c0406t8;
            c0406t8.a();
            AbstractC0487x9.v(this);
        }
    }
}
