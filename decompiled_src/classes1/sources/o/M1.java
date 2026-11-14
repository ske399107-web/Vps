package o;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class M1 extends SeekBar {
    public final N1 a;

    public M1(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 2130903991);
        Tf.a(this, getContext());
        N1 n1 = new N1(this);
        this.a = n1;
        n1.B(attributeSet, 2130903991);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        N1 n1 = this.a;
        Drawable drawable = n1.f125f;
        if (drawable != null && drawable.isStateful()) {
            M1 m1 = n1.e;
            if (drawable.setState(m1.getDrawableState())) {
                m1.invalidateDrawable(drawable);
            }
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.a.f125f;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.a.P(canvas);
    }
}
