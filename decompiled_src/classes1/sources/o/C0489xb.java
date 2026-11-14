package o;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;

/* renamed from: o.xb, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0489xb extends C0285n6 {
    public final int m;
    public final int n;

    /* renamed from: o, reason: collision with root package name */
    public InterfaceC0270mb f297o;
    public C0290nb p;

    public C0489xb(Context context, boolean z) {
        super(context, z);
        if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
            this.m = 21;
            this.n = 22;
        } else {
            this.m = 22;
            this.n = 21;
        }
    }

    @Override // o.C0285n6, android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        C0171hb c0171hb;
        int i;
        C0290nb c0290nb;
        int pointToPosition;
        int i2;
        if (this.f297o != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                i = headerViewListAdapter.getHeadersCount();
                c0171hb = (C0171hb) headerViewListAdapter.getWrappedAdapter();
            } else {
                c0171hb = (C0171hb) adapter;
                i = 0;
            }
            if (motionEvent.getAction() != 10 && (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) != -1 && (i2 = pointToPosition - i) >= 0 && i2 < c0171hb.getCount()) {
                c0290nb = c0171hb.getItem(i2);
            } else {
                c0290nb = null;
            }
            C0290nb c0290nb2 = this.p;
            if (c0290nb2 != c0290nb) {
                MenuC0230kb menuC0230kb = c0171hb.a;
                if (c0290nb2 != null) {
                    this.f297o.o(menuC0230kb, c0290nb2);
                }
                this.p = c0290nb;
                if (c0290nb != null) {
                    this.f297o.l(menuC0230kb, c0290nb);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        C0171hb c0171hb;
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i == this.m) {
            if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        }
        if (listMenuItemView != null && i == this.n) {
            setSelection(-1);
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                c0171hb = (C0171hb) ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            } else {
                c0171hb = (C0171hb) adapter;
            }
            c0171hb.a.c(false);
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    public void setHoverListener(InterfaceC0270mb interfaceC0270mb) {
        this.f297o = interfaceC0270mb;
    }

    @Override // o.C0285n6, android.widget.AbsListView
    public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
        super.setSelector(drawable);
    }
}
