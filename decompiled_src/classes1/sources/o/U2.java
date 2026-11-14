package o;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.SeekBar;
import com.google.android.material.slider.Slider;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.conscrypt.BuildConfig;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class U2 extends AbstractC0187i7 {
    public final Slider q;
    public final Rect r;

    public U2(Slider slider) {
        super(slider);
        this.r = new Rect();
        this.q = slider;
    }

    @Override // o.AbstractC0187i7
    public final int n(float f2, float f3) {
        int i = 0;
        while (true) {
            Slider slider = this.q;
            if (i < slider.getValues().size()) {
                Rect rect = this.r;
                slider.u(i, rect);
                if (rect.contains((int) f2, (int) f3)) {
                    return i;
                }
                i++;
            } else {
                return -1;
            }
        }
    }

    @Override // o.AbstractC0187i7
    public final void o(ArrayList arrayList) {
        for (int i = 0; i < this.q.getValues().size(); i++) {
            arrayList.add(Integer.valueOf(i));
        }
    }

    @Override // o.AbstractC0187i7
    public final boolean s(int i, int i2, Bundle bundle) {
        Slider slider = this.q;
        if (!slider.isEnabled()) {
            return false;
        }
        if (i2 != 4096 && i2 != 8192) {
            if (i2 != 16908349 || bundle == null || !bundle.containsKey("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE") || !slider.s(i, bundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"))) {
                return false;
            }
            slider.v();
            slider.postInvalidate();
            p(i);
            return true;
        }
        float f2 = slider.V;
        if (f2 == 0.0f) {
            f2 = 1.0f;
        }
        if ((slider.R - slider.Q) / f2 > 20) {
            f2 *= Math.round(r1 / r5);
        }
        if (i2 == 8192) {
            f2 = -f2;
        }
        if (slider.k()) {
            f2 = -f2;
        }
        float floatValue = slider.getValues().get(i).floatValue() + f2;
        float valueFrom = slider.getValueFrom();
        float valueTo = slider.getValueTo();
        if (floatValue < valueFrom) {
            floatValue = valueFrom;
        } else if (floatValue > valueTo) {
            floatValue = valueTo;
        }
        if (!slider.s(i, floatValue)) {
            return false;
        }
        slider.v();
        slider.postInvalidate();
        p(i);
        return true;
    }

    @Override // o.AbstractC0187i7
    public final void u(int i, D d) {
        String str;
        String str2;
        d.b(C0496y.m);
        Slider slider = this.q;
        List<Float> values = slider.getValues();
        Float f2 = values.get(i);
        float floatValue = f2.floatValue();
        float valueFrom = slider.getValueFrom();
        float valueTo = slider.getValueTo();
        if (slider.isEnabled()) {
            if (floatValue > valueFrom) {
                d.a(8192);
            }
            if (floatValue < valueTo) {
                d.a(4096);
            }
        }
        AccessibilityNodeInfo.RangeInfo obtain = AccessibilityNodeInfo.RangeInfo.obtain(1, valueFrom, valueTo, floatValue);
        AccessibilityNodeInfo accessibilityNodeInfo = d.a;
        accessibilityNodeInfo.setRangeInfo(obtain);
        d.i(SeekBar.class.getName());
        StringBuilder sb = new StringBuilder();
        if (slider.getContentDescription() != null) {
            sb.append(slider.getContentDescription());
            sb.append(",");
        }
        if (((int) floatValue) == floatValue) {
            str = "%.0f";
        } else {
            str = "%.2f";
        }
        String format = String.format(str, f2);
        String string = slider.getContext().getString(2131624024);
        if (values.size() > 1) {
            if (i == slider.getValues().size() - 1) {
                str2 = slider.getContext().getString(2131624022);
            } else if (i == 0) {
                str2 = slider.getContext().getString(2131624023);
            } else {
                str2 = BuildConfig.FLAVOR;
            }
            string = str2;
        }
        Locale locale = Locale.US;
        sb.append(string + ", " + format);
        accessibilityNodeInfo.setContentDescription(sb.toString());
        Rect rect = this.r;
        slider.u(i, rect);
        accessibilityNodeInfo.setBoundsInParent(rect);
    }
}
