package o;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Cg {
    public final View b;
    public final HashMap a = new HashMap();
    public final ArrayList c = new ArrayList();

    public Cg(View view) {
        this.b = view;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Cg) {
            Cg cg = (Cg) obj;
            if (this.b == cg.b && this.a.equals(cg.a)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() + (this.b.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder o2 = AbstractC0304o5.o("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n", "    view = ");
        o2.append(this.b);
        o2.append("\n");
        String h = Ve.h(o2.toString(), "    values:");
        HashMap hashMap = this.a;
        for (String str : hashMap.keySet()) {
            h = h + "    " + str + ": " + hashMap.get(str) + "\n";
        }
        return h;
    }
}
