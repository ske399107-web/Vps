package o;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Hf extends Ha {
    public final /* synthetic */ Context k;
    public final /* synthetic */ TextPaint l;
    public final /* synthetic */ Ha m;
    public final /* synthetic */ If n;

    public Hf(If r1, Context context, TextPaint textPaint, Ha ha) {
        this.n = r1;
        this.k = context;
        this.l = textPaint;
        this.m = ha;
    }

    @Override // o.Ha
    public final void h0(int i) {
        this.m.h0(i);
    }

    @Override // o.Ha
    public final void j0(Typeface typeface, boolean z) {
        this.n.g(this.k, this.l, typeface);
        this.m.j0(typeface, z);
    }
}
