package o;

import android.view.animation.BaseInterpolator;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import java.util.WeakHashMap;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Hd implements Runnable {
    public int a;
    public int b;
    public OverScroller c;
    public Interpolator d;
    public boolean e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f104f;
    public final /* synthetic */ RecyclerView g;

    public Hd(RecyclerView recyclerView) {
        this.g = recyclerView;
        InterpolatorC0232kd interpolatorC0232kd = RecyclerView.u0;
        this.d = interpolatorC0232kd;
        this.e = false;
        this.f104f = false;
        this.c = new OverScroller(recyclerView.getContext(), interpolatorC0232kd);
    }

    public final void a() {
        if (this.e) {
            this.f104f = true;
            return;
        }
        RecyclerView recyclerView = this.g;
        recyclerView.removeCallbacks(this);
        WeakHashMap weakHashMap = Dh.a;
        recyclerView.postOnAnimation(this);
    }

    public final void b(int i, int i2, int i3, BaseInterpolator baseInterpolator) {
        boolean z;
        int height;
        int i4;
        RecyclerView recyclerView = this.g;
        if (i3 == Integer.MIN_VALUE) {
            int abs = Math.abs(i);
            int abs2 = Math.abs(i2);
            if (abs > abs2) {
                z = true;
            } else {
                z = false;
            }
            int sqrt = (int) Math.sqrt(0);
            int sqrt2 = (int) Math.sqrt((i2 * i2) + (i * i));
            if (z) {
                height = recyclerView.getWidth();
            } else {
                height = recyclerView.getHeight();
            }
            int i5 = height / 2;
            float f2 = height;
            float f3 = i5;
            float sin = (((float) Math.sin((Math.min(1.0f, (sqrt2 * 1.0f) / f2) - 0.5f) * 0.47123894f)) * f3) + f3;
            if (sqrt > 0) {
                i4 = Math.round(Math.abs(sin / sqrt) * 1000.0f) * 4;
            } else {
                if (!z) {
                    abs = abs2;
                }
                i4 = (int) (((abs / f2) + 1.0f) * 300.0f);
            }
            i3 = Math.min(i4, 2000);
        }
        int i6 = i3;
        Interpolator interpolator = baseInterpolator;
        if (baseInterpolator == null) {
            interpolator = RecyclerView.u0;
        }
        if (this.d != interpolator) {
            this.d = interpolator;
            this.c = new OverScroller(recyclerView.getContext(), interpolator);
        }
        this.b = 0;
        this.a = 0;
        recyclerView.setScrollState(2);
        this.c.startScroll(0, 0, i, i2, i6);
        a();
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        int i2;
        int i3;
        int i4;
        boolean awakenScrollBars;
        boolean z;
        boolean z2;
        boolean z3;
        int i5;
        RecyclerView recyclerView = this.g;
        if (recyclerView.l == null) {
            recyclerView.removeCallbacks(this);
            this.c.abortAnimation();
            return;
        }
        this.f104f = false;
        this.e = true;
        recyclerView.m();
        OverScroller overScroller = this.c;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i6 = currX - this.a;
            int i7 = currY - this.b;
            this.a = currX;
            this.b = currY;
            int[] iArr = recyclerView.o0;
            iArr[0] = 0;
            iArr[1] = 0;
            boolean r = recyclerView.r(i6, iArr, i7, 1, null);
            int[] iArr2 = recyclerView.o0;
            if (r) {
                i6 -= iArr2[0];
                i7 -= iArr2[1];
            }
            if (recyclerView.getOverScrollMode() != 2) {
                recyclerView.l(i6, i7);
            }
            if (recyclerView.k != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
                recyclerView.X(i6, i7, iArr2);
                int i8 = iArr2[0];
                int i9 = iArr2[1];
                int i10 = i6 - i8;
                int i11 = i7 - i9;
                C0030aa c0030aa = recyclerView.l.e;
                if (c0030aa != null && !c0030aa.d && c0030aa.e) {
                    int b = recyclerView.c0.b();
                    if (b == 0) {
                        c0030aa.i();
                    } else if (c0030aa.a >= b) {
                        c0030aa.a = b - 1;
                        c0030aa.g(i8, i9);
                    } else {
                        c0030aa.g(i8, i9);
                    }
                }
                i4 = i8;
                i = i10;
                i2 = i11;
                i3 = i9;
            } else {
                i = i6;
                i2 = i7;
                i3 = 0;
                i4 = 0;
            }
            if (!recyclerView.m.isEmpty()) {
                recyclerView.invalidate();
            }
            int[] iArr3 = recyclerView.o0;
            iArr3[0] = 0;
            iArr3[1] = 0;
            int i12 = i3;
            recyclerView.s(i4, null, i3, i, i2, iArr3, 1);
            int i13 = i - iArr2[0];
            int i14 = i2 - iArr2[1];
            if (i4 != 0 || i12 != 0) {
                recyclerView.t(i4, i12);
            }
            awakenScrollBars = recyclerView.awakenScrollBars();
            if (!awakenScrollBars) {
                recyclerView.invalidate();
            }
            if (overScroller.getCurrX() == overScroller.getFinalX()) {
                z = true;
            } else {
                z = false;
            }
            if (overScroller.getCurrY() == overScroller.getFinalY()) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!overScroller.isFinished() && ((!z && i13 == 0) || (!z2 && i14 == 0))) {
                z3 = false;
            } else {
                z3 = true;
            }
            C0030aa c0030aa2 = recyclerView.l.e;
            if ((c0030aa2 == null || !c0030aa2.d) && z3) {
                if (recyclerView.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    if (i13 < 0) {
                        i5 = -currVelocity;
                    } else if (i13 > 0) {
                        i5 = currVelocity;
                    } else {
                        i5 = 0;
                    }
                    if (i14 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i14 <= 0) {
                        currVelocity = 0;
                    }
                    if (i5 < 0) {
                        recyclerView.v();
                        if (recyclerView.D.isFinished()) {
                            recyclerView.D.onAbsorb(-i5);
                        }
                    } else if (i5 > 0) {
                        recyclerView.w();
                        if (recyclerView.F.isFinished()) {
                            recyclerView.F.onAbsorb(i5);
                        }
                    }
                    if (currVelocity < 0) {
                        recyclerView.x();
                        if (recyclerView.E.isFinished()) {
                            recyclerView.E.onAbsorb(-currVelocity);
                        }
                    } else if (currVelocity > 0) {
                        recyclerView.u();
                        if (recyclerView.G.isFinished()) {
                            recyclerView.G.onAbsorb(currVelocity);
                        }
                    }
                    if (i5 != 0 || currVelocity != 0) {
                        WeakHashMap weakHashMap = Dh.a;
                        recyclerView.postInvalidateOnAnimation();
                    }
                }
                R8 r8 = recyclerView.b0;
                int[] iArr4 = r8.c;
                if (iArr4 != null) {
                    Arrays.fill(iArr4, -1);
                }
                r8.d = 0;
            } else {
                a();
                T8 t8 = recyclerView.a0;
                if (t8 != null) {
                    t8.a(recyclerView, i4, i12);
                }
            }
        }
        C0030aa c0030aa3 = recyclerView.l.e;
        if (c0030aa3 != null && c0030aa3.d) {
            c0030aa3.g(0, 0);
        }
        this.e = false;
        if (this.f104f) {
            recyclerView.removeCallbacks(this);
            WeakHashMap weakHashMap2 = Dh.a;
            recyclerView.postOnAnimation(this);
        } else {
            recyclerView.setScrollState(0);
            recyclerView.c0(1);
        }
    }
}
