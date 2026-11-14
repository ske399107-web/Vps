package o;

import android.content.Context;
import android.view.View;
import android.view.Window;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Calendar;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Qa implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ Qa(Va va, com.google.android.material.datepicker.c cVar, int i) {
        this.a = i;
        this.c = va;
        this.b = cVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int H;
        switch (this.a) {
            case 0:
                Va va = (Va) this.c;
                int K0 = ((LinearLayoutManager) va.a0.getLayoutManager()).K0() - 1;
                if (K0 >= 0) {
                    Calendar a = Xg.a(((com.google.android.material.datepicker.c) this.b).c.a.a);
                    a.add(2, K0);
                    va.G(new Ib(a));
                    return;
                }
                return;
            case 1:
                Va va2 = (Va) this.c;
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) va2.a0.getLayoutManager();
                View M0 = linearLayoutManager.M0(0, linearLayoutManager.v(), false);
                if (M0 == null) {
                    H = -1;
                } else {
                    H = AbstractC0431ud.H(M0);
                }
                int i = H + 1;
                if (i < va2.a0.getAdapter().a()) {
                    Calendar a2 = Xg.a(((com.google.android.material.datepicker.c) this.b).c.a.a);
                    a2.add(2, i);
                    va2.G(new Ib(a2));
                    return;
                }
                return;
            default:
                C0195ig c0195ig = (C0195ig) this.c;
                Window.Callback callback = c0195ig.k;
                if (callback != null && c0195ig.l) {
                    callback.onMenuItemSelected(0, (W) this.b);
                    return;
                }
                return;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [o.W, java.lang.Object] */
    public Qa(C0195ig c0195ig) {
        this.a = 2;
        this.c = c0195ig;
        Context context = c0195ig.a.getContext();
        CharSequence charSequence = c0195ig.h;
        ?? obj = new Object();
        obj.e = 4096;
        obj.g = 4096;
        obj.l = null;
        obj.m = null;
        obj.n = false;
        obj.f158o = false;
        obj.p = 16;
        obj.i = context;
        obj.a = charSequence;
        this.b = obj;
    }
}
