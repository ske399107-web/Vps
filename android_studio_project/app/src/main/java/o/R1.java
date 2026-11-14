package o;

import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class R1 implements X1, DialogInterface.OnClickListener {
    public J0 a;
    public S1 b;
    public CharSequence c;
    public final /* synthetic */ Y1 d;

    public R1(Y1 y1) {
        this.d = y1;
    }

    @Override // o.X1
    public final boolean b() {
        J0 j0 = this.a;
        if (j0 != null) {
            return j0.isShowing();
        }
        return false;
    }

    @Override // o.X1
    public final void c(int i) {
        Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }

    @Override // o.X1
    public final int d() {
        return 0;
    }

    @Override // o.X1
    public final void dismiss() {
        J0 j0 = this.a;
        if (j0 != null) {
            j0.dismiss();
            this.a = null;
        }
    }

    @Override // o.X1
    public final void e(int i, int i2) {
        if (this.b == null) {
            return;
        }
        Y1 y1 = this.d;
        I0 i0 = new I0(y1.getPopupContext());
        CharSequence charSequence = this.c;
        E0 e0 = (E0) i0.b;
        if (charSequence != null) {
            e0.d = charSequence;
        }
        S1 s1 = this.b;
        int selectedItemPosition = y1.getSelectedItemPosition();
        e0.g = s1;
        e0.h = this;
        e0.j = selectedItemPosition;
        e0.i = true;
        J0 a = i0.a();
        this.a = a;
        AlertController$RecycleListView alertController$RecycleListView = a.f111f.e;
        alertController$RecycleListView.setTextDirection(i);
        alertController$RecycleListView.setTextAlignment(i2);
        this.a.show();
    }

    @Override // o.X1
    public final int g() {
        return 0;
    }

    @Override // o.X1
    public final Drawable h() {
        return null;
    }

    @Override // o.X1
    public final CharSequence i() {
        return this.c;
    }

    @Override // o.X1
    public final void k(CharSequence charSequence) {
        this.c = charSequence;
    }

    @Override // o.X1
    public final void m(Drawable drawable) {
        Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }

    @Override // o.X1
    public final void n(int i) {
        Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Y1 y1 = this.d;
        y1.setSelection(i);
        if (y1.getOnItemClickListener() != null) {
            y1.performItemClick(null, i, this.b.getItemId(i));
        }
        dismiss();
    }

    @Override // o.X1
    public final void p(ListAdapter listAdapter) {
        this.b = (S1) listAdapter;
    }

    @Override // o.X1
    public final void q(int i) {
        Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }
}
