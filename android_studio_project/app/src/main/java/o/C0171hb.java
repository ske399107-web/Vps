package o;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.util.ArrayList;

/* renamed from: o.hb, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0171hb extends BaseAdapter {
    public final MenuC0230kb a;
    public int b = -1;
    public boolean c;
    public final boolean d;
    public final LayoutInflater e;

    /* renamed from: f, reason: collision with root package name */
    public final int f222f;

    public C0171hb(MenuC0230kb menuC0230kb, LayoutInflater layoutInflater, boolean z, int i) {
        this.d = z;
        this.e = layoutInflater;
        this.a = menuC0230kb;
        this.f222f = i;
        a();
    }

    public final void a() {
        MenuC0230kb menuC0230kb = this.a;
        C0290nb c0290nb = menuC0230kb.v;
        if (c0290nb != null) {
            menuC0230kb.i();
            ArrayList arrayList = menuC0230kb.j;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((C0290nb) arrayList.get(i)) == c0290nb) {
                    this.b = i;
                    return;
                }
            }
        }
        this.b = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C0290nb getItem(int i) {
        ArrayList l;
        MenuC0230kb menuC0230kb = this.a;
        if (this.d) {
            menuC0230kb.i();
            l = menuC0230kb.j;
        } else {
            l = menuC0230kb.l();
        }
        int i2 = this.b;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return (C0290nb) l.get(i);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList l;
        MenuC0230kb menuC0230kb = this.a;
        if (this.d) {
            menuC0230kb.i();
            l = menuC0230kb.j;
        } else {
            l = menuC0230kb.l();
        }
        if (this.b < 0) {
            return l.size();
        }
        return l.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        int i2;
        boolean z = false;
        if (view == null) {
            view = this.e.inflate(this.f222f, viewGroup, false);
        }
        int i3 = getItem(i).b;
        int i4 = i - 1;
        if (i4 >= 0) {
            i2 = getItem(i4).b;
        } else {
            i2 = i3;
        }
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.a.m() && i3 != i2) {
            z = true;
        }
        listMenuItemView.setGroupDividerEnabled(z);
        Bb bb = (Bb) view;
        if (this.c) {
            listMenuItemView.setForceShowIcon(true);
        }
        bb.b(getItem(i));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
