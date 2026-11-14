package o;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.WeakHashMap;
import org.conscrypt.BuildConfig;

/* renamed from: o.m9, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0268m9 {
    public ColorStateList A;
    public Typeface B;
    public final int a;
    public final int b;
    public final int c;
    public final TimeInterpolator d;
    public final TimeInterpolator e;

    /* renamed from: f, reason: collision with root package name */
    public final TimeInterpolator f252f;
    public final Context g;
    public final TextInputLayout h;
    public LinearLayout i;
    public int j;
    public FrameLayout k;
    public AnimatorSet l;
    public final float m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f253o;
    public CharSequence p;
    public boolean q;
    public C0201j2 r;
    public CharSequence s;
    public int t;
    public int u;
    public ColorStateList v;
    public CharSequence w;
    public boolean x;
    public C0201j2 y;
    public int z;

    public C0268m9(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.g = context;
        this.h = textInputLayout;
        this.m = context.getResources().getDimensionPixelSize(2131099789);
        this.a = Ha.o0(context, 2130903863, 217);
        this.b = Ha.o0(context, 2130903859, 167);
        this.c = Ha.o0(context, 2130903863, 167);
        this.d = Ha.p0(context, 2130903868, Q0.d);
        LinearInterpolator linearInterpolator = Q0.a;
        this.e = Ha.p0(context, 2130903868, linearInterpolator);
        this.f252f = Ha.p0(context, 2130903871, linearInterpolator);
    }

    public final void a(C0201j2 c0201j2, int i) {
        if (this.i == null && this.k == null) {
            Context context = this.g;
            LinearLayout linearLayout = new LinearLayout(context);
            this.i = linearLayout;
            linearLayout.setOrientation(0);
            LinearLayout linearLayout2 = this.i;
            TextInputLayout textInputLayout = this.h;
            textInputLayout.addView(linearLayout2, -1, -2);
            this.k = new FrameLayout(context);
            this.i.addView(this.k, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (textInputLayout.getEditText() != null) {
                b();
            }
        }
        if (i != 0 && i != 1) {
            this.i.addView(c0201j2, new LinearLayout.LayoutParams(-2, -2));
        } else {
            this.k.setVisibility(0);
            this.k.addView(c0201j2);
        }
        this.i.setVisibility(0);
        this.j++;
    }

    public final void b() {
        if (this.i != null) {
            TextInputLayout textInputLayout = this.h;
            if (textInputLayout.getEditText() != null) {
                EditText editText = textInputLayout.getEditText();
                Context context = this.g;
                boolean a0 = Ha.a0(context);
                LinearLayout linearLayout = this.i;
                WeakHashMap weakHashMap = Dh.a;
                int paddingStart = editText.getPaddingStart();
                if (a0) {
                    paddingStart = context.getResources().getDimensionPixelSize(2131100222);
                }
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(2131100221);
                if (a0) {
                    dimensionPixelSize = context.getResources().getDimensionPixelSize(2131100223);
                }
                int paddingEnd = editText.getPaddingEnd();
                if (a0) {
                    paddingEnd = context.getResources().getDimensionPixelSize(2131100222);
                }
                linearLayout.setPaddingRelative(paddingStart, dimensionPixelSize, paddingEnd, 0);
            }
        }
    }

    public final void c() {
        AnimatorSet animatorSet = this.l;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public final void d(ArrayList arrayList, boolean z, C0201j2 c0201j2, int i, int i2, int i3) {
        boolean z2;
        float f2;
        long j;
        TimeInterpolator timeInterpolator;
        if (c0201j2 != null && z) {
            if (i == i3 || i == i2) {
                if (i3 == i) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    f2 = 1.0f;
                } else {
                    f2 = 0.0f;
                }
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(c0201j2, (Property<C0201j2, Float>) View.ALPHA, f2);
                int i4 = this.c;
                if (z2) {
                    j = this.b;
                } else {
                    j = i4;
                }
                ofFloat.setDuration(j);
                if (z2) {
                    timeInterpolator = this.e;
                } else {
                    timeInterpolator = this.f252f;
                }
                ofFloat.setInterpolator(timeInterpolator);
                if (i == i3 && i2 != 0) {
                    ofFloat.setStartDelay(i4);
                }
                arrayList.add(ofFloat);
                if (i3 == i && i2 != 0) {
                    ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(c0201j2, (Property<C0201j2, Float>) View.TRANSLATION_Y, -this.m, 0.0f);
                    ofFloat2.setDuration(this.a);
                    ofFloat2.setInterpolator(this.d);
                    ofFloat2.setStartDelay(i4);
                    arrayList.add(ofFloat2);
                }
            }
        }
    }

    public final TextView e(int i) {
        if (i != 1) {
            if (i != 2) {
                return null;
            }
            return this.y;
        }
        return this.r;
    }

    public final void f() {
        this.p = null;
        c();
        if (this.n == 1) {
            if (this.x && !TextUtils.isEmpty(this.w)) {
                this.f253o = 2;
            } else {
                this.f253o = 0;
            }
        }
        i(this.n, this.f253o, h(this.r, BuildConfig.FLAVOR));
    }

    public final void g(C0201j2 c0201j2, int i) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.i;
        if (linearLayout == null) {
            return;
        }
        if ((i == 0 || i == 1) && (frameLayout = this.k) != null) {
            frameLayout.removeView(c0201j2);
        } else {
            linearLayout.removeView(c0201j2);
        }
        int i2 = this.j - 1;
        this.j = i2;
        LinearLayout linearLayout2 = this.i;
        if (i2 == 0) {
            linearLayout2.setVisibility(8);
        }
    }

    public final boolean h(C0201j2 c0201j2, CharSequence charSequence) {
        WeakHashMap weakHashMap = Dh.a;
        TextInputLayout textInputLayout = this.h;
        if (textInputLayout.isLaidOut() && textInputLayout.isEnabled() && (this.f253o != this.n || c0201j2 == null || !TextUtils.equals(c0201j2.getText(), charSequence))) {
            return true;
        }
        return false;
    }

    public final void i(int i, int i2, boolean z) {
        TextView e;
        TextView e2;
        if (i == i2) {
            return;
        }
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.l = animatorSet;
            ArrayList arrayList = new ArrayList();
            d(arrayList, this.x, this.y, 2, i, i2);
            d(arrayList, this.q, this.r, 1, i, i2);
            int size = arrayList.size();
            long j = 0;
            for (int i3 = 0; i3 < size; i3++) {
                Animator animator = (Animator) arrayList.get(i3);
                j = Math.max(j, animator.getDuration() + animator.getStartDelay());
            }
            ValueAnimator ofInt = ValueAnimator.ofInt(0, 0);
            ofInt.setDuration(j);
            arrayList.add(0, ofInt);
            animatorSet.playTogether(arrayList);
            animatorSet.addListener(new C0228k9(this, i2, e(i), i, e(i2)));
            animatorSet.start();
        } else if (i != i2) {
            if (i2 != 0 && (e2 = e(i2)) != null) {
                e2.setVisibility(0);
                e2.setAlpha(1.0f);
            }
            if (i != 0 && (e = e(i)) != null) {
                e.setVisibility(4);
                if (i == 1) {
                    e.setText((CharSequence) null);
                }
            }
            this.n = i2;
        }
        TextInputLayout textInputLayout = this.h;
        textInputLayout.r();
        textInputLayout.u(z, false);
        textInputLayout.x();
    }
}
