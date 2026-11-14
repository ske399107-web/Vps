package o;

import android.content.Context;
import android.text.TextPaint;
import java.lang.ref.WeakReference;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Lf {
    public float c;
    public final WeakReference e;

    /* renamed from: f, reason: collision with root package name */
    public If f121f;
    public final TextPaint a = new TextPaint(1);
    public final M3 b = new M3(1, this);
    public boolean d = true;

    public Lf(Kf kf) {
        this.e = new WeakReference(null);
        this.e = new WeakReference(kf);
    }

    public final float a(String str) {
        float measureText;
        if (!this.d) {
            return this.c;
        }
        TextPaint textPaint = this.a;
        if (str == null) {
            measureText = 0.0f;
        } else {
            measureText = textPaint.measureText((CharSequence) str, 0, str.length());
        }
        this.c = measureText;
        if (str != null) {
            Math.abs(textPaint.getFontMetrics().ascent);
        }
        this.d = false;
        return this.c;
    }

    public final void b(If r4, Context context) {
        if (this.f121f != r4) {
            this.f121f = r4;
            if (r4 != null) {
                TextPaint textPaint = this.a;
                M3 m3 = this.b;
                r4.f(context, textPaint, m3);
                Kf kf = (Kf) this.e.get();
                if (kf != null) {
                    textPaint.drawableState = kf.getState();
                }
                r4.e(context, textPaint, m3);
                this.d = true;
            }
            Kf kf2 = (Kf) this.e.get();
            if (kf2 != null) {
                kf2.a();
                kf2.onStateChange(kf2.getState());
            }
        }
    }
}
