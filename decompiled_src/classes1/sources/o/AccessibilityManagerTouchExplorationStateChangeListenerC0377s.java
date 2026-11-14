package o;

import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import java.util.WeakHashMap;

/* renamed from: o.s, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class AccessibilityManagerTouchExplorationStateChangeListenerC0377s implements AccessibilityManager.TouchExplorationStateChangeListener {
    public final C0378s0 a;

    public AccessibilityManagerTouchExplorationStateChangeListenerC0377s(C0378s0 c0378s0) {
        this.a = c0378s0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessibilityManagerTouchExplorationStateChangeListenerC0377s)) {
            return false;
        }
        return this.a.equals(((AccessibilityManagerTouchExplorationStateChangeListenerC0377s) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z) {
        int i;
        C0364r6 c0364r6 = (C0364r6) this.a.b;
        AutoCompleteTextView autoCompleteTextView = c0364r6.h;
        if (autoCompleteTextView != null && !L1.F(autoCompleteTextView)) {
            if (z) {
                i = 2;
            } else {
                i = 1;
            }
            WeakHashMap weakHashMap = Dh.a;
            c0364r6.d.setImportantForAccessibility(i);
        }
    }
}
