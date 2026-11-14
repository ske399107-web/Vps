package com.google.android.material.timepicker;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import o.AbstractC0133fd;
import o.AbstractC0173hd;
import o.Dh;
import o.F4;
import o.G4;
import o.Ha;
import o.InterfaceC0044b4;
import o.K4;
import o.L1;
import org.conscrypt.BuildConfig;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
class ClockFaceView extends AbstractC0173hd implements InterfaceC0044b4 {
    public final float[] A;
    public final int B;
    public final int C;
    public final int D;
    public final int E;
    public final String[] F;
    public float G;
    public final ColorStateList H;
    public final ClockHandView t;
    public final Rect u;
    public final RectF v;
    public final Rect w;
    public final SparseArray x;
    public final c y;
    public final int[] z;

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.u = new Rect();
        this.v = new RectF();
        this.w = new Rect();
        SparseArray sparseArray = new SparseArray();
        this.x = sparseArray;
        this.A = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0133fd.d, 2130903803, 2131690587);
        Resources resources = getResources();
        ColorStateList F = Ha.F(context, obtainStyledAttributes, 1);
        this.H = F;
        LayoutInflater.from(context).inflate(2131427388, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(2131230981);
        this.t = clockHandView;
        this.B = resources.getDimensionPixelSize(2131100200);
        int colorForState = F.getColorForState(new int[]{R.attr.state_selected}, F.getDefaultColor());
        this.z = new int[]{colorForState, colorForState, F.getDefaultColor()};
        clockHandView.c.add(this);
        int defaultColor = L1.v(context, 2131034810).getDefaultColor();
        ColorStateList F2 = Ha.F(context, obtainStyledAttributes, 0);
        setBackgroundColor(F2 != null ? F2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new b(this));
        setFocusable(true);
        obtainStyledAttributes.recycle();
        this.y = new c(this);
        String[] strArr = new String[12];
        Arrays.fill(strArr, BuildConfig.FLAVOR);
        this.F = strArr;
        LayoutInflater from = LayoutInflater.from(getContext());
        int size = sparseArray.size();
        boolean z = false;
        for (int i = 0; i < Math.max(this.F.length, size); i++) {
            TextView textView = (TextView) sparseArray.get(i);
            if (i >= this.F.length) {
                removeView(textView);
                sparseArray.remove(i);
            } else {
                if (textView == null) {
                    textView = (TextView) from.inflate(2131427387, (ViewGroup) this, false);
                    sparseArray.put(i, textView);
                    addView(textView);
                }
                textView.setText(this.F[i]);
                textView.setTag(2131230997, Integer.valueOf(i));
                int i2 = (i / 12) + 1;
                textView.setTag(2131230982, Integer.valueOf(i2));
                z = i2 > 1 ? true : z;
                Dh.l(textView, this.y);
                textView.setTextColor(this.H);
            }
        }
        ClockHandView clockHandView2 = this.t;
        if (clockHandView2.b && !z) {
            clockHandView2.m = 1;
        }
        clockHandView2.b = z;
        clockHandView2.invalidate();
        this.C = resources.getDimensionPixelSize(2131100228);
        this.D = resources.getDimensionPixelSize(2131100229);
        this.E = resources.getDimensionPixelSize(2131100207);
    }

    @Override // o.AbstractC0173hd
    public final void m() {
        int i;
        K4 k4 = new K4();
        k4.b(this);
        HashMap hashMap = new HashMap();
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getId() != 2131230842 && !"skip".equals(childAt.getTag())) {
                int i3 = (Integer) childAt.getTag(2131230982);
                if (i3 == null) {
                    i3 = 1;
                }
                if (!hashMap.containsKey(i3)) {
                    hashMap.put(i3, new ArrayList());
                }
                ((List) hashMap.get(i3)).add(childAt);
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            List list = (List) entry.getValue();
            if (((Integer) entry.getKey()).intValue() == 2) {
                i = Math.round(this.r * 0.66f);
            } else {
                i = this.r;
            }
            Iterator it = list.iterator();
            float f2 = 0.0f;
            while (it.hasNext()) {
                int id = ((View) it.next()).getId();
                HashMap hashMap2 = k4.c;
                if (!hashMap2.containsKey(Integer.valueOf(id))) {
                    hashMap2.put(Integer.valueOf(id), new F4());
                }
                G4 g4 = ((F4) hashMap2.get(Integer.valueOf(id))).d;
                g4.z = 2131230842;
                g4.A = i;
                g4.B = f2;
                f2 += 360.0f / list.size();
            }
        }
        k4.a(this);
        setConstraintSet(null);
        requestLayout();
        int i4 = 0;
        while (true) {
            SparseArray sparseArray = this.x;
            if (i4 < sparseArray.size()) {
                ((TextView) sparseArray.get(i4)).setVisibility(0);
                i4++;
            } else {
                return;
            }
        }
    }

    public final void n() {
        SparseArray sparseArray;
        RectF rectF;
        Rect rect;
        boolean z;
        RadialGradient radialGradient;
        RectF rectF2 = this.t.g;
        float f2 = Float.MAX_VALUE;
        TextView textView = null;
        int i = 0;
        while (true) {
            sparseArray = this.x;
            int size = sparseArray.size();
            rectF = this.v;
            rect = this.u;
            if (i >= size) {
                break;
            }
            TextView textView2 = (TextView) sparseArray.get(i);
            if (textView2 != null) {
                textView2.getHitRect(rect);
                rectF.set(rect);
                rectF.union(rectF2);
                float height = rectF.height() * rectF.width();
                if (height < f2) {
                    textView = textView2;
                    f2 = height;
                }
            }
            i++;
        }
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            TextView textView3 = (TextView) sparseArray.get(i2);
            if (textView3 != null) {
                if (textView3 == textView) {
                    z = true;
                } else {
                    z = false;
                }
                textView3.setSelected(z);
                textView3.getHitRect(rect);
                rectF.set(rect);
                textView3.getLineBounds(0, this.w);
                rectF.inset(r8.left, r8.top);
                if (!RectF.intersects(rectF2, rectF)) {
                    radialGradient = null;
                } else {
                    radialGradient = new RadialGradient(rectF2.centerX() - rectF.left, rectF2.centerY() - rectF.top, 0.5f * rectF2.width(), this.z, this.A, Shader.TileMode.CLAMP);
                }
                textView3.getPaint().setShader(radialGradient);
                textView3.invalidate();
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(1, this.F.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        n();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int max = (int) (this.E / Math.max(Math.max(this.C / displayMetrics.heightPixels, this.D / displayMetrics.widthPixels), 1.0f));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(max, 1073741824);
        setMeasuredDimension(max, max);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }
}
