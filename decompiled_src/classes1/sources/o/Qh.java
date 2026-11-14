package o;

import android.view.View;
import android.view.animation.BaseInterpolator;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Qh {
    public BaseInterpolator c;
    public Ng d;
    public boolean e;
    public long b = -1;

    /* renamed from: f, reason: collision with root package name */
    public final C0176hg f140f = new C0176hg(this);
    public final ArrayList a = new ArrayList();

    public final void a() {
        if (!this.e) {
            return;
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Ph) it.next()).b();
        }
        this.e = false;
    }

    public final void b() {
        View view;
        if (this.e) {
            return;
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            Ph ph = (Ph) it.next();
            long j = this.b;
            if (j >= 0) {
                ph.c(j);
            }
            BaseInterpolator baseInterpolator = this.c;
            if (baseInterpolator != null && (view = (View) ph.a.get()) != null) {
                view.animate().setInterpolator(baseInterpolator);
            }
            if (this.d != null) {
                ph.d(this.f140f);
            }
            View view2 = (View) ph.a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.e = true;
    }
}
