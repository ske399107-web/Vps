package o;

import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;

/* renamed from: o.pb, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0330pb extends FrameLayout implements InterfaceC0064c4 {
    public final CollapsibleActionView a;

    /* JADX WARN: Multi-variable type inference failed */
    public C0330pb(View view) {
        super(view.getContext());
        this.a = (CollapsibleActionView) view;
        addView(view);
    }
}
