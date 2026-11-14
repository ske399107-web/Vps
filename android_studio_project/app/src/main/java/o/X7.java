package o;

import android.view.View;
import android.view.ViewGroup;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class X7 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ androidx.fragment.app.a a;
    public final /* synthetic */ Y7 b;

    public X7(Y7 y7, androidx.fragment.app.a aVar) {
        this.b = y7;
        this.a = aVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        androidx.fragment.app.a aVar = this.a;
        aVar.k();
        K5.f((ViewGroup) aVar.c.E.getParent(), this.b.a.E()).e();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
