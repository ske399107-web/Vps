package o;

import android.graphics.Typeface;
import android.os.Build;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* renamed from: o.a2, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0022a2 extends Ha {
    public final /* synthetic */ int k;
    public final /* synthetic */ int l;
    public final /* synthetic */ WeakReference m;
    public final /* synthetic */ C0122f2 n;

    public C0022a2(C0122f2 c0122f2, int i, int i2, WeakReference weakReference) {
        this.n = c0122f2;
        this.k = i;
        this.l = i2;
        this.m = weakReference;
    }

    @Override // o.Ha
    public final void h0(int i) {
    }

    @Override // o.Ha
    public final void i0(Typeface typeface) {
        int i;
        boolean z;
        if (Build.VERSION.SDK_INT >= 28 && (i = this.k) != -1) {
            if ((this.l & 2) != 0) {
                z = true;
            } else {
                z = false;
            }
            typeface = AbstractC0102e2.a(typeface, i, z);
        }
        C0122f2 c0122f2 = this.n;
        if (c0122f2.m) {
            c0122f2.l = typeface;
            TextView textView = (TextView) this.m.get();
            if (textView != null) {
                if (textView.isAttachedToWindow()) {
                    textView.post(new RunnableC0042b2(textView, typeface, c0122f2.j));
                } else {
                    textView.setTypeface(typeface, c0122f2.j);
                }
            }
        }
    }
}
