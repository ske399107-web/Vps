package o;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import com.google.android.material.textfield.TextInputLayout;
import java.util.WeakHashMap;

/* renamed from: o.r6, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0364r6 extends AbstractC0067c7 {
    public final int e;

    /* renamed from: f, reason: collision with root package name */
    public final int f271f;
    public final TimeInterpolator g;
    public AutoCompleteTextView h;
    public final W3 i;
    public final X3 j;
    public final C0378s0 k;
    public boolean l;
    public boolean m;
    public boolean n;

    /* renamed from: o, reason: collision with root package name */
    public long f272o;
    public AccessibilityManager p;
    public ValueAnimator q;
    public ValueAnimator r;

    public C0364r6(C0047b7 c0047b7) {
        super(c0047b7);
        int i = 1;
        this.i = new W3(i, this);
        this.j = new X3(this, i);
        this.k = new C0378s0(i, this);
        this.f272o = Long.MAX_VALUE;
        this.f271f = Ha.o0(c0047b7.getContext(), 2130903862, 67);
        this.e = Ha.o0(c0047b7.getContext(), 2130903862, 50);
        this.g = Ha.p0(c0047b7.getContext(), 2130903871, Q0.a);
    }

    @Override // o.AbstractC0067c7
    public final void a() {
        if (this.p.isTouchExplorationEnabled() && L1.F(this.h) && !this.d.hasFocus()) {
            this.h.dismissDropDown();
        }
        this.h.post(new RunnableC0180i0(7, this));
    }

    @Override // o.AbstractC0067c7
    public final int c() {
        return 2131623988;
    }

    @Override // o.AbstractC0067c7
    public final int d() {
        return 2131165381;
    }

    @Override // o.AbstractC0067c7
    public final View.OnFocusChangeListener e() {
        return this.j;
    }

    @Override // o.AbstractC0067c7
    public final View.OnClickListener f() {
        return this.i;
    }

    @Override // o.AbstractC0067c7
    public final C0378s0 h() {
        return this.k;
    }

    @Override // o.AbstractC0067c7
    public final boolean i(int i) {
        if (i != 0) {
            return true;
        }
        return false;
    }

    @Override // o.AbstractC0067c7
    public final boolean j() {
        return this.l;
    }

    @Override // o.AbstractC0067c7
    public final boolean l() {
        return this.n;
    }

    @Override // o.AbstractC0067c7
    public final void m(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
            this.h = autoCompleteTextView;
            autoCompleteTextView.setOnTouchListener(new View.OnTouchListener() { // from class: o.p6
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean z;
                    C0364r6 c0364r6 = C0364r6.this;
                    c0364r6.getClass();
                    if (motionEvent.getAction() == 1) {
                        long currentTimeMillis = System.currentTimeMillis() - c0364r6.f272o;
                        if (currentTimeMillis >= 0 && currentTimeMillis <= 300) {
                            z = false;
                        } else {
                            z = true;
                        }
                        if (z) {
                            c0364r6.m = false;
                        }
                        c0364r6.u();
                        c0364r6.m = true;
                        c0364r6.f272o = System.currentTimeMillis();
                    }
                    return false;
                }
            });
            this.h.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: o.q6
                @Override // android.widget.AutoCompleteTextView.OnDismissListener
                public final void onDismiss() {
                    C0364r6 c0364r6 = C0364r6.this;
                    c0364r6.m = true;
                    c0364r6.f272o = System.currentTimeMillis();
                    c0364r6.t(false);
                }
            });
            this.h.setThreshold(0);
            TextInputLayout textInputLayout = this.a;
            textInputLayout.setErrorIconDrawable((Drawable) null);
            if (!L1.F(editText) && this.p.isTouchExplorationEnabled()) {
                WeakHashMap weakHashMap = Dh.a;
                this.d.setImportantForAccessibility(2);
            }
            textInputLayout.setEndIconVisible(true);
            return;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    @Override // o.AbstractC0067c7
    public final void n(D d) {
        boolean e;
        if (!L1.F(this.h)) {
            d.i(Spinner.class.getName());
        }
        if (Build.VERSION.SDK_INT >= 26) {
            e = d.a.isShowingHintText();
        } else {
            e = d.e(4);
        }
        if (e) {
            d.k(null);
        }
    }

    @Override // o.AbstractC0067c7
    public final void o(AccessibilityEvent accessibilityEvent) {
        boolean z;
        if (this.p.isEnabled() && !L1.F(this.h)) {
            if ((accessibilityEvent.getEventType() == 32768 || accessibilityEvent.getEventType() == 8) && this.n && !this.h.isPopupShowing()) {
                z = true;
            } else {
                z = false;
            }
            if (accessibilityEvent.getEventType() == 1 || z) {
                u();
                this.m = true;
                this.f272o = System.currentTimeMillis();
            }
        }
    }

    @Override // o.AbstractC0067c7
    public final void r() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.g;
        ofFloat.setInterpolator(timeInterpolator);
        ofFloat.setDuration(this.f271f);
        ofFloat.addUpdateListener(new C0305o6(this));
        this.r = ofFloat;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat2.setInterpolator(timeInterpolator);
        ofFloat2.setDuration(this.e);
        ofFloat2.addUpdateListener(new C0305o6(this));
        this.q = ofFloat2;
        ofFloat2.addListener(new Q(3, this));
        this.p = (AccessibilityManager) this.c.getSystemService("accessibility");
    }

    @Override // o.AbstractC0067c7
    public final void s() {
        AutoCompleteTextView autoCompleteTextView = this.h;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            this.h.setOnDismissListener(null);
        }
    }

    public final void t(boolean z) {
        if (this.n != z) {
            this.n = z;
            this.r.cancel();
            this.q.start();
        }
    }

    public final void u() {
        boolean z;
        if (this.h == null) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis() - this.f272o;
        if (currentTimeMillis >= 0 && currentTimeMillis <= 300) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            this.m = false;
        }
        if (!this.m) {
            t(!this.n);
            if (this.n) {
                this.h.requestFocus();
                this.h.showDropDown();
                return;
            } else {
                this.h.dismissDropDown();
                return;
            }
        }
        this.m = false;
    }
}
