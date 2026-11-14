package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandleController;
import androidx.lifecycle.a;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import o.AbstractC0304o5;
import o.AbstractC0487x9;
import o.C0041b1;
import o.I9;
import o.InterfaceC0372re;
import o.InterfaceC0412te;
import o.Jh;
import o.L9;
import o.Lh;
import o.Mh;
import o.P9;
import o.R9;
import o.S0;
import o.Ve;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Recreator implements P9 {
    public final InterfaceC0412te a;

    public Recreator(InterfaceC0412te interfaceC0412te) {
        this.a = interfaceC0412te;
    }

    @Override // o.P9
    public final void b(R9 r9, L9 l9) {
        Object obj;
        boolean z;
        if (l9 == L9.ON_CREATE) {
            r9.e().f(this);
            Bundle c = this.a.b().c("androidx.savedstate.Restarter");
            if (c == null) {
                return;
            }
            ArrayList<String> stringArrayList = c.getStringArrayList("classes_to_restore");
            if (stringArrayList != null) {
                for (String str : stringArrayList) {
                    try {
                        Class<? extends U> asSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(InterfaceC0372re.class);
                        AbstractC0487x9.n(asSubclass, "{\n                Class.…class.java)\n            }");
                        try {
                            Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                            declaredConstructor.setAccessible(true);
                            try {
                                Object newInstance = declaredConstructor.newInstance(new Object[0]);
                                AbstractC0487x9.n(newInstance, "{\n                constr…wInstance()\n            }");
                                InterfaceC0412te interfaceC0412te = this.a;
                                if (interfaceC0412te instanceof Mh) {
                                    Lh d = ((Mh) interfaceC0412te).d();
                                    C0041b1 b = interfaceC0412te.b();
                                    d.getClass();
                                    Iterator it = new HashSet(d.a.keySet()).iterator();
                                    while (it.hasNext()) {
                                        String str2 = (String) it.next();
                                        AbstractC0487x9.o(str2, "key");
                                        Jh jh = (Jh) d.a.get(str2);
                                        AbstractC0487x9.l(jh);
                                        a e = interfaceC0412te.e();
                                        AbstractC0487x9.o(b, "registry");
                                        AbstractC0487x9.o(e, "lifecycle");
                                        HashMap hashMap = jh.a;
                                        if (hashMap == null) {
                                            obj = null;
                                        } else {
                                            synchronized (hashMap) {
                                                obj = jh.a.get("androidx.lifecycle.savedstate.vm.tag");
                                            }
                                        }
                                        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) obj;
                                        if (savedStateHandleController != null && !(z = savedStateHandleController.a)) {
                                            if (z) {
                                                throw new IllegalStateException("Already attached to lifecycleOwner");
                                            }
                                            savedStateHandleController.a = true;
                                            e.a(savedStateHandleController);
                                            throw null;
                                        }
                                    }
                                    if (!new HashSet(d.a.keySet()).isEmpty()) {
                                        if (b.e) {
                                            S0 s0 = (S0) b.b;
                                            if (s0 == null) {
                                                s0 = new S0(b);
                                            }
                                            b.b = s0;
                                            try {
                                                I9.class.getDeclaredConstructor(new Class[0]);
                                                S0 s02 = (S0) b.b;
                                                if (s02 != null) {
                                                    ((LinkedHashSet) s02.b).add(I9.class.getName());
                                                }
                                            } catch (NoSuchMethodException e2) {
                                                throw new IllegalArgumentException("Class " + I9.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
                                            }
                                        } else {
                                            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
                                        }
                                    }
                                } else {
                                    throw new IllegalStateException("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner");
                                }
                            } catch (Exception e3) {
                                throw new RuntimeException(Ve.y("Failed to instantiate ", str), e3);
                            }
                        } catch (NoSuchMethodException e4) {
                            throw new IllegalStateException("Class " + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e4);
                        }
                    } catch (ClassNotFoundException e5) {
                        throw new RuntimeException(AbstractC0304o5.h("Class ", str, " wasn't found"), e5);
                    }
                }
                return;
            }
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        throw new AssertionError("Next event must be ON_CREATE");
    }
}
