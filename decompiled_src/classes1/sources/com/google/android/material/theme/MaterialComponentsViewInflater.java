package com.google.android.material.theme;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.button.MaterialButton;
import o.AbstractC0133fd;
import o.AbstractC0487x9;
import o.C0151gb;
import o.C0201j2;
import o.C0360r2;
import o.Ha;
import o.I1;
import o.La;
import o.V0;
import o.X0;
import o.Ya;
import o.Z0;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class MaterialComponentsViewInflater extends C0360r2 {
    @Override // o.C0360r2
    public final V0 a(Context context, AttributeSet attributeSet) {
        return new La(context, attributeSet);
    }

    @Override // o.C0360r2
    public final X0 b(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // o.C0360r2
    public final Z0 c(Context context, AttributeSet attributeSet) {
        return new Ya(context, attributeSet);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [o.I1, android.widget.CompoundButton, android.view.View, o.cb] */
    @Override // o.C0360r2
    public final I1 d(Context context, AttributeSet attributeSet) {
        ?? i1 = new I1(AbstractC0487x9.j0(context, attributeSet, 2130903962, 2131690520), attributeSet);
        Context context2 = i1.getContext();
        TypedArray H = AbstractC0487x9.H(context2, attributeSet, AbstractC0133fd.f210o, 2130903962, 2131690520, new int[0]);
        if (H.hasValue(0)) {
            i1.setButtonTintList(Ha.F(context2, H, 0));
        }
        i1.f189f = H.getBoolean(1, false);
        H.recycle();
        return i1;
    }

    @Override // o.C0360r2
    public final C0201j2 e(Context context, AttributeSet attributeSet) {
        C0201j2 c0201j2 = new C0201j2(AbstractC0487x9.j0(context, attributeSet, R.attr.textViewStyle, 0), attributeSet, R.attr.textViewStyle);
        Context context2 = c0201j2.getContext();
        if (Ha.n0(context2, 2130904145, true)) {
            Resources.Theme theme = context2.getTheme();
            int[] iArr = AbstractC0133fd.r;
            TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, R.attr.textViewStyle, 0);
            int h = C0151gb.h(context2, obtainStyledAttributes, 1, 2);
            obtainStyledAttributes.recycle();
            if (h == -1) {
                TypedArray obtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, R.attr.textViewStyle, 0);
                int resourceId = obtainStyledAttributes2.getResourceId(0, -1);
                obtainStyledAttributes2.recycle();
                if (resourceId != -1) {
                    TypedArray obtainStyledAttributes3 = theme.obtainStyledAttributes(resourceId, AbstractC0133fd.q);
                    int h2 = C0151gb.h(c0201j2.getContext(), obtainStyledAttributes3, 1, 2);
                    obtainStyledAttributes3.recycle();
                    if (h2 >= 0) {
                        c0201j2.setLineHeight(h2);
                    }
                }
            }
        }
        return c0201j2;
    }
}
