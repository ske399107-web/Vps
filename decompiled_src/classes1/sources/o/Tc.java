package o;

import android.os.Handler;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Tc implements R9 {
    public static final Tc i = new Tc();
    public int a;
    public int b;
    public Handler e;
    public boolean c = true;
    public boolean d = true;

    /* renamed from: f, reason: collision with root package name */
    public final androidx.lifecycle.a f149f = new androidx.lifecycle.a(this);
    public final RunnableC0180i0 g = new RunnableC0180i0(10, this);
    public final C h = new C(24, this);

    public final void a() {
        int i2 = this.b + 1;
        this.b = i2;
        if (i2 == 1) {
            if (this.c) {
                this.f149f.d(L9.ON_RESUME);
                this.c = false;
            } else {
                Handler handler = this.e;
                AbstractC0487x9.l(handler);
                handler.removeCallbacks(this.g);
            }
        }
    }

    @Override // o.R9
    public final androidx.lifecycle.a e() {
        return this.f149f;
    }
}
