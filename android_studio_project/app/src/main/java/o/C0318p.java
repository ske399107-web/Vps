package o;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* renamed from: o.p, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0318p extends ClickableSpan {
    public final int a;
    public final D b;
    public final int c;

    public C0318p(int i, D d, int i2) {
        this.a = i;
        this.b = d;
        this.c = i2;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.a);
        this.b.a.performAction(this.c, bundle);
    }
}
