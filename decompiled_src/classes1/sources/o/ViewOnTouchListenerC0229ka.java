package o;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;

/* renamed from: o.ka, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class ViewOnTouchListenerC0229ka implements View.OnTouchListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ViewOnTouchListenerC0229ka(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        G1 g1;
        switch (this.a) {
            case 0:
                int action = motionEvent.getAction();
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                C0249la c0249la = (C0249la) this.b;
                if (action == 0 && (g1 = c0249la.z) != null && g1.isShowing() && x >= 0 && x < c0249la.z.getWidth() && y >= 0 && y < c0249la.z.getHeight()) {
                    c0249la.v.postDelayed(c0249la.r, 250L);
                    return false;
                }
                if (action == 1) {
                    c0249la.v.removeCallbacks(c0249la.r);
                    return false;
                }
                return false;
            default:
                if (((Checkable) view).isChecked()) {
                    return ((GestureDetector) this.b).onTouchEvent(motionEvent);
                }
                return false;
        }
    }
}
