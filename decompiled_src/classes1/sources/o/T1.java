package o;

import android.view.View;
import android.widget.AdapterView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class T1 implements AdapterView.OnItemClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ T1(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        Object item;
        int selectedItemPosition;
        switch (this.a) {
            case 0:
                V1 v1 = (V1) this.b;
                v1.G.setSelection(i);
                Y1 y1 = v1.G;
                if (y1.getOnItemClickListener() != null) {
                    y1.performItemClick(view, i, v1.D.getItemId(i));
                }
                v1.dismiss();
                return;
            default:
                View view2 = null;
                La la = (La) this.b;
                if (i < 0) {
                    C0249la c0249la = la.e;
                    if (!c0249la.z.isShowing()) {
                        item = null;
                    } else {
                        item = c0249la.c.getSelectedItem();
                    }
                } else {
                    item = la.getAdapter().getItem(i);
                }
                La.a(la, item);
                AdapterView.OnItemClickListener onItemClickListener = la.getOnItemClickListener();
                C0249la c0249la2 = la.e;
                if (onItemClickListener != null) {
                    if (view == null || i < 0) {
                        if (c0249la2.z.isShowing()) {
                            view2 = c0249la2.c.getSelectedView();
                        }
                        view = view2;
                        if (!c0249la2.z.isShowing()) {
                            selectedItemPosition = -1;
                        } else {
                            selectedItemPosition = c0249la2.c.getSelectedItemPosition();
                        }
                        i = selectedItemPosition;
                        if (!c0249la2.z.isShowing()) {
                            j = Long.MIN_VALUE;
                        } else {
                            j = c0249la2.c.getSelectedItemId();
                        }
                    }
                    onItemClickListener.onItemClick(c0249la2.c, view, i, j);
                }
                c0249la2.dismiss();
                return;
        }
    }
}
