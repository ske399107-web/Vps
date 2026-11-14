package o;

import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import java.util.Comparator;

/* renamed from: o.f7, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0127f7 implements Comparator {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0127f7(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                C0087d7 c0087d7 = (C0087d7) obj;
                float f2 = c0087d7.b;
                C0087d7 c0087d72 = (C0087d7) this.b;
                double d = f2 - c0087d72.b;
                float f3 = c0087d7.d;
                float f4 = c0087d72.d;
                Double valueOf = Double.valueOf(Math.hypot(d, f3 - f4));
                C0087d7 c0087d73 = (C0087d7) obj2;
                Double valueOf2 = Double.valueOf(Math.hypot(c0087d73.b - r2, c0087d73.d - f4));
                if (valueOf == valueOf2) {
                    return 0;
                }
                return valueOf.compareTo(valueOf2);
            default:
                MaterialButton materialButton = (MaterialButton) obj;
                MaterialButton materialButton2 = (MaterialButton) obj2;
                int compareTo = Boolean.valueOf(materialButton.f50o).compareTo(Boolean.valueOf(materialButton2.f50o));
                if (compareTo == 0) {
                    int compareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
                    if (compareTo2 == 0) {
                        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this.b;
                        return Integer.valueOf(materialButtonToggleGroup.indexOfChild(materialButton)).compareTo(Integer.valueOf(materialButtonToggleGroup.indexOfChild(materialButton2)));
                    }
                    return compareTo2;
                }
                return compareTo;
        }
    }
}
