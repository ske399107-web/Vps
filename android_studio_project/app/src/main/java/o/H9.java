package o;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class H9 extends Ha {
    public final /* synthetic */ int k;
    public final SideSheetBehavior l;

    public /* synthetic */ H9(SideSheetBehavior sideSheetBehavior, int i) {
        this.k = i;
        this.l = sideSheetBehavior;
    }

    @Override // o.Ha
    public final void B0(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2) {
        switch (this.k) {
            case 0:
                if (i <= this.l.m) {
                    marginLayoutParams.leftMargin = i2;
                    return;
                }
                return;
            default:
                int i3 = this.l.m;
                if (i <= i3) {
                    marginLayoutParams.rightMargin = i3 - i;
                    return;
                }
                return;
        }
    }

    @Override // o.Ha
    public final int I() {
        switch (this.k) {
            case 0:
                SideSheetBehavior sideSheetBehavior = this.l;
                return Math.max(0, sideSheetBehavior.n + sideSheetBehavior.f56o);
            default:
                SideSheetBehavior sideSheetBehavior2 = this.l;
                return Math.max(0, (sideSheetBehavior2.m - sideSheetBehavior2.l) - sideSheetBehavior2.f56o);
        }
    }

    @Override // o.Ha
    public final int J() {
        switch (this.k) {
            case 0:
                SideSheetBehavior sideSheetBehavior = this.l;
                return (-sideSheetBehavior.l) - sideSheetBehavior.f56o;
            default:
                return this.l.m;
        }
    }

    @Override // o.Ha
    public final int L() {
        switch (this.k) {
            case 0:
                return this.l.f56o;
            default:
                return this.l.m;
        }
    }

    @Override // o.Ha
    public final int M() {
        switch (this.k) {
            case 0:
                return -this.l.l;
            default:
                return I();
        }
    }

    @Override // o.Ha
    public final int O(View view) {
        switch (this.k) {
            case 0:
                return view.getRight() + this.l.f56o;
            default:
                return view.getLeft() - this.l.f56o;
        }
    }

    @Override // o.Ha
    public final int S(CoordinatorLayout coordinatorLayout) {
        switch (this.k) {
            case 0:
                return coordinatorLayout.getLeft();
            default:
                return coordinatorLayout.getRight();
        }
    }

    @Override // o.Ha
    public final int T() {
        switch (this.k) {
            case 0:
                return 1;
            default:
                return 0;
        }
    }

    @Override // o.Ha
    public final boolean Z(float f2) {
        switch (this.k) {
            case 0:
                return f2 > 0.0f;
            default:
                return f2 < 0.0f;
        }
    }

    @Override // o.Ha
    public final int b(ViewGroup.MarginLayoutParams marginLayoutParams) {
        switch (this.k) {
            case 0:
                return marginLayoutParams.leftMargin;
            default:
                return marginLayoutParams.rightMargin;
        }
    }

    @Override // o.Ha
    public final float c(int i) {
        switch (this.k) {
            case 0:
                float J = J();
                return (i - J) / (I() - J);
            default:
                float f2 = this.l.m;
                return (f2 - i) / (f2 - I());
        }
    }

    @Override // o.Ha
    public final boolean c0(View view) {
        switch (this.k) {
            case 0:
                if (view.getRight() < (I() - J()) / 2) {
                    return true;
                }
                return false;
            default:
                if (view.getLeft() > (I() + this.l.m) / 2) {
                    return true;
                }
                return false;
        }
    }

    @Override // o.Ha
    public final boolean d0(float f2, float f3) {
        switch (this.k) {
            case 0:
                if (Math.abs(f2) > Math.abs(f3)) {
                    float abs = Math.abs(f2);
                    this.l.getClass();
                    if (abs > 500) {
                        return true;
                    }
                }
                return false;
            default:
                if (Math.abs(f2) > Math.abs(f3)) {
                    float abs2 = Math.abs(f2);
                    this.l.getClass();
                    if (abs2 > 500) {
                        return true;
                    }
                }
                return false;
        }
    }

    @Override // o.Ha
    public final boolean x0(View view, float f2) {
        switch (this.k) {
            case 0:
                float left = view.getLeft();
                SideSheetBehavior sideSheetBehavior = this.l;
                float abs = Math.abs((f2 * sideSheetBehavior.k) + left);
                sideSheetBehavior.getClass();
                if (abs > 0.5f) {
                    return true;
                }
                return false;
            default:
                float right = view.getRight();
                SideSheetBehavior sideSheetBehavior2 = this.l;
                float abs2 = Math.abs((f2 * sideSheetBehavior2.k) + right);
                sideSheetBehavior2.getClass();
                if (abs2 > 0.5f) {
                    return true;
                }
                return false;
        }
    }
}
