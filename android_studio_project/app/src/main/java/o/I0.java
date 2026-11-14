package o;

import com.ffrt.proxyread.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class I0 implements N {
    public final int a;
    public final Object b;

    public I0(Context context) {
        int i = J0.i(context, 0);
        this.b = new E0(new ContextThemeWrapper(context, J0.i(context, i)));
        this.a = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.widget.ListAdapter] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    public J0 a() {
        int i;
        E0 e0 = (E0) this.b;
        J0 j0 = new J0(e0.a, this.a);
        View view = e0.e;
        H0 h0 = j0.f111f;
        if (view != null) {
            h0.n = view;
        } else {
            CharSequence charSequence = e0.d;
            if (charSequence != null) {
                h0.d = charSequence;
                TextView textView = h0.l;
                if (textView != null) {
                    textView.setText(charSequence);
                }
            }
            Drawable drawable = e0.c;
            if (drawable != null) {
                h0.j = drawable;
                ImageView imageView = h0.k;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    h0.k.setImageDrawable(drawable);
                }
            }
        }
        if (e0.g != null) {
            AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) e0.b.inflate(h0.r, (ViewGroup) null);
            if (e0.i) {
                i = h0.s;
            } else {
                i = h0.t;
            }
            Object obj = e0.g;
            ?? r7 = obj;
            if (obj == null) {
                r7 = new ArrayAdapter(e0.a, i, R.id.text1, (Object[]) null);
            }
            h0.f99o = r7;
            h0.p = e0.j;
            if (e0.h != null) {
                alertController$RecycleListView.setOnItemClickListener(new D0(e0, h0));
            }
            if (e0.i) {
                alertController$RecycleListView.setChoiceMode(1);
            }
            h0.e = alertController$RecycleListView;
        }
        j0.setCancelable(true);
        j0.setCanceledOnTouchOutside(true);
        j0.setOnCancelListener(null);
        j0.setOnDismissListener(null);
        DialogInterfaceOnKeyListenerC0250lb dialogInterfaceOnKeyListenerC0250lb = e0.f83f;
        if (dialogInterfaceOnKeyListenerC0250lb != null) {
            j0.setOnKeyListener(dialogInterfaceOnKeyListenerC0250lb);
        }
        return j0;
    }

    @Override // o.N
    public boolean d(View view) {
        ((BottomSheetBehavior) this.b).B(this.a);
        return true;
    }

    public I0() {
        this.a = 1;
        this.b = Collections.singletonList(null);
    }

    public I0(ArrayList arrayList) {
        this.a = 0;
        this.b = arrayList;
    }

    public I0(BottomSheetBehavior bottomSheetBehavior, int i) {
        this.b = bottomSheetBehavior;
        this.a = i;
    }
}
