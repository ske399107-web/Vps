package o;

import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Id {
    public static final List s = Collections.emptyList();
    public final View a;
    public WeakReference b;
    public int j;
    public RecyclerView r;
    public int c = -1;
    public int d = -1;
    public long e = -1;

    /* renamed from: f, reason: collision with root package name */
    public int f107f = -1;
    public int g = -1;
    public Id h = null;
    public Id i = null;
    public final ArrayList k = null;
    public final List l = null;
    public int m = 0;
    public Ad n = null;

    /* renamed from: o, reason: collision with root package name */
    public boolean f108o = false;
    public int p = 0;
    public int q = -1;

    public Id(View view) {
        if (view != null) {
            this.a = view;
            return;
        }
        throw new IllegalArgumentException("itemView may not be null");
    }

    public final void a(int i) {
        this.j = i | this.j;
    }

    public final int b() {
        int i = this.g;
        if (i == -1) {
            return this.c;
        }
        return i;
    }

    public final List c() {
        ArrayList arrayList;
        int i = this.j & 1024;
        List list = s;
        if (i == 0 && (arrayList = this.k) != null && arrayList.size() != 0) {
            return this.l;
        }
        return list;
    }

    public final boolean d(int i) {
        if ((i & this.j) != 0) {
            return true;
        }
        return false;
    }

    public final boolean e() {
        View view = this.a;
        if (view.getParent() != null && view.getParent() != this.r) {
            return true;
        }
        return false;
    }

    public final boolean f() {
        if ((this.j & 1) != 0) {
            return true;
        }
        return false;
    }

    public final boolean g() {
        if ((this.j & 4) != 0) {
            return true;
        }
        return false;
    }

    public final boolean h() {
        if ((this.j & 16) == 0) {
            WeakHashMap weakHashMap = Dh.a;
            if (!this.a.hasTransientState()) {
                return true;
            }
        }
        return false;
    }

    public final boolean i() {
        if ((this.j & 8) != 0) {
            return true;
        }
        return false;
    }

    public final boolean j() {
        if (this.n != null) {
            return true;
        }
        return false;
    }

    public final boolean k() {
        if ((this.j & 256) != 0) {
            return true;
        }
        return false;
    }

    public final boolean l() {
        if ((this.j & 2) != 0) {
            return true;
        }
        return false;
    }

    public final void m(int i, boolean z) {
        if (this.d == -1) {
            this.d = this.c;
        }
        if (this.g == -1) {
            this.g = this.c;
        }
        if (z) {
            this.g += i;
        }
        this.c += i;
        View view = this.a;
        if (view.getLayoutParams() != null) {
            ((C0451vd) view.getLayoutParams()).c = true;
        }
    }

    public final void n() {
        this.j = 0;
        this.c = -1;
        this.d = -1;
        this.e = -1L;
        this.g = -1;
        this.m = 0;
        this.h = null;
        this.i = null;
        ArrayList arrayList = this.k;
        if (arrayList != null) {
            arrayList.clear();
        }
        this.j &= -1025;
        this.p = 0;
        this.q = -1;
        RecyclerView.j(this);
    }

    public final void o(boolean z) {
        int i;
        int i2 = this.m;
        if (z) {
            i = i2 - 1;
        } else {
            i = i2 + 1;
        }
        this.m = i;
        if (i < 0) {
            this.m = 0;
            Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            return;
        }
        if (!z && i == 1) {
            this.j |= 16;
        } else if (z && i == 0) {
            this.j &= -17;
        }
    }

    public final boolean p() {
        if ((this.j & 128) != 0) {
            return true;
        }
        return false;
    }

    public final boolean q() {
        if ((this.j & 32) != 0) {
            return true;
        }
        return false;
    }

    public final String toString() {
        String simpleName;
        String str;
        if (getClass().isAnonymousClass()) {
            simpleName = "ViewHolder";
        } else {
            simpleName = getClass().getSimpleName();
        }
        StringBuilder o2 = AbstractC0304o5.o(simpleName, "{");
        o2.append(Integer.toHexString(hashCode()));
        o2.append(" position=");
        o2.append(this.c);
        o2.append(" id=");
        o2.append(this.e);
        o2.append(", oldPos=");
        o2.append(this.d);
        o2.append(", pLpos:");
        o2.append(this.g);
        StringBuilder sb = new StringBuilder(o2.toString());
        if (j()) {
            sb.append(" scrap ");
            if (this.f108o) {
                str = "[changeScrap]";
            } else {
                str = "[attachedScrap]";
            }
            sb.append(str);
        }
        if (g()) {
            sb.append(" invalid");
        }
        if (!f()) {
            sb.append(" unbound");
        }
        if ((this.j & 2) != 0) {
            sb.append(" update");
        }
        if (i()) {
            sb.append(" removed");
        }
        if (p()) {
            sb.append(" ignored");
        }
        if (k()) {
            sb.append(" tmpDetached");
        }
        if (!h()) {
            sb.append(" not recyclable(" + this.m + ")");
        }
        if ((this.j & 512) != 0 || g()) {
            sb.append(" undefined adapter position");
        }
        if (this.a.getParent() == null) {
            sb.append(" no parent");
        }
        sb.append("}");
        return sb.toString();
    }
}
