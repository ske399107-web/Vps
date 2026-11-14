package o;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class V1 extends C0249la implements X1 {
    public CharSequence C;
    public S1 D;
    public final Rect E;
    public int F;
    public final /* synthetic */ Y1 G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public V1(Y1 y1, Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 2130904037);
        this.G = y1;
        this.E = new Rect();
        this.f247o = y1;
        this.y = true;
        this.z.setFocusable(true);
        this.p = new T1(0, this);
    }

    @Override // o.X1
    public final void e(int i, int i2) {
        ViewTreeObserver viewTreeObserver;
        G1 g1 = this.z;
        boolean isShowing = g1.isShowing();
        s();
        this.z.setInputMethodMode(2);
        f();
        C0285n6 c0285n6 = this.c;
        c0285n6.setChoiceMode(1);
        c0285n6.setTextDirection(i);
        c0285n6.setTextAlignment(i2);
        Y1 y1 = this.G;
        int selectedItemPosition = y1.getSelectedItemPosition();
        C0285n6 c0285n62 = this.c;
        if (g1.isShowing() && c0285n62 != null) {
            c0285n62.setListSelectionHidden(false);
            c0285n62.setSelection(selectedItemPosition);
            if (c0285n62.getChoiceMode() != 0) {
                c0285n62.setItemChecked(selectedItemPosition, true);
            }
        }
        if (!isShowing && (viewTreeObserver = y1.getViewTreeObserver()) != null) {
            P1 p1 = new P1(1, this);
            viewTreeObserver.addOnGlobalLayoutListener(p1);
            this.z.setOnDismissListener(new U1(this, p1));
        }
    }

    @Override // o.X1
    public final CharSequence i() {
        return this.C;
    }

    @Override // o.X1
    public final void k(CharSequence charSequence) {
        this.C = charSequence;
    }

    @Override // o.C0249la, o.X1
    public final void p(ListAdapter listAdapter) {
        super.p(listAdapter);
        this.D = (S1) listAdapter;
    }

    @Override // o.X1
    public final void q(int i) {
        this.F = i;
    }

    public final void s() {
        int i;
        int i2;
        G1 g1 = this.z;
        Drawable background = g1.getBackground();
        Y1 y1 = this.G;
        if (background != null) {
            background.getPadding(y1.h);
            boolean z = Xh.a;
            int layoutDirection = y1.getLayoutDirection();
            Rect rect = y1.h;
            if (layoutDirection == 1) {
                i = rect.right;
            } else {
                i = -rect.left;
            }
        } else {
            Rect rect2 = y1.h;
            rect2.right = 0;
            rect2.left = 0;
            i = 0;
        }
        int paddingLeft = y1.getPaddingLeft();
        int paddingRight = y1.getPaddingRight();
        int width = y1.getWidth();
        int i3 = y1.g;
        if (i3 == -2) {
            int a = y1.a(this.D, g1.getBackground());
            int i4 = y1.getContext().getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = y1.h;
            int i5 = (i4 - rect3.left) - rect3.right;
            if (a > i5) {
                a = i5;
            }
            r(Math.max(a, (width - paddingLeft) - paddingRight));
        } else if (i3 == -1) {
            r((width - paddingLeft) - paddingRight);
        } else {
            r(i3);
        }
        boolean z2 = Xh.a;
        if (y1.getLayoutDirection() == 1) {
            i2 = (((width - paddingRight) - this.e) - this.F) + i;
        } else {
            i2 = paddingLeft + this.F + i;
        }
        this.f246f = i2;
    }
}
