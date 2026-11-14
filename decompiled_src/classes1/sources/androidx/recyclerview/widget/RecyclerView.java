package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import io.github.muntashirakon.adb.AndroidPubkey;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;
import o.AbstractC0119f;
import o.AbstractC0272md;
import o.AbstractC0335pg;
import o.AbstractC0352qd;
import o.AbstractC0371rd;
import o.AbstractC0431ud;
import o.AbstractC0455vh;
import o.AbstractC0471wd;
import o.AbstractC0491xd;
import o.Ad;
import o.Bd;
import o.C0030aa;
import o.C0252ld;
import o.C0319p0;
import o.C0332pd;
import o.C0339q0;
import o.C0380s2;
import o.C0385s7;
import o.C0424u6;
import o.C0451vd;
import o.C0510yd;
import o.C0526za;
import o.C0529zd;
import o.Cd;
import o.Dh;
import o.Fd;
import o.Gd;
import o.H1;
import o.Hd;
import o.Id;
import o.Ih;
import o.InterfaceC0312od;
import o.InterpolatorC0232kd;
import o.J2;
import o.Kd;
import o.L3;
import o.Qe;
import o.R8;
import o.T8;
import o.Tb;
import o.Wb;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.conscrypt.BuildConfig;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class RecyclerView extends ViewGroup {
    public static final int[] s0 = {R.attr.nestedScrollingEnabled};
    public static final Class[] t0;
    public static final InterpolatorC0232kd u0;
    public int A;
    public int B;
    public C0332pd C;
    public EdgeEffect D;
    public EdgeEffect E;
    public EdgeEffect F;
    public EdgeEffect G;
    public AbstractC0352qd H;
    public int I;
    public int J;
    public VelocityTracker K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public AbstractC0471wd Q;
    public final int R;
    public final int S;
    public final float T;
    public final float U;
    public boolean V;
    public final Hd W;
    public final C0424u6 a;
    public T8 a0;
    public final Ad b;
    public final R8 b0;
    public Cd c;
    public final Fd c0;
    public final C0339q0 d;
    public AbstractC0491xd d0;
    public final C0380s2 e;
    public ArrayList e0;

    /* renamed from: f, reason: collision with root package name */
    public final H1 f41f;
    public boolean f0;
    public boolean g;
    public boolean g0;
    public final Rect h;
    public final C0252ld h0;
    public final Rect i;
    public boolean i0;
    public final RectF j;
    public Kd j0;
    public AbstractC0272md k;
    public final int[] k0;
    public AbstractC0431ud l;
    public Tb l0;
    public final ArrayList m;
    public final int[] m0;
    public final ArrayList n;
    public final int[] n0;

    /* renamed from: o, reason: collision with root package name */
    public C0385s7 f42o;
    public final int[] o0;
    public boolean p;
    public final ArrayList p0;
    public boolean q;
    public final J2 q0;
    public boolean r;
    public final C0252ld r0;
    public int s;
    public boolean t;
    public boolean u;
    public boolean v;
    public int w;
    public final AccessibilityManager x;
    public boolean y;
    public boolean z;

    static {
        Class cls = Integer.TYPE;
        t0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        u0 = new InterpolatorC0232kd(0);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 2130903971);
    }

    public static RecyclerView D(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView D = D(viewGroup.getChildAt(i));
            if (D != null) {
                return D;
            }
        }
        return null;
    }

    public static Id I(View view) {
        if (view == null) {
            return null;
        }
        return ((C0451vd) view.getLayoutParams()).a;
    }

    private Tb getScrollingChildHelper() {
        if (this.l0 == null) {
            this.l0 = new Tb(this);
        }
        return this.l0;
    }

    public static void j(Id id) {
        WeakReference weakReference = id.b;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            while (view != null) {
                if (view == id.a) {
                    return;
                }
                Object parent = view.getParent();
                if (parent instanceof View) {
                    view = (View) parent;
                } else {
                    view = null;
                }
            }
            id.b = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:?, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View A(android.view.View r3) {
        /*
            r2 = this;
            android.view.ViewParent r0 = r3.getParent()
        L4:
            if (r0 == 0) goto L14
            if (r0 == r2) goto L14
            boolean r1 = r0 instanceof android.view.View
            if (r1 == 0) goto L14
            r3 = r0
            android.view.View r3 = (android.view.View) r3
            android.view.ViewParent r0 = r3.getParent()
            goto L4
        L14:
            if (r0 != r2) goto L17
            goto L18
        L17:
            r3 = 0
        L18:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.A(android.view.View):android.view.View");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean B(android.view.MotionEvent r12) {
        /*
            r11 = this;
            int r0 = r12.getAction()
            java.util.ArrayList r1 = r11.n
            int r2 = r1.size()
            r3 = 0
            r4 = r3
        Lc:
            if (r4 >= r2) goto L64
            java.lang.Object r5 = r1.get(r4)
            o.s7 r5 = (o.C0385s7) r5
            int r6 = r5.v
            r7 = 1
            r8 = 2
            if (r6 != r7) goto L59
            float r6 = r12.getX()
            float r9 = r12.getY()
            boolean r6 = r5.d(r6, r9)
            float r9 = r12.getX()
            float r10 = r12.getY()
            boolean r9 = r5.c(r9, r10)
            int r10 = r12.getAction()
            if (r10 != 0) goto L61
            if (r6 != 0) goto L3c
            if (r9 == 0) goto L61
        L3c:
            if (r9 == 0) goto L49
            r5.w = r7
            float r6 = r12.getX()
            int r6 = (int) r6
            float r6 = (float) r6
            r5.p = r6
            goto L55
        L49:
            if (r6 == 0) goto L55
            r5.w = r8
            float r6 = r12.getY()
            int r6 = (int) r6
            float r6 = (float) r6
            r5.m = r6
        L55:
            r5.f(r8)
            goto L5b
        L59:
            if (r6 != r8) goto L61
        L5b:
            r6 = 3
            if (r0 == r6) goto L61
            r11.f42o = r5
            return r7
        L61:
            int r4 = r4 + 1
            goto Lc
        L64:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.B(android.view.MotionEvent):boolean");
    }

    public final void C(int[] iArr) {
        int m = this.e.m();
        if (m == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = Integer.MAX_VALUE;
        int i2 = PKIFailureInfo.systemUnavail;
        for (int i3 = 0; i3 < m; i3++) {
            Id I = I(this.e.l(i3));
            if (!I.p()) {
                int b = I.b();
                if (b < i) {
                    i = b;
                }
                if (b > i2) {
                    i2 = b;
                }
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    public final Id E(int i) {
        Id id = null;
        if (this.y) {
            return null;
        }
        int u = this.e.u();
        for (int i2 = 0; i2 < u; i2++) {
            Id I = I(this.e.t(i2));
            if (I != null && !I.i() && F(I) == i) {
                if (((ArrayList) this.e.d).contains(I.a)) {
                    id = I;
                } else {
                    return I;
                }
            }
        }
        return id;
    }

    public final int F(Id id) {
        if (id.d(AndroidPubkey.ANDROID_PUBKEY_ENCODED_SIZE) || !id.f()) {
            return -1;
        }
        C0339q0 c0339q0 = this.d;
        int i = id.c;
        ArrayList arrayList = c0339q0.a;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0319p0 c0319p0 = (C0319p0) arrayList.get(i2);
            int i3 = c0319p0.a;
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 == 8) {
                        int i4 = c0319p0.b;
                        if (i4 == i) {
                            i = c0319p0.c;
                        } else {
                            if (i4 < i) {
                                i--;
                            }
                            if (c0319p0.c <= i) {
                                i++;
                            }
                        }
                    }
                } else {
                    int i5 = c0319p0.b;
                    if (i5 <= i) {
                        int i6 = c0319p0.c;
                        if (i5 + i6 > i) {
                            return -1;
                        }
                        i -= i6;
                    } else {
                        continue;
                    }
                }
            } else if (c0319p0.b <= i) {
                i += c0319p0.c;
            }
        }
        return i;
    }

    public final long G(Id id) {
        if (this.k.b) {
            return id.e;
        }
        return id.c;
    }

    public final Id H(View view) {
        ViewParent parent = view.getParent();
        if (parent != null && parent != this) {
            throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
        }
        return I(view);
    }

    public final Rect J(View view) {
        C0451vd c0451vd = (C0451vd) view.getLayoutParams();
        boolean z = c0451vd.c;
        Rect rect = c0451vd.b;
        if (!z) {
            return rect;
        }
        if (this.c0.g && (c0451vd.a.l() || c0451vd.a.g())) {
            return rect;
        }
        rect.set(0, 0, 0, 0);
        ArrayList arrayList = this.m;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Rect rect2 = this.h;
            rect2.set(0, 0, 0, 0);
            ((AbstractC0371rd) arrayList.get(i)).getClass();
            ((C0451vd) view.getLayoutParams()).a.getClass();
            rect2.set(0, 0, 0, 0);
            rect.left += rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        c0451vd.c = false;
        return rect;
    }

    public final boolean K() {
        if (this.r && !this.y && !this.d.f()) {
            return false;
        }
        return true;
    }

    public final boolean L() {
        if (this.A > 0) {
            return true;
        }
        return false;
    }

    public final void M(int i) {
        if (this.l == null) {
            return;
        }
        setScrollState(2);
        this.l.n0(i);
        awakenScrollBars();
    }

    public final void N() {
        int u = this.e.u();
        for (int i = 0; i < u; i++) {
            ((C0451vd) this.e.t(i).getLayoutParams()).c = true;
        }
        ArrayList arrayList = this.b.c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0451vd c0451vd = (C0451vd) ((Id) arrayList.get(i2)).a.getLayoutParams();
            if (c0451vd != null) {
                c0451vd.c = true;
            }
        }
    }

    public final void O(int i, int i2, boolean z) {
        int i3 = i + i2;
        int u = this.e.u();
        for (int i4 = 0; i4 < u; i4++) {
            Id I = I(this.e.t(i4));
            if (I != null && !I.p()) {
                int i5 = I.c;
                Fd fd = this.c0;
                if (i5 >= i3) {
                    I.m(-i2, z);
                    fd.f87f = true;
                } else if (i5 >= i) {
                    I.a(8);
                    I.m(-i2, z);
                    I.c = i - 1;
                    fd.f87f = true;
                }
            }
        }
        Ad ad = this.b;
        ArrayList arrayList = ad.c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Id id = (Id) arrayList.get(size);
            if (id != null) {
                int i6 = id.c;
                if (i6 >= i3) {
                    id.m(-i2, z);
                } else if (i6 >= i) {
                    id.a(8);
                    ad.e(size);
                }
            }
        }
        requestLayout();
    }

    public final void P() {
        this.A++;
    }

    public final void Q(boolean z) {
        int i;
        AccessibilityManager accessibilityManager;
        int i2 = this.A - 1;
        this.A = i2;
        if (i2 < 1) {
            this.A = 0;
            if (z) {
                int i3 = this.w;
                this.w = 0;
                if (i3 != 0 && (accessibilityManager = this.x) != null && accessibilityManager.isEnabled()) {
                    AccessibilityEvent obtain = AccessibilityEvent.obtain();
                    obtain.setEventType(2048);
                    obtain.setContentChangeTypes(i3);
                    sendAccessibilityEventUnchecked(obtain);
                }
                ArrayList arrayList = this.p0;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    Id id = (Id) arrayList.get(size);
                    if (id.a.getParent() == this && !id.p() && (i = id.q) != -1) {
                        WeakHashMap weakHashMap = Dh.a;
                        id.a.setImportantForAccessibility(i);
                        id.q = -1;
                    }
                }
                arrayList.clear();
            }
        }
    }

    public final void R(MotionEvent motionEvent) {
        int i;
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.J) {
            if (actionIndex == 0) {
                i = 1;
            } else {
                i = 0;
            }
            this.J = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.N = x;
            this.L = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.O = y;
            this.M = y;
        }
    }

    public final void S() {
        if (!this.i0 && this.p) {
            WeakHashMap weakHashMap = Dh.a;
            postOnAnimation(this.q0);
            this.i0 = true;
        }
    }

    public final void T(Id id, Wb wb) {
        id.j &= -8193;
        boolean z = this.c0.h;
        H1 h1 = this.f41f;
        if (z && id.l() && !id.i() && !id.p()) {
            ((C0526za) h1.c).d(G(id), id);
        }
        Qe qe = (Qe) h1.b;
        Ih ih = (Ih) qe.get(id);
        if (ih == null) {
            ih = Ih.a();
            qe.put(id, ih);
        }
        ih.b = wb;
        ih.a |= 4;
    }

    public final void U(View view, View view2) {
        View view3;
        boolean z;
        if (view2 != null) {
            view3 = view2;
        } else {
            view3 = view;
        }
        int width = view3.getWidth();
        int height = view3.getHeight();
        Rect rect = this.h;
        rect.set(0, 0, width, height);
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof C0451vd) {
            C0451vd c0451vd = (C0451vd) layoutParams;
            if (!c0451vd.c) {
                int i = rect.left;
                Rect rect2 = c0451vd.b;
                rect.left = i - rect2.left;
                rect.right += rect2.right;
                rect.top -= rect2.top;
                rect.bottom += rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, rect);
            offsetRectIntoDescendantCoords(view, rect);
        }
        AbstractC0431ud abstractC0431ud = this.l;
        boolean z2 = !this.r;
        if (view2 == null) {
            z = true;
        } else {
            z = false;
        }
        abstractC0431ud.k0(this, view, this.h, z2, z);
    }

    public final void V() {
        VelocityTracker velocityTracker = this.K;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean z = false;
        c0(0);
        EdgeEffect edgeEffect = this.D;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.D.isFinished();
        }
        EdgeEffect edgeEffect2 = this.E;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z |= this.E.isFinished();
        }
        EdgeEffect edgeEffect3 = this.F;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z |= this.F.isFinished();
        }
        EdgeEffect edgeEffect4 = this.G;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z |= this.G.isFinished();
        }
        if (z) {
            WeakHashMap weakHashMap = Dh.a;
            postInvalidateOnAnimation();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean W(int r19, int r20, android.view.MotionEvent r21) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.W(int, int, android.view.MotionEvent):boolean");
    }

    public final void X(int i, int i2, int[] iArr) {
        int i3;
        int i4;
        Id id;
        C0380s2 c0380s2 = this.e;
        a0();
        P();
        int i5 = AbstractC0335pg.a;
        Trace.beginSection("RV Scroll");
        Fd fd = this.c0;
        z(fd);
        Ad ad = this.b;
        if (i != 0) {
            i3 = this.l.m0(i, ad, fd);
        } else {
            i3 = 0;
        }
        if (i2 != 0) {
            i4 = this.l.o0(i2, ad, fd);
        } else {
            i4 = 0;
        }
        Trace.endSection();
        int m = c0380s2.m();
        for (int i6 = 0; i6 < m; i6++) {
            View l = c0380s2.l(i6);
            Id H = H(l);
            if (H != null && (id = H.i) != null) {
                int left = l.getLeft();
                int top = l.getTop();
                View view = id.a;
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        Q(true);
        b0(false);
        if (iArr != null) {
            iArr[0] = i3;
            iArr[1] = i4;
        }
    }

    public final void Y(int i) {
        C0030aa c0030aa;
        if (this.u) {
            return;
        }
        setScrollState(0);
        Hd hd = this.W;
        hd.g.removeCallbacks(hd);
        hd.c.abortAnimation();
        AbstractC0431ud abstractC0431ud = this.l;
        if (abstractC0431ud != null && (c0030aa = abstractC0431ud.e) != null) {
            c0030aa.i();
        }
        AbstractC0431ud abstractC0431ud2 = this.l;
        if (abstractC0431ud2 == null) {
            Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            abstractC0431ud2.n0(i);
            awakenScrollBars();
        }
    }

    public final void Z(int i, int i2, boolean z) {
        AbstractC0431ud abstractC0431ud = this.l;
        if (abstractC0431ud == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.u) {
            return;
        }
        int i3 = 0;
        if (!abstractC0431ud.d()) {
            i = 0;
        }
        if (!this.l.e()) {
            i2 = 0;
        }
        if (i != 0 || i2 != 0) {
            if (z) {
                if (i != 0) {
                    i3 = 1;
                }
                if (i2 != 0) {
                    i3 |= 2;
                }
                getScrollingChildHelper().g(i3, 1);
            }
            this.W.b(i, i2, PKIFailureInfo.systemUnavail, null);
        }
    }

    public final void a0() {
        int i = this.s + 1;
        this.s = i;
        if (i == 1 && !this.u) {
            this.t = false;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        AbstractC0431ud abstractC0431ud = this.l;
        if (abstractC0431ud != null) {
            abstractC0431ud.getClass();
        }
        super.addFocusables(arrayList, i, i2);
    }

    public final void b0(boolean z) {
        if (this.s < 1) {
            this.s = 1;
        }
        if (!z && !this.u) {
            this.t = false;
        }
        if (this.s == 1) {
            if (z && this.t && !this.u && this.l != null && this.k != null) {
                o();
            }
            if (!this.u) {
                this.t = false;
            }
        }
        this.s--;
    }

    public final void c0(int i) {
        getScrollingChildHelper().h(i);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if ((layoutParams instanceof C0451vd) && this.l.f((C0451vd) layoutParams)) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        AbstractC0431ud abstractC0431ud = this.l;
        if (abstractC0431ud == null || !abstractC0431ud.d()) {
            return 0;
        }
        return this.l.j(this.c0);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        AbstractC0431ud abstractC0431ud = this.l;
        if (abstractC0431ud == null || !abstractC0431ud.d()) {
            return 0;
        }
        return this.l.k(this.c0);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        AbstractC0431ud abstractC0431ud = this.l;
        if (abstractC0431ud == null || !abstractC0431ud.d()) {
            return 0;
        }
        return this.l.l(this.c0);
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        AbstractC0431ud abstractC0431ud = this.l;
        if (abstractC0431ud == null || !abstractC0431ud.e()) {
            return 0;
        }
        return this.l.m(this.c0);
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        AbstractC0431ud abstractC0431ud = this.l;
        if (abstractC0431ud == null || !abstractC0431ud.e()) {
            return 0;
        }
        return this.l.n(this.c0);
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        AbstractC0431ud abstractC0431ud = this.l;
        if (abstractC0431ud == null || !abstractC0431ud.e()) {
            return 0;
        }
        return this.l.o(this.c0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f2, float f3, boolean z) {
        return getScrollingChildHelper().a(f2, f3, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f2, float f3) {
        return getScrollingChildHelper().b(f2, f3);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i, iArr, i2, 0, iArr2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().d(i, iArr, i2, i3, i4, null, 0);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        boolean z;
        int i;
        boolean z2;
        boolean z3;
        int i2;
        boolean z4 = true;
        super.draw(canvas);
        ArrayList arrayList = this.m;
        int size = arrayList.size();
        boolean z5 = false;
        for (int i3 = 0; i3 < size; i3++) {
            ((AbstractC0371rd) arrayList.get(i3)).b(canvas, this);
        }
        EdgeEffect edgeEffect = this.D;
        if (edgeEffect != null && !edgeEffect.isFinished()) {
            int save = canvas.save();
            if (this.g) {
                i2 = getPaddingBottom();
            } else {
                i2 = 0;
            }
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + i2, 0.0f);
            EdgeEffect edgeEffect2 = this.D;
            if (edgeEffect2 != null && edgeEffect2.draw(canvas)) {
                z = true;
            } else {
                z = false;
            }
            canvas.restoreToCount(save);
        } else {
            z = false;
        }
        EdgeEffect edgeEffect3 = this.E;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.g) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.E;
            if (edgeEffect4 != null && edgeEffect4.draw(canvas)) {
                z3 = true;
            } else {
                z3 = false;
            }
            z |= z3;
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.F;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            if (this.g) {
                i = getPaddingTop();
            } else {
                i = 0;
            }
            canvas.rotate(90.0f);
            canvas.translate(-i, -width);
            EdgeEffect edgeEffect6 = this.F;
            if (edgeEffect6 != null && edgeEffect6.draw(canvas)) {
                z2 = true;
            } else {
                z2 = false;
            }
            z |= z2;
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.G;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.g) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.G;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z5 = true;
            }
            z |= z5;
            canvas.restoreToCount(save4);
        }
        if (z || this.H == null || arrayList.size() <= 0 || !this.H.f()) {
            z4 = z;
        }
        if (z4) {
            WeakHashMap weakHashMap = Dh.a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    public final void f(Id id) {
        boolean z;
        View view = id.a;
        if (view.getParent() == this) {
            z = true;
        } else {
            z = false;
        }
        this.b.j(H(view));
        if (id.k()) {
            this.e.g(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z) {
            this.e.f(view, -1, true);
            return;
        }
        C0380s2 c0380s2 = this.e;
        int indexOfChild = ((C0252ld) c0380s2.b).a.indexOfChild(view);
        if (indexOfChild >= 0) {
            ((L3) c0380s2.c).h(indexOfChild);
            c0380s2.w(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x018a, code lost:
    
        if ((r5 * r6) < 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0192, code lost:
    
        if ((r5 * r6) > 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x015e, code lost:
    
        if (r7 > 0) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x017c, code lost:
    
        if (r5 > 0) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x017f, code lost:
    
        if (r7 < 0) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0182, code lost:
    
        if (r5 < 0) goto L136;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View focusSearch(android.view.View r17, int r18) {
        /*
            Method dump skipped, instructions count: 414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.focusSearch(android.view.View, int):android.view.View");
    }

    public final void g(AbstractC0371rd abstractC0371rd) {
        AbstractC0431ud abstractC0431ud = this.l;
        if (abstractC0431ud != null) {
            abstractC0431ud.c("Cannot add item decoration during a scroll  or layout");
        }
        ArrayList arrayList = this.m;
        if (arrayList.isEmpty()) {
            setWillNotDraw(false);
        }
        arrayList.add(abstractC0371rd);
        N();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        AbstractC0431ud abstractC0431ud = this.l;
        if (abstractC0431ud != null) {
            return abstractC0431ud.r();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + y());
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        AbstractC0431ud abstractC0431ud = this.l;
        if (abstractC0431ud != null) {
            return abstractC0431ud.s(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + y());
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public AbstractC0272md getAdapter() {
        return this.k;
    }

    @Override // android.view.View
    public int getBaseline() {
        AbstractC0431ud abstractC0431ud = this.l;
        if (abstractC0431ud != null) {
            abstractC0431ud.getClass();
            return -1;
        }
        return super.getBaseline();
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        return super.getChildDrawingOrder(i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.g;
    }

    public Kd getCompatAccessibilityDelegate() {
        return this.j0;
    }

    public C0332pd getEdgeEffectFactory() {
        return this.C;
    }

    public AbstractC0352qd getItemAnimator() {
        return this.H;
    }

    public int getItemDecorationCount() {
        return this.m.size();
    }

    public AbstractC0431ud getLayoutManager() {
        return this.l;
    }

    public int getMaxFlingVelocity() {
        return this.S;
    }

    public int getMinFlingVelocity() {
        return this.R;
    }

    public long getNanoTime() {
        return System.nanoTime();
    }

    public AbstractC0471wd getOnFlingListener() {
        return this.Q;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.V;
    }

    public C0529zd getRecycledViewPool() {
        return this.b.c();
    }

    public int getScrollState() {
        return this.I;
    }

    public final void h(AbstractC0491xd abstractC0491xd) {
        if (this.e0 == null) {
            this.e0 = new ArrayList();
        }
        this.e0.add(abstractC0491xd);
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().f(0);
    }

    public final void i(String str) {
        if (L()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + y());
            }
            throw new IllegalStateException(str);
        }
        if (this.B > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(BuildConfig.FLAVOR + y()));
        }
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.p;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.u;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().d;
    }

    public final void k() {
        int u = this.e.u();
        for (int i = 0; i < u; i++) {
            Id I = I(this.e.t(i));
            if (!I.p()) {
                I.d = -1;
                I.g = -1;
            }
        }
        Ad ad = this.b;
        ArrayList arrayList = ad.c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Id id = (Id) arrayList.get(i2);
            id.d = -1;
            id.g = -1;
        }
        ArrayList arrayList2 = ad.a;
        int size2 = arrayList2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            Id id2 = (Id) arrayList2.get(i3);
            id2.d = -1;
            id2.g = -1;
        }
        ArrayList arrayList3 = ad.b;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i4 = 0; i4 < size3; i4++) {
                Id id3 = (Id) ad.b.get(i4);
                id3.d = -1;
                id3.g = -1;
            }
        }
    }

    public final void l(int i, int i2) {
        boolean z;
        EdgeEffect edgeEffect = this.D;
        if (edgeEffect != null && !edgeEffect.isFinished() && i > 0) {
            this.D.onRelease();
            z = this.D.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.F;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i < 0) {
            this.F.onRelease();
            z |= this.F.isFinished();
        }
        EdgeEffect edgeEffect3 = this.E;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i2 > 0) {
            this.E.onRelease();
            z |= this.E.isFinished();
        }
        EdgeEffect edgeEffect4 = this.G;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i2 < 0) {
            this.G.onRelease();
            z |= this.G.isFinished();
        }
        if (z) {
            WeakHashMap weakHashMap = Dh.a;
            postInvalidateOnAnimation();
        }
    }

    public final void m() {
        C0339q0 c0339q0 = this.d;
        if (this.r && !this.y) {
            if (!c0339q0.f()) {
                return;
            }
            c0339q0.getClass();
            if (c0339q0.f()) {
                int i = AbstractC0335pg.a;
                Trace.beginSection("RV FullInvalidate");
                o();
                Trace.endSection();
                return;
            }
            return;
        }
        int i2 = AbstractC0335pg.a;
        Trace.beginSection("RV FullInvalidate");
        o();
        Trace.endSection();
    }

    public final void n(int i, int i2) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        WeakHashMap weakHashMap = Dh.a;
        setMeasuredDimension(AbstractC0431ud.g(i, paddingRight, getMinimumWidth()), AbstractC0431ud.g(i2, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:149:0x031d, code lost:
    
        if (((java.util.ArrayList) r19.e.d).contains(getFocusedChild()) == false) goto L214;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:177:0x03c7  */
    /* JADX WARN: Type inference failed for: r13v7, types: [o.Wb, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v21, types: [int] */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r9v0, types: [o.H1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void o() {
        /*
            Method dump skipped, instructions count: 997
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.o():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x005a, code lost:
    
        if (r1 >= 30.0f) goto L20;
     */
    /* JADX WARN: Type inference failed for: r1v3, types: [o.T8, java.lang.Object] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onAttachedToWindow() {
        /*
            r5 = this;
            super.onAttachedToWindow()
            r0 = 0
            r5.A = r0
            r1 = 1
            r5.p = r1
            boolean r2 = r5.r
            if (r2 == 0) goto L15
            boolean r2 = r5.isLayoutRequested()
            if (r2 != 0) goto L15
            r2 = r1
            goto L16
        L15:
            r2 = r0
        L16:
            r5.r = r2
            o.ud r2 = r5.l
            if (r2 == 0) goto L21
            r2.g = r1
            r2.Q(r5)
        L21:
            r5.i0 = r0
            java.lang.ThreadLocal r0 = o.T8.e
            java.lang.Object r1 = r0.get()
            o.T8 r1 = (o.T8) r1
            r5.a0 = r1
            if (r1 != 0) goto L6b
            o.T8 r1 = new o.T8
            r1.<init>()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.a = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.d = r2
            r5.a0 = r1
            java.util.WeakHashMap r1 = o.Dh.a
            android.view.Display r1 = r5.getDisplay()
            boolean r2 = r5.isInEditMode()
            if (r2 != 0) goto L5d
            if (r1 == 0) goto L5d
            float r1 = r1.getRefreshRate()
            r2 = 1106247680(0x41f00000, float:30.0)
            int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r2 < 0) goto L5d
            goto L5f
        L5d:
            r1 = 1114636288(0x42700000, float:60.0)
        L5f:
            o.T8 r2 = r5.a0
            r3 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r3 = r3 / r1
            long r3 = (long) r3
            r2.c = r3
            r0.set(r2)
        L6b:
            o.T8 r0 = r5.a0
            java.util.ArrayList r0 = r0.a
            r0.add(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        C0030aa c0030aa;
        super.onDetachedFromWindow();
        AbstractC0352qd abstractC0352qd = this.H;
        if (abstractC0352qd != null) {
            abstractC0352qd.e();
        }
        setScrollState(0);
        Hd hd = this.W;
        hd.g.removeCallbacks(hd);
        hd.c.abortAnimation();
        AbstractC0431ud abstractC0431ud = this.l;
        if (abstractC0431ud != null && (c0030aa = abstractC0431ud.e) != null) {
            c0030aa.i();
        }
        this.p = false;
        AbstractC0431ud abstractC0431ud2 = this.l;
        if (abstractC0431ud2 != null) {
            abstractC0431ud2.g = false;
            abstractC0431ud2.R(this);
        }
        this.p0.clear();
        removeCallbacks(this.q0);
        this.f41f.getClass();
        do {
        } while (Ih.d.a() != null);
        T8 t8 = this.a0;
        if (t8 != null) {
            t8.a.remove(this);
            this.a0 = null;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList arrayList = this.m;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC0371rd) arrayList.get(i)).a(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0068  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onGenericMotionEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            o.ud r0 = r5.l
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            boolean r0 = r5.u
            if (r0 == 0) goto Lb
            return r1
        Lb:
            int r0 = r6.getAction()
            r2 = 8
            if (r0 != r2) goto L77
            int r0 = r6.getSource()
            r0 = r0 & 2
            r2 = 0
            if (r0 == 0) goto L3e
            o.ud r0 = r5.l
            boolean r0 = r0.e()
            if (r0 == 0) goto L2c
            r0 = 9
            float r0 = r6.getAxisValue(r0)
            float r0 = -r0
            goto L2d
        L2c:
            r0 = r2
        L2d:
            o.ud r3 = r5.l
            boolean r3 = r3.d()
            if (r3 == 0) goto L3c
            r3 = 10
            float r3 = r6.getAxisValue(r3)
            goto L64
        L3c:
            r3 = r2
            goto L64
        L3e:
            int r0 = r6.getSource()
            r3 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r3
            if (r0 == 0) goto L62
            r0 = 26
            float r0 = r6.getAxisValue(r0)
            o.ud r3 = r5.l
            boolean r3 = r3.e()
            if (r3 == 0) goto L57
            float r0 = -r0
            goto L3c
        L57:
            o.ud r3 = r5.l
            boolean r3 = r3.d()
            if (r3 == 0) goto L62
            r3 = r0
            r0 = r2
            goto L64
        L62:
            r0 = r2
            r3 = r0
        L64:
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L6c
            int r2 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r2 == 0) goto L77
        L6c:
            float r2 = r5.T
            float r3 = r3 * r2
            int r2 = (int) r3
            float r3 = r5.U
            float r0 = r0 * r3
            int r0 = (int) r0
            r5.W(r2, r0, r6)
        L77:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (this.u) {
            return false;
        }
        this.f42o = null;
        if (B(motionEvent)) {
            V();
            setScrollState(0);
            return true;
        }
        AbstractC0431ud abstractC0431ud = this.l;
        if (abstractC0431ud == null) {
            return false;
        }
        boolean d = abstractC0431ud.d();
        boolean e = this.l.e();
        if (this.K == null) {
            this.K = VelocityTracker.obtain();
        }
        this.K.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked != 5) {
                            if (actionMasked == 6) {
                                R(motionEvent);
                            }
                        } else {
                            this.J = motionEvent.getPointerId(actionIndex);
                            int x = (int) (motionEvent.getX(actionIndex) + 0.5f);
                            this.N = x;
                            this.L = x;
                            int y = (int) (motionEvent.getY(actionIndex) + 0.5f);
                            this.O = y;
                            this.M = y;
                        }
                    } else {
                        V();
                        setScrollState(0);
                    }
                } else {
                    int findPointerIndex = motionEvent.findPointerIndex(this.J);
                    if (findPointerIndex < 0) {
                        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.J + " not found. Did any MotionEvents get skipped?");
                        return false;
                    }
                    int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                    int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                    if (this.I != 1) {
                        int i = x2 - this.L;
                        int i2 = y2 - this.M;
                        if (d != 0 && Math.abs(i) > this.P) {
                            this.N = x2;
                            z = true;
                        } else {
                            z = false;
                        }
                        if (e && Math.abs(i2) > this.P) {
                            this.O = y2;
                            z = true;
                        }
                        if (z) {
                            setScrollState(1);
                        }
                    }
                }
            } else {
                this.K.clear();
                c0(0);
            }
        } else {
            if (this.v) {
                this.v = false;
            }
            this.J = motionEvent.getPointerId(0);
            int x3 = (int) (motionEvent.getX() + 0.5f);
            this.N = x3;
            this.L = x3;
            int y3 = (int) (motionEvent.getY() + 0.5f);
            this.O = y3;
            this.M = y3;
            if (this.I == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                c0(1);
            }
            int[] iArr = this.n0;
            iArr[1] = 0;
            iArr[0] = 0;
            int i3 = d;
            if (e) {
                i3 = (d ? 1 : 0) | 2;
            }
            getScrollingChildHelper().g(i3, 0);
        }
        if (this.I != 1) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = AbstractC0335pg.a;
        Trace.beginSection("RV OnLayout");
        o();
        Trace.endSection();
        this.r = true;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        AbstractC0431ud abstractC0431ud = this.l;
        if (abstractC0431ud == null) {
            n(i, i2);
            return;
        }
        boolean L = abstractC0431ud.L();
        Fd fd = this.c0;
        if (L) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.l.b.n(i, i2);
            if ((mode == 1073741824 && mode2 == 1073741824) || this.k == null) {
                return;
            }
            if (fd.d == 1) {
                p();
            }
            this.l.q0(i, i2);
            fd.i = true;
            q();
            this.l.s0(i, i2);
            if (this.l.v0()) {
                this.l.q0(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                fd.i = true;
                q();
                this.l.s0(i, i2);
                return;
            }
            return;
        }
        if (this.q) {
            this.l.b.n(i, i2);
            return;
        }
        if (fd.k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        AbstractC0272md abstractC0272md = this.k;
        if (abstractC0272md != null) {
            fd.e = abstractC0272md.a();
        } else {
            fd.e = 0;
        }
        a0();
        this.l.b.n(i, i2);
        b0(false);
        fd.g = false;
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (L()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof Cd)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Cd cd = (Cd) parcelable;
        this.c = cd;
        super.onRestoreInstanceState(cd.a);
        AbstractC0431ud abstractC0431ud = this.l;
        if (abstractC0431ud != null && (parcelable2 = this.c.c) != null) {
            abstractC0431ud.d0(parcelable2);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [o.Cd, android.os.Parcelable, o.f] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? abstractC0119f = new AbstractC0119f(super.onSaveInstanceState());
        Cd cd = this.c;
        if (cd != null) {
            abstractC0119f.c = cd.c;
        } else {
            AbstractC0431ud abstractC0431ud = this.l;
            if (abstractC0431ud != null) {
                abstractC0119f.c = abstractC0431ud.e0();
            } else {
                abstractC0119f.c = null;
            }
        }
        return abstractC0119f;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3 || i2 != i4) {
            this.G = null;
            this.E = null;
            this.F = null;
            this.D = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:141:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x047a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0213  */
    /* JADX WARN: Type inference failed for: r7v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v7 */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r24) {
        /*
            Method dump skipped, instructions count: 1213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x03e9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x03cd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0222 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c3  */
    /* JADX WARN: Type inference failed for: r7v8, types: [o.Wb, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v9, types: [o.Wb, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void p() {
        /*
            Method dump skipped, instructions count: 1340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.p():void");
    }

    public final void q() {
        boolean z;
        a0();
        P();
        Fd fd = this.c0;
        fd.a(6);
        this.d.b();
        fd.e = this.k.a();
        fd.c = 0;
        fd.g = false;
        this.l.b0(this.b, fd);
        fd.f87f = false;
        this.c = null;
        if (fd.j && this.H != null) {
            z = true;
        } else {
            z = false;
        }
        fd.j = z;
        fd.d = 4;
        Q(true);
        b0(false);
    }

    public final boolean r(int i, int[] iArr, int i2, int i3, int[] iArr2) {
        return getScrollingChildHelper().c(i, iArr, i2, i3, iArr2);
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z) {
        Id I = I(view);
        if (I != null) {
            if (I.k()) {
                I.j &= -257;
            } else if (!I.p()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + I + y());
            }
        }
        view.clearAnimation();
        I(view);
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        C0030aa c0030aa = this.l.e;
        if ((c0030aa == null || !c0030aa.e) && !L() && view2 != null) {
            U(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.l.k0(this, view, rect, z, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        ArrayList arrayList = this.n;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((C0385s7) arrayList.get(i)).getClass();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.s == 0 && !this.u) {
            super.requestLayout();
        } else {
            this.t = true;
        }
    }

    public final void s(int i, int[] iArr, int i2, int i3, int i4, int[] iArr2, int i5) {
        getScrollingChildHelper().d(i, iArr, i2, i3, i4, iArr2, i5);
    }

    @Override // android.view.View
    public final void scrollBy(int i, int i2) {
        AbstractC0431ud abstractC0431ud = this.l;
        if (abstractC0431ud == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.u) {
            return;
        }
        boolean d = abstractC0431ud.d();
        boolean e = this.l.e();
        if (d || e) {
            if (!d) {
                i = 0;
            }
            if (!e) {
                i2 = 0;
            }
            W(i, i2, null);
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        int i;
        if (L()) {
            int i2 = 0;
            if (accessibilityEvent != null) {
                i = accessibilityEvent.getContentChangeTypes();
            } else {
                i = 0;
            }
            if (i != 0) {
                i2 = i;
            }
            this.w |= i2;
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(Kd kd) {
        this.j0 = kd;
        Dh.l(this, kd);
    }

    public void setAdapter(AbstractC0272md abstractC0272md) {
        setLayoutFrozen(false);
        AbstractC0272md abstractC0272md2 = this.k;
        C0424u6 c0424u6 = this.a;
        if (abstractC0272md2 != null) {
            abstractC0272md2.a.unregisterObserver(c0424u6);
            this.k.getClass();
        }
        AbstractC0352qd abstractC0352qd = this.H;
        if (abstractC0352qd != null) {
            abstractC0352qd.e();
        }
        AbstractC0431ud abstractC0431ud = this.l;
        Ad ad = this.b;
        if (abstractC0431ud != null) {
            abstractC0431ud.g0(ad);
            this.l.h0(ad);
        }
        ad.a.clear();
        ad.d();
        C0339q0 c0339q0 = this.d;
        c0339q0.i(c0339q0.a);
        c0339q0.i((ArrayList) c0339q0.c);
        AbstractC0272md abstractC0272md3 = this.k;
        this.k = abstractC0272md;
        if (abstractC0272md != null) {
            abstractC0272md.a.registerObserver(c0424u6);
        }
        AbstractC0272md abstractC0272md4 = this.k;
        ad.a.clear();
        ad.d();
        C0529zd c = ad.c();
        if (abstractC0272md3 != null) {
            c.b--;
        }
        if (c.b == 0) {
            int i = 0;
            while (true) {
                SparseArray sparseArray = c.a;
                if (i >= sparseArray.size()) {
                    break;
                }
                ((C0510yd) sparseArray.valueAt(i)).a.clear();
                i++;
            }
        }
        if (abstractC0272md4 != null) {
            c.b++;
        }
        this.c0.f87f = true;
        this.z |= false;
        this.y = true;
        int u = this.e.u();
        for (int i2 = 0; i2 < u; i2++) {
            Id I = I(this.e.t(i2));
            if (I != null && !I.p()) {
                I.a(6);
            }
        }
        N();
        Ad ad2 = this.b;
        ArrayList arrayList = ad2.c;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            Id id = (Id) arrayList.get(i3);
            if (id != null) {
                id.a(6);
                id.a(1024);
            }
        }
        AbstractC0272md abstractC0272md5 = ad2.h.k;
        if (abstractC0272md5 == null || !abstractC0272md5.b) {
            ad2.d();
        }
        requestLayout();
    }

    public void setChildDrawingOrderCallback(InterfaceC0312od interfaceC0312od) {
        if (interfaceC0312od == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(false);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.g) {
            this.G = null;
            this.E = null;
            this.F = null;
            this.D = null;
        }
        this.g = z;
        super.setClipToPadding(z);
        if (this.r) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(C0332pd c0332pd) {
        c0332pd.getClass();
        this.C = c0332pd;
        this.G = null;
        this.E = null;
        this.F = null;
        this.D = null;
    }

    public void setHasFixedSize(boolean z) {
        this.q = z;
    }

    public void setItemAnimator(AbstractC0352qd abstractC0352qd) {
        AbstractC0352qd abstractC0352qd2 = this.H;
        if (abstractC0352qd2 != null) {
            abstractC0352qd2.e();
            this.H.a = null;
        }
        this.H = abstractC0352qd;
        if (abstractC0352qd != null) {
            abstractC0352qd.a = this.h0;
        }
    }

    public void setItemViewCacheSize(int i) {
        Ad ad = this.b;
        ad.e = i;
        ad.k();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(AbstractC0431ud abstractC0431ud) {
        RecyclerView recyclerView;
        C0030aa c0030aa;
        if (abstractC0431ud == this.l) {
            return;
        }
        setScrollState(0);
        Hd hd = this.W;
        hd.g.removeCallbacks(hd);
        hd.c.abortAnimation();
        AbstractC0431ud abstractC0431ud2 = this.l;
        if (abstractC0431ud2 != null && (c0030aa = abstractC0431ud2.e) != null) {
            c0030aa.i();
        }
        AbstractC0431ud abstractC0431ud3 = this.l;
        Ad ad = this.b;
        if (abstractC0431ud3 != null) {
            AbstractC0352qd abstractC0352qd = this.H;
            if (abstractC0352qd != null) {
                abstractC0352qd.e();
            }
            this.l.g0(ad);
            this.l.h0(ad);
            ad.a.clear();
            ad.d();
            if (this.p) {
                AbstractC0431ud abstractC0431ud4 = this.l;
                abstractC0431ud4.g = false;
                abstractC0431ud4.R(this);
            }
            this.l.t0(null);
            this.l = null;
        } else {
            ad.a.clear();
            ad.d();
        }
        C0380s2 c0380s2 = this.e;
        ((L3) c0380s2.c).g();
        ArrayList arrayList = (ArrayList) c0380s2.d;
        int size = arrayList.size() - 1;
        while (true) {
            recyclerView = ((C0252ld) c0380s2.b).a;
            if (size < 0) {
                break;
            }
            Id I = I((View) arrayList.get(size));
            if (I != null) {
                int i = I.p;
                if (recyclerView.L()) {
                    I.q = i;
                    recyclerView.p0.add(I);
                } else {
                    WeakHashMap weakHashMap = Dh.a;
                    I.a.setImportantForAccessibility(i);
                }
                I.p = 0;
            }
            arrayList.remove(size);
            size--;
        }
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            I(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeAllViews();
        this.l = abstractC0431ud;
        if (abstractC0431ud != null) {
            if (abstractC0431ud.b == null) {
                abstractC0431ud.t0(this);
                if (this.p) {
                    AbstractC0431ud abstractC0431ud5 = this.l;
                    abstractC0431ud5.g = true;
                    abstractC0431ud5.Q(this);
                }
            } else {
                throw new IllegalArgumentException("LayoutManager " + abstractC0431ud + " is already attached to a RecyclerView:" + abstractC0431ud.b.y());
            }
        }
        ad.k();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition == null) {
            super.setLayoutTransition(null);
            return;
        }
        throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        Tb scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.d) {
            WeakHashMap weakHashMap = Dh.a;
            AbstractC0455vh.m(scrollingChildHelper.c);
        }
        scrollingChildHelper.d = z;
    }

    public void setOnFlingListener(AbstractC0471wd abstractC0471wd) {
        this.Q = abstractC0471wd;
    }

    @Deprecated
    public void setOnScrollListener(AbstractC0491xd abstractC0491xd) {
        this.d0 = abstractC0491xd;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.V = z;
    }

    public void setRecycledViewPool(C0529zd c0529zd) {
        Ad ad = this.b;
        if (ad.g != null) {
            r1.b--;
        }
        ad.g = c0529zd;
        if (c0529zd != null && ad.h.getAdapter() != null) {
            ad.g.b++;
        }
    }

    public void setRecyclerListener(Bd bd) {
    }

    public void setScrollState(int i) {
        C0030aa c0030aa;
        if (i == this.I) {
            return;
        }
        this.I = i;
        if (i != 2) {
            Hd hd = this.W;
            hd.g.removeCallbacks(hd);
            hd.c.abortAnimation();
            AbstractC0431ud abstractC0431ud = this.l;
            if (abstractC0431ud != null && (c0030aa = abstractC0431ud.e) != null) {
                c0030aa.i();
            }
        }
        AbstractC0431ud abstractC0431ud2 = this.l;
        if (abstractC0431ud2 != null) {
            abstractC0431ud2.f0(i);
        }
        AbstractC0491xd abstractC0491xd = this.d0;
        if (abstractC0491xd != null) {
            abstractC0491xd.a(this, i);
        }
        ArrayList arrayList = this.e0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((AbstractC0491xd) this.e0.get(size)).a(this, i);
            }
        }
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 0) {
            if (i != 1) {
                Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
            } else {
                this.P = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
        }
        this.P = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(Gd gd) {
        this.b.getClass();
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return getScrollingChildHelper().g(i, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        getScrollingChildHelper().h(0);
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        C0030aa c0030aa;
        if (z != this.u) {
            i("Do not suppressLayout in layout or scroll");
            if (!z) {
                this.u = false;
                if (this.t && this.l != null && this.k != null) {
                    requestLayout();
                }
                this.t = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            this.u = true;
            this.v = true;
            setScrollState(0);
            Hd hd = this.W;
            hd.g.removeCallbacks(hd);
            hd.c.abortAnimation();
            AbstractC0431ud abstractC0431ud = this.l;
            if (abstractC0431ud != null && (c0030aa = abstractC0431ud.e) != null) {
                c0030aa.i();
            }
        }
    }

    public final void t(int i, int i2) {
        this.B++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        AbstractC0491xd abstractC0491xd = this.d0;
        if (abstractC0491xd != null) {
            abstractC0491xd.b(this, i, i2);
        }
        ArrayList arrayList = this.e0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((AbstractC0491xd) this.e0.get(size)).b(this, i, i2);
            }
        }
        this.B--;
    }

    public final void u() {
        if (this.G != null) {
            return;
        }
        this.C.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.G = edgeEffect;
        if (this.g) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final void v() {
        if (this.D != null) {
            return;
        }
        this.C.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.D = edgeEffect;
        if (this.g) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void w() {
        if (this.F != null) {
            return;
        }
        this.C.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.F = edgeEffect;
        if (this.g) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void x() {
        if (this.E != null) {
            return;
        }
        this.C.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.E = edgeEffect;
        if (this.g) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final String y() {
        return " " + super.toString() + ", adapter:" + this.k + ", layout:" + this.l + ", context:" + getContext();
    }

    public final void z(Fd fd) {
        if (getScrollState() == 2) {
            OverScroller overScroller = this.W.c;
            overScroller.getFinalX();
            overScroller.getCurrX();
            fd.getClass();
            overScroller.getFinalY();
            overScroller.getCurrY();
            return;
        }
        fd.getClass();
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x03e5  */
    /* JADX WARN: Type inference failed for: r1v12, types: [o.R8, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.lang.Object, o.Fd] */
    /* JADX WARN: Type inference failed for: r1v8, types: [o.pd, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9, types: [o.qd, o.B5, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public RecyclerView(android.content.Context r22, android.util.AttributeSet r23, int r24) {
        /*
            Method dump skipped, instructions count: 1020
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AbstractC0431ud abstractC0431ud = this.l;
        if (abstractC0431ud != null) {
            return abstractC0431ud.t(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + y());
    }
}
