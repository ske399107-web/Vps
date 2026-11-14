package o;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.Calendar;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Jb extends BaseAdapter {
    public static final int d = Xg.c(null).getMaximum(4);
    public static final int e = (Xg.c(null).getMaximum(7) + Xg.c(null).getMaximum(5)) - 1;
    public final Ib a;
    public H1 b;
    public final C0282n3 c;

    public Jb(Ib ib, C0282n3 c0282n3) {
        this.a = ib;
        this.c = c0282n3;
        throw null;
    }

    public final int a() {
        int i = this.c.e;
        Ib ib = this.a;
        Calendar calendar = ib.a;
        int i2 = calendar.get(7);
        if (i <= 0) {
            i = calendar.getFirstDayOfWeek();
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            return i3 + ib.d;
        }
        return i3;
    }

    @Override // android.widget.Adapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Long getItem(int i) {
        if (i >= a() && i <= c()) {
            int a = (i - a()) + 1;
            Calendar a2 = Xg.a(this.a.a);
            a2.set(5, a);
            return Long.valueOf(a2.getTimeInMillis());
        }
        return null;
    }

    public final int c() {
        return (a() + this.a.e) - 1;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return e;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i / this.a.d;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        if (this.b == null) {
            this.b = new H1(context);
        }
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(2131427404, viewGroup, false);
        }
        int a = i - a();
        if (a >= 0) {
            Ib ib = this.a;
            if (a < ib.e) {
                textView.setTag(ib);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, "%d", Integer.valueOf(a + 1)));
                textView.setVisibility(0);
                textView.setEnabled(true);
                if (getItem(i) == null || textView == null) {
                    return textView;
                }
                textView.getContext();
                Xg.b().getTimeInMillis();
                throw null;
            }
        }
        textView.setVisibility(8);
        textView.setEnabled(false);
        if (getItem(i) == null) {
            textView.getContext();
            Xg.b().getTimeInMillis();
            throw null;
        }
        return textView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }
}
