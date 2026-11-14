package o;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class W8 extends View {
    public boolean a;

    public W8(Context context) {
        super(context);
        this.a = true;
        super.setVisibility(8);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setFilterRedundantCalls(boolean z) {
        this.a = z;
    }

    public void setGuidelineBegin(int i) {
        B4 b4 = (B4) getLayoutParams();
        if (this.a && b4.a == i) {
            return;
        }
        b4.a = i;
        setLayoutParams(b4);
    }

    public void setGuidelineEnd(int i) {
        B4 b4 = (B4) getLayoutParams();
        if (this.a && b4.b == i) {
            return;
        }
        b4.b = i;
        setLayoutParams(b4);
    }

    public void setGuidelinePercent(float f2) {
        B4 b4 = (B4) getLayoutParams();
        if (this.a && b4.c == f2) {
            return;
        }
        b4.c = f2;
        setLayoutParams(b4);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
    }
}
