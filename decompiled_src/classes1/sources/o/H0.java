package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class H0 {
    public final Context a;
    public final J0 b;
    public final Window c;
    public CharSequence d;
    public AlertController$RecycleListView e;

    /* renamed from: f, reason: collision with root package name */
    public Button f98f;
    public Button g;
    public Button h;
    public NestedScrollView i;
    public Drawable j;
    public ImageView k;
    public TextView l;
    public TextView m;
    public View n;

    /* renamed from: o, reason: collision with root package name */
    public ListAdapter f99o;
    public final int q;
    public final int r;
    public final int s;
    public final int t;
    public final boolean u;
    public final F0 v;
    public int p = -1;
    public final P w = new P(1, this);

    /* JADX WARN: Type inference failed for: r6v1, types: [android.os.Handler, o.F0] */
    public H0(Context context, J0 j0, Window window) {
        this.a = context;
        this.b = j0;
        this.c = window;
        ?? handler = new Handler();
        handler.a = new WeakReference(j0);
        this.v = handler;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, AbstractC0153gd.e, 2130903083, 0);
        this.q = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.getResourceId(2, 0);
        this.r = obtainStyledAttributes.getResourceId(4, 0);
        obtainStyledAttributes.getResourceId(5, 0);
        this.s = obtainStyledAttributes.getResourceId(7, 0);
        this.t = obtainStyledAttributes.getResourceId(3, 0);
        this.u = obtainStyledAttributes.getBoolean(6, true);
        obtainStyledAttributes.getDimensionPixelSize(1, 0);
        obtainStyledAttributes.recycle();
        j0.f().f(1);
    }

    public static ViewGroup a(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }
}
