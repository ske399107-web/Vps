package o;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C4 {
    public final ConstraintLayout a;
    public int b;
    public int c;
    public int d;
    public int e;

    /* renamed from: f, reason: collision with root package name */
    public int f75f;
    public int g;
    public final /* synthetic */ ConstraintLayout h;

    public C4(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2) {
        this.h = constraintLayout;
        this.a = constraintLayout2;
    }

    public static boolean a(int i, int i2, int i3) {
        if (i == i2) {
            return true;
        }
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode2 == 1073741824 && ((mode == Integer.MIN_VALUE || mode == 0) && i3 == size)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:163:0x00ea, code lost:
    
        if (r10 == 2) goto L75;
     */
    /* JADX WARN: Removed duplicated region for block: B:148:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01cb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(o.L4 r18, o.C0063c3 r19) {
        /*
            Method dump skipped, instructions count: 705
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.C4.b(o.L4, o.c3):void");
    }
}
