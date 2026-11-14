package o;

import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;

/* renamed from: o.k8, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0227k8 extends Jh {

    /* renamed from: f, reason: collision with root package name */
    public final boolean f243f;
    public final HashMap c = new HashMap();
    public final HashMap d = new HashMap();
    public final HashMap e = new HashMap();
    public boolean g = false;
    public boolean h = false;

    public C0227k8(boolean z) {
        this.f243f = z;
    }

    @Override // o.Jh
    public final void a() {
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.g = true;
    }

    public final void b(T7 t7) {
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "Clearing non-config state for " + t7);
        }
        c(t7.e);
    }

    public final void c(String str) {
        HashMap hashMap = this.d;
        C0227k8 c0227k8 = (C0227k8) hashMap.get(str);
        if (c0227k8 != null) {
            c0227k8.a();
            hashMap.remove(str);
        }
        HashMap hashMap2 = this.e;
        Lh lh = (Lh) hashMap2.get(str);
        if (lh != null) {
            lh.a();
            hashMap2.remove(str);
        }
    }

    public final void d(T7 t7) {
        if (this.h) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            }
        } else if (this.c.remove(t7.e) != null && Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + t7);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0227k8.class != obj.getClass()) {
            return false;
        }
        C0227k8 c0227k8 = (C0227k8) obj;
        if (this.c.equals(c0227k8.c) && this.d.equals(c0227k8.d) && this.e.equals(c0227k8.e)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.e.hashCode() + ((this.d.hashCode() + (this.c.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator it = this.c.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator it2 = this.d.keySet().iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator it3 = this.e.keySet().iterator();
        while (it3.hasNext()) {
            sb.append((String) it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
