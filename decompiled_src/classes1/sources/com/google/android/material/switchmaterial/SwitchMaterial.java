package com.google.android.material.switchmaterial;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import java.util.WeakHashMap;
import o.AbstractC0133fd;
import o.AbstractC0455vh;
import o.AbstractC0487x9;
import o.C0464w6;
import o.Cf;
import o.Dh;
import o.Ha;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class SwitchMaterial extends Cf {
    public static final int[][] a0 = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
    public final C0464w6 T;
    public ColorStateList U;
    public ColorStateList V;
    public boolean W;

    public SwitchMaterial(Context context, AttributeSet attributeSet) {
        super(AbstractC0487x9.j0(context, attributeSet, 2130904086, 2131690521), attributeSet);
        Context context2 = getContext();
        this.T = new C0464w6(context2);
        int[] iArr = AbstractC0133fd.z;
        AbstractC0487x9.j(context2, attributeSet, 2130904086, 2131690521);
        AbstractC0487x9.q(context2, attributeSet, iArr, 2130904086, 2131690521, new int[0]);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, 2130904086, 2131690521);
        this.W = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
    }

    private ColorStateList getMaterialThemeColorsThumbTintList() {
        if (this.U == null) {
            int E = Ha.E(this, 2130903328);
            int E2 = Ha.E(this, 2130903287);
            float dimension = getResources().getDimension(2131100407);
            C0464w6 c0464w6 = this.T;
            if (c0464w6.a) {
                float f2 = 0.0f;
                for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
                    WeakHashMap weakHashMap = Dh.a;
                    f2 += AbstractC0455vh.e((View) parent);
                }
                dimension += f2;
            }
            int a = c0464w6.a(E, dimension);
            this.U = new ColorStateList(a0, new int[]{Ha.e0(E, E2, 1.0f), a, Ha.e0(E, E2, 0.38f), a});
        }
        return this.U;
    }

    private ColorStateList getMaterialThemeColorsTrackTintList() {
        if (this.V == null) {
            int E = Ha.E(this, 2130903328);
            int E2 = Ha.E(this, 2130903287);
            int E3 = Ha.E(this, 2130903306);
            this.V = new ColorStateList(a0, new int[]{Ha.e0(E, E2, 0.54f), Ha.e0(E, E3, 0.32f), Ha.e0(E, E2, 0.12f), Ha.e0(E, E3, 0.12f)});
        }
        return this.V;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.W && getThumbTintList() == null) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
        }
        if (this.W && getTrackTintList() == null) {
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.W = z;
        if (z) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        } else {
            setThumbTintList(null);
            setTrackTintList(null);
        }
    }
}
