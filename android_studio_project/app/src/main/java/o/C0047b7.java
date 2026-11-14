package o;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;

/* renamed from: o.b7, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0047b7 extends LinearLayout {
    public final TextInputLayout a;
    public final FrameLayout b;
    public final CheckableImageButton c;
    public ColorStateList d;
    public PorterDuff.Mode e;

    /* renamed from: f, reason: collision with root package name */
    public View.OnLongClickListener f182f;
    public final CheckableImageButton g;
    public final C0027a7 h;
    public int i;
    public final LinkedHashSet j;
    public ColorStateList k;
    public PorterDuff.Mode l;
    public int m;
    public ImageView.ScaleType n;

    /* renamed from: o, reason: collision with root package name */
    public View.OnLongClickListener f183o;
    public CharSequence p;
    public final C0201j2 q;
    public boolean r;
    public EditText s;
    public final AccessibilityManager t;
    public C0378s0 u;
    public final Y6 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0047b7(TextInputLayout textInputLayout, C0380s2 c0380s2) {
        super(textInputLayout.getContext());
        CharSequence text;
        int i = 1;
        this.i = 0;
        this.j = new LinkedHashSet();
        this.v = new Y6(this);
        Z6 z6 = new Z6(this);
        this.t = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.a = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.b = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater from = LayoutInflater.from(getContext());
        CheckableImageButton a = a(this, from, 2131231189);
        this.c = a;
        CheckableImageButton a2 = a(frameLayout, from, 2131231188);
        this.g = a2;
        this.h = new C0027a7(this, c0380s2);
        C0201j2 c0201j2 = new C0201j2(getContext(), null);
        this.q = c0201j2;
        TypedArray typedArray = (TypedArray) c0380s2.b;
        if (typedArray.hasValue(38)) {
            this.d = Ha.G(getContext(), c0380s2, 38);
        }
        if (typedArray.hasValue(39)) {
            this.e = Ng.r(typedArray.getInt(39, -1), null);
        }
        if (typedArray.hasValue(37)) {
            i(c0380s2.o(37));
        }
        a.setContentDescription(getResources().getText(2131623987));
        WeakHashMap weakHashMap = Dh.a;
        a.setImportantForAccessibility(2);
        a.setClickable(false);
        a.setPressable(false);
        a.setFocusable(false);
        if (!typedArray.hasValue(53)) {
            if (typedArray.hasValue(32)) {
                this.k = Ha.G(getContext(), c0380s2, 32);
            }
            if (typedArray.hasValue(33)) {
                this.l = Ng.r(typedArray.getInt(33, -1), null);
            }
        }
        if (typedArray.hasValue(30)) {
            g(typedArray.getInt(30, 0));
            if (typedArray.hasValue(27) && a2.getContentDescription() != (text = typedArray.getText(27))) {
                a2.setContentDescription(text);
            }
            a2.setCheckable(typedArray.getBoolean(26, true));
        } else if (typedArray.hasValue(53)) {
            if (typedArray.hasValue(54)) {
                this.k = Ha.G(getContext(), c0380s2, 54);
            }
            if (typedArray.hasValue(55)) {
                this.l = Ng.r(typedArray.getInt(55, -1), null);
            }
            g(typedArray.getBoolean(53, false) ? 1 : 0);
            CharSequence text2 = typedArray.getText(51);
            if (a2.getContentDescription() != text2) {
                a2.setContentDescription(text2);
            }
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(29, getResources().getDimensionPixelSize(2131100354));
        if (dimensionPixelSize >= 0) {
            if (dimensionPixelSize != this.m) {
                this.m = dimensionPixelSize;
                a2.setMinimumWidth(dimensionPixelSize);
                a2.setMinimumHeight(dimensionPixelSize);
                a.setMinimumWidth(dimensionPixelSize);
                a.setMinimumHeight(dimensionPixelSize);
            }
            if (typedArray.hasValue(31)) {
                ImageView.ScaleType m = L1.m(typedArray.getInt(31, -1));
                this.n = m;
                a2.setScaleType(m);
                a.setScaleType(m);
            }
            c0201j2.setVisibility(8);
            c0201j2.setId(2131231196);
            c0201j2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
            c0201j2.setAccessibilityLiveRegion(1);
            c0201j2.setTextAppearance(typedArray.getResourceId(72, 0));
            if (typedArray.hasValue(73)) {
                c0201j2.setTextColor(c0380s2.n(73));
            }
            CharSequence text3 = typedArray.getText(71);
            this.p = TextUtils.isEmpty(text3) ? null : text3;
            c0201j2.setText(text3);
            n();
            frameLayout.addView(a2);
            addView(c0201j2);
            addView(frameLayout);
            addView(a);
            textInputLayout.e0.add(z6);
            if (textInputLayout.d != null) {
                z6.a(textInputLayout);
            }
            addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC0481x3(i, this));
            return;
        }
        throw new IllegalArgumentException("endIconSize cannot be less than 0");
    }

    public final CheckableImageButton a(ViewGroup viewGroup, LayoutInflater layoutInflater, int i) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(2131427372, viewGroup, false);
        checkableImageButton.setId(i);
        if (Ha.a0(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginStart(0);
        }
        return checkableImageButton;
    }

    public final AbstractC0067c7 b() {
        AbstractC0067c7 c0145g5;
        int i = this.i;
        C0027a7 c0027a7 = this.h;
        SparseArray sparseArray = c0027a7.a;
        AbstractC0067c7 abstractC0067c7 = (AbstractC0067c7) sparseArray.get(i);
        if (abstractC0067c7 == null) {
            C0047b7 c0047b7 = c0027a7.b;
            if (i != -1) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                c0145g5 = new C0364r6(c0047b7);
                            } else {
                                throw new IllegalArgumentException(AbstractC0214jf.a(i, "Invalid end icon mode: "));
                            }
                        } else {
                            c0145g5 = new C0024a4(c0047b7);
                        }
                    } else {
                        abstractC0067c7 = new Dc(c0047b7, c0027a7.d);
                        sparseArray.append(i, abstractC0067c7);
                    }
                } else {
                    c0145g5 = new C0145g5(c0047b7, 1);
                }
            } else {
                c0145g5 = new C0145g5(c0047b7, 0);
            }
            abstractC0067c7 = c0145g5;
            sparseArray.append(i, abstractC0067c7);
        }
        return abstractC0067c7;
    }

    public final int c() {
        int marginStart;
        if (!d() && !e()) {
            marginStart = 0;
        } else {
            CheckableImageButton checkableImageButton = this.g;
            marginStart = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginStart() + checkableImageButton.getMeasuredWidth();
        }
        WeakHashMap weakHashMap = Dh.a;
        return this.q.getPaddingEnd() + getPaddingEnd() + marginStart;
    }

    public final boolean d() {
        if (this.b.getVisibility() == 0 && this.g.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    public final boolean e() {
        if (this.c.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    public final void f(boolean z) {
        boolean z2;
        boolean isActivated;
        boolean z3;
        AbstractC0067c7 b = b();
        boolean k = b.k();
        CheckableImageButton checkableImageButton = this.g;
        boolean z4 = true;
        if (k && (z3 = checkableImageButton.d) != b.l()) {
            checkableImageButton.setChecked(!z3);
            z2 = true;
        } else {
            z2 = false;
        }
        if ((b instanceof C0364r6) && (isActivated = checkableImageButton.isActivated()) != b.j()) {
            checkableImageButton.setActivated(!isActivated);
        } else {
            z4 = z2;
        }
        if (z || z4) {
            L1.V(this.a, checkableImageButton, this.k);
        }
    }

    public final void g(int i) {
        boolean z;
        Drawable drawable;
        if (this.i == i) {
            return;
        }
        AbstractC0067c7 b = b();
        C0378s0 c0378s0 = this.u;
        AccessibilityManager accessibilityManager = this.t;
        if (c0378s0 != null && accessibilityManager != null) {
            accessibilityManager.removeTouchExplorationStateChangeListener(new AccessibilityManagerTouchExplorationStateChangeListenerC0377s(c0378s0));
        }
        CharSequence charSequence = null;
        this.u = null;
        b.s();
        this.i = i;
        Iterator it = this.j.iterator();
        if (!it.hasNext()) {
            if (i != 0) {
                z = true;
            } else {
                z = false;
            }
            h(z);
            AbstractC0067c7 b2 = b();
            int i2 = this.h.c;
            if (i2 == 0) {
                i2 = b2.d();
            }
            if (i2 != 0) {
                drawable = L1.z(getContext(), i2);
            } else {
                drawable = null;
            }
            CheckableImageButton checkableImageButton = this.g;
            checkableImageButton.setImageDrawable(drawable);
            TextInputLayout textInputLayout = this.a;
            if (drawable != null) {
                L1.g(textInputLayout, checkableImageButton, this.k, this.l);
                L1.V(textInputLayout, checkableImageButton, this.k);
            }
            int c = b2.c();
            if (c != 0) {
                charSequence = getResources().getText(c);
            }
            if (checkableImageButton.getContentDescription() != charSequence) {
                checkableImageButton.setContentDescription(charSequence);
            }
            checkableImageButton.setCheckable(b2.k());
            if (b2.i(textInputLayout.getBoxBackgroundMode())) {
                b2.r();
                C0378s0 h = b2.h();
                this.u = h;
                if (h != null && accessibilityManager != null) {
                    WeakHashMap weakHashMap = Dh.a;
                    if (isAttachedToWindow()) {
                        accessibilityManager.addTouchExplorationStateChangeListener(new AccessibilityManagerTouchExplorationStateChangeListenerC0377s(this.u));
                    }
                }
                View.OnClickListener f2 = b2.f();
                View.OnLongClickListener onLongClickListener = this.f183o;
                checkableImageButton.setOnClickListener(f2);
                L1.Z(checkableImageButton, onLongClickListener);
                EditText editText = this.s;
                if (editText != null) {
                    b2.m(editText);
                    j(b2);
                }
                L1.g(textInputLayout, checkableImageButton, this.k, this.l);
                f(true);
                return;
            }
            throw new IllegalStateException("The current box background mode " + textInputLayout.getBoxBackgroundMode() + " is not supported by the end icon mode " + i);
        }
        it.next().getClass();
        throw new ClassCastException();
    }

    public final void h(boolean z) {
        int i;
        if (d() != z) {
            if (z) {
                i = 0;
            } else {
                i = 8;
            }
            this.g.setVisibility(i);
            k();
            m();
            this.a.q();
        }
    }

    public final void i(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.c;
        checkableImageButton.setImageDrawable(drawable);
        l();
        L1.g(this.a, checkableImageButton, this.d, this.e);
    }

    public final void j(AbstractC0067c7 abstractC0067c7) {
        if (this.s == null) {
            return;
        }
        if (abstractC0067c7.e() != null) {
            this.s.setOnFocusChangeListener(abstractC0067c7.e());
        }
        if (abstractC0067c7.g() != null) {
            this.g.setOnFocusChangeListener(abstractC0067c7.g());
        }
    }

    public final void k() {
        int i;
        boolean z;
        int i2 = 8;
        if (this.g.getVisibility() == 0 && !e()) {
            i = 0;
        } else {
            i = 8;
        }
        this.b.setVisibility(i);
        if (this.p != null && !this.r) {
            z = false;
        } else {
            z = 8;
        }
        if (d() || e() || !z) {
            i2 = 0;
        }
        setVisibility(i2);
    }

    public final void l() {
        int i;
        CheckableImageButton checkableImageButton = this.c;
        Drawable drawable = checkableImageButton.getDrawable();
        TextInputLayout textInputLayout = this.a;
        if (drawable != null && textInputLayout.j.q && textInputLayout.m()) {
            i = 0;
        } else {
            i = 8;
        }
        checkableImageButton.setVisibility(i);
        k();
        m();
        if (this.i == 0) {
            textInputLayout.q();
        }
    }

    public final void m() {
        int i;
        TextInputLayout textInputLayout = this.a;
        if (textInputLayout.d == null) {
            return;
        }
        if (!d() && !e()) {
            EditText editText = textInputLayout.d;
            WeakHashMap weakHashMap = Dh.a;
            i = editText.getPaddingEnd();
        } else {
            i = 0;
        }
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(2131100224);
        int paddingTop = textInputLayout.d.getPaddingTop();
        int paddingBottom = textInputLayout.d.getPaddingBottom();
        WeakHashMap weakHashMap2 = Dh.a;
        this.q.setPaddingRelative(dimensionPixelSize, paddingTop, i, paddingBottom);
    }

    public final void n() {
        int i;
        C0201j2 c0201j2 = this.q;
        int visibility = c0201j2.getVisibility();
        boolean z = false;
        if (this.p != null && !this.r) {
            i = 0;
        } else {
            i = 8;
        }
        if (visibility != i) {
            AbstractC0067c7 b = b();
            if (i == 0) {
                z = true;
            }
            b.p(z);
        }
        k();
        c0201j2.setVisibility(i);
        this.a.q();
    }
}
