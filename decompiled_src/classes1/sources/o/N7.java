package o;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class N7 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ O7 b;

    public /* synthetic */ N7(O7 o7, int i) {
        this.a = i;
        this.b = o7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                ViewParent parent = this.b.d.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                    return;
                }
                return;
            default:
                O7 o7 = this.b;
                o7.a();
                View view = o7.d;
                if (view.isEnabled() && !view.isLongClickable() && o7.c()) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    view.onTouchEvent(obtain);
                    obtain.recycle();
                    o7.g = true;
                    return;
                }
                return;
        }
    }
}
