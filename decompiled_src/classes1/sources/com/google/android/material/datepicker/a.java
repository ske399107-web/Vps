package com.google.android.material.datepicker;

import android.view.View;
import android.widget.AdapterView;
import o.Jb;
import o.Va;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class a implements AdapterView.OnItemClickListener {
    public final /* synthetic */ MaterialCalendarGridView a;
    public final /* synthetic */ c b;

    public a(c cVar, MaterialCalendarGridView materialCalendarGridView) {
        this.b = cVar;
        this.a = materialCalendarGridView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        MaterialCalendarGridView materialCalendarGridView = this.a;
        Jb a = materialCalendarGridView.a();
        if (i >= a.a() && i <= a.c()) {
            if (materialCalendarGridView.a().getItem(i).longValue() >= ((Va) this.b.d.b).V.c.a) {
                throw null;
            }
        }
    }
}
