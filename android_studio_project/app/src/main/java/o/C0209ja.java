package o;

import android.os.Handler;
import android.widget.AbsListView;

/* renamed from: o.ja, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0209ja implements AbsListView.OnScrollListener {
    public final /* synthetic */ C0249la a;

    public C0209ja(C0249la c0249la) {
        this.a = c0249la;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
        if (i == 1) {
            C0249la c0249la = this.a;
            if (c0249la.z.getInputMethodMode() != 2 && c0249la.z.getContentView() != null) {
                Handler handler = c0249la.v;
                RunnableC0170ha runnableC0170ha = c0249la.r;
                handler.removeCallbacks(runnableC0170ha);
                runnableC0170ha.run();
            }
        }
    }
}
