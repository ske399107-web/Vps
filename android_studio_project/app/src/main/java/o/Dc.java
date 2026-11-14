package o;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Dc extends AbstractC0067c7 {
    public final int e;

    /* renamed from: f, reason: collision with root package name */
    public EditText f80f;
    public final W3 g;

    public Dc(C0047b7 c0047b7, int i) {
        super(c0047b7);
        this.e = 2131165325;
        this.g = new W3(3, this);
        if (i != 0) {
            this.e = i;
        }
    }

    @Override // o.AbstractC0067c7
    public final void b() {
        q();
    }

    @Override // o.AbstractC0067c7
    public final int c() {
        return 2131624101;
    }

    @Override // o.AbstractC0067c7
    public final int d() {
        return this.e;
    }

    @Override // o.AbstractC0067c7
    public final View.OnClickListener f() {
        return this.g;
    }

    @Override // o.AbstractC0067c7
    public final boolean k() {
        return true;
    }

    @Override // o.AbstractC0067c7
    public final boolean l() {
        boolean z;
        EditText editText = this.f80f;
        if (editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod)) {
            z = true;
        } else {
            z = false;
        }
        return !z;
    }

    @Override // o.AbstractC0067c7
    public final void m(EditText editText) {
        this.f80f = editText;
        q();
    }

    @Override // o.AbstractC0067c7
    public final void r() {
        EditText editText = this.f80f;
        if (editText != null) {
            if (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224) {
                this.f80f.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
    }

    @Override // o.AbstractC0067c7
    public final void s() {
        EditText editText = this.f80f;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
