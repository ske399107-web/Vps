package o;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.chip.Chip;
import java.util.ArrayList;
import org.conscrypt.BuildConfig;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class O3 extends AbstractC0187i7 {
    public final /* synthetic */ Chip q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public O3(Chip chip, Chip chip2) {
        super(chip2);
        this.q = chip;
    }

    @Override // o.AbstractC0187i7
    public final int n(float f2, float f3) {
        RectF closeIconTouchBounds;
        Rect rect = Chip.w;
        Chip chip = this.q;
        if (chip.d()) {
            closeIconTouchBounds = chip.getCloseIconTouchBounds();
            if (closeIconTouchBounds.contains(f2, f3)) {
                return 1;
            }
        }
        return 0;
    }

    @Override // o.AbstractC0187i7
    public final void o(ArrayList arrayList) {
        Q3 q3;
        arrayList.add(0);
        Rect rect = Chip.w;
        Chip chip = this.q;
        if (chip.d() && (q3 = chip.e) != null && q3.K && chip.h != null) {
            arrayList.add(1);
        }
    }

    @Override // o.AbstractC0187i7
    public final boolean s(int i, int i2, Bundle bundle) {
        boolean z = false;
        if (i2 == 16) {
            Chip chip = this.q;
            if (i == 0) {
                return chip.performClick();
            }
            if (i == 1) {
                chip.playSoundEffect(0);
                View.OnClickListener onClickListener = chip.h;
                if (onClickListener != null) {
                    onClickListener.onClick(chip);
                    z = true;
                }
                if (chip.s) {
                    chip.r.x(1, 1);
                }
            }
        }
        return z;
    }

    @Override // o.AbstractC0187i7
    public final void t(D d) {
        Chip chip = this.q;
        boolean e = chip.e();
        AccessibilityNodeInfo accessibilityNodeInfo = d.a;
        accessibilityNodeInfo.setCheckable(e);
        accessibilityNodeInfo.setClickable(chip.isClickable());
        d.i(chip.getAccessibilityClassName());
        d.l(chip.getText());
    }

    @Override // o.AbstractC0187i7
    public final void u(int i, D d) {
        Rect closeIconTouchBoundsInt;
        AccessibilityNodeInfo accessibilityNodeInfo = d.a;
        CharSequence charSequence = BuildConfig.FLAVOR;
        if (i == 1) {
            Chip chip = this.q;
            CharSequence closeIconContentDescription = chip.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                accessibilityNodeInfo.setContentDescription(closeIconContentDescription);
            } else {
                CharSequence text = chip.getText();
                Context context = chip.getContext();
                if (!TextUtils.isEmpty(text)) {
                    charSequence = text;
                }
                accessibilityNodeInfo.setContentDescription(context.getString(2131624044, charSequence).trim());
            }
            closeIconTouchBoundsInt = chip.getCloseIconTouchBoundsInt();
            accessibilityNodeInfo.setBoundsInParent(closeIconTouchBoundsInt);
            d.b(C0496y.e);
            accessibilityNodeInfo.setEnabled(chip.isEnabled());
            return;
        }
        accessibilityNodeInfo.setContentDescription(BuildConfig.FLAVOR);
        accessibilityNodeInfo.setBoundsInParent(Chip.w);
    }

    @Override // o.AbstractC0187i7
    public final void v(int i, boolean z) {
        if (i == 1) {
            Chip chip = this.q;
            chip.m = z;
            chip.refreshDrawableState();
        }
    }
}
