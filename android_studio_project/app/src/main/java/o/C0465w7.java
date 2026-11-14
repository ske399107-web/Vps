package o;

import android.graphics.Rect;
import java.util.Comparator;

/* renamed from: o.w7, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0465w7 implements Comparator {
    public final Rect a = new Rect();
    public final Rect b = new Rect();
    public final boolean c;
    public final C0424u6 d;

    public C0465w7(C0424u6 c0424u6, boolean z) {
        this.c = z;
        this.d = c0424u6;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        this.d.getClass();
        Rect rect = this.a;
        ((D) obj).f(rect);
        Rect rect2 = this.b;
        ((D) obj2).f(rect2);
        int i = rect.top;
        int i2 = rect2.top;
        if (i < i2) {
            return -1;
        }
        if (i > i2) {
            return 1;
        }
        int i3 = rect.left;
        int i4 = rect2.left;
        boolean z = this.c;
        if (i3 < i4) {
            if (!z) {
                return -1;
            }
            return 1;
        }
        if (i3 > i4) {
            if (z) {
                return -1;
            }
            return 1;
        }
        int i5 = rect.bottom;
        int i6 = rect2.bottom;
        if (i5 < i6) {
            return -1;
        }
        if (i5 > i6) {
            return 1;
        }
        int i7 = rect.right;
        int i8 = rect2.right;
        if (i7 < i8) {
            if (!z) {
                return -1;
            }
            return 1;
        }
        if (i7 > i8) {
            if (z) {
                return -1;
            }
            return 1;
        }
        return 0;
    }
}
