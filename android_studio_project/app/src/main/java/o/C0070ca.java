package o;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

/* renamed from: o.ca, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0070ca extends BaseAdapter {
    public int a = -1;
    public final /* synthetic */ C0090da b;

    public C0070ca(C0090da c0090da) {
        this.b = c0090da;
        a();
    }

    public final void a() {
        MenuC0230kb menuC0230kb = this.b.c;
        C0290nb c0290nb = menuC0230kb.v;
        if (c0290nb != null) {
            menuC0230kb.i();
            ArrayList arrayList = menuC0230kb.j;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((C0290nb) arrayList.get(i)) == c0290nb) {
                    this.a = i;
                    return;
                }
            }
        }
        this.a = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C0290nb getItem(int i) {
        C0090da c0090da = this.b;
        MenuC0230kb menuC0230kb = c0090da.c;
        menuC0230kb.i();
        ArrayList arrayList = menuC0230kb.j;
        c0090da.getClass();
        int i2 = this.a;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return (C0290nb) arrayList.get(i);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        C0090da c0090da = this.b;
        MenuC0230kb menuC0230kb = c0090da.c;
        menuC0230kb.i();
        int size = menuC0230kb.j.size();
        c0090da.getClass();
        if (this.a < 0) {
            return size;
        }
        return size - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.b.b.inflate(2131427344, viewGroup, false);
        }
        ((Bb) view).b(getItem(i));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
