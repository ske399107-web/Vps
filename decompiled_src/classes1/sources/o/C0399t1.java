package o;

import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.appcompat.widget.ContentFrameLayout;

/* renamed from: o.t1, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0399t1 extends ContentFrameLayout {
    public final /* synthetic */ LayoutInflaterFactory2C0439v1 i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0399t1(LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1, V4 v4) {
        super(v4, null);
        this.i = layoutInflaterFactory2C0439v1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.i.s(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (x < -5 || y < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = this.i;
                layoutInflaterFactory2C0439v1.q(layoutInflaterFactory2C0439v1.y(0), true);
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        setBackgroundDrawable(L1.z(getContext(), i));
    }
}
