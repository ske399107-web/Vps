package o;

import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class W3 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ W3(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.a) {
            case 0:
                C0024a4 c0024a4 = (C0024a4) this.b;
                EditText editText = c0024a4.i;
                if (editText != null) {
                    Editable text = editText.getText();
                    if (text != null) {
                        text.clear();
                    }
                    c0024a4.q();
                    return;
                }
                return;
            case 1:
                ((C0364r6) this.b).u();
                return;
            case 2:
                ((C0051bb) this.b).H();
                throw null;
            default:
                Dc dc = (Dc) this.b;
                EditText editText2 = dc.f80f;
                if (editText2 != null) {
                    int selectionEnd = editText2.getSelectionEnd();
                    EditText editText3 = dc.f80f;
                    if (editText3 != null && (editText3.getTransformationMethod() instanceof PasswordTransformationMethod)) {
                        dc.f80f.setTransformationMethod(null);
                    } else {
                        dc.f80f.setTransformationMethod(PasswordTransformationMethod.getInstance());
                    }
                    if (selectionEnd >= 0) {
                        dc.f80f.setSelection(selectionEnd);
                    }
                    dc.q();
                    return;
                }
                return;
        }
    }
}
