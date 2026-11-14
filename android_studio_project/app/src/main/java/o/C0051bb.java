package o;

import com.ffrt.proxyread.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsetsController;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;

/* renamed from: o.bb, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0051bb<S> extends X5 {
    public C0111eb A0;
    public boolean B0;
    public CharSequence C0;
    public CharSequence D0;
    public final LinkedHashSet g0;
    public final LinkedHashSet h0;
    public int i0;
    public Fc j0;
    public C0282n3 k0;
    public Va l0;
    public int m0;
    public CharSequence n0;
    public boolean o0;
    public int p0;
    public int q0;
    public CharSequence r0;
    public int s0;
    public CharSequence t0;
    public int u0;
    public CharSequence v0;
    public int w0;
    public CharSequence x0;
    public TextView y0;
    public CheckableImageButton z0;

    public C0051bb() {
        new LinkedHashSet();
        new LinkedHashSet();
        this.g0 = new LinkedHashSet();
        this.h0 = new LinkedHashSet();
    }

    public static int I(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(2131100277);
        Calendar b = Xg.b();
        b.set(5, 1);
        Calendar a = Xg.a(b);
        a.get(2);
        a.get(1);
        int maximum = a.getMaximum(7);
        a.getActualMaximum(5);
        a.getTimeInMillis();
        int dimensionPixelSize = resources.getDimensionPixelSize(2131100283) * maximum;
        return ((maximum - 1) * resources.getDimensionPixelOffset(2131100297)) + dimensionPixelSize + (dimensionPixelOffset * 2);
    }

    public static boolean J(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Ha.q0(context, 2130903795, Va.class.getCanonicalName()).data, new int[]{i});
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z;
    }

    @Override // o.X5
    public final Dialog G() {
        Context C = C();
        C();
        int i = this.i0;
        if (i != 0) {
            Dialog dialog = new Dialog(C, i);
            Context context = dialog.getContext();
            this.o0 = J(context, R.attr.windowFullscreen);
            this.A0 = new C0111eb(context, null, 2130903795, 2131690528);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, AbstractC0133fd.l, 2130903795, 2131690528);
            int color = obtainStyledAttributes.getColor(1, 0);
            obtainStyledAttributes.recycle();
            this.A0.i(context);
            this.A0.k(ColorStateList.valueOf(color));
            C0111eb c0111eb = this.A0;
            View decorView = dialog.getWindow().getDecorView();
            WeakHashMap weakHashMap = Dh.a;
            c0111eb.j(AbstractC0455vh.e(decorView));
            return dialog;
        }
        H();
        throw null;
    }

    public final void H() {
        if (this.f146f.getParcelable("DATE_SELECTOR_KEY") == null) {
        } else {
            throw new ClassCastException();
        }
    }

    @Override // o.X5, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.g0.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
    }

    @Override // o.X5, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.h0.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) this.E;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // o.X5, o.T7
    public final void s(Bundle bundle) {
        super.s(bundle);
        if (bundle == null) {
            bundle = this.f146f;
        }
        this.i0 = bundle.getInt("OVERRIDE_THEME_RES_ID");
        if (bundle.getParcelable("DATE_SELECTOR_KEY") == null) {
            this.k0 = (C0282n3) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
            if (bundle.getParcelable("DAY_VIEW_DECORATOR_KEY") == null) {
                this.m0 = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
                this.n0 = bundle.getCharSequence("TITLE_TEXT_KEY");
                this.p0 = bundle.getInt("INPUT_MODE_KEY");
                this.q0 = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
                this.r0 = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
                this.s0 = bundle.getInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
                this.t0 = bundle.getCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
                this.u0 = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
                this.v0 = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
                this.w0 = bundle.getInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
                this.x0 = bundle.getCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
                CharSequence charSequence = this.n0;
                if (charSequence == null) {
                    charSequence = C().getResources().getText(this.m0);
                }
                this.C0 = charSequence;
                if (charSequence != null) {
                    CharSequence[] split = TextUtils.split(String.valueOf(charSequence), "\n");
                    if (split.length > 1) {
                        charSequence = split[0];
                    }
                } else {
                    charSequence = null;
                }
                this.D0 = charSequence;
                return;
            }
            throw new ClassCastException();
        }
        throw new ClassCastException();
    }

    @Override // o.T7
    public final View t(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        int i;
        String string;
        if (this.o0) {
            i = 2131427419;
        } else {
            i = 2131427418;
        }
        View inflate = layoutInflater.inflate(i, viewGroup);
        Context context = inflate.getContext();
        if (this.o0) {
            inflate.findViewById(2131231013).setLayoutParams(new LinearLayout.LayoutParams(I(context), -2));
        } else {
            inflate.findViewById(2131231014).setLayoutParams(new LinearLayout.LayoutParams(I(context), -1));
        }
        TextView textView = (TextView) inflate.findViewById(2131231025);
        WeakHashMap weakHashMap = Dh.a;
        textView.setAccessibilityLiveRegion(1);
        this.z0 = (CheckableImageButton) inflate.findViewById(2131231027);
        this.y0 = (TextView) inflate.findViewById(2131231031);
        this.z0.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.z0;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, L1.z(context, 2131165360));
        boolean z = false;
        stateListDrawable.addState(new int[0], L1.z(context, 2131165362));
        checkableImageButton.setImageDrawable(stateListDrawable);
        CheckableImageButton checkableImageButton2 = this.z0;
        if (this.p0 != 0) {
            z = true;
        }
        checkableImageButton2.setChecked(z);
        Dh.l(this.z0, null);
        CheckableImageButton checkableImageButton3 = this.z0;
        if (this.p0 == 1) {
            string = checkableImageButton3.getContext().getString(2131624080);
        } else {
            string = checkableImageButton3.getContext().getString(2131624082);
        }
        this.z0.setContentDescription(string);
        this.z0.setOnClickListener(new W3(2, this));
        H();
        throw null;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [o.m3, java.lang.Object] */
    @Override // o.X5, o.T7
    public final void x(Bundle bundle) {
        Ib ib;
        Ib b;
        super.x(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.i0);
        bundle.putParcelable("DATE_SELECTOR_KEY", null);
        C0282n3 c0282n3 = this.k0;
        ?? obj = new Object();
        int i = C0262m3.b;
        int i2 = C0262m3.b;
        long j = c0282n3.a.f106f;
        long j2 = c0282n3.b.f106f;
        obj.a = Long.valueOf(c0282n3.d.f106f);
        Va va = this.l0;
        if (va == null) {
            ib = null;
        } else {
            ib = va.W;
        }
        if (ib != null) {
            obj.a = Long.valueOf(ib.f106f);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", c0282n3.c);
        Ib b2 = Ib.b(j);
        Ib b3 = Ib.b(j2);
        C0324p5 c0324p5 = (C0324p5) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY");
        Long l = obj.a;
        if (l == null) {
            b = null;
        } else {
            b = Ib.b(l.longValue());
        }
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new C0282n3(b2, b3, c0324p5, b, c0282n3.e));
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.m0);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.n0);
        bundle.putInt("INPUT_MODE_KEY", this.p0);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.q0);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.r0);
        bundle.putInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.s0);
        bundle.putCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.t0);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.u0);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.v0);
        bundle.putInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.w0);
        bundle.putCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.x0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // o.X5, o.T7
    public final void y() {
        CharSequence charSequence;
        Integer num;
        boolean z;
        int i;
        boolean z2;
        WindowInsetsController insetsController;
        Ni ni;
        WindowInsetsController insetsController2;
        Ni ni2;
        WindowInsetsController insetsController3;
        WindowInsetsController insetsController4;
        super.y();
        Dialog dialog = this.c0;
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (this.o0) {
                window.setLayout(-1, -1);
                window.setBackgroundDrawable(this.A0);
                if (!this.B0) {
                    View findViewById = D().findViewById(2131230928);
                    ColorStateList w = L1.w(findViewById.getBackground());
                    if (w != null) {
                        num = Integer.valueOf(w.getDefaultColor());
                    } else {
                        num = null;
                    }
                    int i2 = Build.VERSION.SDK_INT;
                    boolean z3 = false;
                    if (num != null && num.intValue() != 0) {
                        z = false;
                    } else {
                        z = true;
                    }
                    int D = Ha.D(window.getContext(), R.attr.colorBackground, -16777216);
                    if (z) {
                        num = Integer.valueOf(D);
                    }
                    if (i2 >= 35) {
                        AbstractC0515z.e(window, false);
                    } else if (i2 >= 30) {
                        AbstractC0515z.d(window, false);
                    } else {
                        View decorView = window.getDecorView();
                        decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 1792);
                    }
                    window.getContext();
                    Context context = window.getContext();
                    if (i2 < 27) {
                        i = AbstractC0263m4.d(Ha.D(context, R.attr.navigationBarColor, -16777216), 128);
                    } else {
                        i = 0;
                    }
                    window.setStatusBarColor(0);
                    window.setNavigationBarColor(i);
                    boolean X = Ha.X(num.intValue());
                    if (!Ha.X(0) && !X) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    C0424u6 c0424u6 = new C0424u6(window.getDecorView());
                    int i3 = Build.VERSION.SDK_INT;
                    if (i3 >= 35) {
                        insetsController4 = window.getInsetsController();
                        Qi qi = new Qi(insetsController4, c0424u6);
                        qi.f141f = window;
                        ni = qi;
                    } else if (i3 >= 30) {
                        insetsController = window.getInsetsController();
                        Qi qi2 = new Qi(insetsController, c0424u6);
                        qi2.f141f = window;
                        ni = qi2;
                    } else if (i3 >= 26) {
                        ni = new Ni(window, c0424u6);
                    } else {
                        ni = new Ni(window, c0424u6);
                    }
                    ni.w(z2);
                    boolean X2 = Ha.X(D);
                    if (Ha.X(i) || (i == 0 && X2)) {
                        z3 = true;
                    }
                    C0424u6 c0424u62 = new C0424u6(window.getDecorView());
                    int i4 = Build.VERSION.SDK_INT;
                    if (i4 >= 35) {
                        insetsController3 = window.getInsetsController();
                        Qi qi3 = new Qi(insetsController3, c0424u62);
                        qi3.f141f = window;
                        ni2 = qi3;
                    } else if (i4 >= 30) {
                        insetsController2 = window.getInsetsController();
                        Qi qi4 = new Qi(insetsController2, c0424u62);
                        qi4.f141f = window;
                        ni2 = qi4;
                    } else if (i4 >= 26) {
                        ni2 = new Ni(window, c0424u62);
                    } else {
                        ni2 = new Ni(window, c0424u62);
                    }
                    ni2.v(z3);
                    C0031ab c0031ab = new C0031ab(findViewById, findViewById.getLayoutParams().height, findViewById.getPaddingTop());
                    WeakHashMap weakHashMap = Dh.a;
                    AbstractC0455vh.l(findViewById, c0031ab);
                    this.B0 = true;
                }
            } else {
                window.setLayout(-2, -2);
                int dimensionPixelOffset = C().getResources().getDimensionPixelOffset(2131100285);
                Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
                window.setBackgroundDrawable(new InsetDrawable((Drawable) this.A0, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
                View decorView2 = window.getDecorView();
                Dialog dialog2 = this.c0;
                if (dialog2 != null) {
                    decorView2.setOnTouchListener(new ViewOnTouchListenerC0387s9(dialog2, rect));
                } else {
                    throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
                }
            }
            C();
            int i5 = this.i0;
            if (i5 != 0) {
                H();
                C0282n3 c0282n3 = this.k0;
                Va va = new Va();
                Bundle bundle = new Bundle();
                bundle.putInt("THEME_RES_ID_KEY", i5);
                bundle.putParcelable("GRID_SELECTOR_KEY", null);
                bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", c0282n3);
                bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
                bundle.putParcelable("CURRENT_MONTH_KEY", c0282n3.d);
                va.F(bundle);
                this.l0 = va;
                Fc fc = va;
                if (this.p0 == 1) {
                    H();
                    C0282n3 c0282n32 = this.k0;
                    Fc c0131fb = new C0131fb();
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("THEME_RES_ID_KEY", i5);
                    bundle2.putParcelable("DATE_SELECTOR_KEY", null);
                    bundle2.putParcelable("CALENDAR_CONSTRAINTS_KEY", c0282n32);
                    c0131fb.F(bundle2);
                    fc = c0131fb;
                }
                this.j0 = fc;
                TextView textView = this.y0;
                if (this.p0 == 1 && C().getResources().getConfiguration().orientation == 2) {
                    charSequence = this.D0;
                } else {
                    charSequence = this.C0;
                }
                textView.setText(charSequence);
                H();
                throw null;
            }
            H();
            throw null;
        }
        throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
    }

    @Override // o.X5, o.T7
    public final void z() {
        this.j0.T.clear();
        super.z();
    }
}
