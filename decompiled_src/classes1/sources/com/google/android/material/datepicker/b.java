package com.google.android.material.datepicker;

import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.WeakHashMap;
import o.C0375rh;
import o.Dh;
import o.Id;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class b extends Id {
    public final TextView t;
    public final MaterialCalendarGridView u;

    public b(LinearLayout linearLayout, boolean z) {
        super(linearLayout);
        TextView textView = (TextView) linearLayout.findViewById(2131231008);
        this.t = textView;
        WeakHashMap weakHashMap = Dh.a;
        new C0375rh(2131231170, Boolean.class, 0, 28, 3).d(textView, Boolean.TRUE);
        this.u = (MaterialCalendarGridView) linearLayout.findViewById(2131231003);
        if (!z) {
            textView.setVisibility(8);
        }
    }
}
