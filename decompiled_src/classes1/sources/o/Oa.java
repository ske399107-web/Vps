package o;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import com.google.android.material.button.MaterialButton;
import java.util.WeakHashMap;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Oa {
    public final MaterialButton a;
    public Ae b;
    public int c;
    public int d;
    public int e;

    /* renamed from: f, reason: collision with root package name */
    public int f132f;
    public int g;
    public int h;
    public PorterDuff.Mode i;
    public ColorStateList j;
    public ColorStateList k;
    public ColorStateList l;
    public C0111eb m;
    public boolean q;
    public RippleDrawable s;
    public int t;
    public boolean n = false;

    /* renamed from: o, reason: collision with root package name */
    public boolean f133o = false;
    public boolean p = false;
    public boolean r = true;

    public Oa(MaterialButton materialButton, Ae ae) {
        this.a = materialButton;
        this.b = ae;
    }

    public final Le a() {
        RippleDrawable rippleDrawable = this.s;
        if (rippleDrawable != null && rippleDrawable.getNumberOfLayers() > 1) {
            if (this.s.getNumberOfLayers() > 2) {
                return (Le) this.s.getDrawable(2);
            }
            return (Le) this.s.getDrawable(1);
        }
        return null;
    }

    public final C0111eb b(boolean z) {
        RippleDrawable rippleDrawable = this.s;
        if (rippleDrawable != null && rippleDrawable.getNumberOfLayers() > 0) {
            return (C0111eb) ((LayerDrawable) ((InsetDrawable) this.s.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0);
        }
        return null;
    }

    public final void c(Ae ae) {
        this.b = ae;
        if (b(false) != null) {
            b(false).setShapeAppearanceModel(ae);
        }
        if (b(true) != null) {
            b(true).setShapeAppearanceModel(ae);
        }
        if (a() != null) {
            a().setShapeAppearanceModel(ae);
        }
    }

    public final void d(int i, int i2) {
        WeakHashMap weakHashMap = Dh.a;
        MaterialButton materialButton = this.a;
        int paddingStart = materialButton.getPaddingStart();
        int paddingTop = materialButton.getPaddingTop();
        int paddingEnd = materialButton.getPaddingEnd();
        int paddingBottom = materialButton.getPaddingBottom();
        int i3 = this.e;
        int i4 = this.f132f;
        this.f132f = i2;
        this.e = i;
        if (!this.f133o) {
            e();
        }
        materialButton.setPaddingRelative(paddingStart, (paddingTop + i) - i3, paddingEnd, (paddingBottom + i2) - i4);
    }

    public final void e() {
        int i;
        C0111eb c0111eb = new C0111eb(this.b);
        MaterialButton materialButton = this.a;
        c0111eb.i(materialButton.getContext());
        c0111eb.setTintList(this.j);
        PorterDuff.Mode mode = this.i;
        if (mode != null) {
            c0111eb.setTintMode(mode);
        }
        float f2 = this.h;
        ColorStateList colorStateList = this.k;
        c0111eb.a.j = f2;
        c0111eb.invalidateSelf();
        c0111eb.m(colorStateList);
        C0111eb c0111eb2 = new C0111eb(this.b);
        c0111eb2.setTint(0);
        float f3 = this.h;
        if (this.n) {
            i = Ha.E(materialButton, 2130903328);
        } else {
            i = 0;
        }
        c0111eb2.a.j = f3;
        c0111eb2.invalidateSelf();
        c0111eb2.m(ColorStateList.valueOf(i));
        C0111eb c0111eb3 = new C0111eb(this.b);
        this.m = c0111eb3;
        c0111eb3.setTint(-1);
        RippleDrawable rippleDrawable = new RippleDrawable(AbstractC0114ee.a(this.l), new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{c0111eb2, c0111eb}), this.c, this.e, this.d, this.f132f), this.m);
        this.s = rippleDrawable;
        materialButton.setInternalBackground(rippleDrawable);
        C0111eb b = b(false);
        if (b != null) {
            b.j(this.t);
            b.setState(materialButton.getDrawableState());
        }
    }

    public final void f() {
        int i = 0;
        C0111eb b = b(false);
        C0111eb b2 = b(true);
        if (b != null) {
            float f2 = this.h;
            ColorStateList colorStateList = this.k;
            b.a.j = f2;
            b.invalidateSelf();
            b.m(colorStateList);
            if (b2 != null) {
                float f3 = this.h;
                if (this.n) {
                    i = Ha.E(this.a, 2130903328);
                }
                b2.a.j = f3;
                b2.invalidateSelf();
                b2.m(ColorStateList.valueOf(i));
            }
        }
    }
}
