package o;

import android.graphics.PointF;
import android.graphics.Rect;
import android.util.Property;
import android.view.View;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class D3 extends Property {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ D3(Class cls, String str, int i) {
        super(cls, str);
        this.a = i;
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        switch (this.a) {
            case 0:
                return null;
            case 1:
                return null;
            case 2:
                return null;
            case 3:
                return null;
            case 4:
                return null;
            case 5:
                return Float.valueOf(((Cf) obj).z);
            case 6:
                return Float.valueOf(Wh.a.h((View) obj));
            default:
                return ((View) obj).getClipBounds();
        }
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                G3 g3 = (G3) obj;
                PointF pointF = (PointF) obj2;
                g3.getClass();
                g3.a = Math.round(pointF.x);
                int round = Math.round(pointF.y);
                g3.b = round;
                int i = g3.f92f + 1;
                g3.f92f = i;
                if (i == g3.g) {
                    Wh.a(g3.e, g3.a, round, g3.c, g3.d);
                    g3.f92f = 0;
                    g3.g = 0;
                    return;
                }
                return;
            case 1:
                G3 g32 = (G3) obj;
                PointF pointF2 = (PointF) obj2;
                g32.getClass();
                g32.c = Math.round(pointF2.x);
                int round2 = Math.round(pointF2.y);
                g32.d = round2;
                int i2 = g32.g + 1;
                g32.g = i2;
                if (g32.f92f == i2) {
                    Wh.a(g32.e, g32.a, g32.b, g32.c, round2);
                    g32.f92f = 0;
                    g32.g = 0;
                    return;
                }
                return;
            case 2:
                View view = (View) obj;
                PointF pointF3 = (PointF) obj2;
                Wh.a(view, view.getLeft(), view.getTop(), Math.round(pointF3.x), Math.round(pointF3.y));
                return;
            case 3:
                View view2 = (View) obj;
                PointF pointF4 = (PointF) obj2;
                Wh.a(view2, Math.round(pointF4.x), Math.round(pointF4.y), view2.getRight(), view2.getBottom());
                return;
            case 4:
                View view3 = (View) obj;
                PointF pointF5 = (PointF) obj2;
                int round3 = Math.round(pointF5.x);
                int round4 = Math.round(pointF5.y);
                Wh.a(view3, round3, round4, view3.getWidth() + round3, view3.getHeight() + round4);
                return;
            case 5:
                ((Cf) obj).setThumbPosition(((Float) obj2).floatValue());
                return;
            case 6:
                float floatValue = ((Float) obj2).floatValue();
                Wh.a.x((View) obj, floatValue);
                return;
            default:
                ((View) obj).setClipBounds((Rect) obj2);
                return;
        }
    }
}
