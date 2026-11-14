package o;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.Arrays;
import java.util.WeakHashMap;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Fh {
    public static final InterpolatorC0232kd v = new InterpolatorC0232kd(1);
    public int a;
    public final int b;
    public float[] d;
    public float[] e;

    /* renamed from: f, reason: collision with root package name */
    public float[] f89f;
    public float[] g;
    public int[] h;
    public int[] i;
    public int[] j;
    public int k;
    public VelocityTracker l;
    public final float m;
    public final float n;

    /* renamed from: o, reason: collision with root package name */
    public final int f90o;
    public final OverScroller p;
    public final Ng q;
    public View r;
    public boolean s;
    public final CoordinatorLayout t;
    public int c = -1;
    public final J2 u = new J2(13, this);

    public Fh(Context context, CoordinatorLayout coordinatorLayout, Ng ng) {
        if (coordinatorLayout != null) {
            if (ng != null) {
                this.t = coordinatorLayout;
                this.q = ng;
                ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
                this.f90o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
                this.b = viewConfiguration.getScaledTouchSlop();
                this.m = viewConfiguration.getScaledMaximumFlingVelocity();
                this.n = viewConfiguration.getScaledMinimumFlingVelocity();
                this.p = new OverScroller(context, v);
                return;
            }
            throw new IllegalArgumentException("Callback may not be null");
        }
        throw new IllegalArgumentException("Parent view may not be null");
    }

    public final void a() {
        this.c = -1;
        float[] fArr = this.d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.e, 0.0f);
            Arrays.fill(this.f89f, 0.0f);
            Arrays.fill(this.g, 0.0f);
            Arrays.fill(this.h, 0);
            Arrays.fill(this.i, 0);
            Arrays.fill(this.j, 0);
            this.k = 0;
        }
        VelocityTracker velocityTracker = this.l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.l = null;
        }
    }

    public final void b(View view, int i) {
        ViewParent parent = view.getParent();
        CoordinatorLayout coordinatorLayout = this.t;
        if (parent == coordinatorLayout) {
            this.r = view;
            this.c = i;
            this.q.n(view, i);
            n(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + coordinatorLayout + ")");
    }

    public final boolean c(View view, float f2, float f3) {
        boolean z;
        boolean z2;
        if (view == null) {
            return false;
        }
        Ng ng = this.q;
        if (ng.i(view) > 0) {
            z = true;
        } else {
            z = false;
        }
        if (ng.j() > 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z && z2) {
            float f4 = (f3 * f3) + (f2 * f2);
            int i = this.b;
            if (f4 <= i * i) {
                return false;
            }
            return true;
        }
        if (z) {
            if (Math.abs(f2) <= this.b) {
                return false;
            }
            return true;
        }
        if (!z2 || Math.abs(f3) <= this.b) {
            return false;
        }
        return true;
    }

    public final void d(int i) {
        float[] fArr = this.d;
        if (fArr != null) {
            int i2 = this.k;
            int i3 = 1 << i;
            if ((i2 & i3) != 0) {
                fArr[i] = 0.0f;
                this.e[i] = 0.0f;
                this.f89f[i] = 0.0f;
                this.g[i] = 0.0f;
                this.h[i] = 0;
                this.i[i] = 0;
                this.j[i] = 0;
                this.k = (~i3) & i2;
            }
        }
    }

    public final int e(int i, int i2, int i3) {
        int abs;
        if (i == 0) {
            return 0;
        }
        float width = this.t.getWidth() / 2;
        float sin = (((float) Math.sin((Math.min(1.0f, Math.abs(i) / r0) - 0.5f) * 0.47123894f)) * width) + width;
        int abs2 = Math.abs(i2);
        if (abs2 > 0) {
            abs = Math.round(Math.abs(sin / abs2) * 1000.0f) * 4;
        } else {
            abs = (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f);
        }
        return Math.min(abs, 600);
    }

    public final boolean f() {
        if (this.a == 2) {
            OverScroller overScroller = this.p;
            boolean computeScrollOffset = overScroller.computeScrollOffset();
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int left = currX - this.r.getLeft();
            int top = currY - this.r.getTop();
            if (left != 0) {
                View view = this.r;
                WeakHashMap weakHashMap = Dh.a;
                view.offsetLeftAndRight(left);
            }
            if (top != 0) {
                View view2 = this.r;
                WeakHashMap weakHashMap2 = Dh.a;
                view2.offsetTopAndBottom(top);
            }
            if (left != 0 || top != 0) {
                this.q.p(this.r, currX, currY);
            }
            if (computeScrollOffset && currX == overScroller.getFinalX() && currY == overScroller.getFinalY()) {
                overScroller.abortAnimation();
                computeScrollOffset = false;
            }
            if (!computeScrollOffset) {
                this.t.post(this.u);
            }
        }
        if (this.a != 2) {
            return false;
        }
        return true;
    }

    public final View g(int i, int i2) {
        CoordinatorLayout coordinatorLayout = this.t;
        for (int childCount = coordinatorLayout.getChildCount() - 1; childCount >= 0; childCount--) {
            this.q.getClass();
            View childAt = coordinatorLayout.getChildAt(childCount);
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean h(int r11, int r12, int r13, int r14) {
        /*
            r10 = this;
            android.view.View r0 = r10.r
            int r2 = r0.getLeft()
            android.view.View r0 = r10.r
            int r3 = r0.getTop()
            int r4 = r11 - r2
            int r5 = r12 - r3
            android.widget.OverScroller r1 = r10.p
            r11 = 0
            if (r4 != 0) goto L1e
            if (r5 != 0) goto L1e
            r1.abortAnimation()
            r10.n(r11)
            return r11
        L1e:
            android.view.View r12 = r10.r
            float r0 = r10.n
            int r0 = (int) r0
            float r6 = r10.m
            int r6 = (int) r6
            int r7 = java.lang.Math.abs(r13)
            if (r7 >= r0) goto L2e
            r13 = r11
            goto L35
        L2e:
            if (r7 <= r6) goto L35
            if (r13 <= 0) goto L34
            r13 = r6
            goto L35
        L34:
            int r13 = -r6
        L35:
            int r7 = java.lang.Math.abs(r14)
            if (r7 >= r0) goto L3d
        L3b:
            r14 = r11
            goto L45
        L3d:
            if (r7 <= r6) goto L45
            if (r14 <= 0) goto L43
            r14 = r6
            goto L45
        L43:
            int r11 = -r6
            goto L3b
        L45:
            int r11 = java.lang.Math.abs(r4)
            int r0 = java.lang.Math.abs(r5)
            int r6 = java.lang.Math.abs(r13)
            int r7 = java.lang.Math.abs(r14)
            int r8 = r6 + r7
            int r9 = r11 + r0
            if (r13 == 0) goto L5f
            float r11 = (float) r6
            float r6 = (float) r8
        L5d:
            float r11 = r11 / r6
            goto L62
        L5f:
            float r11 = (float) r11
            float r6 = (float) r9
            goto L5d
        L62:
            if (r14 == 0) goto L68
            float r0 = (float) r7
            float r6 = (float) r8
        L66:
            float r0 = r0 / r6
            goto L6b
        L68:
            float r0 = (float) r0
            float r6 = (float) r9
            goto L66
        L6b:
            o.Ng r6 = r10.q
            int r12 = r6.i(r12)
            int r12 = r10.e(r4, r13, r12)
            int r13 = r6.j()
            int r13 = r10.e(r5, r14, r13)
            float r12 = (float) r12
            float r12 = r12 * r11
            float r11 = (float) r13
            float r11 = r11 * r0
            float r11 = r11 + r12
            int r6 = (int) r11
            r1.startScroll(r2, r3, r4, r5, r6)
            r11 = 2
            r10.n(r11)
            r11 = 1
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Fh.h(int, int, int, int):boolean");
    }

    public final boolean i(int i) {
        if ((this.k & (1 << i)) != 0) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    public final void j(MotionEvent motionEvent) {
        int i;
        int i2 = 1;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        int i3 = 0;
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                Ng ng = this.q;
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked != 5) {
                            if (actionMasked == 6) {
                                int pointerId = motionEvent.getPointerId(actionIndex);
                                if (this.a == 1 && pointerId == this.c) {
                                    int pointerCount = motionEvent.getPointerCount();
                                    while (true) {
                                        if (i3 < pointerCount) {
                                            int pointerId2 = motionEvent.getPointerId(i3);
                                            if (pointerId2 != this.c) {
                                                View g = g((int) motionEvent.getX(i3), (int) motionEvent.getY(i3));
                                                View view = this.r;
                                                if (g == view && q(view, pointerId2)) {
                                                    i = this.c;
                                                    break;
                                                }
                                            }
                                            i3++;
                                        } else {
                                            i = -1;
                                            break;
                                        }
                                    }
                                    if (i == -1) {
                                        k();
                                    }
                                }
                                d(pointerId);
                                return;
                            }
                            return;
                        }
                        int pointerId3 = motionEvent.getPointerId(actionIndex);
                        float x = motionEvent.getX(actionIndex);
                        float y = motionEvent.getY(actionIndex);
                        l(x, y, pointerId3);
                        if (this.a == 0) {
                            q(g((int) x, (int) y), pointerId3);
                            int i4 = this.h[pointerId3];
                            return;
                        }
                        int i5 = (int) x;
                        int i6 = (int) y;
                        View view2 = this.r;
                        if (view2 != null) {
                            if (i5 < view2.getLeft() || i5 >= view2.getRight() || i6 < view2.getTop() || i6 >= view2.getBottom()) {
                                i2 = 0;
                            }
                            i3 = i2;
                        }
                        if (i3 != 0) {
                            q(this.r, pointerId3);
                            return;
                        }
                        return;
                    }
                    if (this.a == 1) {
                        this.s = true;
                        ng.q(this.r, 0.0f, 0.0f);
                        this.s = false;
                        if (this.a == 1) {
                            n(0);
                        }
                    }
                    a();
                    return;
                }
                if (this.a == 1) {
                    if (i(this.c)) {
                        int findPointerIndex = motionEvent.findPointerIndex(this.c);
                        float x2 = motionEvent.getX(findPointerIndex);
                        float y2 = motionEvent.getY(findPointerIndex);
                        float[] fArr = this.f89f;
                        int i7 = this.c;
                        int i8 = (int) (x2 - fArr[i7]);
                        int i9 = (int) (y2 - this.g[i7]);
                        int left = this.r.getLeft() + i8;
                        int top = this.r.getTop() + i9;
                        int left2 = this.r.getLeft();
                        int top2 = this.r.getTop();
                        if (i8 != 0) {
                            left = ng.d(this.r, left);
                            WeakHashMap weakHashMap = Dh.a;
                            this.r.offsetLeftAndRight(left - left2);
                        }
                        if (i9 != 0) {
                            top = ng.e(this.r, top);
                            WeakHashMap weakHashMap2 = Dh.a;
                            this.r.offsetTopAndBottom(top - top2);
                        }
                        if (i8 != 0 || i9 != 0) {
                            ng.p(this.r, left, top);
                        }
                        m(motionEvent);
                        return;
                    }
                    return;
                }
                int pointerCount2 = motionEvent.getPointerCount();
                while (i3 < pointerCount2) {
                    int pointerId4 = motionEvent.getPointerId(i3);
                    if (i(pointerId4)) {
                        float x3 = motionEvent.getX(i3);
                        float y3 = motionEvent.getY(i3);
                        float f2 = x3 - this.d[pointerId4];
                        float f3 = y3 - this.e[pointerId4];
                        Math.abs(f2);
                        Math.abs(f3);
                        int i10 = this.h[pointerId4];
                        Math.abs(f3);
                        Math.abs(f2);
                        int i11 = this.h[pointerId4];
                        Math.abs(f2);
                        Math.abs(f3);
                        int i12 = this.h[pointerId4];
                        Math.abs(f3);
                        Math.abs(f2);
                        int i13 = this.h[pointerId4];
                        if (this.a != 1) {
                            View g2 = g((int) x3, (int) y3);
                            if (c(g2, f2, f3) && q(g2, pointerId4)) {
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    i3++;
                }
                m(motionEvent);
                return;
            }
            if (this.a == 1) {
                k();
            }
            a();
            return;
        }
        float x4 = motionEvent.getX();
        float y4 = motionEvent.getY();
        int pointerId5 = motionEvent.getPointerId(0);
        View g3 = g((int) x4, (int) y4);
        l(x4, y4, pointerId5);
        q(g3, pointerId5);
        int i14 = this.h[pointerId5];
    }

    public final void k() {
        VelocityTracker velocityTracker = this.l;
        float f2 = this.m;
        velocityTracker.computeCurrentVelocity(1000, f2);
        float xVelocity = this.l.getXVelocity(this.c);
        float f3 = this.n;
        float abs = Math.abs(xVelocity);
        float f4 = 0.0f;
        if (abs < f3) {
            xVelocity = 0.0f;
        } else if (abs > f2) {
            if (xVelocity > 0.0f) {
                xVelocity = f2;
            } else {
                xVelocity = -f2;
            }
        }
        float yVelocity = this.l.getYVelocity(this.c);
        float abs2 = Math.abs(yVelocity);
        if (abs2 >= f3) {
            if (abs2 > f2) {
                if (yVelocity <= 0.0f) {
                    f2 = -f2;
                }
                f4 = f2;
            } else {
                f4 = yVelocity;
            }
        }
        this.s = true;
        this.q.q(this.r, xVelocity, f4);
        this.s = false;
        if (this.a == 1) {
            n(0);
        }
    }

    public final void l(float f2, float f3, int i) {
        float[] fArr = this.d;
        int i2 = 0;
        if (fArr == null || fArr.length <= i) {
            int i3 = i + 1;
            float[] fArr2 = new float[i3];
            float[] fArr3 = new float[i3];
            float[] fArr4 = new float[i3];
            float[] fArr5 = new float[i3];
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f89f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.d = fArr2;
            this.e = fArr3;
            this.f89f = fArr4;
            this.g = fArr5;
            this.h = iArr;
            this.i = iArr2;
            this.j = iArr3;
        }
        float[] fArr9 = this.d;
        this.f89f[i] = f2;
        fArr9[i] = f2;
        float[] fArr10 = this.e;
        this.g[i] = f3;
        fArr10[i] = f3;
        int[] iArr7 = this.h;
        int i4 = (int) f2;
        int i5 = (int) f3;
        CoordinatorLayout coordinatorLayout = this.t;
        int left = coordinatorLayout.getLeft();
        int i6 = this.f90o;
        if (i4 < left + i6) {
            i2 = 1;
        }
        if (i5 < coordinatorLayout.getTop() + i6) {
            i2 |= 4;
        }
        if (i4 > coordinatorLayout.getRight() - i6) {
            i2 |= 2;
        }
        if (i5 > coordinatorLayout.getBottom() - i6) {
            i2 |= 8;
        }
        iArr7[i] = i2;
        this.k |= 1 << i;
    }

    public final void m(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (i(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f89f[pointerId] = x;
                this.g[pointerId] = y;
            }
        }
    }

    public final void n(int i) {
        this.t.removeCallbacks(this.u);
        if (this.a != i) {
            this.a = i;
            this.q.o(i);
            if (this.a == 0) {
                this.r = null;
            }
        }
    }

    public final boolean o(int i, int i2) {
        if (this.s) {
            return h(i, i2, (int) this.l.getXVelocity(this.c), (int) this.l.getYVelocity(this.c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00cd, code lost:
    
        if (r12 != r11) goto L52;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean p(android.view.MotionEvent r18) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Fh.p(android.view.MotionEvent):boolean");
    }

    public final boolean q(View view, int i) {
        if (view == this.r && this.c == i) {
            return true;
        }
        if (view != null && this.q.A(view, i)) {
            this.c = i;
            b(view, i);
            return true;
        }
        return false;
    }
}
