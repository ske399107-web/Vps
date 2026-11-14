package com.google.android.material.datepicker;

import android.R;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.Calendar;
import o.AbstractC0272md;
import o.C;
import o.C0051bb;
import o.C0282n3;
import o.C0451vd;
import o.Ib;
import o.Id;
import o.Jb;
import o.Xg;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class c extends AbstractC0272md {
    public final C0282n3 c;
    public final C d;
    public final int e;

    public c(ContextThemeWrapper contextThemeWrapper, C0282n3 c0282n3, C c) {
        int i;
        Ib ib = c0282n3.a;
        Ib ib2 = c0282n3.d;
        if (ib.a.compareTo(ib2.a) <= 0) {
            if (ib2.a.compareTo(c0282n3.b.a) <= 0) {
                int dimensionPixelSize = contextThemeWrapper.getResources().getDimensionPixelSize(2131100279) * Jb.d;
                if (C0051bb.J(contextThemeWrapper, R.attr.windowFullscreen)) {
                    i = contextThemeWrapper.getResources().getDimensionPixelSize(2131100279);
                } else {
                    i = 0;
                }
                this.e = dimensionPixelSize + i;
                this.c = c0282n3;
                this.d = c;
                if (!this.a.a()) {
                    this.b = true;
                    return;
                }
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        throw new IllegalArgumentException("firstPage cannot be after currentPage");
    }

    @Override // o.AbstractC0272md
    public final int a() {
        return this.c.g;
    }

    @Override // o.AbstractC0272md
    public final long b(int i) {
        Calendar a = Xg.a(this.c.a.a);
        a.add(2, i);
        a.set(5, 1);
        Calendar a2 = Xg.a(a);
        a2.get(2);
        a2.get(1);
        a2.getMaximum(7);
        a2.getActualMaximum(5);
        a2.getTimeInMillis();
        return a2.getTimeInMillis();
    }

    @Override // o.AbstractC0272md
    public final void c(Id id, int i) {
        b bVar = (b) id;
        C0282n3 c0282n3 = this.c;
        Calendar a = Xg.a(c0282n3.a.a);
        a.add(2, i);
        Ib ib = new Ib(a);
        bVar.t.setText(ib.c());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) bVar.u.findViewById(2131231003);
        if (materialCalendarGridView.a() != null && ib.equals(materialCalendarGridView.a().a)) {
            materialCalendarGridView.invalidate();
            materialCalendarGridView.a().getClass();
            throw null;
        }
        new Jb(ib, c0282n3);
        throw null;
    }

    @Override // o.AbstractC0272md
    public final Id d(ViewGroup viewGroup) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(2131427409, viewGroup, false);
        if (C0051bb.J(viewGroup.getContext(), R.attr.windowFullscreen)) {
            linearLayout.setLayoutParams(new C0451vd(-1, this.e));
            return new b(linearLayout, true);
        }
        return new b(linearLayout, false);
    }
}
