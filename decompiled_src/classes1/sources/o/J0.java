package o;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import java.util.WeakHashMap;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.rainbow.GF2Field;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class J0 extends DialogC0422u4 implements DialogInterface, Y0 {
    public LayoutInflaterFactory2C0439v1 d;
    public final C0459w1 e;

    /* renamed from: f, reason: collision with root package name */
    public final H0 f111f;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r2v2, types: [o.w1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public J0(android.view.ContextThemeWrapper r5, int r6) {
        /*
            r4 = this;
            int r6 = i(r5, r6)
            r0 = 1
            r1 = 2130903418(0x7f03017a, float:1.7413653E38)
            if (r6 != 0) goto L19
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            android.content.res.Resources$Theme r3 = r5.getTheme()
            r3.resolveAttribute(r1, r2, r0)
            int r2 = r2.resourceId
            goto L1a
        L19:
            r2 = r6
        L1a:
            r4.<init>(r5, r2)
            o.w1 r2 = new o.w1
            r2.<init>()
            r4.e = r2
            o.h1 r2 = r4.f()
            if (r6 != 0) goto L38
            android.util.TypedValue r6 = new android.util.TypedValue
            r6.<init>()
            android.content.res.Resources$Theme r5 = r5.getTheme()
            r5.resolveAttribute(r1, r6, r0)
            int r6 = r6.resourceId
        L38:
            r5 = r2
            o.v1 r5 = (o.LayoutInflaterFactory2C0439v1) r5
            r5.T = r6
            r2.c()
            o.H0 r5 = new o.H0
            android.content.Context r6 = r4.getContext()
            android.view.Window r0 = r4.getWindow()
            r5.<init>(r6, r4, r0)
            r4.f111f = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: o.J0.<init>(android.view.ContextThemeWrapper, int):void");
    }

    public static int i(Context context, int i) {
        if (((i >>> 24) & GF2Field.MASK) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(2130903084, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // o.DialogC0422u4, android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = (LayoutInflaterFactory2C0439v1) f();
        layoutInflaterFactory2C0439v1.u();
        ((ViewGroup) layoutInflaterFactory2C0439v1.A.findViewById(R.id.content)).addView(view, layoutParams);
        layoutInflaterFactory2C0439v1.m.a(layoutInflaterFactory2C0439v1.l.getCallback());
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        f().d();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return L1.s(this.e, getWindow().getDecorView(), this, keyEvent);
    }

    public final AbstractC0161h1 f() {
        if (this.d == null) {
            ExecutorC0121f1 executorC0121f1 = AbstractC0161h1.a;
            this.d = new LayoutInflaterFactory2C0439v1(getContext(), getWindow(), this, this);
        }
        return this.d;
    }

    @Override // android.app.Dialog
    public final View findViewById(int i) {
        LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = (LayoutInflaterFactory2C0439v1) f();
        layoutInflaterFactory2C0439v1.u();
        return layoutInflaterFactory2C0439v1.l.findViewById(i);
    }

    public final void g() {
        Ng.s(getWindow().getDecorView(), this);
        Ng.u(getWindow().getDecorView(), this);
        Ng.t(getWindow().getDecorView(), this);
    }

    public final void h(Bundle bundle) {
        f().a();
        super.onCreate(bundle);
        f().c();
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = (LayoutInflaterFactory2C0439v1) f();
        if (layoutInflaterFactory2C0439v1.f288o != null) {
            layoutInflaterFactory2C0439v1.z();
            layoutInflaterFactory2C0439v1.f288o.getClass();
            layoutInflaterFactory2C0439v1.A(0);
        }
    }

    public final void j(CharSequence charSequence) {
        super.setTitle(charSequence);
        f().j(charSequence);
    }

    public final boolean k(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // o.DialogC0422u4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        int i;
        boolean z;
        int i2;
        boolean z2;
        ListAdapter listAdapter;
        int i3;
        int i4;
        View view;
        View findViewById;
        int i5 = 2;
        h(bundle);
        H0 h0 = this.f111f;
        h0.b.setContentView(h0.q);
        Window window = h0.c;
        View findViewById2 = window.findViewById(2131231076);
        View findViewById3 = findViewById2.findViewById(2131231203);
        View findViewById4 = findViewById2.findViewById(2131230854);
        View findViewById5 = findViewById2.findViewById(2131230826);
        ViewGroup viewGroup = (ViewGroup) findViewById2.findViewById(2131230863);
        window.setFlags(PKIFailureInfo.unsupportedVersion, PKIFailureInfo.unsupportedVersion);
        viewGroup.setVisibility(8);
        View findViewById6 = viewGroup.findViewById(2131231203);
        View findViewById7 = viewGroup.findViewById(2131230854);
        View findViewById8 = viewGroup.findViewById(2131230826);
        ViewGroup a = H0.a(findViewById6, findViewById3);
        ViewGroup a2 = H0.a(findViewById7, findViewById4);
        ViewGroup a3 = H0.a(findViewById8, findViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(2131231113);
        h0.i = nestedScrollView;
        nestedScrollView.setFocusable(false);
        h0.i.setNestedScrollingEnabled(false);
        TextView textView = (TextView) a2.findViewById(R.id.message);
        h0.m = textView;
        if (textView != null) {
            textView.setVisibility(8);
            h0.i.removeView(h0.m);
            if (h0.e != null) {
                ViewGroup viewGroup2 = (ViewGroup) h0.i.getParent();
                int indexOfChild = viewGroup2.indexOfChild(h0.i);
                viewGroup2.removeViewAt(indexOfChild);
                viewGroup2.addView(h0.e, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
            } else {
                a2.setVisibility(8);
            }
        }
        Button button = (Button) a3.findViewById(R.id.button1);
        h0.f98f = button;
        P p = h0.w;
        button.setOnClickListener(p);
        if (TextUtils.isEmpty(null)) {
            h0.f98f.setVisibility(8);
            i = 0;
        } else {
            h0.f98f.setText((CharSequence) null);
            h0.f98f.setVisibility(0);
            i = 1;
        }
        Button button2 = (Button) a3.findViewById(R.id.button2);
        h0.g = button2;
        button2.setOnClickListener(p);
        if (TextUtils.isEmpty(null)) {
            h0.g.setVisibility(8);
        } else {
            h0.g.setText((CharSequence) null);
            h0.g.setVisibility(0);
            i |= 2;
        }
        Button button3 = (Button) a3.findViewById(R.id.button3);
        h0.h = button3;
        button3.setOnClickListener(p);
        if (TextUtils.isEmpty(null)) {
            h0.h.setVisibility(8);
        } else {
            h0.h.setText((CharSequence) null);
            h0.h.setVisibility(0);
            i |= 4;
        }
        TypedValue typedValue = new TypedValue();
        h0.a.getTheme().resolveAttribute(2130903082, typedValue, true);
        if (typedValue.data != 0) {
            if (i == 1) {
                Button button4 = h0.f98f;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button4.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button4.setLayoutParams(layoutParams);
            } else if (i == 2) {
                Button button5 = h0.g;
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button5.getLayoutParams();
                layoutParams2.gravity = 1;
                layoutParams2.weight = 0.5f;
                button5.setLayoutParams(layoutParams2);
            } else if (i == 4) {
                Button button6 = h0.h;
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) button6.getLayoutParams();
                layoutParams3.gravity = 1;
                layoutParams3.weight = 0.5f;
                button6.setLayoutParams(layoutParams3);
            }
        }
        if (i == 0) {
            a3.setVisibility(8);
        }
        if (h0.n != null) {
            a.addView(h0.n, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(2131231200).setVisibility(8);
        } else {
            h0.k = (ImageView) window.findViewById(R.id.icon);
            if (!TextUtils.isEmpty(h0.d) && h0.u) {
                TextView textView2 = (TextView) window.findViewById(2131230794);
                h0.l = textView2;
                textView2.setText(h0.d);
                Drawable drawable = h0.j;
                if (drawable != null) {
                    h0.k.setImageDrawable(drawable);
                } else {
                    h0.l.setPadding(h0.k.getPaddingLeft(), h0.k.getPaddingTop(), h0.k.getPaddingRight(), h0.k.getPaddingBottom());
                    h0.k.setVisibility(8);
                }
            } else {
                window.findViewById(2131231200).setVisibility(8);
                h0.k.setVisibility(8);
                a.setVisibility(8);
            }
        }
        if (viewGroup.getVisibility() != 8) {
            z = true;
        } else {
            z = false;
        }
        if (a != null && a.getVisibility() != 8) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (a3.getVisibility() != 8) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2 && (findViewById = a2.findViewById(2131231184)) != null) {
            findViewById.setVisibility(0);
        }
        if (i2 != 0) {
            NestedScrollView nestedScrollView2 = h0.i;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            if (h0.e != null) {
                view = a.findViewById(2131231199);
            } else {
                view = null;
            }
            if (view != null) {
                view.setVisibility(0);
            }
        } else {
            View findViewById9 = a2.findViewById(2131231185);
            if (findViewById9 != null) {
                findViewById9.setVisibility(0);
            }
        }
        AlertController$RecycleListView alertController$RecycleListView = h0.e;
        if (alertController$RecycleListView != null) {
            alertController$RecycleListView.getClass();
            if (!z2 || i2 == 0) {
                int paddingLeft = alertController$RecycleListView.getPaddingLeft();
                if (i2 != 0) {
                    i3 = alertController$RecycleListView.getPaddingTop();
                } else {
                    i3 = alertController$RecycleListView.a;
                }
                int paddingRight = alertController$RecycleListView.getPaddingRight();
                if (z2) {
                    i4 = alertController$RecycleListView.getPaddingBottom();
                } else {
                    i4 = alertController$RecycleListView.b;
                }
                alertController$RecycleListView.setPadding(paddingLeft, i3, paddingRight, i4);
            }
        }
        if (!z) {
            View view2 = h0.e;
            if (view2 == null) {
                view2 = h0.i;
            }
            if (view2 != null) {
                if (!z2) {
                    i5 = 0;
                }
                int i6 = i5 | i2;
                View findViewById10 = window.findViewById(2131231112);
                View findViewById11 = window.findViewById(2131231111);
                WeakHashMap weakHashMap = Dh.a;
                AbstractC0475wh.b(view2, i6, 3);
                if (findViewById10 != null) {
                    a2.removeView(findViewById10);
                }
                if (findViewById11 != null) {
                    a2.removeView(findViewById11);
                }
            }
        }
        AlertController$RecycleListView alertController$RecycleListView2 = h0.e;
        if (alertController$RecycleListView2 != null && (listAdapter = h0.f99o) != null) {
            alertController$RecycleListView2.setAdapter(listAdapter);
            int i7 = h0.p;
            if (i7 > -1) {
                alertController$RecycleListView2.setItemChecked(i7, true);
                alertController$RecycleListView2.setSelection(i7);
            }
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f111f.i;
        if (nestedScrollView != null && nestedScrollView.i(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f111f.i;
        if (nestedScrollView != null && nestedScrollView.i(keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // o.DialogC0422u4, android.app.Dialog
    public final void onStop() {
        super.onStop();
        LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = (LayoutInflaterFactory2C0439v1) f();
        layoutInflaterFactory2C0439v1.z();
        C0396si c0396si = layoutInflaterFactory2C0439v1.f288o;
        if (c0396si != null) {
            c0396si.n0 = false;
            Qh qh = c0396si.m0;
            if (qh != null) {
                qh.a();
            }
        }
    }

    @Override // o.DialogC0422u4, android.app.Dialog
    public final void setContentView(int i) {
        g();
        f().g(i);
    }

    @Override // android.app.Dialog
    public final void setTitle(int i) {
        super.setTitle(i);
        f().j(getContext().getString(i));
    }

    @Override // o.DialogC0422u4, android.app.Dialog
    public final void setContentView(View view) {
        g();
        f().h(view);
    }

    @Override // android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        j(charSequence);
        H0 h0 = this.f111f;
        h0.d = charSequence;
        TextView textView = h0.l;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // o.DialogC0422u4, android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        g();
        f().i(view, layoutParams);
    }
}
