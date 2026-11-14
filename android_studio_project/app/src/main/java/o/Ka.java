package o;

import com.ffrt.proxyread.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.WeakHashMap;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Ka extends ArrayAdapter {
    public ColorStateList a;
    public ColorStateList b;
    public final /* synthetic */ La c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ka(La la, Context context, int i, String[] strArr) {
        super(context, i, strArr);
        this.c = la;
        a();
    }

    public final void a() {
        boolean z;
        ColorStateList colorStateList;
        La la = this.c;
        ColorStateList colorStateList2 = la.l;
        if (colorStateList2 != null) {
            z = true;
        } else {
            z = false;
        }
        ColorStateList colorStateList3 = null;
        if (!z) {
            colorStateList = null;
        } else {
            int[] iArr = {R.attr.state_pressed};
            colorStateList = new ColorStateList(new int[][]{iArr, new int[0]}, new int[]{colorStateList2.getColorForState(iArr, 0), 0});
        }
        this.b = colorStateList;
        if (la.k != 0 && la.l != null) {
            int[] iArr2 = {R.attr.state_hovered, -16842919};
            int[] iArr3 = {R.attr.state_selected, -16842919};
            colorStateList3 = new ColorStateList(new int[][]{iArr3, iArr2, new int[0]}, new int[]{AbstractC0263m4.b(la.l.getColorForState(iArr3, 0), la.k), AbstractC0263m4.b(la.l.getColorForState(iArr2, 0), la.k), la.k});
        }
        this.a = colorStateList3;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        if (view2 instanceof TextView) {
            TextView textView = (TextView) view2;
            La la = this.c;
            Drawable drawable = null;
            if (la.getText().toString().contentEquals(textView.getText()) && la.k != 0) {
                ColorDrawable colorDrawable = new ColorDrawable(la.k);
                if (this.b != null) {
                    colorDrawable.setTintList(this.a);
                    drawable = new RippleDrawable(this.b, colorDrawable, null);
                } else {
                    drawable = colorDrawable;
                }
            }
            WeakHashMap weakHashMap = Dh.a;
            textView.setBackground(drawable);
        }
        return view2;
    }
}
