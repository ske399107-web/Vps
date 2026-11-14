package o;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.ListIterator;

/* renamed from: o.gc, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0152gc extends F9 implements InterfaceC0426u8 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0152gc(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // o.InterfaceC0426u8
    public final Object a() {
        Object obj;
        AbstractC0125f5 abstractC0125f5;
        switch (this.a) {
            case 0:
                ((androidx.activity.b) this.b).b();
                return Ug.a;
            case 1:
                androidx.activity.b bVar = (androidx.activity.b) this.b;
                C0480x2 c0480x2 = bVar.b;
                ListIterator listIterator = c0480x2.listIterator(c0480x2.size());
                while (true) {
                    if (listIterator.hasPrevious()) {
                        obj = listIterator.previous();
                        if (((C0048b8) obj).a) {
                        }
                    } else {
                        obj = null;
                    }
                }
                bVar.c = null;
                return Ug.a;
            case 2:
                ((androidx.activity.b) this.b).b();
                return Ug.a;
            default:
                Mh mh = (Mh) this.b;
                ArrayList arrayList = new ArrayList();
                Ld.a.getClass();
                Class a = new S3(C0333pe.class).a();
                AbstractC0487x9.m(a, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
                arrayList.add(new Kh(a));
                Kh[] khArr = (Kh[]) arrayList.toArray(new Kh[0]);
                Kh[] khArr2 = (Kh[]) Arrays.copyOf(khArr, khArr.length);
                AbstractC0487x9.o(khArr2, "initializers");
                Lh d = mh.d();
                if (mh instanceof Z8) {
                    abstractC0125f5 = ((Z8) mh).a();
                } else {
                    abstractC0125f5 = C0105e5.b;
                }
                AbstractC0487x9.o(d, "store");
                AbstractC0487x9.o(abstractC0125f5, "defaultCreationExtras");
                LinkedHashMap linkedHashMap = d.a;
                Jh jh = (Jh) linkedHashMap.get("androidx.lifecycle.internal.SavedStateHandlesVM");
                if (C0333pe.class.isInstance(jh)) {
                    AbstractC0487x9.m(jh, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
                } else {
                    Pb pb = new Pb(abstractC0125f5);
                    pb.a.put(C0424u6.e, "androidx.lifecycle.internal.SavedStateHandlesVM");
                    try {
                        Jh jh2 = null;
                        for (Kh kh : khArr2) {
                            if (kh.a.equals(C0333pe.class)) {
                                jh2 = (Jh) C0293ne.a.b(pb);
                            }
                        }
                        if (jh2 != null) {
                            Jh jh3 = (Jh) linkedHashMap.put("androidx.lifecycle.internal.SavedStateHandlesVM", jh2);
                            if (jh3 != null) {
                                jh3.a();
                            }
                            jh = jh2;
                        } else {
                            throw new IllegalArgumentException("No initializer set for given class ".concat(C0333pe.class.getName()));
                        }
                    } catch (AbstractMethodError unused) {
                        throw new UnsupportedOperationException("Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method.");
                    }
                }
                return (C0333pe) jh;
        }
    }
}
