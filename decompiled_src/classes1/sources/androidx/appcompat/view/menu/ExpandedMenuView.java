package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import o.C0290nb;
import o.C0380s2;
import o.Cb;
import o.InterfaceC0210jb;
import o.MenuC0230kb;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class ExpandedMenuView extends ListView implements InterfaceC0210jb, Cb, AdapterView.OnItemClickListener {
    public static final int[] b = {R.attr.background, R.attr.divider};
    public MenuC0230kb a;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        C0380s2 y = C0380s2.y(context, attributeSet, b, R.attr.listViewStyle);
        TypedArray typedArray = (TypedArray) y.b;
        if (typedArray.hasValue(0)) {
            setBackgroundDrawable(y.o(0));
        }
        if (typedArray.hasValue(1)) {
            setDivider(y.o(1));
        }
        y.A();
    }

    @Override // o.Cb
    public final void a(MenuC0230kb menuC0230kb) {
        this.a = menuC0230kb;
    }

    @Override // o.InterfaceC0210jb
    public final boolean c(C0290nb c0290nb) {
        return this.a.q(c0290nb, null, 0);
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        c((C0290nb) getAdapter().getItem(i));
    }
}
