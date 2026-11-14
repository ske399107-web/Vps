package o;

import com.ffrt.proxyread.R;
import android.os.Build;
import android.view.accessibility.AccessibilityNodeInfo;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* renamed from: o.y, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0496y {
    public static final C0496y e;

    /* renamed from: f, reason: collision with root package name */
    public static final C0496y f298f;
    public static final C0496y g;
    public static final C0496y h;
    public static final C0496y i;
    public static final C0496y j;
    public static final C0496y k;
    public static final C0496y l;
    public static final C0496y m;
    public final Object a;
    public final int b;
    public final Class c;
    public final N d;

    static {
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction2;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction3;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction4;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction5;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction6;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction7;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction8;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction9;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction10;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction11;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction12;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction13;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction14;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction15;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction16;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction17;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction18;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction19;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction20;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction21;
        new C0496y(1);
        new C0496y(2);
        new C0496y(4);
        new C0496y(8);
        e = new C0496y(16);
        new C0496y(32);
        new C0496y(64);
        new C0496y(128);
        new C0496y(G.class, 256);
        new C0496y(G.class, 512);
        new C0496y(H.class, 1024);
        new C0496y(H.class, 2048);
        f298f = new C0496y(4096);
        g = new C0496y(8192);
        new C0496y(16384);
        new C0496y(32768);
        new C0496y(PKIFailureInfo.notAuthorized);
        new C0496y(L.class, PKIFailureInfo.unsupportedVersion);
        h = new C0496y(262144);
        i = new C0496y(PKIFailureInfo.signerNotTrusted);
        j = new C0496y(1048576);
        new C0496y(M.class, PKIFailureInfo.badSenderNonce);
        int i2 = Build.VERSION.SDK_INT;
        new C0496y(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN, R.id.accessibilityActionShowOnScreen, null, null, null);
        new C0496y(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION, R.id.accessibilityActionScrollToPosition, null, null, J.class);
        k = new C0496y(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP, R.id.accessibilityActionScrollUp, null, null, null);
        new C0496y(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT, R.id.accessibilityActionScrollLeft, null, null, null);
        l = new C0496y(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN, R.id.accessibilityActionScrollDown, null, null, null);
        new C0496y(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT, R.id.accessibilityActionScrollRight, null, null, null);
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction22 = null;
        if (i2 >= 29) {
            accessibilityAction = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP;
        } else {
            accessibilityAction = null;
        }
        new C0496y(accessibilityAction, R.id.accessibilityActionPageUp, null, null, null);
        if (i2 >= 29) {
            accessibilityAction21 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN;
            accessibilityAction2 = accessibilityAction21;
        } else {
            accessibilityAction2 = null;
        }
        new C0496y(accessibilityAction2, R.id.accessibilityActionPageDown, null, null, null);
        if (i2 >= 29) {
            accessibilityAction3 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT;
        } else {
            accessibilityAction3 = null;
        }
        new C0496y(accessibilityAction3, R.id.accessibilityActionPageLeft, null, null, null);
        if (i2 >= 29) {
            accessibilityAction20 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT;
            accessibilityAction4 = accessibilityAction20;
        } else {
            accessibilityAction4 = null;
        }
        new C0496y(accessibilityAction4, R.id.accessibilityActionPageRight, null, null, null);
        new C0496y(AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK, R.id.accessibilityActionContextClick, null, null, null);
        m = new C0496y(AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS, R.id.accessibilityActionSetProgress, null, null, K.class);
        if (i2 >= 26) {
            accessibilityAction19 = AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW;
            accessibilityAction5 = accessibilityAction19;
        } else {
            accessibilityAction5 = null;
        }
        new C0496y(accessibilityAction5, R.id.accessibilityActionMoveWindow, null, null, I.class);
        if (i2 >= 28) {
            accessibilityAction6 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP;
        } else {
            accessibilityAction6 = null;
        }
        new C0496y(accessibilityAction6, R.id.accessibilityActionShowTooltip, null, null, null);
        if (i2 >= 28) {
            accessibilityAction18 = AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP;
            accessibilityAction7 = accessibilityAction18;
        } else {
            accessibilityAction7 = null;
        }
        new C0496y(accessibilityAction7, R.id.accessibilityActionHideTooltip, null, null, null);
        if (i2 >= 30) {
            accessibilityAction8 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD;
        } else {
            accessibilityAction8 = null;
        }
        new C0496y(accessibilityAction8, R.id.accessibilityActionPressAndHold, null, null, null);
        if (i2 >= 30) {
            accessibilityAction17 = AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER;
            accessibilityAction9 = accessibilityAction17;
        } else {
            accessibilityAction9 = null;
        }
        new C0496y(accessibilityAction9, R.id.accessibilityActionImeEnter, null, null, null);
        if (i2 >= 32) {
            accessibilityAction10 = AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_START;
        } else {
            accessibilityAction10 = null;
        }
        new C0496y(accessibilityAction10, R.id.ALT, null, null, null);
        if (i2 >= 32) {
            accessibilityAction16 = AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_DROP;
            accessibilityAction11 = accessibilityAction16;
        } else {
            accessibilityAction11 = null;
        }
        new C0496y(accessibilityAction11, R.id.CTRL, null, null, null);
        if (i2 >= 32) {
            accessibilityAction15 = AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_CANCEL;
            accessibilityAction12 = accessibilityAction15;
        } else {
            accessibilityAction12 = null;
        }
        new C0496y(accessibilityAction12, R.id.FUNCTION, null, null, null);
        if (i2 >= 33) {
            accessibilityAction14 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TEXT_SUGGESTIONS;
            accessibilityAction13 = accessibilityAction14;
        } else {
            accessibilityAction13 = null;
        }
        new C0496y(accessibilityAction13, R.id.KEYCODE_0, null, null, null);
        if (i2 >= 34) {
            accessibilityAction22 = B.a();
        }
        new C0496y(accessibilityAction22, R.id.KEYCODE_3D_MODE, null, null, null);
    }

    public C0496y(int i2) {
        this(null, i2, null, null, null);
    }

    public final int a() {
        return ((AccessibilityNodeInfo.AccessibilityAction) this.a).getId();
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof C0496y)) {
            return false;
        }
        Object obj2 = ((C0496y) obj).a;
        Object obj3 = this.a;
        if (obj3 == null) {
            if (obj2 != null) {
                return false;
            }
            return true;
        }
        if (!obj3.equals(obj2)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        Object obj = this.a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AccessibilityActionCompat: ");
        String d = D.d(this.b);
        if (d.equals("ACTION_UNKNOWN")) {
            Object obj = this.a;
            if (((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel() != null) {
                d = ((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel().toString();
            }
        }
        sb.append(d);
        return sb.toString();
    }

    public C0496y(Class cls, int i2) {
        this(null, i2, null, null, cls);
    }

    public C0496y(Object obj, int i2, String str, N n, Class cls) {
        this.b = i2;
        this.d = n;
        if (obj == null) {
            this.a = new AccessibilityNodeInfo.AccessibilityAction(i2, str);
        } else {
            this.a = obj;
        }
        this.c = cls;
    }
}
