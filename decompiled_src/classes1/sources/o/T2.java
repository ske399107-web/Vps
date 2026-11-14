package o;

import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class T2 implements Runnable {
    public final /* synthetic */ int a;
    public int b;
    public final Object c;

    public /* synthetic */ T2(Object obj, int i, int i2) {
        this.a = i2;
        this.c = obj;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                ((W2) this.c).h.x(this.b, 4);
                return;
            case 1:
                Ha ha = (Ha) ((C) this.c).b;
                if (ha != null) {
                    ha.h0(this.b);
                    return;
                }
                return;
            case 2:
                ArrayList arrayList = (ArrayList) this.c;
                int size = arrayList.size();
                int i = 0;
                if (this.b != 1) {
                    while (i < size) {
                        ((A6) arrayList.get(i)).a();
                        i++;
                    }
                    return;
                } else {
                    while (i < size) {
                        ((A6) arrayList.get(i)).b();
                        i++;
                    }
                    return;
                }
            default:
                RecyclerView recyclerView = ((Va) this.c).a0;
                if (!recyclerView.u) {
                    AbstractC0431ud abstractC0431ud = recyclerView.l;
                    if (abstractC0431ud == null) {
                        Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                        return;
                    } else {
                        abstractC0431ud.x0(recyclerView, this.b);
                        return;
                    }
                }
                return;
        }
    }

    public T2(List list, int i, Throwable th) {
        this.a = 2;
        Ha.g(list, "initCallbacks cannot be null");
        this.c = new ArrayList(list);
        this.b = i;
    }

    public T2(W2 w2) {
        this.a = 0;
        this.c = w2;
        this.b = -1;
    }
}
