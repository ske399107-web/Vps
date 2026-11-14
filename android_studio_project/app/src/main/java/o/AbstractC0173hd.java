package o;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.WeakHashMap;

/* renamed from: o.hd, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0173hd extends ConstraintLayout {
    public final RunnableC0180i0 q;
    public int r;
    public final C0111eb s;

    public AbstractC0173hd(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 2130903803);
        LayoutInflater.from(context).inflate(2131427389, this);
        C0111eb c0111eb = new C0111eb();
        this.s = c0111eb;
        Nd nd = new Nd(0.5f);
        C0530ze e = c0111eb.a.a.e();
        e.e = nd;
        e.f308f = nd;
        e.g = nd;
        e.h = nd;
        c0111eb.setShapeAppearanceModel(e.a());
        this.s.k(ColorStateList.valueOf(-1));
        C0111eb c0111eb2 = this.s;
        WeakHashMap weakHashMap = Dh.a;
        setBackground(c0111eb2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0133fd.t, 2130903803, 0);
        this.r = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.q = new RunnableC0180i0(11, this);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (view.getId() == -1) {
            WeakHashMap weakHashMap = Dh.a;
            view.setId(View.generateViewId());
        }
        Handler handler = getHandler();
        if (handler != null) {
            RunnableC0180i0 runnableC0180i0 = this.q;
            handler.removeCallbacks(runnableC0180i0);
            handler.post(runnableC0180i0);
        }
    }

    public abstract void m();

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        m();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        Handler handler = getHandler();
        if (handler != null) {
            RunnableC0180i0 runnableC0180i0 = this.q;
            handler.removeCallbacks(runnableC0180i0);
            handler.post(runnableC0180i0);
        }
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i) {
        this.s.k(ColorStateList.valueOf(i));
    }
}
