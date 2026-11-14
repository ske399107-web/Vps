package o;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.carousel.CarouselLayoutManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* renamed from: o.v3, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0441v3 extends AbstractC0371rd {
    public final Paint a;
    public final List b;

    public C0441v3() {
        Paint paint = new Paint();
        this.a = paint;
        this.b = Collections.unmodifiableList(new ArrayList());
        paint.setStrokeWidth(5.0f);
        paint.setColor(-65281);
    }

    @Override // o.AbstractC0371rd
    public final void b(Canvas canvas, RecyclerView recyclerView) {
        int i;
        int i2;
        int E;
        int F;
        Paint paint = this.a;
        paint.setStrokeWidth(recyclerView.getResources().getDimension(2131099885));
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((D9) it.next()).getClass();
            ThreadLocal threadLocal = AbstractC0263m4.a;
            float f2 = 1.0f - 0.0f;
            paint.setColor(Color.argb((int) ((Color.alpha(-16776961) * 0.0f) + (Color.alpha(-65281) * f2)), (int) ((Color.red(-16776961) * 0.0f) + (Color.red(-65281) * f2)), (int) ((Color.green(-16776961) * 0.0f) + (Color.green(-65281) * f2)), (int) ((Color.blue(-16776961) * 0.0f) + (Color.blue(-65281) * f2))));
            if (((CarouselLayoutManager) recyclerView.getLayoutManager()).A0()) {
                C0461w3 c0461w3 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).q;
                switch (c0461w3.b) {
                    case 0:
                        i = 0;
                        break;
                    default:
                        i = c0461w3.c.G();
                        break;
                }
                float f3 = i;
                C0461w3 c0461w32 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).q;
                switch (c0461w32.b) {
                    case 0:
                        i2 = c0461w32.c.f285o;
                        break;
                    default:
                        CarouselLayoutManager carouselLayoutManager = c0461w32.c;
                        i2 = carouselLayoutManager.f285o - carouselLayoutManager.D();
                        break;
                }
                canvas.drawLine(0.0f, f3, 0.0f, i2, paint);
            } else {
                C0461w3 c0461w33 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).q;
                switch (c0461w33.b) {
                    case 0:
                        E = c0461w33.c.E();
                        break;
                    default:
                        E = 0;
                        break;
                }
                float f4 = E;
                C0461w3 c0461w34 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).q;
                switch (c0461w34.b) {
                    case 0:
                        CarouselLayoutManager carouselLayoutManager2 = c0461w34.c;
                        F = carouselLayoutManager2.n - carouselLayoutManager2.F();
                        break;
                    default:
                        F = c0461w34.c.n;
                        break;
                }
                canvas.drawLine(f4, 0.0f, F, 0.0f, paint);
            }
        }
    }
}
