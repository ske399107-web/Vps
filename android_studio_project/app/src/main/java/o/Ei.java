package o;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Ei {
    public final Mi a;
    public C0407t9[] b;

    public Ei() {
        this(new Mi());
    }

    public final void a() {
        C0407t9[] c0407t9Arr = this.b;
        if (c0407t9Arr != null) {
            C0407t9 c0407t9 = c0407t9Arr[0];
            C0407t9 c0407t92 = c0407t9Arr[1];
            Mi mi = this.a;
            if (c0407t92 == null) {
                c0407t92 = mi.a.f(2);
            }
            if (c0407t9 == null) {
                c0407t9 = mi.a.f(1);
            }
            g(C0407t9.a(c0407t9, c0407t92));
            C0407t9 c0407t93 = this.b[Ng.k(16)];
            if (c0407t93 != null) {
                f(c0407t93);
            }
            C0407t9 c0407t94 = this.b[Ng.k(32)];
            if (c0407t94 != null) {
                d(c0407t94);
            }
            C0407t9 c0407t95 = this.b[Ng.k(64)];
            if (c0407t95 != null) {
                h(c0407t95);
            }
        }
    }

    public abstract Mi b();

    public void c(int i, C0407t9 c0407t9) {
        if (this.b == null) {
            this.b = new C0407t9[9];
        }
        for (int i2 = 1; i2 <= 256; i2 <<= 1) {
            if ((i & i2) != 0) {
                this.b[Ng.k(i2)] = c0407t9;
            }
        }
    }

    public void d(C0407t9 c0407t9) {
    }

    public abstract void e(C0407t9 c0407t9);

    public void f(C0407t9 c0407t9) {
    }

    public abstract void g(C0407t9 c0407t9);

    public void h(C0407t9 c0407t9) {
    }

    public Ei(Mi mi) {
        this.a = mi;
    }
}
