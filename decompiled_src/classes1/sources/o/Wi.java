package o;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.Locale;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Wi extends AbstractC0272md {
    public final Va c;

    public Wi(Va va) {
        this.c = va;
    }

    @Override // o.AbstractC0272md
    public final int a() {
        return this.c.V.f258f;
    }

    @Override // o.AbstractC0272md
    public final void c(Id id, int i) {
        String format;
        Va va = this.c;
        int i2 = va.V.a.c + i;
        String format2 = String.format(Locale.getDefault(), "%d", Integer.valueOf(i2));
        TextView textView = ((Vi) id).t;
        textView.setText(format2);
        Context context = textView.getContext();
        if (Xg.b().get(1) == i2) {
            format = String.format(context.getString(2131624063), Integer.valueOf(i2));
        } else {
            format = String.format(context.getString(2131624064), Integer.valueOf(i2));
        }
        textView.setContentDescription(format);
        H1 h1 = va.Y;
        if (Xg.b().get(1) == i2) {
            Object obj = h1.c;
        } else {
            Object obj2 = h1.b;
        }
        throw null;
    }

    @Override // o.AbstractC0272md
    public final Id d(ViewGroup viewGroup) {
        return new Vi((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(2131427413, viewGroup, false));
    }
}
