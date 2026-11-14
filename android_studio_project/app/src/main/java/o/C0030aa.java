package o;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* renamed from: o.aa, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C0030aa {
    public int a = -1;
    public RecyclerView b;
    public AbstractC0431ud c;
    public boolean d;
    public boolean e;

    /* renamed from: f, reason: collision with root package name */
    public View f177f;
    public final Dd g;
    public boolean h;
    public final LinearInterpolator i;
    public final DecelerateInterpolator j;
    public PointF k;
    public final DisplayMetrics l;
    public boolean m;
    public float n;

    /* renamed from: o, reason: collision with root package name */
    public int f178o;
    public int p;

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, o.Dd] */
    public C0030aa(Context context) {
        ?? obj = new Object();
        obj.d = -1;
        obj.f81f = false;
        obj.g = 0;
        obj.a = 0;
        obj.b = 0;
        obj.c = PKIFailureInfo.systemUnavail;
        obj.e = null;
        this.g = obj;
        this.i = new LinearInterpolator();
        this.j = new DecelerateInterpolator();
        this.m = false;
        this.f178o = 0;
        this.p = 0;
        this.l = context.getResources().getDisplayMetrics();
    }

    public static int a(int i, int i2, int i3, int i4, int i5) {
        if (i5 != -1) {
            if (i5 != 0) {
                if (i5 == 1) {
                    return i4 - i2;
                }
                throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
            }
            int i6 = i3 - i;
            if (i6 > 0) {
                return i6;
            }
            int i7 = i4 - i2;
            if (i7 < 0) {
                return i7;
            }
            return 0;
        }
        return i3 - i;
    }

    public int b(View view, int i) {
        AbstractC0431ud abstractC0431ud = this.c;
        if (abstractC0431ud != null && abstractC0431ud.d()) {
            C0451vd c0451vd = (C0451vd) view.getLayoutParams();
            return a((view.getLeft() - ((C0451vd) view.getLayoutParams()).b.left) - ((ViewGroup.MarginLayoutParams) c0451vd).leftMargin, view.getRight() + ((C0451vd) view.getLayoutParams()).b.right + ((ViewGroup.MarginLayoutParams) c0451vd).rightMargin, abstractC0431ud.E(), abstractC0431ud.n - abstractC0431ud.F(), i);
        }
        return 0;
    }

    public int c(View view, int i) {
        AbstractC0431ud abstractC0431ud = this.c;
        if (abstractC0431ud != null && abstractC0431ud.e()) {
            C0451vd c0451vd = (C0451vd) view.getLayoutParams();
            return a((view.getTop() - ((C0451vd) view.getLayoutParams()).b.top) - ((ViewGroup.MarginLayoutParams) c0451vd).topMargin, view.getBottom() + ((C0451vd) view.getLayoutParams()).b.bottom + ((ViewGroup.MarginLayoutParams) c0451vd).bottomMargin, abstractC0431ud.G(), abstractC0431ud.f285o - abstractC0431ud.D(), i);
        }
        return 0;
    }

    public float d(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public int e(int i) {
        float abs = Math.abs(i);
        if (!this.m) {
            this.n = d(this.l);
            this.m = true;
        }
        return (int) Math.ceil(abs * this.n);
    }

    public PointF f(int i) {
        Object obj = this.c;
        if (obj instanceof Ed) {
            return ((Ed) obj).a(i);
        }
        Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + Ed.class.getCanonicalName());
        return null;
    }

    public final void g(int i, int i2) {
        PointF f2;
        RecyclerView recyclerView = this.b;
        int i3 = -1;
        if (this.a == -1 || recyclerView == null) {
            i();
        }
        if (this.d && this.f177f == null && this.c != null && (f2 = f(this.a)) != null) {
            float f3 = f2.x;
            if (f3 != 0.0f || f2.y != 0.0f) {
                recyclerView.X((int) Math.signum(f3), (int) Math.signum(f2.y), null);
            }
        }
        boolean z = false;
        this.d = false;
        View view = this.f177f;
        Dd dd = this.g;
        if (view != null) {
            this.b.getClass();
            Id I = RecyclerView.I(view);
            if (I != null) {
                i3 = I.b();
            }
            if (i3 == this.a) {
                View view2 = this.f177f;
                Fd fd = recyclerView.c0;
                h(view2, dd);
                dd.a(recyclerView);
                i();
            } else {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.f177f = null;
            }
        }
        if (this.e) {
            Fd fd2 = recyclerView.c0;
            if (this.b.l.v() == 0) {
                i();
            } else {
                int i4 = this.f178o;
                int i5 = i4 - i;
                if (i4 * i5 <= 0) {
                    i5 = 0;
                }
                this.f178o = i5;
                int i6 = this.p;
                int i7 = i6 - i2;
                if (i6 * i7 <= 0) {
                    i7 = 0;
                }
                this.p = i7;
                if (i5 == 0 && i7 == 0) {
                    PointF f4 = f(this.a);
                    if (f4 != null) {
                        if (f4.x != 0.0f || f4.y != 0.0f) {
                            float f5 = f4.y;
                            float sqrt = (float) Math.sqrt((f5 * f5) + (r10 * r10));
                            float f6 = f4.x / sqrt;
                            f4.x = f6;
                            float f7 = f4.y / sqrt;
                            f4.y = f7;
                            this.k = f4;
                            this.f178o = (int) (f6 * 10000.0f);
                            this.p = (int) (f7 * 10000.0f);
                            int e = e(10000);
                            LinearInterpolator linearInterpolator = this.i;
                            dd.a = (int) (this.f178o * 1.2f);
                            dd.b = (int) (this.p * 1.2f);
                            dd.c = (int) (e * 1.2f);
                            dd.e = linearInterpolator;
                            dd.f81f = true;
                        }
                    }
                    dd.d = this.a;
                    i();
                }
            }
            if (dd.d >= 0) {
                z = true;
            }
            dd.a(recyclerView);
            if (z && this.e) {
                this.d = true;
                recyclerView.W.a();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void h(android.view.View r7, o.Dd r8) {
        /*
            r6 = this;
            android.graphics.PointF r0 = r6.k
            r1 = 1
            r2 = 0
            r3 = -1
            r4 = 0
            if (r0 == 0) goto L15
            float r0 = r0.x
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 != 0) goto Lf
            goto L15
        Lf:
            if (r0 <= 0) goto L13
            r0 = r1
            goto L16
        L13:
            r0 = r3
            goto L16
        L15:
            r0 = r2
        L16:
            int r0 = r6.b(r7, r0)
            android.graphics.PointF r5 = r6.k
            if (r5 == 0) goto L2a
            float r5 = r5.y
            int r4 = (r5 > r4 ? 1 : (r5 == r4 ? 0 : -1))
            if (r4 != 0) goto L25
            goto L2a
        L25:
            if (r4 <= 0) goto L29
            r2 = r1
            goto L2a
        L29:
            r2 = r3
        L2a:
            int r7 = r6.c(r7, r2)
            int r2 = r0 * r0
            int r3 = r7 * r7
            int r3 = r3 + r2
            double r2 = (double) r3
            double r2 = java.lang.Math.sqrt(r2)
            int r2 = (int) r2
            int r2 = r6.e(r2)
            double r2 = (double) r2
            r4 = 4599717252057688074(0x3fd57a786c22680a, double:0.3356)
            double r2 = r2 / r4
            double r2 = java.lang.Math.ceil(r2)
            int r2 = (int) r2
            if (r2 <= 0) goto L59
            int r0 = -r0
            int r7 = -r7
            android.view.animation.DecelerateInterpolator r3 = r6.j
            r8.a = r0
            r8.b = r7
            r8.c = r2
            r8.e = r3
            r8.f81f = r1
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: o.C0030aa.h(android.view.View, o.Dd):void");
    }

    public final void i() {
        if (!this.e) {
            return;
        }
        this.e = false;
        this.p = 0;
        this.f178o = 0;
        this.k = null;
        this.b.c0.a = -1;
        this.f177f = null;
        this.a = -1;
        this.d = false;
        AbstractC0431ud abstractC0431ud = this.c;
        if (abstractC0431ud.e == this) {
            abstractC0431ud.e = null;
        }
        this.c = null;
        this.b = null;
    }
}
