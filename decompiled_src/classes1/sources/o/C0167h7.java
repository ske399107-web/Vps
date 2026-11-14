package o;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.WeakHashMap;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* renamed from: o.h7, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0167h7 extends C {
    public final /* synthetic */ AbstractC0187i7 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0167h7(AbstractC0187i7 abstractC0187i7) {
        super(1);
        this.d = abstractC0187i7;
    }

    @Override // o.C
    public final boolean C(int i, int i2, Bundle bundle) {
        int i3;
        AbstractC0187i7 abstractC0187i7 = this.d;
        View view = abstractC0187i7.i;
        if (i != -1) {
            boolean z = true;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 64) {
                        if (i2 != 128) {
                            return abstractC0187i7.s(i, i2, bundle);
                        }
                        if (abstractC0187i7.k == i) {
                            abstractC0187i7.k = PKIFailureInfo.systemUnavail;
                            view.invalidate();
                            abstractC0187i7.x(i, PKIFailureInfo.notAuthorized);
                        }
                        z = false;
                    } else {
                        AccessibilityManager accessibilityManager = abstractC0187i7.h;
                        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled() && (i3 = abstractC0187i7.k) != i) {
                            if (i3 != Integer.MIN_VALUE) {
                                abstractC0187i7.k = PKIFailureInfo.systemUnavail;
                                abstractC0187i7.i.invalidate();
                                abstractC0187i7.x(i3, PKIFailureInfo.notAuthorized);
                            }
                            abstractC0187i7.k = i;
                            view.invalidate();
                            abstractC0187i7.x(i, 32768);
                        }
                        z = false;
                    }
                    return z;
                }
                return abstractC0187i7.j(i);
            }
            return abstractC0187i7.w(i);
        }
        WeakHashMap weakHashMap = Dh.a;
        return view.performAccessibilityAction(i2, bundle);
    }

    @Override // o.C
    public final D y(int i) {
        return new D(AccessibilityNodeInfo.obtain(this.d.r(i).a));
    }

    @Override // o.C
    public final D z(int i) {
        int i2;
        AbstractC0187i7 abstractC0187i7 = this.d;
        if (i == 2) {
            i2 = abstractC0187i7.k;
        } else {
            i2 = abstractC0187i7.l;
        }
        if (i2 == Integer.MIN_VALUE) {
            return null;
        }
        return y(i2);
    }
}
