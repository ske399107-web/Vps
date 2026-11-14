package o;

import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.internal.CheckableImageButton;

/* renamed from: o.a4, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0024a4 extends AbstractC0067c7 {
    public final int e;

    /* renamed from: f, reason: collision with root package name */
    public final int f176f;
    public final TimeInterpolator g;
    public final TimeInterpolator h;
    public EditText i;
    public final W3 j;
    public final X3 k;
    public AnimatorSet l;
    public ValueAnimator m;

    public C0024a4(C0047b7 c0047b7) {
        super(c0047b7);
        this.j = new W3(0, this);
        this.k = new X3(this, 0);
        this.e = Ha.o0(c0047b7.getContext(), 2130903862, 100);
        this.f176f = Ha.o0(c0047b7.getContext(), 2130903862, 150);
        this.g = Ha.p0(c0047b7.getContext(), 2130903871, Q0.a);
        this.h = Ha.p0(c0047b7.getContext(), 2130903869, Q0.d);
    }

    @Override // o.AbstractC0067c7
    public final void a() {
        if (this.b.p != null) {
            return;
        }
        t(u());
    }

    @Override // o.AbstractC0067c7
    public final int c() {
        return 2131623985;
    }

    @Override // o.AbstractC0067c7
    public final int d() {
        return 2131165384;
    }

    @Override // o.AbstractC0067c7
    public final View.OnFocusChangeListener e() {
        return this.k;
    }

    @Override // o.AbstractC0067c7
    public final View.OnClickListener f() {
        return this.j;
    }

    @Override // o.AbstractC0067c7
    public final View.OnFocusChangeListener g() {
        return this.k;
    }

    @Override // o.AbstractC0067c7
    public final void m(EditText editText) {
        this.i = editText;
        this.a.setEndIconVisible(u());
    }

    @Override // o.AbstractC0067c7
    public final void p(boolean z) {
        if (this.b.p == null) {
            return;
        }
        t(z);
    }

    @Override // o.AbstractC0067c7
    public final void r() {
        final int i = 1;
        final int i2 = 0;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        ofFloat.setInterpolator(this.h);
        ofFloat.setDuration(this.f176f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: o.Y3
            public final /* synthetic */ C0024a4 b;

            {
                this.b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i) {
                    case 0:
                        C0024a4 c0024a4 = this.b;
                        c0024a4.getClass();
                        c0024a4.d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    default:
                        C0024a4 c0024a42 = this.b;
                        c0024a42.getClass();
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = c0024a42.d;
                        checkableImageButton.setScaleX(floatValue);
                        checkableImageButton.setScaleY(floatValue);
                        return;
                }
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.g;
        ofFloat2.setInterpolator(timeInterpolator);
        int i3 = this.e;
        ofFloat2.setDuration(i3);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: o.Y3
            public final /* synthetic */ C0024a4 b;

            {
                this.b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i2) {
                    case 0:
                        C0024a4 c0024a4 = this.b;
                        c0024a4.getClass();
                        c0024a4.d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    default:
                        C0024a4 c0024a42 = this.b;
                        c0024a42.getClass();
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = c0024a42.d;
                        checkableImageButton.setScaleX(floatValue);
                        checkableImageButton.setScaleY(floatValue);
                        return;
                }
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.l = animatorSet;
        animatorSet.playTogether(ofFloat, ofFloat2);
        this.l.addListener(new Z3(this, i2));
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat3.setInterpolator(timeInterpolator);
        ofFloat3.setDuration(i3);
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: o.Y3
            public final /* synthetic */ C0024a4 b;

            {
                this.b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i2) {
                    case 0:
                        C0024a4 c0024a4 = this.b;
                        c0024a4.getClass();
                        c0024a4.d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    default:
                        C0024a4 c0024a42 = this.b;
                        c0024a42.getClass();
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = c0024a42.d;
                        checkableImageButton.setScaleX(floatValue);
                        checkableImageButton.setScaleY(floatValue);
                        return;
                }
            }
        });
        this.m = ofFloat3;
        ofFloat3.addListener(new Z3(this, i));
    }

    @Override // o.AbstractC0067c7
    public final void s() {
        EditText editText = this.i;
        if (editText != null) {
            editText.post(new RunnableC0180i0(3, this));
        }
    }

    public final void t(boolean z) {
        boolean z2;
        if (this.b.d() == z) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z && !this.l.isRunning()) {
            this.m.cancel();
            this.l.start();
            if (z2) {
                this.l.end();
                return;
            }
            return;
        }
        if (!z) {
            this.l.cancel();
            this.m.start();
            if (z2) {
                this.m.end();
            }
        }
    }

    public final boolean u() {
        EditText editText = this.i;
        if (editText != null && ((editText.hasFocus() || this.d.hasFocus()) && this.i.getText().length() > 0)) {
            return true;
        }
        return false;
    }
}
