package o;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.NavigationMenuItemView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class J3 extends r {
    public final /* synthetic */ int d;
    public final /* synthetic */ Object e;

    public /* synthetic */ J3(int i, Object obj) {
        this.d = i;
        this.e = obj;
    }

    @Override // o.r
    public void c(View view, AccessibilityEvent accessibilityEvent) {
        switch (this.d) {
            case 0:
                super.c(view, accessibilityEvent);
                accessibilityEvent.setChecked(((CheckableImageButton) this.e).d);
                return;
            default:
                super.c(view, accessibilityEvent);
                return;
        }
    }

    @Override // o.r
    public final void d(View view, D d) {
        String string;
        Object obj = this.e;
        View.AccessibilityDelegate accessibilityDelegate = this.a;
        switch (this.d) {
            case 0:
                AccessibilityNodeInfo accessibilityNodeInfo = d.a;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                CheckableImageButton checkableImageButton = (CheckableImageButton) obj;
                accessibilityNodeInfo.setCheckable(checkableImageButton.e);
                accessibilityNodeInfo.setChecked(checkableImageButton.d);
                return;
            case 1:
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, d.a);
                int i = MaterialButtonToggleGroup.k;
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) obj;
                int i2 = -1;
                if (view instanceof MaterialButton) {
                    int i3 = 0;
                    int i4 = 0;
                    while (true) {
                        if (i3 < materialButtonToggleGroup.getChildCount()) {
                            if (materialButtonToggleGroup.getChildAt(i3) == view) {
                                i2 = i4;
                            } else {
                                if ((materialButtonToggleGroup.getChildAt(i3) instanceof MaterialButton) && materialButtonToggleGroup.c(i3)) {
                                    i4++;
                                }
                                i3++;
                            }
                        }
                    }
                }
                d.j(C.B(((MaterialButton) view).f50o, 0, 1, i2, 1));
                return;
            case 2:
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, d.a);
                Va va = (Va) obj;
                if (va.e0.getVisibility() == 0) {
                    string = va.C().getResources().getString(2131624083);
                } else {
                    string = va.C().getResources().getString(2131624081);
                }
                d.k(string);
                return;
            default:
                AccessibilityNodeInfo accessibilityNodeInfo2 = d.a;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo2);
                accessibilityNodeInfo2.setCheckable(((NavigationMenuItemView) obj).x);
                return;
        }
    }
}
