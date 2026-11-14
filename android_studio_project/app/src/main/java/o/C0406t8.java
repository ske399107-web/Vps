package o;

import android.os.Bundle;
import androidx.savedstate.Recreator;
import java.util.ArrayList;
import java.util.Map;

/* renamed from: o.t8, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0406t8 {
    public boolean a;
    public final Object b;
    public final Object c;

    public C0406t8(InterfaceC0412te interfaceC0412te) {
        this.b = interfaceC0412te;
        this.c = new C0041b1();
    }

    public void a() {
        InterfaceC0412te interfaceC0412te = (InterfaceC0412te) this.b;
        androidx.lifecycle.a e = interfaceC0412te.e();
        if (e.c == M9.b) {
            e.a(new Recreator(interfaceC0412te));
            final C0041b1 c0041b1 = (C0041b1) this.c;
            c0041b1.getClass();
            if (!c0041b1.c) {
                e.a(new P9() { // from class: o.qe
                    @Override // o.P9
                    public final void b(R9 r9, L9 l9) {
                        C0041b1 c0041b12 = C0041b1.this;
                        AbstractC0487x9.o(c0041b12, "this$0");
                        if (l9 == L9.ON_START) {
                            c0041b12.e = true;
                        } else if (l9 == L9.ON_STOP) {
                            c0041b12.e = false;
                        }
                    }
                });
                c0041b1.c = true;
                this.a = true;
                return;
            }
            throw new IllegalStateException("SavedStateRegistry was already attached.");
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    public void b(Bundle bundle) {
        Bundle bundle2;
        if (!this.a) {
            a();
        }
        androidx.lifecycle.a e = ((InterfaceC0412te) this.b).e();
        if (e.c.compareTo(M9.d) < 0) {
            C0041b1 c0041b1 = (C0041b1) this.c;
            if (c0041b1.c) {
                if (!c0041b1.d) {
                    if (bundle != null) {
                        bundle2 = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
                    } else {
                        bundle2 = null;
                    }
                    c0041b1.a = bundle2;
                    c0041b1.d = true;
                    return;
                }
                throw new IllegalStateException("SavedStateRegistry was already restored.");
            }
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).");
        }
        throw new IllegalStateException(("performRestore cannot be called when owner is " + e.c).toString());
    }

    public void c(Bundle bundle) {
        C0041b1 c0041b1 = (C0041b1) this.c;
        c0041b1.getClass();
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = (Bundle) c0041b1.a;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        C0273me c0273me = (C0273me) c0041b1.f181f;
        c0273me.getClass();
        C0233ke c0233ke = new C0233ke(c0273me);
        c0273me.c.put(c0233ke, Boolean.FALSE);
        while (c0233ke.hasNext()) {
            Map.Entry entry = (Map.Entry) c0233ke.next();
            bundle2.putBundle((String) entry.getKey(), ((InterfaceC0392se) entry.getValue()).a());
        }
        if (!bundle2.isEmpty()) {
            bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
        }
    }

    public C0406t8(ExecutorC0382s4 executorC0382s4, C0358r0 c0358r0) {
        this.b = new Object();
        this.c = new ArrayList();
    }
}
