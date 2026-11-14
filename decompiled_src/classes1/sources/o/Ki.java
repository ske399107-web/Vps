package o;

import android.os.Build;
import android.view.View;
import java.util.Objects;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Ki {
    public static final Mi b;
    public final Mi a;

    static {
        Ei ai;
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            ai = new Di();
        } else if (i >= 29) {
            ai = new Ci();
        } else {
            ai = new Ai();
        }
        b = ai.b().a.a().a.b().a.c();
    }

    public Ki(Mi mi) {
        this.a = mi;
    }

    public Mi a() {
        return this.a;
    }

    public Mi b() {
        return this.a;
    }

    public Mi c() {
        return this.a;
    }

    public void d(View view) {
    }

    public C0066c6 e() {
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Ki)) {
            return false;
        }
        Ki ki = (Ki) obj;
        if (n() == ki.n() && m() == ki.m() && Objects.equals(j(), ki.j()) && Objects.equals(h(), ki.h()) && Objects.equals(e(), ki.e())) {
            return true;
        }
        return false;
    }

    public C0407t9 f(int i) {
        return C0407t9.e;
    }

    public C0407t9 g() {
        return j();
    }

    public C0407t9 h() {
        return C0407t9.e;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(n()), Boolean.valueOf(m()), j(), h(), e());
    }

    public C0407t9 i() {
        return j();
    }

    public C0407t9 j() {
        return C0407t9.e;
    }

    public C0407t9 k() {
        return j();
    }

    public Mi l(int i, int i2, int i3, int i4) {
        return b;
    }

    public boolean m() {
        return false;
    }

    public boolean n() {
        return false;
    }

    public void o(C0407t9[] c0407t9Arr) {
    }

    public void p(Mi mi) {
    }

    public void q(C0407t9 c0407t9) {
    }
}
