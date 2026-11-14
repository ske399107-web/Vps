package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import java.util.ArrayList;
import java.util.HashMap;
import o.AbstractC0033ad;
import o.AbstractC0049b9;
import o.AbstractC0138fi;
import o.C0445v7;
import o.L4;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Flow extends AbstractC0138fi {
    public final C0445v7 j;

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, o.c3] */
    /* JADX WARN: Type inference failed for: r8v1, types: [o.v7, o.b9] */
    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new int[32];
        this.g = new HashMap();
        this.c = context;
        super.g(attributeSet);
        ?? abstractC0049b9 = new AbstractC0049b9();
        abstractC0049b9.s0 = 0;
        abstractC0049b9.t0 = 0;
        abstractC0049b9.u0 = 0;
        abstractC0049b9.v0 = 0;
        abstractC0049b9.w0 = 0;
        abstractC0049b9.x0 = 0;
        abstractC0049b9.y0 = false;
        abstractC0049b9.z0 = 0;
        abstractC0049b9.A0 = 0;
        abstractC0049b9.B0 = new Object();
        abstractC0049b9.C0 = null;
        abstractC0049b9.D0 = -1;
        abstractC0049b9.E0 = -1;
        abstractC0049b9.F0 = -1;
        abstractC0049b9.G0 = -1;
        abstractC0049b9.H0 = -1;
        abstractC0049b9.I0 = -1;
        abstractC0049b9.J0 = 0.5f;
        abstractC0049b9.K0 = 0.5f;
        abstractC0049b9.L0 = 0.5f;
        abstractC0049b9.M0 = 0.5f;
        abstractC0049b9.N0 = 0.5f;
        abstractC0049b9.O0 = 0.5f;
        abstractC0049b9.P0 = 0;
        abstractC0049b9.Q0 = 0;
        abstractC0049b9.R0 = 2;
        abstractC0049b9.S0 = 2;
        abstractC0049b9.T0 = 0;
        abstractC0049b9.U0 = -1;
        abstractC0049b9.V0 = 0;
        abstractC0049b9.W0 = new ArrayList();
        abstractC0049b9.X0 = null;
        abstractC0049b9.Y0 = null;
        abstractC0049b9.Z0 = null;
        abstractC0049b9.b1 = 0;
        this.j = abstractC0049b9;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, AbstractC0033ad.b);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    this.j.V0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 1) {
                    C0445v7 c0445v7 = this.j;
                    int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    c0445v7.s0 = dimensionPixelSize;
                    c0445v7.t0 = dimensionPixelSize;
                    c0445v7.u0 = dimensionPixelSize;
                    c0445v7.v0 = dimensionPixelSize;
                } else if (index == 18) {
                    C0445v7 c0445v72 = this.j;
                    int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    c0445v72.u0 = dimensionPixelSize2;
                    c0445v72.w0 = dimensionPixelSize2;
                    c0445v72.x0 = dimensionPixelSize2;
                } else if (index == 19) {
                    this.j.v0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 2) {
                    this.j.w0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 3) {
                    this.j.s0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 4) {
                    this.j.x0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 5) {
                    this.j.t0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 54) {
                    this.j.T0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 44) {
                    this.j.D0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 53) {
                    this.j.E0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 38) {
                    this.j.F0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 46) {
                    this.j.H0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 40) {
                    this.j.G0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 48) {
                    this.j.I0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 42) {
                    this.j.J0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 37) {
                    this.j.L0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 45) {
                    this.j.N0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 39) {
                    this.j.M0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 47) {
                    this.j.O0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 51) {
                    this.j.K0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 41) {
                    this.j.R0 = obtainStyledAttributes.getInt(index, 2);
                } else if (index == 50) {
                    this.j.S0 = obtainStyledAttributes.getInt(index, 2);
                } else if (index == 43) {
                    this.j.P0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 52) {
                    this.j.Q0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 49) {
                    this.j.U0 = obtainStyledAttributes.getInt(index, -1);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.d = this.j;
        i();
    }

    @Override // o.AbstractC0520z4
    public final void h(L4 l4, boolean z) {
        C0445v7 c0445v7 = this.j;
        int i = c0445v7.u0;
        if (i > 0 || c0445v7.v0 > 0) {
            if (z) {
                c0445v7.w0 = c0445v7.v0;
                c0445v7.x0 = i;
            } else {
                c0445v7.w0 = i;
                c0445v7.x0 = c0445v7.v0;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:83:0x078e  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x07a7  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x07c6  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x07c8  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x07aa  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0793  */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    @Override // o.AbstractC0138fi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j(o.C0445v7 r41, int r42, int r43) {
        /*
            Method dump skipped, instructions count: 2011
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.helper.widget.Flow.j(o.v7, int, int):void");
    }

    @Override // o.AbstractC0520z4, android.view.View
    public final void onMeasure(int i, int i2) {
        j(this.j, i, i2);
    }

    public void setFirstHorizontalBias(float f2) {
        this.j.L0 = f2;
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i) {
        this.j.F0 = i;
        requestLayout();
    }

    public void setFirstVerticalBias(float f2) {
        this.j.M0 = f2;
        requestLayout();
    }

    public void setFirstVerticalStyle(int i) {
        this.j.G0 = i;
        requestLayout();
    }

    public void setHorizontalAlign(int i) {
        this.j.R0 = i;
        requestLayout();
    }

    public void setHorizontalBias(float f2) {
        this.j.J0 = f2;
        requestLayout();
    }

    public void setHorizontalGap(int i) {
        this.j.P0 = i;
        requestLayout();
    }

    public void setHorizontalStyle(int i) {
        this.j.D0 = i;
        requestLayout();
    }

    public void setLastHorizontalBias(float f2) {
        this.j.N0 = f2;
        requestLayout();
    }

    public void setLastHorizontalStyle(int i) {
        this.j.H0 = i;
        requestLayout();
    }

    public void setLastVerticalBias(float f2) {
        this.j.O0 = f2;
        requestLayout();
    }

    public void setLastVerticalStyle(int i) {
        this.j.I0 = i;
        requestLayout();
    }

    public void setMaxElementsWrap(int i) {
        this.j.U0 = i;
        requestLayout();
    }

    public void setOrientation(int i) {
        this.j.V0 = i;
        requestLayout();
    }

    public void setPadding(int i) {
        C0445v7 c0445v7 = this.j;
        c0445v7.s0 = i;
        c0445v7.t0 = i;
        c0445v7.u0 = i;
        c0445v7.v0 = i;
        requestLayout();
    }

    public void setPaddingBottom(int i) {
        this.j.t0 = i;
        requestLayout();
    }

    public void setPaddingLeft(int i) {
        this.j.w0 = i;
        requestLayout();
    }

    public void setPaddingRight(int i) {
        this.j.x0 = i;
        requestLayout();
    }

    public void setPaddingTop(int i) {
        this.j.s0 = i;
        requestLayout();
    }

    public void setVerticalAlign(int i) {
        this.j.S0 = i;
        requestLayout();
    }

    public void setVerticalBias(float f2) {
        this.j.K0 = f2;
        requestLayout();
    }

    public void setVerticalGap(int i) {
        this.j.Q0 = i;
        requestLayout();
    }

    public void setVerticalStyle(int i) {
        this.j.E0 = i;
        requestLayout();
    }

    public void setWrapMode(int i) {
        this.j.T0 = i;
        requestLayout();
    }
}
