package o;

import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* renamed from: o.h3, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0163h3 {
    public final boolean a;
    public final Object b;

    public C0163h3(C0424u6 c0424u6, boolean z) {
        this.b = c0424u6;
        this.a = z;
    }

    public boolean a() {
        return this.a;
    }

    public boolean b(CharSequence charSequence, int i) {
        if (charSequence != null && i >= 0 && charSequence.length() - i >= 0) {
            if (((C0424u6) this.b) == null) {
                return a();
            }
            char c = 2;
            for (int i2 = 0; i2 < i && c == 2; i2++) {
                byte directionality = Character.getDirectionality(charSequence.charAt(i2));
                C0163h3 c0163h3 = Jf.a;
                if (directionality != 0) {
                    if (directionality != 1 && directionality != 2) {
                        switch (directionality) {
                            case 14:
                            case 15:
                                break;
                            case 16:
                            case 17:
                                break;
                            default:
                                c = 2;
                                break;
                        }
                    }
                    c = 0;
                }
                c = 1;
            }
            if (c == 0) {
                return true;
            }
            if (c == 1) {
                return false;
            }
            return a();
        }
        throw new IllegalArgumentException();
    }

    public C0163h3(BottomSheetBehavior bottomSheetBehavior, boolean z) {
        this.b = bottomSheetBehavior;
        this.a = z;
    }
}
