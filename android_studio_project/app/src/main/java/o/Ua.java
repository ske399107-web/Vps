package o;

import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.icu.util.TimeZone;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Ua extends AbstractC0491xd {
    public final /* synthetic */ com.google.android.material.datepicker.c a;
    public final /* synthetic */ MaterialButton b;
    public final /* synthetic */ Va c;

    public Ua(Va va, com.google.android.material.datepicker.c cVar, MaterialButton materialButton) {
        this.c = va;
        this.a = cVar;
        this.b = materialButton;
    }

    @Override // o.AbstractC0491xd
    public final void a(RecyclerView recyclerView, int i) {
        if (i == 0) {
            recyclerView.announceForAccessibility(this.b.getText());
        }
    }

    @Override // o.AbstractC0491xd
    public final void b(RecyclerView recyclerView, int i, int i2) {
        int K0;
        Va va = this.c;
        if (i < 0) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) va.a0.getLayoutManager();
            View M0 = linearLayoutManager.M0(0, linearLayoutManager.v(), false);
            if (M0 == null) {
                K0 = -1;
            } else {
                K0 = AbstractC0431ud.H(M0);
            }
        } else {
            K0 = ((LinearLayoutManager) va.a0.getLayoutManager()).K0();
        }
        C0282n3 c0282n3 = this.a.c;
        Calendar a = Xg.a(c0282n3.a.a);
        a.add(2, K0);
        va.W = new Ib(a);
        Calendar a2 = Xg.a(c0282n3.a.a);
        a2.add(2, K0);
        a2.set(5, 1);
        Calendar a3 = Xg.a(a2);
        a3.get(2);
        a3.get(1);
        a3.getMaximum(7);
        a3.getActualMaximum(5);
        a3.getTimeInMillis();
        long timeInMillis = a3.getTimeInMillis();
        Locale locale = Locale.getDefault();
        AtomicReference atomicReference = Xg.a;
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("yMMMM", locale);
        instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
        instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
        this.b.setText(instanceForSkeleton.format(new Date(timeInMillis)));
    }
}
