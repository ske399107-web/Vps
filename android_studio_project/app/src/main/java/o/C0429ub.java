package o;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;

/* renamed from: o.ub, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C0429ub {
    public final Context a;
    public final MenuC0230kb b;
    public final boolean c;
    public final int d;
    public View e;
    public boolean g;
    public InterfaceC0527zb h;
    public AbstractC0389sb i;
    public C0409tb j;

    /* renamed from: f, reason: collision with root package name */
    public int f283f = 8388611;
    public final C0409tb k = new C0409tb(this);

    public C0429ub(int i, Context context, View view, MenuC0230kb menuC0230kb, boolean z) {
        this.a = context;
        this.b = menuC0230kb;
        this.e = view;
        this.c = z;
        this.d = i;
    }

    public final AbstractC0389sb a() {
        AbstractC0389sb viewOnKeyListenerC0175hf;
        if (this.i == null) {
            Context context = this.a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            if (Math.min(point.x, point.y) >= context.getResources().getDimensionPixelSize(2131099670)) {
                viewOnKeyListenerC0175hf = new A3(context, this.e, this.d, this.c);
            } else {
                View view = this.e;
                Context context2 = this.a;
                boolean z = this.c;
                viewOnKeyListenerC0175hf = new ViewOnKeyListenerC0175hf(this.d, context2, view, this.b, z);
            }
            viewOnKeyListenerC0175hf.l(this.b);
            viewOnKeyListenerC0175hf.r(this.k);
            viewOnKeyListenerC0175hf.n(this.e);
            viewOnKeyListenerC0175hf.c(this.h);
            viewOnKeyListenerC0175hf.o(this.g);
            viewOnKeyListenerC0175hf.p(this.f283f);
            this.i = viewOnKeyListenerC0175hf;
        }
        return this.i;
    }

    public final boolean b() {
        AbstractC0389sb abstractC0389sb = this.i;
        if (abstractC0389sb != null && abstractC0389sb.b()) {
            return true;
        }
        return false;
    }

    public void c() {
        this.i = null;
        C0409tb c0409tb = this.j;
        if (c0409tb != null) {
            c0409tb.onDismiss();
        }
    }

    public final void d(int i, int i2, boolean z, boolean z2) {
        AbstractC0389sb a = a();
        a.s(z2);
        if (z) {
            if ((Gravity.getAbsoluteGravity(this.f283f, this.e.getLayoutDirection()) & 7) == 5) {
                i -= this.e.getWidth();
            }
            a.q(i);
            a.t(i2);
            int i3 = (int) ((this.a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            a.a = new Rect(i - i3, i2 - i3, i + i3, i2 + i3);
        }
        a.f();
    }
}
