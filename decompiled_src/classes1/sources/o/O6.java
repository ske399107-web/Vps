package o;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class O6 extends L1 {
    public final TextView g;
    public final K6 h;
    public boolean i = true;

    public O6(TextView textView) {
        this.g = textView;
        this.h = new K6(textView);
    }

    @Override // o.L1
    public final InputFilter[] B(InputFilter[] inputFilterArr) {
        if (!this.i) {
            SparseArray sparseArray = new SparseArray(1);
            for (int i = 0; i < inputFilterArr.length; i++) {
                InputFilter inputFilter = inputFilterArr[i];
                if (inputFilter instanceof K6) {
                    sparseArray.put(i, inputFilter);
                }
            }
            if (sparseArray.size() != 0) {
                int length = inputFilterArr.length;
                InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
                int i2 = 0;
                for (int i3 = 0; i3 < length; i3++) {
                    if (sparseArray.indexOfKey(i3) < 0) {
                        inputFilterArr2[i2] = inputFilterArr[i3];
                        i2++;
                    }
                }
                return inputFilterArr2;
            }
            return inputFilterArr;
        }
        int length2 = inputFilterArr.length;
        int i4 = 0;
        while (true) {
            K6 k6 = this.h;
            if (i4 < length2) {
                if (inputFilterArr[i4] != k6) {
                    i4++;
                } else {
                    return inputFilterArr;
                }
            } else {
                InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                inputFilterArr3[length2] = k6;
                return inputFilterArr3;
            }
        }
    }

    @Override // o.L1
    public final boolean G() {
        return this.i;
    }

    @Override // o.L1
    public final void X(boolean z) {
        if (z) {
            TextView textView = this.g;
            textView.setTransformationMethod(e0(textView.getTransformationMethod()));
        }
    }

    @Override // o.L1
    public final void Y(boolean z) {
        this.i = z;
        TextView textView = this.g;
        textView.setTransformationMethod(e0(textView.getTransformationMethod()));
        textView.setFilters(B(textView.getFilters()));
    }

    @Override // o.L1
    public final TransformationMethod e0(TransformationMethod transformationMethod) {
        if (this.i) {
            if (!(transformationMethod instanceof S6) && !(transformationMethod instanceof PasswordTransformationMethod)) {
                return new S6(transformationMethod);
            }
            return transformationMethod;
        }
        if (transformationMethod instanceof S6) {
            return ((S6) transformationMethod).a;
        }
        return transformationMethod;
    }
}
