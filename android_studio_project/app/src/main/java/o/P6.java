package o;

import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.widget.TextView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class P6 extends L1 {
    public final O6 g;

    public P6(TextView textView) {
        this.g = new O6(textView);
    }

    @Override // o.L1
    public final InputFilter[] B(InputFilter[] inputFilterArr) {
        boolean z;
        if (C6.k != null) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return inputFilterArr;
        }
        return this.g.B(inputFilterArr);
    }

    @Override // o.L1
    public final boolean G() {
        return this.g.i;
    }

    @Override // o.L1
    public final void X(boolean z) {
        boolean z2;
        if (C6.k != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2) {
            return;
        }
        this.g.X(z);
    }

    @Override // o.L1
    public final void Y(boolean z) {
        boolean z2;
        if (C6.k != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        O6 o6 = this.g;
        if (!z2) {
            o6.i = z;
        } else {
            o6.Y(z);
        }
    }

    @Override // o.L1
    public final TransformationMethod e0(TransformationMethod transformationMethod) {
        boolean z;
        if (C6.k != null) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return transformationMethod;
        }
        return this.g.e0(transformationMethod);
    }
}
