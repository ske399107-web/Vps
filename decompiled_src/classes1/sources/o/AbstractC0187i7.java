package o;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.ArrayList;
import java.util.WeakHashMap;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* renamed from: o.i7, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0187i7 extends r {
    public static final Rect n = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, PKIFailureInfo.systemUnavail, PKIFailureInfo.systemUnavail);

    /* renamed from: o, reason: collision with root package name */
    public static final C0424u6 f228o = new C0424u6(13);
    public static final C0424u6 p = new C0424u6(14);
    public final AccessibilityManager h;
    public final View i;
    public C0167h7 j;
    public final Rect d = new Rect();
    public final Rect e = new Rect();

    /* renamed from: f, reason: collision with root package name */
    public final Rect f229f = new Rect();
    public final int[] g = new int[2];
    public int k = PKIFailureInfo.systemUnavail;
    public int l = PKIFailureInfo.systemUnavail;
    public int m = PKIFailureInfo.systemUnavail;

    public AbstractC0187i7(View view) {
        this.i = view;
        this.h = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        WeakHashMap weakHashMap = Dh.a;
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
    }

    @Override // o.r
    public final C b(View view) {
        if (this.j == null) {
            this.j = new C0167h7(this);
        }
        return this.j;
    }

    @Override // o.r
    public final void d(View view, D d) {
        this.a.onInitializeAccessibilityNodeInfo(view, d.a);
        t(d);
    }

    public final boolean j(int i) {
        if (this.l != i) {
            return false;
        }
        this.l = PKIFailureInfo.systemUnavail;
        v(i, false);
        x(i, 8);
        return true;
    }

    public final AccessibilityEvent k(int i, int i2) {
        View view = this.i;
        if (i != -1) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
            D r = r(i);
            obtain.getText().add(r.g());
            AccessibilityNodeInfo accessibilityNodeInfo = r.a;
            obtain.setContentDescription(accessibilityNodeInfo.getContentDescription());
            obtain.setScrollable(accessibilityNodeInfo.isScrollable());
            obtain.setPassword(accessibilityNodeInfo.isPassword());
            obtain.setEnabled(accessibilityNodeInfo.isEnabled());
            obtain.setChecked(accessibilityNodeInfo.isChecked());
            if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
                throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
            }
            obtain.setClassName(accessibilityNodeInfo.getClassName());
            obtain.setSource(view, i);
            obtain.setPackageName(view.getContext().getPackageName());
            return obtain;
        }
        AccessibilityEvent obtain2 = AccessibilityEvent.obtain(i2);
        view.onInitializeAccessibilityEvent(obtain2);
        return obtain2;
    }

    public final D l(int i) {
        boolean z;
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
        D d = new D(obtain);
        obtain.setEnabled(true);
        obtain.setFocusable(true);
        d.i("android.view.View");
        Rect rect = n;
        obtain.setBoundsInParent(rect);
        obtain.setBoundsInScreen(rect);
        View view = this.i;
        obtain.setParent(view);
        u(i, d);
        if (d.g() == null && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        Rect rect2 = this.e;
        d.f(rect2);
        if (!rect2.equals(rect)) {
            int actions = obtain.getActions();
            if ((actions & 64) == 0) {
                if ((actions & 128) == 0) {
                    obtain.setPackageName(view.getContext().getPackageName());
                    d.b = i;
                    obtain.setSource(view, i);
                    if (this.k == i) {
                        obtain.setAccessibilityFocused(true);
                        d.a(128);
                    } else {
                        obtain.setAccessibilityFocused(false);
                        d.a(64);
                    }
                    if (this.l == i) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        d.a(2);
                    } else if (obtain.isFocusable()) {
                        d.a(1);
                    }
                    obtain.setFocused(z);
                    int[] iArr = this.g;
                    view.getLocationOnScreen(iArr);
                    Rect rect3 = this.d;
                    obtain.getBoundsInScreen(rect3);
                    if (rect3.equals(rect)) {
                        d.f(rect3);
                        rect3.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
                    }
                    Rect rect4 = this.f229f;
                    if (view.getLocalVisibleRect(rect4)) {
                        rect4.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
                        if (rect3.intersect(rect4)) {
                            obtain.setBoundsInScreen(rect3);
                            if (!rect3.isEmpty() && view.getWindowVisibility() == 0) {
                                Object parent = view.getParent();
                                while (true) {
                                    if (parent instanceof View) {
                                        View view2 = (View) parent;
                                        if (view2.getAlpha() <= 0.0f || view2.getVisibility() != 0) {
                                            break;
                                        }
                                        parent = view2.getParent();
                                    } else if (parent != null) {
                                        obtain.setVisibleToUser(true);
                                    }
                                }
                            }
                        }
                    }
                    return d;
                }
                throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            }
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
    }

    public final boolean m(MotionEvent motionEvent) {
        int i;
        AccessibilityManager accessibilityManager = this.h;
        if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7 && action != 9) {
            if (action != 10 || (i = this.m) == Integer.MIN_VALUE) {
                return false;
            }
            if (i != Integer.MIN_VALUE) {
                this.m = PKIFailureInfo.systemUnavail;
                x(i, 256);
            }
            return true;
        }
        int n2 = n(motionEvent.getX(), motionEvent.getY());
        int i2 = this.m;
        if (i2 != n2) {
            this.m = n2;
            x(n2, 128);
            x(i2, 256);
        }
        if (n2 == Integer.MIN_VALUE) {
            return false;
        }
        return true;
    }

    public abstract int n(float f2, float f3);

    public abstract void o(ArrayList arrayList);

    public final void p(int i) {
        View view;
        ViewParent parent;
        if (i != Integer.MIN_VALUE && this.h.isEnabled() && (parent = (view = this.i).getParent()) != null) {
            AccessibilityEvent k = k(i, 2048);
            k.setContentChangeTypes(0);
            parent.requestSendAccessibilityEvent(view, k);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean q(int r20, android.graphics.Rect r21) {
        /*
            Method dump skipped, instructions count: 487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.AbstractC0187i7.q(int, android.graphics.Rect):boolean");
    }

    public final D r(int i) {
        if (i == -1) {
            View view = this.i;
            AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(view);
            D d = new D(obtain);
            WeakHashMap weakHashMap = Dh.a;
            view.onInitializeAccessibilityNodeInfo(obtain);
            ArrayList arrayList = new ArrayList();
            o(arrayList);
            if (obtain.getChildCount() > 0 && arrayList.size() > 0) {
                throw new RuntimeException("Views cannot have both real and virtual children");
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                d.a.addChild(view, ((Integer) arrayList.get(i2)).intValue());
            }
            return d;
        }
        return l(i);
    }

    public abstract boolean s(int i, int i2, Bundle bundle);

    public void t(D d) {
    }

    public abstract void u(int i, D d);

    public void v(int i, boolean z) {
    }

    public final boolean w(int i) {
        int i2;
        View view = this.i;
        if ((!view.isFocused() && !view.requestFocus()) || (i2 = this.l) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            j(i2);
        }
        if (i == Integer.MIN_VALUE) {
            return false;
        }
        this.l = i;
        v(i, true);
        x(i, 8);
        return true;
    }

    public final void x(int i, int i2) {
        View view;
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.h.isEnabled() || (parent = (view = this.i).getParent()) == null) {
            return;
        }
        parent.requestSendAccessibilityEvent(view, k(i, i2));
    }
}
