package com.google.android.material.timepicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import o.ViewOnTouchListenerC0229ka;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class TimePickerView extends ConstraintLayout {
    public static final /* synthetic */ int r = 0;
    public final Chip q;

    public TimePickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        e eVar = new e(this);
        LayoutInflater.from(context).inflate(2131427393, this);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(2131230985);
        materialButtonToggleGroup.c.add(new Object());
        Chip chip = (Chip) findViewById(2131230990);
        Chip chip2 = (Chip) findViewById(2131230987);
        this.q = chip2;
        ViewOnTouchListenerC0229ka viewOnTouchListenerC0229ka = new ViewOnTouchListenerC0229ka(1, new GestureDetector(getContext(), new f(this)));
        chip.setOnTouchListener(viewOnTouchListenerC0229ka);
        chip2.setOnTouchListener(viewOnTouchListenerC0229ka);
        chip.setTag(2131231127, 12);
        chip2.setTag(2131231127, 10);
        chip.setOnClickListener(eVar);
        chip2.setOnClickListener(eVar);
        chip.setAccessibilityClassName("android.view.View");
        chip2.setAccessibilityClassName("android.view.View");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            this.q.sendAccessibilityEvent(8);
        }
    }
}
